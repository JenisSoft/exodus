inherited frmPrefMsg: TfrmPrefMsg
  Left = 282
  Top = 230
  Caption = 'frmPrefMsg'
  ClientHeight = 350
  ClientWidth = 380
  OldCreateOrder = True
  ExplicitWidth = 392
  ExplicitHeight = 362
  PixelsPerInch = 96
  TextHeight = 13
  object lblTimestampFmt: TTntLabel [0]
    Left = 25
    Top = 172
    Width = 47
    Height = 13
    Caption = 'Format:'
  end
  object lblMsgOptions: TTntLabel [1]
    Left = 5
    Top = 197
    Width = 170
    Height = 13
    Caption = 'Simple message (non-chat) handling'
  end
  object lblSpoolPath: TTntLabel [2]
    Left = 5
    Top = 283
    Width = 128
    Height = 13
    Caption = 'Store Unread messages to:'
    Visible = False
  end
  object lblInviteOptions: TTntLabel [3]
    Left = 5
    Top = 237
    Width = 231
    Height = 13
    Caption = 'When I get invited to a conference room, do this:'
  end
  object chkTimestamp: TTntCheckBox [4]
    Left = 5
    Top = 147
    Width = 170
    Height = 17
    Caption = 'Timestamp messages'
    TabOrder = 2
  end
  object chkMsgQueue: TTntCheckBox [5]
    Left = 5
    Top = 28
    Width = 300
    Height = 17
    Caption = 'Instant Messages never popup a new window'
    TabOrder = 0
  end
  object cboMsgOptions: TTntComboBox [6]
    Left = 25
    Top = 213
    Width = 207
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'Use default message handling'
      'Treat all messages as chats'
      'Put messages into existing chats')
  end
  object txtSpoolPath: TTntEdit [7]
    Left = 25
    Top = 299
    Width = 207
    Height = 21
    TabOrder = 6
    Visible = False
  end
  object btnSpoolBrowse: TTntButton [8]
    Left = 249
    Top = 297
    Width = 75
    Height = 25
    Caption = 'Browse'
    TabOrder = 7
    Visible = False
    OnClick = btnSpoolBrowseClick
  end
  object cboInviteOptions: TTntComboBox [9]
    Left = 25
    Top = 253
    Width = 207
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'Treat as a normal instant message'
      'Always popup the invitation'
      'Automatically join the conference room.')
  end
  object chkBlockNonRoster: TTntCheckBox [10]
    Left = 5
    Top = 44
    Width = 300
    Height = 17
    Caption = 'Block messages from people not on my contact list'
    TabOrder = 1
  end
  object txtTimestampFmt: TTntComboBox [11]
    Left = 78
    Top = 170
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'h:mm am/pm'
    Items.Strings = (
      'h:mm am/pm'
      'hh:mm'
      't'
      'tt')
  end
  inherited pnlHeader: TTntPanel
    Width = 380
    Caption = 'Messages'
    TabOrder = 8
    ExplicitWidth = 348
  end
  object chkQueueDNDChats: TTntCheckBox
    Left = 5
    Top = 92
    Width = 300
    Height = 17
    Caption = 'Queue chat messages when in DND mode.'
    TabOrder = 9
  end
  object chkQueueNotAvail: TTntCheckBox
    Left = 5
    Top = 124
    Width = 378
    Height = 17
    Caption = 
      'Queue all messages when I'#39'm not available (Away, Xtended Away or' +
      ' DND)'
    TabOrder = 10
  end
  object chkChatAvatars: TTntCheckBox
    Left = 5
    Top = 60
    Width = 300
    Height = 17
    Caption = 'Display avatars in chat windows'
    TabOrder = 11
  end
  object chkShowPriority: TTntCheckBox
    Left = 5
    Top = 76
    Width = 300
    Height = 17
    Caption = 'Show priority'
    TabOrder = 12
  end
  object chkQueueOffline: TTntCheckBox
    Left = 5
    Top = 108
    Width = 300
    Height = 17
    Caption = 'Send all messages (even new chats) to message list when away'
    TabOrder = 13
  end
  object OpenDialog1: TOpenDialog
    Filter = 'XML|*.xml'
    Options = [ofHideReadOnly, ofNoValidate, ofPathMustExist, ofEnableSizing]
    Title = 'Select a spool file'
    Left = 284
    Top = 28
  end
end
