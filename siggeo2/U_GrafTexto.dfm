object frmGrafTexto: TfrmGrafTexto
  Left = 278
  Top = 178
  AutoScroll = False
  BorderIcons = []
  Caption = 'Inserir Texto'
  ClientHeight = 265
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel2: TRzLabel
    Left = 194
    Top = 111
    Width = 36
    Height = 13
    Caption = 'Angulo:'
    Transparent = True
  end
  object RzLabel3: TRzLabel
    Left = 8
    Top = 7
    Width = 30
    Height = 13
    Caption = 'Texto:'
    Transparent = True
  end
  object edtColor: TRzLabel
    Left = 255
    Top = 138
    Width = 35
    Height = 22
    AutoSize = False
    Color = clBlack
    ParentColor = False
    OnClick = edtColorClick
    BorderOuter = fsLowered
  end
  object Label2: TLabel
    Left = 207
    Top = 143
    Width = 19
    Height = 13
    Caption = 'Cor:'
    Transparent = True
  end
  object bsSkinButton1: TbsSkinButton
    Left = 76
    Top = 220
    Width = 75
    Height = 25
    TabOrder = 0
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'OK'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton1Click
  end
  object bsSkinButton2: TbsSkinButton
    Left = 150
    Top = 220
    Width = 75
    Height = 25
    TabOrder = 1
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Cancelar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton2Click
  end
  object memo1: TbsSkinMemo
    Left = 8
    Top = 25
    Width = 306
    Height = 69
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = memo1Change
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBlack
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = False
    BitMapBG = False
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'memo'
  end
  object SpinEdit1: TbsSkinSpinEdit
    Left = 237
    Top = 106
    Width = 52
    Height = 20
    TabOrder = 3
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'spinedit'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    UseSkinSize = True
    ValueType = vtInteger
    MaxValue = 359.000000000000000000
    Value = 1.000000000000000000
    Increment = 1.000000000000000000
    EditorEnabled = True
    MaxLength = 0
    OnChange = SpinEdit1Change
  end
  object bsSkinButton3: TbsSkinButton
    Left = 228
    Top = 168
    Width = 61
    Height = 25
    TabOrder = 4
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Fonte'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton3Click
  end
  object bsSkinPanel1: TbsSkinPanel
    Left = 8
    Top = 99
    Width = 168
    Height = 110
    TabOrder = 5
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'panel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'bsSkinPanel1'
    object RzBorder1: TRzBorder
      Left = 1
      Top = 1
      Width = 166
      Height = 108
      Align = alClient
    end
    object RzLabel1: TRzLabel
      Left = 1
      Top = 1
      Width = 166
      Height = 108
      Align = alClient
      AutoSize = False
      Caption = 'Texto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Angle = 1
      Rotation = roFlat
    end
  end
  object btAplicar: TbsSkinButton
    Left = 224
    Top = 220
    Width = 75
    Height = 25
    TabOrder = 6
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Aplicar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btAplicarClick
  end
  object bsBusinessSkinForm1: TbsBusinessSkinForm
    UseFormCursorInNCArea = False
    MaxMenuItemsInWindow = 0
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = False
    AlwaysShowInTray = False
    LogoBitMapTransparent = False
    AlwaysMinimizeToTray = False
    UseSkinFontInMenu = True
    ShowIcon = False
    MaximizeOnFullScreen = False
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    ShowObjectHint = False
    UseDefaultObjectHint = True
    MenusAlphaBlend = False
    MenusAlphaBlendAnimation = False
    MenusAlphaBlendValue = 0
    DefCaptionFont.Charset = DEFAULT_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = 14
    DefCaptionFont.Name = 'Arial'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = 14
    DefInActiveCaptionFont.Name = 'Arial'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 23
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Arial'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    SkinData = frmMenu.bsSkinData1
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = True
    MagneticSize = 5
    BorderIcons = []
    Left = 148
    Top = 8
  end
end
