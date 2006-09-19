unit RosterRecv;
{
    Copyright 2001, Peter Millard

    This file is part of Exodus.

    Exodus is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    Exodus is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Exodus; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
}

interface

uses
    Dockable, ExEvents,
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    buttonFrame, StdCtrls, ComCtrls, Grids, ExtCtrls, ExRichEdit, RichEdit2,
    TntStdCtrls, TntComCtrls, TntExtCtrls, JabberID, XMLTag, StrUtils, Unicode;

type
  TfrmRosterRecv = class(TfrmDockable)
    frameButtons1: TframeButtons;
    pnlFrom: TTntPanel;
    StaticText1: TTntStaticText;
    txtFrom: TTntStaticText;
    txtMsg: TExRichEdit;
    Splitter1: TSplitter;
    lvContacts: TTntListView;
    Panel1: TTntPanel;
    Label2: TTntLabel;
    cboGroup: TTntComboBox;
    procedure FormCreate(Sender: TObject);
    procedure frameButtons1btnOKClick(Sender: TObject);
    procedure frameButtons1btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Restore(e: TJabberEvent);
  end;

var
  frmRosterRecv: TfrmRosterRecv;

{---------------------------------------}
{---------------------------------------}
{---------------------------------------}
implementation
uses
    JabberUtils, ExUtils,  S10n, NodeItem, Roster, Session, Jabber1;

{$R *.DFM}

{---------------------------------------}
procedure TfrmRosterRecv.Restore(e: TJabberEvent);
var
    i, j: integer;
    ri: TJabberRosterItem;
    n: TListItem;
    from: TJabberID;
    noi, noi_label, noi_image_prefix: Widestring;
    offset: Cardinal;
begin
    // Fill up the GUI based on the event
    from := TJabberID.Create(e.from);
    txtFrom.Caption := from.getDisplayFull();
    from.Free();
    txtMsg.Lines.Text := e.str_content;

    for i := 0 to e.Data.Count - 1 do begin
        ri := TJabberRosterItem(e.Data.Objects[i]);
        if ((ri <> nil) and (ri is TJabberRosterItem)) then begin
            n := lvContacts.Items.Add();
            n.Caption := ri.Text;
            n.SubItems.Add(ri.jid.getDisplayFull());
            n.Checked := true;
            if (ri.Tag.GetAttribute('noi') <> '') then begin
                for j:= 0 to MainSession.Prefs.getStringlistCount('recv_contact_image_prefix') - 1 do begin
                    noi := MainSession.Prefs.getStringlistValue('recv_contact_image_prefix', j);
                    offset := Pos('=', noi);
                    if (offset > 0) then begin
                        noi_label :=  Trim(LeftStr(noi, offset - 1));
                        noi_image_prefix := Trim(RightStr(noi, StrLenW(PWideChar(noi)) - offset));
                        if (noi_label = ri.Tag.GetAttribute('noi')) then
                            ri.ImagePrefix := noi_image_prefix;
                    end;
                end;
            end;
            n.ImageIndex := ri.getPresenceImage('available');
        end;
    end;

    ShowDefault();
end;

{---------------------------------------}
procedure TfrmRosterRecv.FormCreate(Sender: TObject);
begin
  inherited;

    // Fill up the groups drop down
    MainSession.Roster.AssignGroups(cboGroup.Items);
    cboGroup.ItemIndex := 0;
    cboGroup.Text := MainSession.Prefs.getString('roster_default');
end;

{---------------------------------------}
procedure TfrmRosterRecv.frameButtons1btnOKClick(Sender: TObject);
var
    i: integer;
    l: TListItem;
    nick, jid: Widestring;
    ri: TJabberRosterItem;
    jidObj: TJabberID;
begin
  inherited;
    // Add the selected contacts, then close
    for i := 0 to lvContacts.Items.Count - 1 do begin
        l := lvContacts.Items[i];
        if (l.Checked) then begin
            // subscribe
            jidObj := TJabberID.Create(l.SubItems[0], false);
            jid := jidObj.jid;
            nick := l.Caption;

            ri := MainSession.Roster.Find(jid);
            if (ri <> nil) then begin
                if (ri.Subscription = 'to') or (ri.Subscription = 'both') then begin
                    DebugMsg('Roster item already in roster: ' + jid);
                    jidObj.Free();
                    continue;
                end;
            end;

            {
            If we don't have a roster item, then create one,
            otherwise, make sure the we subscribe to the old one
            and modify the nick + group
            }
            if (ri = nil) then
                MainSession.Roster.AddItem(jid, nick, cboGroup.Text, true)
            else begin
                ri.Text := nick;
                ri.ClearGroups();
                ri.AddGroup(cboGroup.Text);
                SendSubscribe(jid, MainSession);
            end;
            jidObj.Free();
        end;
    end;
    Self.Close();
end;

{---------------------------------------}
procedure TfrmRosterRecv.frameButtons1btnCancelClick(Sender: TObject);
begin
  inherited;
    Self.Close();
end;

{---------------------------------------}
procedure TfrmRosterRecv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    Action := caFree;
end;

end.
