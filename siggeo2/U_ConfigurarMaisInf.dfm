object frmConfigIDentificador: TfrmConfigIDentificador
  Left = 172
  Top = 154
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Configurar Identificador de Camada 1:N'
  ClientHeight = 266
  ClientWidth = 580
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object RzBorder5: TRzBorder
    Left = 8
    Top = 8
    Width = 262
    Height = 241
  end
  object RzLabel8: TRzLabel
    Left = 16
    Top = 16
    Width = 249
    Height = 26
    Caption = 'Selecione a Camada em Que Ser'#225' Efetuado'#13#10'o Join 1:N'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object RzBorder6: TRzBorder
    Left = 273
    Top = 8
    Width = 293
    Height = 241
  end
  object RzLabel10: TRzLabel
    Left = 284
    Top = 15
    Width = 143
    Height = 13
    Caption = 'Selecione Uma Conex'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object RzLabel11: TRzLabel
    Left = 24
    Top = 56
    Width = 36
    Height = 13
    Caption = 'Tema:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object RzLabel12: TRzLabel
    Left = 24
    Top = 108
    Width = 101
    Height = 13
    Caption = 'Campo do Shape:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lblUsuario: TRzLabel
    Left = 340
    Top = 215
    Width = 217
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object ListaConexoes: TbsSkinListBox
    Left = 278
    Top = 36
    Width = 282
    Height = 165
    TabOrder = 0
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'listbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    AutoComplete = True
    UseSkinItemHeight = True
    HorizontalExtent = False
    Columns = 0
    RowCount = 0
    ImageIndex = -1
    NumGlyphs = 1
    Spacing = 2
    CaptionMode = False
    DefaultCaptionHeight = 20
    DefaultCaptionFont.Charset = DEFAULT_CHARSET
    DefaultCaptionFont.Color = clWindowText
    DefaultCaptionFont.Height = 14
    DefaultCaptionFont.Name = 'Arial'
    DefaultCaptionFont.Style = []
    DefaultItemHeight = 20
    ItemIndex = -1
    MultiSelect = False
    ListBoxFont.Charset = DEFAULT_CHARSET
    ListBoxFont.Color = clWindowText
    ListBoxFont.Height = 14
    ListBoxFont.Name = 'Arial'
    ListBoxFont.Style = []
    ListBoxTabOrder = 0
    ListBoxTabStop = True
    ListBoxDragMode = dmManual
    ListBoxDragKind = dkDrag
    ListBoxDragCursor = crDrag
    ExtandedSelect = True
    Sorted = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    Enabled = False
  end
  object btCriarNova: TbsSkinButton
    Left = 346
    Top = 209
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
    Caption = 'Criar Nova Conex'#227'o'
    NumGlyphs = 1
    Spacing = 1
    Enabled = False
    OnClick = btCriarNovaClick
  end
  object cbCamadaMapa: TbsSkinComboBox
    Left = 20
    Top = 79
    Width = 215
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
    ItemIndex = -1
    DropDownCount = 8
    HorizontalExtent = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    Sorted = False
    Style = bscbFixedStyle
    OnChange = cbCamadaMapaChange
  end
  object cbCamposShape: TbsSkinComboBox
    Left = 21
    Top = 132
    Width = 213
    Height = 20
    TabOrder = 3
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
    ItemIndex = -1
    DropDownCount = 8
    HorizontalExtent = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    Sorted = True
    Style = bscbFixedStyle
  end
  object btConcluir: TbsSkinButton
    Left = 477
    Top = 209
    Width = 73
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
    Caption = 'Concluir'
    NumGlyphs = 1
    Spacing = 1
    Enabled = False
    OnClick = btConcluirClick
  end
  object btOk: TbsSkinButton
    Left = 184
    Top = 208
    Width = 64
    Height = 25
    TabOrder = 5
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
  object btRemoverConexao: TbsSkinButton
    Left = 527
    Top = 13
    Width = 23
    Height = 19
    Hint = 'Remover a Conex'#227'o Selecionada'
    TabOrder = 6
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
    Caption = '-'
    NumGlyphs = 1
    Spacing = 1
    Enabled = False
    OnClick = btRemoverConexaoClick
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
    MenusAlphaBlendValue = 200
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
    DefMenuItemHeight = 20
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Arial'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    SkinData = frmMenu.bsSkinData1
    MenusSkinData = frmMenu.bsSkinData1
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu]
    Left = 184
    Top = 52
  end
  object DataSource1: TDataSource
    Left = 217
    Top = 53
  end
  object bsBusinessSkinForm2: TbsBusinessSkinForm
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
    Left = 330
    Top = 114
  end
end
