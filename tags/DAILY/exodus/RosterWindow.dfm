object frmRosterWindow: TfrmRosterWindow
  Left = 271
  Top = 186
  Width = 195
  Height = 446
  AlphaBlendValue = 220
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Roster - Exodus'
  Color = clBtnFace
  Constraints.MinWidth = 130
  DefaultMonitor = dmDesktop
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
  object pnlFind: TPanel
    Left = 0
    Top = 0
    Width = 187
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    Visible = False
    object lblFind: TTntLabel
      Left = 3
      Top = 4
      Width = 23
      Height = 13
      Caption = 'Find:'
    end
    object btnFindClose: TSpeedButton
      Left = 162
      Top = 2
      Width = 23
      Height = 21
      Caption = 'X'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnFindCloseClick
    end
    object txtFind: TTntEdit
      Left = 56
      Top = 1
      Width = 101
      Height = 21
      Hint = 'Esc to quit, Enter to select current,  F3 to search again'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = txtFindChange
      OnKeyUp = txtFindKeyUp
    end
    object radJID: TTntRadioButton
      Left = 38
      Top = 25
      Width = 41
      Height = 17
      Caption = 'JID'
      TabOrder = 1
    end
    object radNick: TTntRadioButton
      Left = 86
      Top = 25
      Width = 80
      Height = 17
      Caption = 'Nickname'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
  end
  object treeRoster: TTreeView
    Left = 0
    Top = 210
    Width = 187
    Height = 147
    Cursor = crArrow
    Hint = 'Roster Hint'
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    ChangeDelay = 30
    Ctl3D = True
    DragMode = dmAutomatic
    HideSelection = False
    Images = frmExodus.ImageList2
    Indent = 19
    MultiSelect = True
    MultiSelectStyle = [msControlSelect, msShiftSelect, msVisibleOnly]
    ParentCtl3D = False
    ParentShowHint = False
    PopupMenu = popRoster
    ShowButtons = False
    ShowHint = True
    ShowLines = False
    ShowRoot = False
    SortType = stData
    TabOrder = 0
    ToolTips = False
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
    OnMouseUp = treeRosterMouseUp
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
  end
  object pnlShow: TPanel
    Left = 0
    Top = 357
    Width = 187
    Height = 24
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 2
    TabOrder = 1
    object imgStatus: TPaintBox
      Left = 2
      Top = 2
      Width = 23
      Height = 20
      Align = alLeft
      ParentShowHint = False
      ShowHint = True
      OnPaint = imgStatusPaint
    end
    object imgSSL: TImage
      Left = 162
      Top = 2
      Width = 23
      Height = 20
      Align = alRight
      Center = True
      Picture.Data = {
        07544269746D6170F6000000424DF60000000000000076000000280000001000
        0000100000000100040000000000800000000000000000000000100000000000
        0000000000000000800000800000008080008000000080008000808000008080
        8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
        FF00333333000003333333330088888003333330778707877033330888870788
        8803330777880887770333088880008888033307777000777703330888888888
        8803333000000000003333330803330803333333080333080333333308033308
        0333333377800087733333333088888033333333330000033333333333333333
        3333}
      Transparent = True
      Visible = False
    end
    object pnlStatus: TTntPanel
      Left = 25
      Top = 2
      Width = 137
      Height = 20
      Cursor = crArrow
      Align = alClient
      Alignment = taLeftJustify
      AutoSize = True
      BevelOuter = bvNone
      BevelWidth = 0
      TabOrder = 0
      object lblStatusLink: TTntLabel
        Left = 0
        Top = 0
        Width = 30
        Height = 20
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Offline'
        Transparent = False
        Layout = tlCenter
        OnClick = pnlStatusClick
      end
    end
  end
  object pnlConnect: TPanel
    Left = 0
    Top = 49
    Width = 187
    Height = 161
    Align = alTop
    BevelOuter = bvLowered
    BorderWidth = 4
    Color = clWindow
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 2
    object lblStatus: TTntLabel
      Left = 5
      Top = 62
      Width = 177
      Height = 60
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Disconnected.'
      Transparent = False
    end
    object lblLogin: TTntLabel
      Left = 5
      Top = 122
      Width = 177
      Height = 13
      Cursor = crHandPoint
      Align = alTop
      Alignment = taCenter
      Caption = 'Click to Login'
      Transparent = False
      OnClick = lblLoginClick
    end
    object pnlAnimation: TPanel
      Left = 5
      Top = 5
      Width = 177
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object aniWait: TAnimate
        Left = 48
        Top = 3
        Width = 30
        Height = 30
        Color = clWhite
        ParentColor = False
        StopFrame = 12
        Visible = False
      end
    end
  end
  object popRoster: TTntPopupMenu
    AutoHotkeys = maManual
    OnPopup = popRosterPopup
    Left = 8
    Top = 208
    object popChat: TTntMenuItem
      Caption = 'Chat...'
      OnClick = popChatClick
    end
    object popMsg: TTntMenuItem
      Caption = 'Message...'
      OnClick = popMsgClick
    end
    object popHistory: TTntMenuItem
      Caption = 'Show History...'
      OnClick = popHistoryClick
    end
    object popSendFile: TTntMenuItem
      Caption = 'Send File...'
      OnClick = popSendFileClick
    end
    object popInvite: TTntMenuItem
      Caption = 'Invite to Conference'
      OnClick = popInviteClick
    end
    object popSendContacts: TTntMenuItem
      Caption = 'Send Contact To...'
      OnClick = popSendContactsClick
    end
    object popClientInfo: TTntMenuItem
      Caption = 'Client Info'
      object popVersion: TTntMenuItem
        Caption = 'Version Request'
        OnClick = popVersionClick
      end
      object popTime: TTntMenuItem
        Caption = 'Time Request'
        OnClick = popVersionClick
      end
      object popLast: TTntMenuItem
        Caption = 'Last Activity'
        OnClick = popVersionClick
      end
    end
    object popPresence: TTntMenuItem
      Caption = 'Presence'
      object popSendPres: TTntMenuItem
        Caption = 'Send Visible'
        OnClick = popSendPresClick
      end
      object popSendInvisible: TTntMenuItem
        Caption = 'Send Invisible'
        OnClick = popSendPresClick
      end
      object N2: TTntMenuItem
        Caption = '-'
      end
      object popSendSubscribe: TTntMenuItem
        Caption = 'Subscribe Again'
        OnClick = popSendSubscribeClick
      end
    end
    object popRename: TTntMenuItem
      Caption = 'Rename...'
      ShortCut = 113
      OnClick = popRenameClick
    end
    object N1: TTntMenuItem
      Caption = '-'
    end
    object popBlock: TTntMenuItem
      Caption = 'Block'
      OnClick = popBlockClick
    end
    object popRemove: TTntMenuItem
      Caption = 'Remove'
      ShortCut = 46
      OnClick = popRemoveClick
    end
    object popProperties: TTntMenuItem
      Caption = 'Properties...'
      ShortCut = 121
      OnClick = popPropertiesClick
    end
    object N7: TTntMenuItem
      Caption = '-'
    end
  end
  object popStatus: TTntPopupMenu
    AutoHotkeys = maManual
    Images = frmExodus.ImageList2
    Left = 8
    Top = 240
    object presOnline: TTntMenuItem
      Caption = 'Available'
      ImageIndex = 1
      OnClick = presDNDClick
    end
    object presChat: TTntMenuItem
      Tag = 1
      Caption = 'Free to Chat'
      ImageIndex = 4
      OnClick = presDNDClick
    end
    object presAway: TTntMenuItem
      Tag = 2
      Caption = 'Away'
      ImageIndex = 2
      OnClick = presDNDClick
    end
    object presXA: TTntMenuItem
      Tag = 3
      Caption = 'Xtended Away'
      ImageIndex = 10
      OnClick = presDNDClick
    end
    object presDND: TTntMenuItem
      Tag = 4
      Caption = 'Do Not Disturb'
      ImageIndex = 3
      OnClick = presDNDClick
    end
    object N8: TTntMenuItem
      Tag = 99
      Caption = '-'
    end
    object Custom1: TTntMenuItem
      Tag = 99
      Caption = 'Custom ...'
      OnClick = presCustomClick
    end
  end
  object ImageList2: TImageList
    BkColor = clWhite
    ShareImages = True
    Left = 40
    Top = 178
    Bitmap = {
      494C010102000400040010001000FFFFFF00FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000848484008484840084848400848484008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000008484840000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000084848400848484008484840000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000084848400848484008484840000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000008484840000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000848484008484840084848400848484008484840000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
  object popActions: TTntPopupMenu
    AutoHotkeys = maManual
    Left = 40
    Top = 208
    object popAddContact: TTntMenuItem
      Caption = 'Add Contact'
      OnClick = popAddContactClick
    end
    object popAddGroup: TTntMenuItem
      Caption = 'Add Group'
      OnClick = popAddGroupClick
    end
  end
  object popGroup: TTntPopupMenu
    AutoHotkeys = maManual
    Left = 40
    Top = 240
    object popGrpPresence: TTntMenuItem
      Caption = 'Send Presence'
      object popGrpAvailable: TTntMenuItem
        Caption = 'Visible'
        OnClick = popSendPresClick
      end
      object popGrpInvisible: TTntMenuItem
        Caption = 'Invisible'
        OnClick = popSendPresClick
      end
    end
    object popGrpInvite: TTntMenuItem
      Caption = 'Invite to Conference'
      OnClick = popGrpInviteClick
    end
    object BroadcastMessage1: TTntMenuItem
      Caption = 'Broadcast Message'
      OnClick = BroadcastMessage1Click
    end
    object SendContactsTo1: TTntMenuItem
      Caption = 'Send Contacts To...'
      OnClick = popSendContactsClick
    end
    object MoveorCopyContacts1: TTntMenuItem
      Caption = 'Move or Copy Contacts...'
      OnClick = MoveorCopyContacts1Click
    end
    object N3: TTntMenuItem
      Caption = '-'
    end
    object popGroupBlock: TTntMenuItem
      Caption = 'Block'
      OnClick = popBlockClick
    end
    object popGrpRename: TTntMenuItem
      Caption = 'Rename'
      OnClick = popGrpRenameClick
    end
    object popGrpRemove: TTntMenuItem
      Caption = 'Remove'
      OnClick = popGrpRemoveClick
    end
    object N4: TTntMenuItem
      Caption = '-'
    end
    object NewGroup1: TTntMenuItem
      Caption = 'New Group'
      OnClick = popAddGroupClick
    end
  end
  object popBookmark: TTntPopupMenu
    AutoHotkeys = maManual
    Left = 8
    Top = 272
    object Join1: TTntMenuItem
      Caption = 'Join Group'
      OnClick = treeRosterDblClick
    end
    object N5: TTntMenuItem
      Caption = '-'
    end
    object Delete1: TTntMenuItem
      Caption = 'Remove'
      ShortCut = 46
      OnClick = popRemoveClick
    end
    object Properties1: TTntMenuItem
      Caption = 'Properties'
      OnClick = popPropertiesClick
    end
  end
  object popTransport: TTntPopupMenu
    AutoHotkeys = maManual
    Left = 40
    Top = 272
    object popTransLogoff: TTntMenuItem
      Caption = 'Log Off'
      OnClick = popTransLogoffClick
    end
    object popTransLogon: TTntMenuItem
      Caption = 'Log On'
      OnClick = popTransLogoffClick
    end
    object N6: TTntMenuItem
      Caption = '-'
    end
    object popTransProperties: TTntMenuItem
      Caption = 'Rename ...'
      OnClick = popRenameClick
    end
    object popTransEdit: TTntMenuItem
      Caption = 'Properties ...'
      OnClick = popTransEditClick
    end
    object popTransUnRegister: TTntMenuItem
      Caption = 'Remove'
      OnClick = popTransUnRegisterClick
    end
  end
  object autoScroll: TTimer
    Enabled = False
    Interval = 100
    OnTimer = autoScrollTimer
    Left = 72
    Top = 272
  end
end
