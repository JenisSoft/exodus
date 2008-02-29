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

unit COMExodusTabWrapper;

interface

uses Exodus_TLB, COMExodusTab;

type
{
   This purpose of this class is to hold the reference to
   IExodusItem interface.
   When TExodusItem is created it's reference count is 0. Without
   having anything reference TExodusItem it will eventually get releasedd
   Having a wrapper that holds the reference to IExodusItem will
   gurantee that TExodusItem will not get released until reference to
   it is set to nil. 
}
   TExodusTabWrapper = class
   private
       _Tab: IExodusTab;
       //_Page: TTntTabSheet;
   public
       constructor Create(activeX_GUID: WideString); overload;
       destructor Destroy(); override;
       property ExodusTab: IExodusTab read _Tab write _Tab;
   end;

implementation
uses TntComCtrls, RosterForm;
{---------------------------------------}
constructor TExodusTabWrapper.Create(activeX_GUID: WideString);
var
    Page: TTntTabSheet;
begin
    inherited Create;
     Page := TTntTabSheet.Create(GetRosterWindow()._PageControl);
     Page.PageControl :=  GetRosterWindow()._PageControl;
    _Tab := TExodusTab.Create(Page, activeX_GUID);
end;

{---------------------------------------}
destructor TExodusTabWrapper.Destroy();
begin
    _Tab := nil;
    inherited;
end;

end.
