object frmConexaoAnaliseOrigem: TfrmConexaoAnaliseOrigem
  Left = 374
  Top = 241
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Criar Conex'#227'o'
  ClientHeight = 259
  ClientWidth = 226
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel1: TRzLabel
    Left = 14
    Top = 6
    Width = 178
    Height = 26
    Caption = 'Configure o Banco Oracle Que Ser'#225' Efetuada a Conex'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object bsSkinStdLabel2: TbsSkinStdLabel
    Left = 7
    Top = 45
    Width = 42
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Caption = 'Servidor:'
  end
  object bsSkinStdLabel3: TbsSkinStdLabel
    Left = 22
    Top = 108
    Width = 34
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Caption = 'Banco:'
  end
  object bsSkinStdLabel1: TbsSkinStdLabel
    Left = 26
    Top = 76
    Width = 28
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Caption = 'Porta:'
  end
  object bsSkinStdLabel5: TbsSkinStdLabel
    Left = 10
    Top = 140
    Width = 39
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Caption = 'Usu'#225'rio:'
  end
  object bsSkinStdLabel6: TbsSkinStdLabel
    Left = 14
    Top = 172
    Width = 34
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Caption = 'Senha:'
  end
  object edtServidor: TbsSkinEdit
    Left = 61
    Top = 42
    Width = 121
    Height = 18
    Text = '192.168.1.173'
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
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object edtBanco: TbsSkinEdit
    Left = 62
    Top = 105
    Width = 121
    Height = 18
    Text = 'DBGEO'
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
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object edtPorta: TbsSkinEdit
    Left = 62
    Top = 74
    Width = 59
    Height = 18
    Text = '1521'
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
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object edtUsu: TbsSkinEdit
    Left = 62
    Top = 138
    Width = 121
    Height = 18
    Text = 'geo_sde'
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
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object edtSenha: TbsSkinPasswordEdit
    Left = 62
    Top = 167
    Width = 121
    Height = 21
    Cursor = crIBeam
    TabOrder = 1
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'edit'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    PasswordKind = pkRoundRect
    Text = 'geo'
    OnKeyPress = FormKeyPress
  end
  object bsSkinButton2: TbsSkinButton
    Left = 82
    Top = 204
    Width = 64
    Height = 21
    TabOrder = 2
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
    OnClick = bsSkinButton2Click
  end
  object bsSkinButton1: TbsSkinButton
    Left = 146
    Top = 204
    Width = 64
    Height = 21
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
    Caption = 'Cancelar'
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
    BorderIcons = [biSystemMenu]
    Left = 137
    Top = 72
  end
end