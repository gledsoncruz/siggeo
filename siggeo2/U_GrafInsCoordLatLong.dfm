object frmGrafInsCoordLatLong: TfrmGrafInsCoordLatLong
  Left = 257
  Top = 131
  AutoScroll = False
  BorderIcons = []
  Caption = 'Coordenadas em Lat Long'
  ClientHeight = 525
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinPageControl1: TbsSkinPageControl
    Left = 0
    Top = 0
    Width = 457
    Height = 289
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
      Caption = '    Via Tabela     '
      object RzBorder1: TRzBorder
        Left = 8
        Top = 8
        Width = 441
        Height = 81
      end
      object RzBorder2: TRzBorder
        Left = 8
        Top = 93
        Width = 441
        Height = 164
      end
      object RzLabel4: TRzLabel
        Left = 19
        Top = 15
        Width = 48
        Height = 16
        Caption = 'Tabela:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object stAbrir: TbsSkinEdit
        Left = 127
        Top = 46
        Width = 290
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
        ReadOnly = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object bsSkinButton1: TbsSkinButton
        Left = 34
        Top = 42
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
        Caption = 'Abrir Tabela'
        NumGlyphs = 1
        Spacing = 1
        OnClick = bsSkinButton1Click
      end
      object bsSkinPanel2: TbsSkinPanel
        Left = 16
        Top = 123
        Width = 425
        Height = 94
        TabOrder = 2
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
        Caption = 'bsPanelGrau'
        object RzLabel3: TRzLabel
          Left = 15
          Top = 48
          Width = 48
          Height = 14
          Caption = 'Campo Y'#176
          Transparent = True
        end
        object RzLabel2: TRzLabel
          Left = 15
          Top = 8
          Width = 47
          Height = 14
          Caption = 'Campo X'#176
          Transparent = True
        end
        object RzLabel11: TRzLabel
          Left = 156
          Top = 48
          Width = 49
          Height = 14
          Caption = 'Campo Y'#39':'
          Transparent = True
        end
        object RzLabel9: TRzLabel
          Left = 156
          Top = 8
          Width = 48
          Height = 14
          Caption = 'Campo X'#39':'
          Transparent = True
        end
        object RzLabel12: TRzLabel
          Left = 295
          Top = 48
          Width = 51
          Height = 14
          Caption = 'Campo Y'#39#39':'
          Transparent = True
        end
        object RzLabel10: TRzLabel
          Left = 295
          Top = 8
          Width = 50
          Height = 14
          Caption = 'Campo X'#39#39':'
          Transparent = True
        end
        object cbCoordYGrau: TbsSkinComboBox
          Left = 12
          Top = 66
          Width = 121
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
        end
        object cbCoordXGrau: TbsSkinComboBox
          Left = 12
          Top = 26
          Width = 121
          Height = 20
          TabOrder = 1
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
        end
        object cbCoordYMin: TbsSkinComboBox
          Left = 153
          Top = 66
          Width = 121
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
        end
        object cbCoordXMin: TbsSkinComboBox
          Left = 153
          Top = 26
          Width = 121
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
          Sorted = False
          Style = bscbFixedStyle
        end
        object cbCoordYSeg: TbsSkinComboBox
          Left = 292
          Top = 66
          Width = 121
          Height = 20
          TabOrder = 4
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
        end
        object cbCoordXSeg: TbsSkinComboBox
          Left = 292
          Top = 26
          Width = 121
          Height = 20
          TabOrder = 5
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
        end
      end
    end
    object bsSkinTabSheet2: TbsSkinTabSheet
      Caption = '    Inserir Coordenada Manualmente  '
      object RzBorder4: TRzBorder
        Left = 8
        Top = 8
        Width = 441
        Height = 249
      end
      object RzLabel6: TRzLabel
        Left = 19
        Top = 15
        Width = 217
        Height = 16
        Caption = 'Informe as coordenadas do ponto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object bsPanelManualmenteGrau: TbsSkinPanel
        Left = 16
        Top = 83
        Width = 425
        Height = 94
        TabOrder = 0
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
        Caption = 'bsPanelGrau'
        object RzLabel14: TRzLabel
          Left = 36
          Top = 48
          Width = 48
          Height = 14
          Caption = 'Campo Y'#176
          Transparent = True
        end
        object RzLabel15: TRzLabel
          Left = 36
          Top = 8
          Width = 47
          Height = 14
          Caption = 'Campo X'#176
          Transparent = True
        end
        object RzLabel16: TRzLabel
          Left = 186
          Top = 48
          Width = 49
          Height = 14
          Caption = 'Campo Y'#39':'
          Transparent = True
        end
        object RzLabel17: TRzLabel
          Left = 186
          Top = 8
          Width = 48
          Height = 14
          Caption = 'Campo X'#39':'
          Transparent = True
        end
        object RzLabel18: TRzLabel
          Left = 330
          Top = 48
          Width = 51
          Height = 14
          Caption = 'Campo Y'#39#39':'
          Transparent = True
        end
        object RzLabel19: TRzLabel
          Left = 330
          Top = 8
          Width = 50
          Height = 14
          Caption = 'Campo X'#39#39':'
          Transparent = True
        end
        object bsEdtXGrau: TbsSkinEdit
          Left = 33
          Top = 24
          Width = 65
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
        object bsEdtXMin: TbsSkinEdit
          Left = 183
          Top = 24
          Width = 65
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
        object bsEdtXSeg: TbsSkinEdit
          Left = 327
          Top = 24
          Width = 65
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
        object bsEdtYGrau: TbsSkinEdit
          Left = 33
          Top = 64
          Width = 65
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
          TabOrder = 3
        end
        object bsEdtYMin: TbsSkinEdit
          Left = 183
          Top = 64
          Width = 65
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
          TabOrder = 4
        end
        object bsEdtYSeg: TbsSkinEdit
          Left = 327
          Top = 64
          Width = 65
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
          TabOrder = 5
        end
      end
    end
  end
  object bsSkinPanel1: TbsSkinPanel
    Left = 0
    Top = 296
    Width = 457
    Height = 201
    TabOrder = 1
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
    object RzBorder3: TRzBorder
      Left = 8
      Top = 8
      Width = 441
      Height = 185
    end
    object RzLabel5: TRzLabel
      Left = 19
      Top = 17
      Width = 162
      Height = 16
      Caption = 'Configura'#231#227'o dos Pontos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 16
      Top = 91
      Width = 48
      Height = 13
      Caption = 'Tamanho:'
      Transparent = True
    end
    object Label3: TLabel
      Left = 16
      Top = 58
      Width = 28
      Height = 13
      Caption = 'Estilo:'
      Transparent = True
    end
    object Label2: TLabel
      Left = 226
      Top = 93
      Width = 19
      Height = 13
      Caption = 'Cor:'
      Transparent = True
    end
    object edtColor: TRzLabel
      Left = 262
      Top = 85
      Width = 35
      Height = 22
      AutoSize = False
      Color = clRed
      ParentColor = False
      OnClick = edtColorClick
      BorderOuter = fsLowered
    end
    object Label7: TLabel
      Left = 218
      Top = 60
      Width = 36
      Height = 13
      Caption = 'Outline:'
      Transparent = True
    end
    object edtColor1: TRzLabel
      Left = 263
      Top = 51
      Width = 35
      Height = 22
      AutoSize = False
      Color = clBlack
      ParentColor = False
      OnClick = edtColor1Click
      BorderOuter = fsLowered
    end
    object spEspLinha: TbsSkinSpinEdit
      Left = 71
      Top = 85
      Width = 53
      Height = 20
      TabOrder = 0
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
      MaxValue = 12.000000000000000000
      Value = 8.000000000000000000
      Increment = 1.000000000000000000
      EditorEnabled = True
      MaxLength = 0
    end
    object cbEstilo: TbsSkinComboBox
      Left = 71
      Top = 53
      Width = 120
      Height = 20
      TabOrder = 1
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
      Text = 'Circulo'
      Items.Strings = (
        'Circulo'
        'Quadrado'
        'Triangulo'
        'Cross')
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
    object bsSkinButton2: TbsSkinButton
      Left = 51
      Top = 128
      Width = 178
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
      Caption = 'Desenhar'
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinButton2Click
    end
    object btConvShapePoli: TbsSkinButton
      Left = 227
      Top = 128
      Width = 177
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
      Caption = 'Converter Para Shape Poligono'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btConvShapePoliClick
    end
    object bsSkinButton3: TbsSkinButton
      Left = 227
      Top = 152
      Width = 177
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
      Caption = 'Converter Para Shape Ponto'
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinButton3Click
    end
    object btTransPoli: TbsSkinButton
      Left = 51
      Top = 152
      Width = 178
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
      Caption = 'Transformar Para Poligono'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btTransPoliClick
    end
    object cbUsaOutline: TbsSkinCheckRadioBox
      Left = 214
      Top = 16
      Width = 98
      Height = 25
      TabOrder = 6
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
      Checked = True
      GroupIndex = 0
      Caption = 'Usar Outlines'
    end
    object bsSkinButton4: TbsSkinButton
      Left = 328
      Top = 24
      Width = 75
      Height = 25
      TabOrder = 7
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
      Caption = 'Unir Pontos'
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinButton4Click
    end
    object bsSkinButton5: TbsSkinButton
      Left = 328
      Top = 56
      Width = 75
      Height = 25
      TabOrder = 8
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
      Caption = 'Limpar'
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinButton5Click
    end
  end
  object spStatus: TbsSkinStatusPanel
    Left = 0
    Top = 503
    Width = 459
    Height = 22
    TabOrder = 2
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
    Left = 409
    Top = 24
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
    Title = 'Save file'
    Filter = 'All files|*.*'
    FilterIndex = 1
    Left = 345
    Top = 65533
  end
  object bsSkinColorDialog2: TbsSkinColorDialog
    Color = clBlack
    Caption = 'Definir Cor'
    AlphaBlend = False
    AlphaBlendValue = 200
    AlphaBlendAnimation = False
    SkinData = frmMenu.bsSkinData1
    CtrlSkinData = frmMenu.bsSkinData1
    ButtonSkinDataName = 'button'
    LabelSkinDataName = 'stdlabel'
    EditSkinDataName = 'edit'
    DefaultLabelFont.Charset = DEFAULT_CHARSET
    DefaultLabelFont.Color = clWindowText
    DefaultLabelFont.Height = 14
    DefaultLabelFont.Name = 'Arial'
    DefaultLabelFont.Style = []
    DefaultButtonFont.Charset = DEFAULT_CHARSET
    DefaultButtonFont.Color = clWindowText
    DefaultButtonFont.Height = 14
    DefaultButtonFont.Name = 'Arial'
    DefaultButtonFont.Style = []
    DefaultEditFont.Charset = DEFAULT_CHARSET
    DefaultEditFont.Color = clWindowText
    DefaultEditFont.Height = 14
    DefaultEditFont.Name = 'Arial'
    DefaultEditFont.Style = []
    UseSkinFont = True
    Left = 344
    Top = 24
  end
  object bsSkinColorDialog1: TbsSkinColorDialog
    Color = clBlack
    Caption = 'Definir Cor'
    AlphaBlend = False
    AlphaBlendValue = 200
    AlphaBlendAnimation = False
    SkinData = frmMenu.bsSkinData1
    CtrlSkinData = frmMenu.bsSkinData1
    ButtonSkinDataName = 'button'
    LabelSkinDataName = 'stdlabel'
    EditSkinDataName = 'edit'
    DefaultLabelFont.Charset = DEFAULT_CHARSET
    DefaultLabelFont.Color = clWindowText
    DefaultLabelFont.Height = 14
    DefaultLabelFont.Name = 'Arial'
    DefaultLabelFont.Style = []
    DefaultButtonFont.Charset = DEFAULT_CHARSET
    DefaultButtonFont.Color = clWindowText
    DefaultButtonFont.Height = 14
    DefaultButtonFont.Name = 'Arial'
    DefaultButtonFont.Style = []
    DefaultEditFont.Charset = DEFAULT_CHARSET
    DefaultEditFont.Color = clWindowText
    DefaultEditFont.Height = 14
    DefaultEditFont.Name = 'Arial'
    DefaultEditFont.Style = []
    UseSkinFont = True
    Left = 376
    Top = 24
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
    LVHeaderSkinDataName = 'button'
    SkinData = frmMenu.bsSkinData1
    CtrlSkinData = frmMenu.bsSkinData1
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    Title = 'Abrir Arquivo DBF'
    Filter = 'Arquivos *.dbf |*.dbf'
    FilterIndex = 1
    Left = 377
    Top = 65533
  end
  object tbPonto: TTable
    Left = 408
    Top = 65533
  end
end
