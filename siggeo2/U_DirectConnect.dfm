object frmDirectConnect: TfrmDirectConnect
  Left = 322
  Top = 235
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Adicionar Camadas Via Conex'#227'o Direta'
  ClientHeight = 405
  ClientWidth = 438
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
  object bsSkinBevel3: TbsSkinBevel
    Left = 9
    Top = 41
    Width = 416
    Height = 147
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'bevel'
    DividerMode = False
  end
  object bsSkinBevel2: TbsSkinBevel
    Left = 9
    Top = 192
    Width = 416
    Height = 192
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'bevel'
    DividerMode = False
  end
  object bsSkinStdLabel7: TbsSkinStdLabel
    Left = 19
    Top = 198
    Width = 106
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    Caption = 'Camadas Dispon'#237'veis:'
    ParentFont = False
  end
  object bsSkinStdLabel8: TbsSkinStdLabel
    Left = 18
    Top = 48
    Width = 118
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'stdlabel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    Caption = 'Conex'#245'es Diretas Ativas:'
    ParentFont = False
  end
  object RzLabel2: TRzLabel
    Left = 11
    Top = 6
    Width = 398
    Height = 26
    Caption = 
      'Realiza a Conex'#227'o Diretamente. A Conex'#227'o '#233' Mais R'#225'pida e Est'#225'vel' +
      ', Por'#233'm Requer o Oracle Client Instalado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object bsSkinButton1: TbsSkinButton
    Left = 331
    Top = 351
    Width = 85
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
    Caption = 'Adicionar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton1Click
  end
  object treeSDE: TbsSkinTreeView
    Left = 17
    Top = 67
    Width = 238
    Height = 112
    VScrollBar = bsSkinScrollBar1
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'checklistbox'
    DefaultColor = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    Indent = 19
    ParentFont = False
    TabOrder = 4
    OnDblClick = treeSDEDblClick
  end
  object bsSkinScrollBar1: TbsSkinScrollBar
    Left = 256
    Top = 67
    Width = 19
    Height = 113
    TabOrder = 5
    Visible = False
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'vscrollbar'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 19
    DefaultHeight = 0
    UseSkinFont = True
    Both = False
    BothMarkerWidth = 19
    BothSkinDataName = 'bothhscrollbar'
    CanFocused = False
    Kind = sbVertical
    PageSize = 0
    Min = 0
    Max = 100
    Position = 0
    SmallChange = 1
    LargeChange = 1
  end
  object bsSkinButton2: TbsSkinButton
    Left = 281
    Top = 71
    Width = 138
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
    Caption = 'Adicionar Nova Conex'#227'o'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton2Click
  end
  object bsSkinButton3: TbsSkinButton
    Left = 281
    Top = 135
    Width = 138
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
    Caption = 'Excluir Conex'#227'o'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton3Click
  end
  object bsSkinButton4: TbsSkinButton
    Left = 282
    Top = 103
    Width = 137
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
    Caption = 'Conectar'
    NumGlyphs = 1
    Spacing = 1
  end
  object lstShapes: TbsSkinCheckListBox
    Left = 16
    Top = 214
    Width = 308
    Height = 164
    TabOrder = 6
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'checklistbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    UseSkinItemHeight = True
    Columns = 0
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
    AutoComplete = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ImageIndex = -1
    NumGlyphs = 1
    Spacing = 2
    RowCount = 0
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
    Left = 186
    Top = 48
  end
end
