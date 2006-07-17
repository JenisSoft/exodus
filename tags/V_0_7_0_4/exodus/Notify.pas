unit Notify;
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
    XMLTag,
    JabberID,
    Presence,
    Dockable,
    Windows, Forms, Contnrs, SysUtils, classes;

type
    TNotifyController = class
    private
        _session: TObject;
        _presCallback: longint;
    published
        procedure Callback (event: string; tag: TXMLTag);
        procedure PresCallback(event: string; tag: TXMLTag; p: TJabberPres);
    public
        constructor Create;
        destructor Destroy; override;
        procedure SetSession(js: TObject);
    end;

procedure DoNotify(win: TForm; pref_name: string; msg: string; icon: integer);

resourcestring
    sNotifyOnline = 'is now online.';
    sNotifyOffline = 'is now offline.';
    sNotifyChat = 'Chat with';

implementation
uses
    ExUtils,
    PrefController,
    Jabber1,
    ExEvents,
    RiserWindow,
    Room,
    Roster,
    MMSystem,
    Debug,
    Session;

{---------------------------------------}
constructor TNotifyController.Create;
begin
    //
    inherited;
end;

{---------------------------------------}
destructor TNotifyController.Destroy;
begin
    inherited Destroy;
end;

{---------------------------------------}
procedure TNotifyController.SetSession(js: TObject);
begin
    // Store a reference to the session object
    _session := js;
    with TJabberSession(_session) do begin
        _presCallback := RegisterCallback(PresCallback);
        end;
end;

{---------------------------------------}
procedure TNotifyController.PresCallback(event: string; tag: TXMLTag; p: TJabberPres);
begin
    // getting a pres event
    Callback(event, tag);
end;

{---------------------------------------}
procedure TNotifyController.Callback(event: string; tag: TXMLTag);
var
    sess: TJabberSession;
    nick, j, from: string;
    ritem: TJabberRosterItem;
    tmp_jid: TJabberID;
begin
    // we are getting some event to do notification on

    // DebugMsg('Notify Callback: ' + BoolToStr(MainSession.IsPaused, true));
    if MainSession.IsPaused then begin
        MainSession.QueueEvent(event, tag, Self.Callback);
        exit;
        end;

    sess := TJabberSession(_session);
    from := tag.GetAttribute('from');
    tmp_jid := TJabberID.Create(from);
    j := tmp_jid.jid;
    if (sess.IsBlocked(j)) then exit;
    
    ritem := sess.roster.Find(j);
    if ritem <> nil then nick := ritem.nickname else nick := tmp_jid.user;

    tmp_jid.Free();

    // don't display notifications for rooms, here.
    if (IsRoom(j)) then exit;

    // someone is coming online for the first time..
    if (event = '/presence/online') then
        DoNotify(nil, 'notify_online', nick + ''#10#13 + sNotifyOnline, ico_Online)

    // someone is going offline
    else if (event = '/presence/unavailable') then
        DoNotify(nil, 'notify_offline', nick + ''#10#13 + sNotifyOffline, ico_Offline)

    // don't display normal presence changes
    else if ((event = '/presence/available') or (event = '/presence/error')) then
        // do nothing

    // unkown.
    else
        DebugMessage('Unknown notify event: ' + event);
end;

{---------------------------------------}
procedure DoNotify(win: TForm; pref_name: string; msg: string; icon: integer);
var
    notify : integer;
    w : TForm;
begin
    if ((Application.Active and (not MainSession.prefs.getBool('notify_active'))) or
        (MainSession.IsPaused)) then exit;

    if (win = nil) then
        w := frmExodus
    else
        w := win;

    notify := MainSession.Prefs.getInt(pref_name);

    if ((notify and notify_toast) > 0) then
        ShowRiserWindow(w, msg, icon);

    if ((notify and notify_flash) > 0) then begin
        FlashWindow(w.Handle, true);
        FlashWindow(w.Handle, true);
        end;

    if (MainSession.prefs.getBool('notify_sounds')) then
        PlaySound(pchar('EXODUS_' + pref_name), 0,
                  SND_APPLICATION or SND_ASYNC or SND_NOWAIT or SND_NODEFAULT);
end;

end.