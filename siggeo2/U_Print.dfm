object frmPrint: TfrmPrint
  Left = 182
  Top = 169
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Imprimir'
  ClientHeight = 265
  ClientWidth = 311
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TbsSkinPageControl
    Left = 3
    Top = 5
    Width = 289
    Height = 233
    ActivePage = tbCom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBtnText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultItemHeight = 20
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'tab'
    object tbSem: TbsSkinTabSheet
      Caption = 'Imprimir View'
      object RzBorder2: TRzBorder
        Left = 28
        Top = 132
        Width = 233
        Height = 46
      end
      object RzBorder5: TRzBorder
        Left = 4
        Top = 3
        Width = 277
        Height = 201
      end
      object bsSkinButton4: TbsSkinButton
        Left = 56
        Top = 144
        Width = 29
        Height = 25
        Hint = 'Configurar Impressora'
        TabOrder = 0
        SkinData = frmMenu.bsSkinData1
        SkinDataName = 'resizebutton'
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
        ShowHint = True
        TabStop = True
        CanFocused = True
        ParentShowHint = False
        Down = False
        GroupIndex = 0
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666000666
          6666666600788006666666007780088006666077887880088006688877788880
          080688777778888880068F7777F8888888808F77FF77788888808FFF77997778
          88808F77AA7778807880688F77788FF0700666688F8FFFFF06666666688FFFFF
          F06666666668FFFFFF00666666668FFF88666666666668886666}
        NumGlyphs = 1
        Spacing = 1
        OnClick = btConfigClick
      end
      object bsSkinButton5: TbsSkinButton
        Left = 88
        Top = 144
        Width = 73
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
        Caption = 'Imprimir'
        NumGlyphs = 1
        Spacing = 1
        OnClick = RzBitBtn5Click
      end
      object bsSkinButton6: TbsSkinButton
        Left = 161
        Top = 144
        Width = 73
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
        Caption = 'Cancelar'
        NumGlyphs = 1
        Spacing = 1
        OnClick = btCancelarClick
      end
      object rdPapel: TbsSkinRadioGroup
        Left = 25
        Top = 32
        Width = 238
        Height = 58
        TabOrder = 3
        SkinData = frmMenu.bsSkinData1
        SkinDataName = 'groupbox'
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
        CaptionMode = True
        RollUpMode = False
        RollUpState = False
        NumGlyphs = 1
        Spacing = 2
        Caption = 'Orienta'#231#227'o do Papel'
        ButtonSkinDataName = 'radiobox'
        ButtonDefaultFont.Charset = DEFAULT_CHARSET
        ButtonDefaultFont.Color = clWindowText
        ButtonDefaultFont.Height = 14
        ButtonDefaultFont.Name = 'Arial'
        ButtonDefaultFont.Style = []
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Retrato'
          'Paisagem')
      end
    end
    object tbCom: TbsSkinTabSheet
      Caption = 'Imprimir Em Escala'
      object RzBorder7: TRzBorder
        Left = 4
        Top = 3
        Width = 277
        Height = 201
      end
      object Label1: TLabel
        Left = 58
        Top = 16
        Width = 162
        Height = 14
        Caption = 'As atuais Unidades do Mapa s'#227'o:'
        Transparent = True
        WordWrap = True
      end
      object RzBorder4: TRzBorder
        Left = 59
        Top = 35
        Width = 152
        Height = 28
      end
      object Label3: TLabel
        Left = 28
        Top = 93
        Width = 53
        Height = 28
        Caption = 'Escala de Impress'#227'o:'
        Transparent = True
        WordWrap = True
      end
      object Label4: TLabel
        Left = 102
        Top = 98
        Width = 22
        Height = 23
        Caption = '1:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object RzBorder6: TRzBorder
        Left = 28
        Top = 132
        Width = 233
        Height = 46
      end
      object lblUnidades: TLabel
        Left = 97
        Top = 43
        Width = 76
        Height = 13
        Caption = 'lblUnidades'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object edtEscala: TEdit
        Left = 126
        Top = 88
        Width = 135
        Height = 31
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        MaxLength = 8
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edtEscalaKeyPress
      end
      object bsSkinButton1: TbsSkinButton
        Left = 88
        Top = 144
        Width = 73
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
        Caption = 'Imprimir'
        NumGlyphs = 1
        Spacing = 1
        OnClick = btImpClick
      end
      object bsSkinButton3: TbsSkinButton
        Left = 56
        Top = 144
        Width = 29
        Height = 25
        Hint = 'Configurar Impressora'
        TabOrder = 2
        SkinData = frmMenu.bsSkinData1
        SkinDataName = 'resizebutton'
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
        ShowHint = True
        TabStop = True
        CanFocused = True
        ParentShowHint = False
        Down = False
        GroupIndex = 0
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666000666
          6666666600788006666666007780088006666077887880088006688877788880
          080688777778888880068F7777F8888888808F77FF77788888808FFF77997778
          88808F77AA7778807880688F77788FF0700666688F8FFFFF06666666688FFFFF
          F06666666668FFFFFF00666666668FFF88666666666668886666}
        NumGlyphs = 1
        Spacing = 1
        OnClick = btConfigClick
      end
      object bsSkinButton2: TbsSkinButton
        Left = 161
        Top = 144
        Width = 73
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
        OnClick = btCancelarClick
      end
    end
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
    Left = 249
    Top = 40
  end
end
