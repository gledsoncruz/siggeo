object frmIdentMais: TfrmIdentMais
  Left = 363
  Top = 204
  AutoScroll = False
  BorderIcons = []
  Caption = 'Mais Informa'#231#245'es...'
  ClientHeight = 400
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinPanel1: TbsSkinPanel
    Left = 0
    Top = 0
    Width = 392
    Height = 38
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
    Caption = 'bsSkinPanel1'
    Align = alTop
    object RzLabel9: TRzLabel
      Left = 199
      Top = 4
      Width = 72
      Height = 16
      Caption = 'Registros:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = True
    end
    object lblTotal: TRzLabel
      Left = 277
      Top = 4
      Width = 108
      Height = 16
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btPrimeiro: TbsSkinButton
      Left = 6
      Top = 2
      Width = 32
      Height = 32
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
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Caption = '<<'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btPrimeiroClick
    end
    object bsSkinButton2: TbsSkinButton
      Left = 38
      Top = 2
      Width = 32
      Height = 32
      TabOrder = 1
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
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Caption = '<'
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinButton2Click
    end
    object btProximo: TbsSkinButton
      Left = 70
      Top = 2
      Width = 32
      Height = 32
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
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Caption = '>'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btProximoClick
    end
    object btUltimo: TbsSkinButton
      Left = 102
      Top = 2
      Width = 32
      Height = 32
      TabOrder = 3
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
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Caption = '>>'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btUltimoClick
    end
  end
  object bsSkinPanel2: TbsSkinPanel
    Left = 0
    Top = 38
    Width = 392
    Height = 362
    TabOrder = 1
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
    Align = alClient
    object lstIdentificador: TbsSkinStringGrid
      Left = 1
      Top = 1
      Width = 371
      Height = 341
      TabOrder = 0
      SkinData = frmMenu.bsSkinData1
      SkinDataName = 'grid'
      UseSkinFont = True
      UseSkinCellHeight = True
      HScrollBar = sbHorizontal
      VScrollBar = sbVertical
      GridLineColor = clWindowText
      DefaultCellHeight = 20
      Align = alClient
      ColCount = 2
      DefaultColWidth = 130
      DefaultRowHeight = 20
      FixedCols = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
      ColWidths = (
        146
        221)
    end
    object sbVertical: TbsSkinScrollBar
      Left = 372
      Top = 1
      Width = 19
      Height = 341
      TabOrder = 1
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
      Align = alRight
      Kind = sbVertical
      PageSize = 0
      Min = 0
      Max = 0
      Position = 0
      SmallChange = 1
      LargeChange = 1
    end
    object sbHorizontal: TbsSkinScrollBar
      Left = 1
      Top = 342
      Width = 390
      Height = 19
      TabOrder = 2
      Visible = False
      SkinData = frmMenu.bsSkinData1
      SkinDataName = 'hscrollbar'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 19
      UseSkinFont = True
      Both = False
      BothMarkerWidth = 19
      BothSkinDataName = 'bothhscrollbar'
      CanFocused = False
      Align = alBottom
      Kind = sbHorizontal
      PageSize = 0
      Min = 0
      Max = 0
      Position = 0
      SmallChange = 1
      LargeChange = 1
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
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biRollUp]
    Left = 56
    Top = 92
  end
end
