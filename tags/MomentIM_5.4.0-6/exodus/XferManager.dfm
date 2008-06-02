inherited frmXferManager: TfrmXferManager
  Left = 251
  Top = 229
  Caption = 'File Transfer Manager'
  ClientWidth = 455
  OldCreateOrder = True
  OnDestroy = FormDestroy
  ExplicitWidth = 463
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlDockTop: TPanel
    Width = 455
    TabOrder = 1
    ExplicitWidth = 455
    inherited tbDockBar: TToolBar
      Left = 406
      ExplicitLeft = 406
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 403
      Height = 32
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 5
      ParentColor = True
      TabOrder = 1
      object pnlCaption: TTntPanel
        Left = 5
        Top = 5
        Width = 393
        Height = 22
        Align = alClient
        BevelOuter = bvLowered
        Caption = 'File Transfers'
        Color = clHighlight
        ParentBackground = False
        TabOrder = 0
      end
    end
  end
  object box: TScrollBox
    Left = 0
    Top = 33
    Width = 455
    Height = 130
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    TabOrder = 0
    ExplicitTop = 32
    ExplicitHeight = 135
  end
  object httpServer: TIdHTTPServer
    Bindings = <>
    CommandHandlers = <>
    DefaultPort = 5280
    Greeting.NumericCode = 0
    ListenQueue = 1
    MaxConnectionReply.NumericCode = 0
    OnDisconnect = httpServerDisconnect
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    OnCommandGet = httpServerCommandGet
    Left = 40
    Top = 40
  end
  object tcpServer: TIdTCPServer
    Bindings = <>
    CommandHandlers = <>
    DefaultPort = 5347
    Greeting.NumericCode = 0
    MaxConnectionReply.NumericCode = 0
    OnConnect = tcpServerConnect
    OnExecute = tcpServerExecute
    OnDisconnect = tcpServerDisconnect
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 0
    Left = 72
    Top = 40
  end
  object OpenDialog1: TOpenDialog
    Filter = 'All Files|*.*'
    Left = 8
    Top = 40
  end
end
