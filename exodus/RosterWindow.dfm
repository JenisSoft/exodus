object frmRosterWindow: TfrmRosterWindow
  Left = 250
  Top = 146
  Width = 195
  Height = 446
  AlphaBlendValue = 220
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Roster - Exodus'
  Color = clBtnFace
  Constraints.MinWidth = 130
  DragKind = dkDock
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100001000400E80200001600000028000000200000004000
    0000010004000000000000000000600000006000000010000000000000000436
    540014EEFC0004527C000476740084027C00043A5C0004568400046AA40082E1
    F1000095840000E8DB00007777000003340000000000000000000000C0004444
    4444444444444444444444444444444444444444733337444444444444444444
    4444444211111124444444444444444444444471111111174444444444444444
    4444443111111113444444444444444444444431111111134444444444444444
    4444443111111113444444444444444311344431111111134444444444444431
    1113447111111117444444444444441111114442111111244442333244444411
    1111444473333744440111110444443111134444444444444211111112444443
    1134444444444444431111111344444444444444444444444311111113444444
    4444444444444444431111111344444444444444444444444211111112444311
    3444444444444444440111110444411114444444444444444442333244444111
    1444444444444444444444444444431134444444444444444444444444444444
    4444444444444444444444444444444444444444444444444311344444444444
    4444444444444444311113444444444444444444444444441111114444444444
    4444444444444444111111444444444444444444444444443111134444444444
    4444444431134444431134444444444444444444111144444444444444444444
    4444444411114444444444444444444444444444311344444444444444444444
    4444444444444444444444444444444444444444444444444444444444440000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poDefaultPosOnly
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object imgAd: TImage
    Left = 0
    Top = 381
    Width = 187
    Height = 10
    Align = alBottom
    AutoSize = True
    Center = True
    ParentShowHint = False
    ShowHint = False
    Transparent = True
    Visible = False
    OnClick = imgAdClick
  end
  object treeRoster: TTreeView
    Left = 0
    Top = 161
    Width = 187
    Height = 196
    Cursor = crArrow
    Hint = 'Roster Hint'
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    ChangeDelay = 30
    DragMode = dmAutomatic
    HideSelection = False
    Images = frmExodus.ImageList2
    Indent = 19
    MultiSelect = True
    MultiSelectStyle = [msControlSelect, msShiftSelect, msVisibleOnly]
    PopupMenu = popRoster
    ShowButtons = False
    ShowLines = False
    ShowRoot = False
    SortType = stData
    TabOrder = 0
    Visible = False
    OnChange = treeRosterChange
    OnCollapsed = treeRosterCollapsed
    OnCompare = treeRosterCompare
    OnContextPopup = treeRosterContextPopup
    OnCustomDrawItem = treeRosterCustomDrawItem
    OnDblClick = treeRosterDblClick
    OnDragDrop = treeRosterDragDrop
    OnDragOver = treeRosterDragOver
    OnEdited = treeRosterEdited
    OnEditing = treeRosterEditing
    OnExit = treeRosterExit
    OnExpanded = treeRosterExpanded
    OnKeyPress = treeRosterKeyPress
    OnMouseDown = treeRosterMouseDown
    OnMouseMove = treeRosterMouseMove
  end
  object StatBar: TStatusBar
    Left = 0
    Top = 391
    Width = 187
    Height = 21
    Panels = <
      item
        Alignment = taCenter
        Text = 'foo@jabber.org'
        Width = 50
      end>
    SimplePanel = False
  end
  object pnlShow: TPanel
    Left = 0
    Top = 357
    Width = 187
    Height = 24
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 2
    TabOrder = 2
    object imgStatus: TPaintBox
      Left = 2
      Top = 2
      Width = 23
      Height = 20
      Align = alLeft
      OnPaint = imgStatusPaint
    end
    object pnlStatus: TPanel
      Left = 25
      Top = 2
      Width = 160
      Height = 20
      Cursor = crArrow
      Align = alClient
      Alignment = taLeftJustify
      AutoSize = True
      BevelOuter = bvNone
      BorderWidth = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 0
      object lblStatusLink: TLabel
        Left = 2
        Top = 2
        Width = 30
        Height = 16
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Offline'
        OnClick = pnlStatusClick
      end
    end
  end
  object pnlConnect: TPanel
    Left = 0
    Top = 0
    Width = 187
    Height = 161
    Align = alTop
    BevelOuter = bvLowered
    BorderWidth = 4
    Color = clWindow
    TabOrder = 3
    object lblStatus: TLabel
      Left = 5
      Top = 62
      Width = 177
      Height = 60
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Disconnected.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblLogin: TLabel
      Left = 5
      Top = 122
      Width = 177
      Height = 15
      Cursor = crHandPoint
      Align = alTop
      Alignment = taCenter
      Caption = 'Click Here to Sign On'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = lblLoginClick
    end
    object pnlAnimation: TPanel
      Left = 5
      Top = 5
      Width = 177
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = clScrollBar
      TabOrder = 0
      object aniWait: TAnimate
        Left = 48
        Top = 3
        Width = 30
        Height = 30
        Active = False
        Color = clWhite
        ParentColor = False
        StopFrame = 12
        Visible = False
      end
    end
  end
  object popRoster: TPopupMenu
    OnPopup = popRosterPopup
    Left = 8
    Top = 208
    object popChat: TMenuItem
      Caption = 'Chat...'
      OnClick = popChatClick
    end
    object popMsg: TMenuItem
      Caption = 'Message...'
      OnClick = popMsgClick
    end
    object popSendFile: TMenuItem
      Caption = 'Send File...'
      OnClick = popSendFileClick
    end
    object InvitetoConference1: TMenuItem
      Caption = 'Invite to Conference'
      OnClick = InvitetoConference1Click
    end
    object popSendContacts: TMenuItem
      Caption = 'Send Contact To...'
      OnClick = popSendContactsClick
    end
    object NetMeetingCall1: TMenuItem
      Caption = 'NetMeeting Call'
      Visible = False
    end
    object popClientInfo: TMenuItem
      Caption = 'Client Info'
      object popVersion: TMenuItem
        Caption = 'Version Request'
        OnClick = popVersionClick
      end
      object popTime: TMenuItem
        Caption = 'Time Request'
        OnClick = popVersionClick
      end
      object popLast: TMenuItem
        Caption = 'Last Activity'
        OnClick = popVersionClick
      end
    end
    object popPresence: TMenuItem
      Caption = 'Presence'
      object popSendPres: TMenuItem
        Caption = 'Send Available'
        OnClick = popSendPresClick
      end
      object popSendInvisible: TMenuItem
        Caption = 'Send Invisible'
        OnClick = popSendPresClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object popSendSubscribe: TMenuItem
        Caption = 'Subscribe'
        OnClick = popSendSubscribeClick
      end
    end
    object popRename: TMenuItem
      Caption = 'Rename...'
      OnClick = popRenameClick
    end
    object popHistory: TMenuItem
      Caption = 'History'
      OnClick = popHistoryClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object popBlock: TMenuItem
      Caption = 'Block'
      OnClick = popBlockClick
    end
    object popRemove: TMenuItem
      Caption = 'Remove'
      ShortCut = 46
      OnClick = popRemoveClick
    end
    object popProperties: TMenuItem
      Caption = 'Properties...'
      ShortCut = 121
      OnClick = popPropertiesClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
  end
  object popStatus: TPopupMenu
    Images = frmExodus.ImageList2
    Left = 8
    Top = 240
    object presChat: TMenuItem
      Caption = 'I Want to Chat'
      ImageIndex = 4
      OnClick = presAvailableClick
    end
    object presAvailable: TMenuItem
      Tag = 1
      Caption = 'Available'
      ImageIndex = 1
      OnClick = presAvailableClick
    end
    object presAway: TMenuItem
      Tag = 2
      Caption = 'Away'
      ImageIndex = 2
      OnClick = presAvailableClick
    end
    object presXA: TMenuItem
      Tag = 3
      Caption = 'Ext. Away'
      ImageIndex = 10
      OnClick = presAvailableClick
    end
    object presDND: TMenuItem
      Tag = 4
      Caption = 'Do Not Disturb'
      ImageIndex = 3
      OnClick = presAvailableClick
    end
  end
  object ImageList2: TImageList
    BkColor = clWhite
    ShareImages = True
    Left = 40
    Top = 178
    Bitmap = {
      494C010102000400040010001000FFFFFF00FF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000100000000100180000000000000C
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000
      000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000848484848484848484848484848484
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF000000848484000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000848484848484848484000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF000000848484848484848484000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000848484000000FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000
      00848484848484848484848484848484000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF0000000000
      00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFE00F00000000
      FEFFF01F00000000FC7FF83F00000000F83FFC7F00000000F01FFEFF00000000
      E00FFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object popActions: TPopupMenu
    Left = 40
    Top = 208
    object popAddContact: TMenuItem
      Caption = 'Add Contact'
      OnClick = popAddContactClick
    end
    object popAddGroup: TMenuItem
      Caption = 'Add Group'
      OnClick = popAddGroupClick
    end
  end
  object popGroup: TPopupMenu
    Left = 40
    Top = 240
    object popGrpPresence: TMenuItem
      Caption = 'Send Presence'
      object popGrpAvailable: TMenuItem
        Caption = 'Available'
        OnClick = popSendPresClick
      end
      object popGrpInvisible: TMenuItem
        Caption = 'Invisible'
        OnClick = popSendPresClick
      end
    end
    object popGrpInvite: TMenuItem
      Caption = 'Invite to Conference'
      OnClick = popGrpInviteClick
    end
    object BroadcastMessage1: TMenuItem
      Caption = 'Broadcast Message'
      OnClick = BroadcastMessage1Click
    end
    object SendContactsTo1: TMenuItem
      Caption = 'Send Contacts To...'
      OnClick = popSendContactsClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object popGroupBlock: TMenuItem
      Caption = 'Block'
      OnClick = popBlockClick
    end
    object popGrpRename: TMenuItem
      Caption = 'Rename'
      OnClick = popGrpRenameClick
    end
    object popGrpRemove: TMenuItem
      Caption = 'Remove'
      OnClick = popGrpRemoveClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object NewGroup1: TMenuItem
      Caption = 'New Group'
      OnClick = popAddGroupClick
    end
  end
  object popBookmark: TPopupMenu
    Left = 8
    Top = 272
    object Join1: TMenuItem
      Caption = 'Join Group'
      OnClick = treeRosterDblClick
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Delete1: TMenuItem
      Caption = 'Remove'
      ShortCut = 46
      OnClick = popRemoveClick
    end
    object Properties1: TMenuItem
      Caption = 'Properties'
      OnClick = popPropertiesClick
    end
  end
  object popTransport: TPopupMenu
    Left = 40
    Top = 272
    object popTransLogoff: TMenuItem
      Caption = 'Log Off'
      OnClick = popTransLogoffClick
    end
    object popTransLogon: TMenuItem
      Caption = 'Log On'
      OnClick = popTransLogoffClick
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object popTransProperties: TMenuItem
      Caption = 'Rename ...'
      OnClick = popRenameClick
    end
    object popTransUnRegister: TMenuItem
      Caption = 'Remove'
      OnClick = popTransUnRegisterClick
    end
  end
end
