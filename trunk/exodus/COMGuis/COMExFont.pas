unit COMExFont;
{
    Copyright 2006, Peter Millard

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


{-----------------------------------------------------------------------------}
{-----------------------------------------------------------------------------}
{ This is autogenerated code using the COMGuiGenerator. DO NOT MODIFY BY HAND }
{-----------------------------------------------------------------------------}
{-----------------------------------------------------------------------------}


{$WARN SYMBOL_PLATFORM OFF}

interface
uses
    Graphics, ComObj, ActiveX, ExodusCOM_TLB, Forms, Classes, Controls, StdCtrls, StdVcl;

type
    TExControlFont = class(TAutoObject, IExodusControl, IExodusControlFont)
    public
        constructor Create(control: TFont);

    private
        _control: TFont;

    protected
        function Get_ControlType: ExodusControlTypes; safecall;
        function Get_Charset: Integer; safecall;
        procedure Set_Charset(Value: Integer); safecall;
        function Get_Color: Integer; safecall;
        procedure Set_Color(Value: Integer); safecall;
        function Get_Height: Integer; safecall;
        procedure Set_Height(Value: Integer); safecall;
        function Get_Name: Widestring; safecall;
        procedure Set_Name(const Value: Widestring); safecall;
        function Get_Pitch: Integer; safecall;
        procedure Set_Pitch(Value: Integer); safecall;
        function Get_Size: Integer; safecall;
        procedure Set_Size(Value: Integer); safecall;
    end;


{---------------------------------------}
{---------------------------------------}
{---------------------------------------}
implementation


constructor TExControlFont.Create(control: TFont);
begin
     _control := control; 
end;

function TExControlFont.Get_ControlType: ExodusControlTypes;
begin
    Result := ExodusControlFont;
end;

function TExControlFont.Get_Charset: Integer;
begin
      Result := _control.Charset;
end;

procedure TExControlFont.Set_Charset(Value: Integer);
begin
      _control.Charset := Value;
end;

function TExControlFont.Get_Color: Integer;
begin
      Result := _control.Color;
end;

procedure TExControlFont.Set_Color(Value: Integer);
begin
      _control.Color := Value;
end;

function TExControlFont.Get_Height: Integer;
begin
      Result := _control.Height;
end;

procedure TExControlFont.Set_Height(Value: Integer);
begin
      _control.Height := Value;
end;

function TExControlFont.Get_Name: Widestring;
begin
      Result := _control.Name;
end;

procedure TExControlFont.Set_Name(const Value: Widestring);
begin
      _control.Name := Value;
end;

function TExControlFont.Get_Pitch: Integer;
begin
    if (_control.Pitch = fpDefault) then Result := 0;
    if (_control.Pitch = fpVariable) then Result := 1;
    if (_control.Pitch = fpFixed) then Result := 2;
end;

procedure TExControlFont.Set_Pitch(Value: Integer);
begin
   if (Value = 0) then _control.Pitch := fpDefault;
   if (Value = 1) then _control.Pitch := fpVariable;
   if (Value = 2) then _control.Pitch := fpFixed;
end;

function TExControlFont.Get_Size: Integer;
begin
      Result := _control.Size;
end;

procedure TExControlFont.Set_Size(Value: Integer);
begin
      _control.Size := Value;
end;




end.
