object frmPassword: TfrmPassword
  Left = 245
  Top = 196
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Password Dialog'
  ClientHeight = 184
  ClientWidth = 233
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TTntLabel
    Left = 8
    Top = 9
    Width = 67
    Height = 13
    Caption = 'Old password:'
  end
  object Label2: TTntLabel
    Left = 8
    Top = 57
    Width = 73
    Height = 13
    Caption = 'New password:'
  end
  object Label3: TTntLabel
    Left = 8
    Top = 105
    Width = 109
    Height = 13
    Caption = 'Confirm new password:'
  end
  object txtOldPassword: TTntEdit
    Left = 8
    Top = 27
    Width = 217
    Height = 21
    PasswordCharW = '*'
    TabOrder = 0
  end
  inline frameButtons1: TframeButtons
    Left = 0
    Top = 151
    Width = 233
    Height = 33
    Align = alBottom
    AutoScroll = False
    TabOrder = 3
    inherited Panel2: TPanel
      Width = 233
      Height = 33
      inherited Bevel1: TBevel
        Width = 233
      end
      inherited Panel1: TPanel
        Left = 73
        Height = 28
      end
    end
  end
  object txtNewPassword: TTntEdit
    Left = 8
    Top = 75
    Width = 217
    Height = 21
    PasswordCharW = '*'
    TabOrder = 1
  end
  object txtConfirmPassword: TTntEdit
    Left = 8
    Top = 123
    Width = 217
    Height = 21
    PasswordCharW = '*'
    TabOrder = 2
  end
end