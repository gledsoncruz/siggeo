object frmLoginProj: TfrmLoginProj
  Left = 297
  Top = 276
  AutoScroll = False
  BorderIcons = []
  Caption = 'Login'
  ClientHeight = 181
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinStdLabel6: TbsSkinStdLabel
    Left = 62
    Top = 90
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
  object bsSkinStdLabel1: TbsSkinStdLabel
    Left = 61
    Top = 48
    Width = 29
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Caption = 'Login:'
  end
  object edtLogin: TbsSkinEdit
    Left = 105
    Top = 47
    Width = 124
    Height = 18
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
  end
  object edtSenha: TbsSkinPasswordEdit
    Left = 106
    Top = 83
    Width = 123
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
  end
  object btOk: TbsSkinButton
    Left = 59
    Top = 126
    Width = 89
    Height = 25
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
    OnClick = btOkClick
  end
  object btCancelar: TbsSkinButton
    Left = 163
    Top = 126
    Width = 89
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
    Caption = 'Cancelar'
    NumGlyphs = 1
    Spacing = 1
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
    Left = 145
    Top = 8
  end
end