object frmQuery: TfrmQuery
  Left = 229
  Top = 100
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Query'
  ClientHeight = 478
  ClientWidth = 471
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
  object bsSkinBevel4: TbsSkinBevel
    Left = 1
    Top = 129
    Width = 464
    Height = 226
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'bevel'
    DividerMode = False
  end
  object bsSkinBevel3: TbsSkinBevel
    Left = 1
    Top = 40
    Width = 464
    Height = 87
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'bevel'
    DividerMode = False
  end
  object bsSkinBevel2: TbsSkinBevel
    Left = 1
    Top = 2
    Width = 464
    Height = 34
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'bevel'
    DividerMode = False
  end
  object Label4: TLabel
    Left = 20
    Top = 10
    Width = 33
    Height = 13
    Caption = 'Tema: '
    Transparent = True
  end
  object Label2: TLabel
    Left = 8
    Top = 359
    Width = 58
    Height = 13
    Caption = 'Rotina SQL:'
    Transparent = True
  end
  object bsSkinStdLabel1: TbsSkinStdLabel
    Left = 26
    Top = 105
    Width = 47
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Caption = 'Distancia:'
  end
  object bsSkinStdLabel4: TbsSkinStdLabel
    Left = 220
    Top = 83
    Width = 10
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Caption = 'Y:'
  end
  object bsSkinStdLabel3: TbsSkinStdLabel
    Left = 67
    Top = 83
    Width = 10
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Caption = 'X:'
  end
  object bsSkinStdLabel2: TbsSkinStdLabel
    Left = 30
    Top = 62
    Width = 82
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Caption = 'Ponto de Origem:'
  end
  object bsSkinBevel1: TbsSkinBevel
    Left = 180
    Top = 169
    Width = 85
    Height = 140
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'bevel'
    DividerMode = False
  end
  object Label1: TLabel
    Left = 194
    Top = 149
    Width = 58
    Height = 13
    Caption = 'Operadores:'
    Transparent = True
  end
  object bsSkinStdLabel5: TbsSkinStdLabel
    Left = 182
    Top = 106
    Width = 32
    Height = 13
    UseSkinFont = True
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    SkinDataName = 'stdlabel'
    Caption = 'Metros'
  end
  object cbItemlegenda: TbsSkinComboBox
    Left = 66
    Top = 7
    Width = 287
    Height = 20
    TabOrder = 0
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
    Items.Strings = (
      '')
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
    OnChange = cbItemlegendaChange
  end
  object mmSQL: TbsSkinMemo
    Left = 5
    Top = 374
    Width = 284
    Height = 68
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = mmSQLClick
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBlack
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    BitMapBG = False
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'memo'
  end
  object bsSkinButton1: TbsSkinButton
    Left = 297
    Top = 374
    Width = 64
    Height = 25
    Hint = 'Executar o Comando SQL Atual'
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
    ShowHint = True
    TabStop = True
    CanFocused = True
    ParentShowHint = False
    Down = False
    GroupIndex = 0
    Caption = 'Localizar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton1Click
  end
  object bsSkinButton2: TbsSkinButton
    Left = 361
    Top = 374
    Width = 64
    Height = 25
    Hint = 'Limpar o Comando SQL Atual'
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
    ShowHint = True
    TabStop = True
    CanFocused = True
    ParentShowHint = False
    Down = False
    GroupIndex = 0
    Caption = 'Limpar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton2Click
  end
  object bsSkinButton4: TbsSkinButton
    Left = 425
    Top = 374
    Width = 27
    Height = 25
    Hint = 'Zoom Nos Shapes Selecionados'
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
    ShowHint = True
    TabStop = True
    CanFocused = True
    ParentShowHint = False
    Down = False
    GroupIndex = 0
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000FFFFFF0000000000FF00FF00FF00FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton4Click
  end
  object sbStatus: TbsSkinStatusPanel
    Left = 0
    Top = 457
    Width = 471
    Height = 21
    TabOrder = 5
    SkinData = frmMenu.bsSkinData1
    SkinDataName = 'statuspanel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    UseSkinSize = True
    BorderStyle = bvFrame
    Alignment = taCenter
    Align = alBottom
    AutoSize = False
    NumGlyphs = 1
  end
  object edtY: TbsSkinEdit
    Left = 233
    Top = 80
    Width = 134
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
    Font.Color = clGrayText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    Enabled = False
    ParentFont = False
    TabOrder = 6
  end
  object edtDist: TbsSkinEdit
    Left = 82
    Top = 103
    Width = 95
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
    Font.Color = clGrayText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    Enabled = False
    ParentFont = False
    TabOrder = 7
  end
  object edtX: TbsSkinEdit
    Left = 82
    Top = 80
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
    Font.Color = clGrayText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    Enabled = False
    ParentFont = False
    TabOrder = 8
  end
  object cbBuffer: TbsSkinCheckRadioBox
    Left = 7
    Top = 41
    Width = 185
    Height = 20
    TabOrder = 9
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
    Caption = 'Utilizar Buffer (Query Espacial)'
    OnClick = cbBufferClick
  end
  object cbValores: TbsSkinCheckRadioBox
    Left = 177
    Top = 317
    Width = 105
    Height = 25
    TabOrder = 10
    SkinData = frmMenu.bsSkinData1
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
    Caption = 'Mostrar Valores'
  end
  object btMaiorIgual: TbsSkinButton
    Left = 190
    Top = 175
    Width = 33
    Height = 25
    Hint = 'Maior ou Igual'
    TabOrder = 11
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
    ShowHint = True
    TabStop = True
    CanFocused = True
    ParentShowHint = False
    Down = False
    GroupIndex = 0
    Caption = '>='
    NumGlyphs = 1
    Spacing = 1
    OnClick = btMaiorIgualClick
  end
  object btMaior: TbsSkinButton
    Left = 222
    Top = 175
    Width = 33
    Height = 25
    Hint = 'Maior'
    TabOrder = 12
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
    ShowHint = True
    TabStop = True
    CanFocused = True
    ParentShowHint = False
    Down = False
    GroupIndex = 0
    Caption = '>'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btMaiorClick
  end
  object btMenor: TbsSkinButton
    Left = 222
    Top = 199
    Width = 33
    Height = 25
    Hint = 'Menor'
    TabOrder = 13
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
    ShowHint = True
    TabStop = True
    CanFocused = True
    ParentShowHint = False
    Down = False
    GroupIndex = 0
    Caption = '<'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btMenorClick
  end
  object btMenorIgual: TbsSkinButton
    Left = 190
    Top = 199
    Width = 33
    Height = 25
    Hint = 'Menor ou Igual'
    TabOrder = 14
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
    ShowHint = True
    TabStop = True
    CanFocused = True
    ParentShowHint = False
    Down = False
    GroupIndex = 0
    Caption = '=<'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btMenorIgualClick
  end
  object btIgual: TbsSkinButton
    Left = 190
    Top = 223
    Width = 33
    Height = 25
    Hint = 'Igual'
    TabOrder = 15
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
    ShowHint = True
    TabStop = True
    CanFocused = True
    ParentShowHint = False
    Down = False
    GroupIndex = 0
    Caption = '='
    NumGlyphs = 1
    Spacing = 1
    OnClick = btIgualClick
  end
  object btDiferente: TbsSkinButton
    Left = 222
    Top = 223
    Width = 33
    Height = 25
    Hint = 'Diferente'
    TabOrder = 16
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
    ShowHint = True
    TabStop = True
    CanFocused = True
    ParentShowHint = False
    Down = False
    GroupIndex = 0
    Caption = '<>'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btDiferenteClick
  end
  object btOperadorOU: TbsSkinButton
    Left = 222
    Top = 247
    Width = 33
    Height = 25
    TabOrder = 17
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
    ShowHint = True
    TabStop = True
    CanFocused = True
    ParentShowHint = False
    Down = False
    GroupIndex = 0
    Caption = 'OU'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btOperadorOUClick
  end
  object BtOperadorE: TbsSkinButton
    Left = 190
    Top = 247
    Width = 33
    Height = 25
    TabOrder = 18
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
    ShowHint = True
    TabStop = True
    CanFocused = True
    ParentShowHint = False
    Down = False
    GroupIndex = 0
    Caption = 'E'
    NumGlyphs = 1
    Spacing = 1
    OnClick = BtOperadorEClick
  end
  object btOperadorNao: TbsSkinButton
    Left = 190
    Top = 271
    Width = 33
    Height = 25
    TabOrder = 19
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
    ShowHint = True
    TabStop = True
    CanFocused = True
    ParentShowHint = False
    Down = False
    GroupIndex = 0
    Caption = 'N'#195'O'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btOperadorNaoClick
  end
  object btCapturar: TbsSkinButton
    Left = 375
    Top = 77
    Width = 64
    Height = 25
    Hint = 'Maior ou Igual'
    TabOrder = 20
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
    ShowHint = True
    TabStop = True
    CanFocused = True
    ParentShowHint = False
    Down = False
    GroupIndex = 0
    Caption = 'Capturar'
    NumGlyphs = 1
    Spacing = 1
    Enabled = False
    OnClick = btCapturarClick
  end
  object bsSkinButton3: TbsSkinButton
    Left = 292
    Top = 421
    Width = 80
    Height = 19
    Hint = 'Carregar Um Comando SQL Previamente Salvo'
    TabOrder = 21
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
    Caption = 'Carregar SQL'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton3Click
  end
  object bsSkinButton5: TbsSkinButton
    Left = 372
    Top = 421
    Width = 80
    Height = 19
    Hint = 'Salvar o Comando SQL Atual'
    TabOrder = 22
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
    Caption = 'Salvar SQL'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton5Click
  end
  object btOPLike: TbsSkinButton
    Left = 222
    Top = 271
    Width = 33
    Height = 25
    TabOrder = 23
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
    ShowHint = True
    TabStop = True
    CanFocused = True
    ParentShowHint = False
    Down = False
    GroupIndex = 0
    Caption = 'LIKE'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btOPLikeClick
  end
  object sgColunas: TStringGrid
    Left = 4
    Top = 130
    Width = 170
    Height = 223
    ColCount = 1
    DefaultColWidth = 150
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 12
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    TabOrder = 24
    OnClick = sgColunasClick
    OnDblClick = sgColunasDblClick
    OnSelectCell = sgColunasSelectCell
    ColWidths = (
      145)
  end
  object sgValores: TStringGrid
    Left = 291
    Top = 129
    Width = 170
    Height = 223
    ColCount = 1
    DefaultColWidth = 150
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 12
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
    TabOrder = 25
    OnClick = sgColunasClick
    OnDblClick = sgValoresDblClick
    OnSelectCell = sgValoresSelectCell
    ColWidths = (
      145)
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
    MenusSkinData = frmMenu.bsSkinData1
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = True
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize, biRollUp]
    Left = 384
    Top = 4
  end
  object OpenDialog1: TbsSkinOpenDialog
    DialogWidth = 0
    DialogHeight = 0
    DialogMinWidth = 0
    DialogMinHeight = 0
    CheckFileExists = True
    MultiSelection = False
    AlphaBlend = False
    AlphaBlendValue = 225
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
    Title = 'Abrir Arquivo'
    Filter = 'Arquivo de Comando SQL (*.sql) |*.sql'
    FilterIndex = 1
    Left = 272
    Top = 48
  end
  object SaveDialog1: TbsSkinSaveDialog
    DialogWidth = 0
    DialogHeight = 0
    DialogMinWidth = 0
    DialogMinHeight = 0
    CheckFileExists = True
    MultiSelection = False
    AlphaBlend = False
    AlphaBlendValue = 225
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
    Title = 'Salvar Arquivo'
    Filter = 'Arquivo de Comando SQL (*.sql) |*.sql'
    FilterIndex = 1
    Left = 320
    Top = 48
  end
end
