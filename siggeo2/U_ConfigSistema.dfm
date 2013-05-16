object frmConfigSistema: TfrmConfigSistema
  Left = 300
  Top = 226
  AutoScroll = False
  BorderIcons = []
  Caption = 'Configura'#231#245'es do Sistema'
  ClientHeight = 334
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinPageControl1: TbsSkinPageControl
    Left = 8
    Top = 8
    Width = 465
    Height = 265
    ActivePage = bsSkinTabSheet1
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
    object bsSkinTabSheet1: TbsSkinTabSheet
      Caption = 'Prefer'#234'ncias'
      object RzRadioGroup1: TRzRadioGroup
        Left = 11
        Top = 8
        Width = 446
        Height = 57
        Caption = 'Atualiza'#231#245'es de Camadas'
        Columns = 2
        Items.Strings = (
          'Verifica'#231#227'o Manual'
          'Verifica'#231#227'o Autom'#225'tica (Semanal)')
        SpaceEvenly = True
        TabOrder = 0
        Transparent = True
      end
      object RzRadioGroup2: TRzRadioGroup
        Left = 11
        Top = 72
        Width = 446
        Height = 89
        Caption = 'Temas'
        Columns = 3
        Items.Strings = (
          'ExOs'
          'Outono'
          'Clouds'
          'Express'
          'Windows98'
          'WindowsXP Blue')
        SpaceEvenly = True
        TabOrder = 1
        Transparent = True
        VerticalSpacing = 20
      end
    end
    object bsSkinTabSheet2: TbsSkinTabSheet
      Caption = 'Layout'
      object RzGroupBox2: TRzGroupBox
        Left = 8
        Top = 8
        Width = 449
        Height = 225
        Caption = 'Cabe'#231'alho'
        TabOrder = 0
        Transparent = True
        object bsSkinStdLabel4: TbsSkinStdLabel
          Left = 8
          Top = 16
          Width = 78
          Height = 13
          UseSkinFont = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinData = frmMenu.bsSkinData1
          SkinDataName = 'stdlabel'
          Caption = 'Estabelecimento'
        end
        object bsSkinStdLabel5: TbsSkinStdLabel
          Left = 8
          Top = 56
          Width = 48
          Height = 13
          UseSkinFont = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinData = frmMenu.bsSkinData1
          SkinDataName = 'stdlabel'
          Caption = 'Secretaria'
        end
        object bsSkinStdLabel6: TbsSkinStdLabel
          Left = 8
          Top = 96
          Width = 67
          Height = 13
          UseSkinFont = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinData = frmMenu.bsSkinData1
          SkinDataName = 'stdlabel'
          Caption = 'Departamento'
        end
        object edt_Estab: TbsSkinEdit
          Left = 8
          Top = 32
          Width = 353
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
          CharCase = ecUpperCase
          ParentFont = False
          TabOrder = 0
        end
        object edt_Secr: TbsSkinEdit
          Left = 8
          Top = 72
          Width = 353
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
          CharCase = ecUpperCase
          ParentFont = False
          TabOrder = 1
        end
        object edt_Depto: TbsSkinEdit
          Left = 8
          Top = 112
          Width = 353
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
          CharCase = ecUpperCase
          ParentFont = False
          TabOrder = 2
        end
      end
    end
    object bsSkinTabSheet3: TbsSkinTabSheet
      Caption = 'Avan'#231'ado'
      object RzGroupBox1: TRzGroupBox
        Left = 8
        Top = 8
        Width = 449
        Height = 81
        Caption = 'Configura'#231#245'es do Servidor SDE'
        TabOrder = 0
        Transparent = True
        object bsSkinStdLabel1: TbsSkinStdLabel
          Left = 8
          Top = 24
          Width = 62
          Height = 13
          UseSkinFont = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinData = frmMenu.bsSkinData1
          SkinDataName = 'stdlabel'
          Caption = 'Endere'#231'o IP:'
        end
        object bsSkinStdLabel2: TbsSkinStdLabel
          Left = 240
          Top = 24
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
        object bsSkinStdLabel3: TbsSkinStdLabel
          Left = 8
          Top = 54
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
        object edtIPServidor: TbsSkinEdit
          Left = 77
          Top = 20
          Width = 121
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
        object edtPortaServidor: TbsSkinEdit
          Left = 275
          Top = 19
          Width = 46
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
          TabOrder = 1
        end
        object edtBancoServidor: TbsSkinEdit
          Left = 49
          Top = 49
          Width = 64
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
          TabOrder = 2
        end
      end
      object RzGroupBox3: TRzGroupBox
        Left = 8
        Top = 96
        Width = 449
        Height = 137
        Caption = 'Configura'#231#245'es de Atualiza'#231#227'o do Sistema via FTP'
        TabOrder = 1
        Transparent = True
        object bsSkinStdLabel7: TbsSkinStdLabel
          Left = 8
          Top = 24
          Width = 22
          Height = 13
          UseSkinFont = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinData = frmMenu.bsSkinData1
          SkinDataName = 'stdlabel'
          Caption = 'Host'
        end
        object bsSkinStdLabel8: TbsSkinStdLabel
          Left = 160
          Top = 24
          Width = 36
          Height = 13
          UseSkinFont = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinData = frmMenu.bsSkinData1
          SkinDataName = 'stdlabel'
          Caption = 'Usu'#225'rio'
        end
        object bsSkinStdLabel9: TbsSkinStdLabel
          Left = 312
          Top = 24
          Width = 31
          Height = 13
          UseSkinFont = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinData = frmMenu.bsSkinData1
          SkinDataName = 'stdlabel'
          Caption = 'Senha'
        end
        object bsSkinStdLabel10: TbsSkinStdLabel
          Left = 87
          Top = 80
          Width = 275
          Height = 28
          UseSkinFont = False
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinDataName = 'stdlabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Caption = 
            'CUIDADO! Altera'#231#245'es indevidas poder'#225' acarretar no mal '#13'funcionam' +
            'ento ou at'#233' mesmo no travamento do Sistema.'
          ParentFont = False
        end
        object edtHost: TbsSkinEdit
          Left = 8
          Top = 40
          Width = 121
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
        object edtUser: TbsSkinEdit
          Left = 160
          Top = 40
          Width = 121
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
          TabOrder = 1
        end
        object edtSenha: TbsSkinPasswordEdit
          Left = 312
          Top = 40
          Width = 89
          Height = 21
          Cursor = crIBeam
          TabOrder = 2
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
          CharCase = ecLowerCase
          PasswordKind = pkRoundRect
        end
      end
    end
  end
  object btnAplicar: TbsSkinButton
    Left = 118
    Top = 288
    Width = 113
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
    Caption = 'Aplicar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnAplicarClick
  end
  object btnCancelar: TbsSkinButton
    Left = 254
    Top = 288
    Width = 113
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
    OnClick = btnCancelarClick
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
    MainMenuBar = frmMenu.bsSkinMainMenuBar1
    SkinData = frmMenu.bsSkinData1
    MenusSkinData = frmMenu.bsSkinData1
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = True
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize]
    Left = 376
  end
end
