unit Login;
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
    Session,
    HttpDetails,
    SocketDetails,
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    StdCtrls, buttonFrame, ComCtrls;

type
  TfrmLogin = class(TForm)
    Label1: TLabel;
    txtUsername: TEdit;
    Label2: TLabel;
    txtPassword: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    cboServer: TComboBox;
    cboResource: TComboBox;
    frameButtons1: TframeButtons;
    Label5: TLabel;
    cboProfiles: TComboBox;
    Label6: TLabel;
    txtPriority: TEdit;
    spnPriority: TUpDown;
    lblNewProfile: TLabel;
    lblDelete: TLabel;
    chkInvisible: TCheckBox;
    Label8: TLabel;
    cboConnection: TComboBox;
    btnDetails: TButton;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cboProfilesChange(Sender: TObject);
    procedure lblNewProfileClick(Sender: TObject);
    procedure lblDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDetailsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

procedure ShowLogin;

{---------------------------------------}
{---------------------------------------}
{---------------------------------------}
implementation

{$R *.DFM}

uses
    Jabber1,
    PrefController;

{---------------------------------------}
procedure ShowLogin;
var
    l: TfrmLogin;
    i: integer;
    p: TJabberProfile;
begin
    l := TfrmLogin.Create(nil);
    l.cboProfiles.Items.Assign(MainSession.Prefs.Profiles);
    l.cboProfiles.ItemIndex := MainSession.Prefs.getInt('profile_active');
    l.cboProfilesChange(nil);

    if l.ShowModal = mrOK then begin
        // Save the info on the profile and login
        i := l.cboProfiles.ItemIndex;
        p := TJabberProfile(MainSession.Prefs.Profiles.Objects[i]);

        // Update the profile
        p.Server := l.cboServer.Text;
        p.Username := l.txtUsername.Text;
        p.password := l.txtPassword.Text;
        p.resource := l.cboResource.Text;
        p.Priority := l.spnPriority.Position;
        p.ConnectionType := l.cboConnection.ItemIndex;

        MainSession.Prefs.setInt('profile_active', i);
        MainSession.Prefs.SaveProfiles();

        MainSession.ActivateProfile(i);
        MainSession.Invisible := l.chkInvisible.Checked;
        MainSession.Connect;

        // frmExodus.Tabs.ActivePage := frmExodus.Tabs.Pages[0];
        end;

    l.Free;
end;

{---------------------------------------}
procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    MainSession.Prefs.SavePosition(Self);
    Action := caFree;
end;

{---------------------------------------}
procedure TfrmLogin.cboProfilesChange(Sender: TObject);
var
    i: integer;
    p: TJabberProfile;
begin
    // Display this profile..
    i := cboProfiles.ItemIndex;
    p := TJabberProfile(MainSession.Prefs.Profiles.Objects[i]);

    // populate the fields
    txtUsername.Text := p.Username;
    txtPassword.Text := p.Password;
    cboServer.Text := p.Server;
    cboResource.Text := p.Resource;
    spnPriority.Position := p.Priority;
    chkInvisible.Checked := false;
    cboConnection.ItemIndex := p.ConnectionType;
end;

{---------------------------------------}
procedure TfrmLogin.lblNewProfileClick(Sender: TObject);
var
    pname: string;
    i: integer;
begin
    // Create a new profile
    pname := 'Untitled Profile';
    if InputQuery('New Exodus Profile', 'Profile Name', pname) then begin
        MainSession.Prefs.CreateProfile(pname);
        cboProfiles.Items.Assign(MainSession.Prefs.Profiles);
        i := cboProfiles.Items.Indexof(pname);
        cboProfiles.ItemIndex := i;
        cboProfilesChange(Self);
        txtUsername.SetFocus();
        end;
end;

{---------------------------------------}
procedure TfrmLogin.lblDeleteClick(Sender: TObject);
var
    i: integer;
    p: TJabberProfile;
begin
    // Delete this profile
    if (MessageDlg('Remove this profile?', mtConfirmation,
        [mbYes, mbNo], 0) = mrNo) then exit;

    i := cboProfiles.ItemIndex;
    p := TJabberProfile(MainSession.Prefs.Profiles.Objects[i]);
    MainSession.Prefs.RemoveProfile(p);
    MainSession.Prefs.setInt('profile_active', 0);

    // make sure we have at least a default profile
    if (MainSession.Prefs.Profiles.Count) <= 0 then begin
        MainSession.Prefs.CreateProfile('Default Profile')
        end;

    cboProfiles.Items.Assign(MainSession.Prefs.Profiles);
    cboProfiles.ItemIndex := MainSession.Prefs.getInt('profile_active');
    cboProfilesChange(nil);

end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
    MainSession.Prefs.RestorePosition(Self);
end;

procedure TfrmLogin.btnDetailsClick(Sender: TObject);
var
    i : integer;
    p : TJabberProfile;
begin
    i := cboProfiles.ItemIndex;
    p := TJabberProfile(MainSession.Prefs.Profiles.Objects[i]);
    if (cboConnection.ItemIndex = 0) then begin
        if (frmSocketDetails = nil) then
            frmSocketDetails := TfrmSocketDetails.Create(Self);
        frmSocketDetails.SetDefaults(p);
        if (frmSocketDetails.ShowModal() = mrOK) then
            frmSocketDetails.GetValues(p);
        end
    else if (cboConnection.ItemIndex = 1) then begin
        if (frmHttpDetails = nil) then
            frmHttpDetails := TfrmHttpDetails.Create(Self);
        frmHttpDetails.SetDefaults(p);
        if (frmHttpDetails.ShowModal() = mrOK) then
            frmHttpDetails.GetValues(p);
        end;
end;

end.

