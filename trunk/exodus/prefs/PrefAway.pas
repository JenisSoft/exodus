unit PrefAway;
{
    Copyright 2003, Peter Millard

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
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrefPanel, StdCtrls, ComCtrls, TntStdCtrls, ExtCtrls,
  TntExtCtrls;

type
  TfrmPrefAway = class(TfrmPrefPanel)
    txtAwayTime: TTntEdit;
    spnAway: TUpDown;
    txtXATime: TTntEdit;
    spnXA: TUpDown;
    Label2: TTntLabel;
    Label3: TTntLabel;
    Label4: TTntLabel;
    Label9: TTntLabel;
    chkAutoAway: TTntCheckBox;
    txtAway: TTntEdit;
    txtXA: TTntEdit;
    chkAAReducePri: TTntCheckBox;
    StaticText4: TTntPanel;
    chkAutoXA: TTntCheckBox;
    chkAutoDisconnect: TTntCheckBox;
    TntLabel1: TTntLabel;
    txtDisconnectTime: TTntEdit;
    spnDisconnect: TUpDown;
    procedure chkAutoAwayClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadPrefs(); override;
    procedure SavePrefs(); override;
  end;

var
  frmPrefAway: TfrmPrefAway;

implementation
{$R *.dfm}
uses
    Session;

procedure TfrmPrefAway.LoadPrefs();
begin
    with MainSession.Prefs do begin
        // Autoaway options
        chkAutoAway.Checked := getBool('auto_away');
        chkAAReducePri.Checked := getBool('aa_reduce_pri');
        chkAutoXA.Checked := getBool('auto_xa');
        chkAutoDisconnect.Checked := getBool('auto_disconnect');

        spnAway.Position := getInt('away_time');
        spnXA.Position := getInt('xa_time');
        spnDisconnect.Position := getInt('disconnect_time');
        
        txtAway.Text := getString('away_status');
        txtXA.Text := getString('xa_status');
    end;
end;

procedure TfrmPrefAway.SavePrefs();
begin
    with MainSession.Prefs do begin
        // Autoaway options
        setBool('auto_away', chkAutoAway.Checked);
        setBool('aa_reduce_pri', chkAAReducePri.Checked);
        setBool('auto_xa', chkAutoXA.Checked);
        setBool('auto_disconnect', chkAutoDisconnect.Checked);

        setInt('away_time', spnAway.Position);
        setInt('xa_time', spnXA.Position);
        setInt('disconnect_time', spnDisconnect.Position);

        setString('away_status', txtAway.Text);
        setString('xa_status', txtXA.Text);
    end;
end;

procedure TfrmPrefAway.chkAutoAwayClick(Sender: TObject);
var
    e: boolean;
begin
  inherited;
    e := chkAutoAway.Checked;

    chkAutoXA.Enabled := e;
    chkAutoDisconnect.Enabled := e;
    chkAAReducePri.Enabled := e;

    txtAwayTime.Enabled := e;
    txtXATime.Enabled := e;
    txtDisconnectTime.Enabled := e;
    txtAway.Enabled := e;
    txtXA.Enabled := e;
    spnAway.Enabled := e;
    spnXA.Enabled := e;
    spnDisconnect.Enabled := e;
end;

end.
