object frmExportar: TfrmExportar
  Left = 322
  Top = 216
  AutoScroll = False
  BorderIcons = []
  Caption = 'Exportar'
  ClientHeight = 243
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinStdLabel1: TbsSkinStdLabel
    Left = 8
    Top = 16
    Width = 84
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Caption = 'Nome do arquivo:'
  end
  object bsSkinStdLabel2: TbsSkinStdLabel
    Left = 8
    Top = 48
    Width = 76
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Caption = 'Fator de escala:'
  end
  object bsSkinStdLabel3: TbsSkinStdLabel
    Left = 8
    Top = 80
    Width = 88
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Caption = 'S'#237'mbolo da escala'
  end
  object bsSkinStdLabel4: TbsSkinStdLabel
    Left = 8
    Top = 112
    Width = 51
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Caption = 'Qualidade:'
  end
  object bsSkinStdLabel5: TbsSkinStdLabel
    Left = 8
    Top = 152
    Width = 54
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Caption = 'Resolu'#231#227'o:'
  end
  object bsSkinStdLabel6: TbsSkinStdLabel
    Left = 184
    Top = 152
    Width = 6
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Caption = '0'
  end
  object bsSkinStdLabel7: TbsSkinStdLabel
    Left = 168
    Top = 152
    Width = 7
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Caption = 'X'
  end
  object bsSkinStdLabel8: TbsSkinStdLabel
    Left = 104
    Top = 152
    Width = 6
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Caption = '0'
  end
  object bsSkinStdLabel9: TbsSkinStdLabel
    Left = 272
    Top = 152
    Width = 26
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Caption = 'pixels'
  end
  object bsSkinSpeedButton1: TbsSkinSpeedButton
    Left = 280
    Top = 8
    Width = 17
    Height = 17
    Hint = 'Salvar exporta'#231#227'o em...'
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'toolbutton'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    WidthWithCaption = 0
    WidthWithoutCaption = 0
    ImageIndex = 0
    RepeatMode = False
    RepeatInterval = 100
    Transparent = False
    Flat = False
    AllowAllUp = False
    ShowHint = True
    ParentShowHint = False
    Down = False
    GroupIndex = 0
    Caption = '...'
    ShowCaption = True
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinSpeedButton1Click
  end
  object bsSkinSlider1: TbsSkinSlider
    Left = 99
    Top = 104
    Width = 198
    Height = 33
    TabOrder = 0
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'slider'
    ParentShowHint = False
    ShowHint = True
    Value = 85
    Transparent = False
    UseSkinThumb = True
    OnDrawPoints = bsSkinSlider1DrawPoints
  end
  object edt_nome_arquivo: TbsSkinEdit
    Left = 104
    Top = 8
    Width = 169
    Height = 18
    Text = 'C:\sem_titulo.jpg'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBlack
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultWidth = 0
    DefaultHeight = 0
    ButtonMode = False
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Cmbobox_Simbolo_escala: TbsSkinComboBox
    Left = 104
    Top = 72
    Width = 193
    Height = 20
    TabOrder = 2
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'combobox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    UseSkinSize = True
    AlphaBlend = False
    AlphaBlendValue = 0
    AlphaBlendAnimation = False
    HideSelection = True
    AutoComplete = True
    ListBoxUseSkinFont = True
    ListBoxUseSkinItemHeight = True
    ListBoxWidth = 0
    ImageIndex = -1
    ListBoxCaptionMode = False
    ListBoxDefaultFont.Charset = DEFAULT_CHARSET
    ListBoxDefaultFont.Color = clWindowText
    ListBoxDefaultFont.Height = 14
    ListBoxDefaultFont.Name = 'Arial'
    ListBoxDefaultFont.Style = []
    ListBoxDefaultCaptionFont.Charset = DEFAULT_CHARSET
    ListBoxDefaultCaptionFont.Color = clWindowText
    ListBoxDefaultCaptionFont.Height = 14
    ListBoxDefaultCaptionFont.Name = 'Arial'
    ListBoxDefaultCaptionFont.Style = []
    ListBoxDefaultItemHeight = 20
    ListBoxCaptionAlignment = taLeftJustify
    TabStop = True
    Text = 'moNoSymbologyScaled'
    Items.Strings = (
      'moNoSymbologyScaled'
      'moLineSymbolsNotScaled'
      'moAllSymbologyScaled')
    ItemIndex = 0
    DropDownCount = 8
    HorizontalExtent = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    Sorted = False
    Style = bscbFixedStyle
  end
  object bsSkinButton1: TbsSkinButton
    Left = 72
    Top = 200
    Width = 75
    Height = 25
    TabOrder = 3
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
    Left = 176
    Top = 200
    Width = 75
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
    Caption = 'Cancelar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton2Click
  end
  object bsSkinSpinEdit1: TbsSkinSpinEdit
    Left = 104
    Top = 40
    Width = 41
    Height = 20
    TabOrder = 5
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
    MinValue = 1.000000000000000000
    MaxValue = 6.000000000000000000
    Value = 1.000000000000000000
    Increment = 1.000000000000000000
    EditorEnabled = True
    MaxLength = 0
    OnChange = bsSkinSpinEdit1Change
  end
  object bsSkinSavePictureDialog1: TbsSkinSavePictureDialog
    DialogWidth = 0
    DialogHeight = 0
    DialogMinWidth = 0
    DialogMinHeight = 0
    CheckFileExists = True
    StretchPicture = False
    MultiSelection = False
    AlphaBlend = False
    AlphaBlendValue = 200
    AlphaBlendAnimation = False
    CtrlAlphaBlend = False
    CtrlAlphaBlendValue = 225
    CtrlAlphaBlendAnimation = False
    LVHeaderSkinDataName = 'resizebutton'
    SkinData = frmMenu.bsSkinData1
    CtrlSkinData = frmMenu.bsSkinData1
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    Title = 'Exportar'
    InitialDir = 'C:'
    Filter = 'Jpg (*.jpg)|*.jpg'
    FilterIndex = 1
    Left = 8
    Top = 176
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
    SkinHint = frmMenu.bsSkinHint1
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
    BorderIcons = [biSystemMenu, biMinimize]
    Left = 40
    Top = 176
  end
end