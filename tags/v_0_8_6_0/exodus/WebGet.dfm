object frmWebDownload: TfrmWebDownload
  Left = 310
  Top = 482
  Width = 362
  Height = 128
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    354
    94)
  PixelsPerInch = 96
  TextHeight = 13
  object lblStatus: TTntLabel
    Left = 8
    Top = 10
    Width = 40
    Height = 13
    Caption = 'lblStatus'
    Visible = False
  end
  inline frameButtons1: TframeButtons
    Left = 0
    Top = 57
    Width = 354
    Height = 37
    Align = alBottom
    AutoScroll = False
    TabOrder = 0
    inherited Panel2: TPanel
      Top = 1
      Width = 354
      Align = alBottom
      inherited Bevel1: TBevel
        Width = 354
      end
      inherited Panel1: TPanel
        Left = 194
        inherited btnOK: TTntButton
          Visible = False
        end
        inherited btnCancel: TTntButton
          OnClick = frameButtons1btnCancelClick
        end
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 32
    Width = 337
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    OnWork = IdHTTP1Work
    OnWorkBegin = IdHTTP1WorkBegin
    OnConnected = IdHTTP1Connected
    AllowCookies = True
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 56
  end
end