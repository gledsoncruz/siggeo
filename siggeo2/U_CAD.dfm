object frmCAD: TfrmCAD
  Left = 324
  Top = 270
  AutoScroll = False
  BorderIcons = []
  Caption = 'frmCAD'
  ClientHeight = 170
  ClientWidth = 263
  Color = clBtnFace
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
  object bsSkinBevel1: TbsSkinBevel
    Left = 8
    Top = 8
    Width = 249
    Height = 109
    SkinDataName = 'bevel'
    DividerMode = False
  end
  object bsSkinStdLabel1: TbsSkinStdLabel
    Left = 21
    Top = 15
    Width = 37
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Caption = 'Inserir...'
  end
  object cbLinha: TbsSkinCheckRadioBox
    Left = 16
    Top = 39
    Width = 81
    Height = 25
    TabOrder = 0
    SkinDataName = 'checkbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    ImageIndex = 0
    Flat = True
    TabStop = True
    CanFocused = True
    Radio = False
    Checked = False
    GroupIndex = 0
    Caption = 'Linha'
  end
  object cbPonto: TbsSkinCheckRadioBox
    Left = 16
    Top = 80
    Width = 81
    Height = 25
    TabOrder = 1
    SkinDataName = 'checkbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    ImageIndex = 0
    Flat = True
    TabStop = True
    CanFocused = True
    Radio = False
    Checked = False
    GroupIndex = 0
    Caption = 'Ponto'
  end
  object cbPoligono: TbsSkinCheckRadioBox
    Left = 144
    Top = 39
    Width = 81
    Height = 25
    TabOrder = 2
    SkinDataName = 'checkbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    ImageIndex = 0
    Flat = True
    TabStop = True
    CanFocused = True
    Radio = False
    Checked = False
    GroupIndex = 0
    Caption = 'Pol'#237'gono'
  end
  object cbTexto: TbsSkinCheckRadioBox
    Left = 144
    Top = 80
    Width = 81
    Height = 25
    TabOrder = 3
    SkinDataName = 'checkbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    ImageIndex = 0
    Flat = True
    TabStop = True
    CanFocused = True
    Radio = False
    Checked = False
    GroupIndex = 0
    Caption = 'Texto'
  end
  object bsSkinButton1: TbsSkinButton
    Left = 176
    Top = 125
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
    Caption = 'Adicionar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton1Click
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
    Left = 105
    Top = 16
  end
end