unit Bookmark;
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
    Roster, NodeItem,  
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, buttonFrame, StdCtrls, TntStdCtrls;

type
  TfrmBookmark = class(TForm)
    frameButtons1: TframeButtons;
    Label1: TTntLabel;
    cboType: TTntComboBox;
    Label2: TTntLabel;
    txtName: TTntEdit;
    Label3: TTntLabel;
    txtJID: TTntEdit;
    Label4: TTntLabel;
    txtNick: TTntEdit;
    chkAutoJoin: TTntCheckBox;
    procedure frameButtons1btnCancelClick(Sender: TObject);
    procedure frameButtons1btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    new: boolean;
  public
    { Public declarations }
  end;

var
  frmBookmark: TfrmBookmark;

function ShowBookmark(jid: Widestring; bm_name: Widestring = ''): TfrmBookmark;

{---------------------------------------}
{---------------------------------------}
{---------------------------------------}
implementation

{$R *.dfm}

uses
    XMLTag, JabberUtils, ExUtils,  GnuGetText, JabberID, Session,
    RosterWindow;

{---------------------------------------}
function ShowBookmark(jid: Widestring; bm_name: Widestring = ''): TfrmBookmark;
var
    f: TfrmBookmark;
    bm: TXMLTag;
begin
    bm := nil;
    if (jid <> '') then
        bm := MainSession.Bookmarks.FindBookmark(jid);

    f := TfrmBookmark.Create(Application);
    if (bm = nil) then f.Caption := _('Add a new bookmark');

    with f do begin
        cboType.ItemIndex := 0;
        if (bm = nil) then begin
            new := true;
            txtJid.Text := jid;
            txtNick.Text := MainSession.Profile.Username;
            if (name <> '') then
                txtName.Text := bm_name
            else
                txtName.Text := jid;
        end
        else begin
            new := false;
            txtJID.Text := bm.GetAttribute('jid');
            txtName.Text := bm.GetAttribute('name');
            chkAutoJoin.Checked := (bm.GetAttribute('autojoin') = 'true');
            txtNick.Text := bm.GetBasicText('nick');
        end;
        Show();
    end;

    Result := f;
end;

{---------------------------------------}
procedure TfrmBookmark.frameButtons1btnCancelClick(Sender: TObject);
begin
    Self.Close;
end;

{---------------------------------------}
procedure TfrmBookmark.frameButtons1btnOKClick(Sender: TObject);
var
    bm: TXMLTag;
    nick: TXMLTag;
    ri: TJabberRosterItem;
begin
    // Save any changes to the bookmark and resave
    if (new) then begin
        MainSession.Bookmarks.AddBookmark(txtJid.Text, txtName.Text,
            txtNick.Text, chkAutoJoin.Checked);
    end
    else begin
        bm := MainSession.Bookmarks.FindBookmark(txtJid.Text);
        assert(bm <> nil);
        bm.setAttribute('name', txtName.Text);
        if chkAutoJoin.Checked then
            bm.setAttribute('autojoin', 'true')
        else
            bm.setAttribute('autojoin', 'false');

        nick := bm.GetFirstTag('nick');
        if nick = nil then
            nick := bm.AddTag('nick')
        else
            nick.ClearCData();
        nick.AddCData(txtNick.Text);

        MainSession.bookmarks.SaveBookmarks();
        ri := MainSession.Roster.Find(txtJid.Text);
        assert(ri <> nil);
        ri.Tag := bm;

        // update the ritem
        MainSession.Bookmarks.parseItem(bm, ri);

        // tell everyone about the updated item
        MainSession.FireEvent('/roster/item', bm, ri);
    end;
    Self.Close;
end;

{---------------------------------------}
procedure TfrmBookmark.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
end;

{---------------------------------------}
procedure TfrmBookmark.FormCreate(Sender: TObject);
begin
    AssignUnicodeFont(Self);
    TranslateComponent(Self);
end;

end.