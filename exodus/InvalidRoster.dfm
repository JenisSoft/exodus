inherited frmInvalidRoster: TfrmInvalidRoster
  Left = 223
  Top = 127
  Caption = 'Invalid Roster Items'
  ClientHeight = 237
  ClientWidth = 314
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inline frameButtons1: TframeButtons
    Left = 0
    Top = 205
    Width = 314
    Height = 32
    Align = alBottom
    TabOrder = 0
    TabStop = True
    ExplicitTop = 205
    ExplicitWidth = 314
    ExplicitHeight = 32
    inherited Panel2: TPanel
      Width = 314
      Height = 32
      ExplicitWidth = 314
      ExplicitHeight = 32
      inherited Bevel1: TBevel
        Width = 314
        ExplicitWidth = 314
      end
      inherited Panel1: TPanel
        Left = 154
        Height = 27
        ExplicitLeft = 154
        ExplicitHeight = 27
        inherited btnOK: TTntButton
          Caption = 'Remove'
          Default = False
          OnClick = frameButtons1btnOKClick
        end
        inherited btnCancel: TTntButton
          Caption = 'Close'
          Default = True
          OnClick = frameButtons1btnCancelClick
        end
      end
    end
  end
  object ListView1: TTntListView
    Left = 0
    Top = 0
    Width = 314
    Height = 205
    Align = alClient
    Checkboxes = True
    Columns = <
      item
        Caption = 'Contact ID'
        Width = 100
      end
      item
        Caption = 'Item'
        Width = 80
      end
      item
        Caption = 'Pres. Error'
        Width = 200
      end>
    PopupMenu = popItems
    TabOrder = 1
    ViewStyle = vsReport
  end
  object popItems: TTntPopupMenu
    Left = 24
    Top = 40
    object oggleCheckboxes1: TTntMenuItem
      Caption = 'Toggle Checkboxes'
      OnClick = oggleCheckboxes1Click
    end
  end
end