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

unit ExContactsTreeView;

interface

uses ExTreeView, Exodus_TLB, ExActions;


type
   TExContactsTreeView = class(TExTreeView)

   protected
       function  FilterItem(Item: IExodusItem): Boolean; override;
       procedure SaveGroupsState(); override;
   end;


implementation

uses Classes, COMExodusItem, ExUtils, ExActionCtrl, gnugettext, SelectItem, Unicode;

{---------------------------------------}
function  TExContactsTreeView.FilterItem(Item: IExodusItem): Boolean;
begin
    if (Item.Type_= EI_TYPE_CONTACT) then
        Result := true
    else
        Result := false;
end;

procedure TExContactsTreeView.SaveGroupsState();
begin

end;

end.





