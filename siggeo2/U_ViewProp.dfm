object frmViewProp: TfrmViewProp
  Left = 336
  Top = 240
  BorderIcons = [biMinimize]
  BorderStyle = bsSingle
  Caption = 'Propriedades da View'
  ClientHeight = 200
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object RzBorder1: TRzBorder
    Left = 8
    Top = 6
    Width = 277
    Height = 135
  end
  object Label1: TLabel
    Left = 17
    Top = 15
    Width = 109
    Height = 13
    Caption = 'Unidades do Mapa:'
  end
  object Label2: TLabel
    Left = 59
    Top = 68
    Width = 190
    Height = 26
    Caption = 'Clique duas vezes para mudar a '#13#10'Cor de Fundo do Mapa!'
  end
  object RzBorder2: TRzBorder
    Left = 7
    Top = 149
    Width = 277
    Height = 46
  end
  object edtColor: TRzLabel
    Left = 16
    Top = 69
    Width = 39
    Height = 25
    AutoSize = False
    Color = clWhite
    ParentColor = False
    OnDblClick = edtColorDblClick
    BorderOuter = fsLowered
  end
  object edtSelecao: TRzLabel
    Left = 16
    Top = 103
    Width = 39
    Height = 25
    AutoSize = False
    Color = clYellow
    ParentColor = False
    OnDblClick = edtSelecaoDblClick
    BorderOuter = fsLowered
  end
  object Label3: TLabel
    Left = 59
    Top = 101
    Width = 190
    Height = 26
    Caption = 'Clique duas vezes para mudar a '#13#10'Cor de Sele'#231#227'o do Mapa!'
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 32
    Width = 207
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnChange = ComboBox1Change
    Items.Strings = (
      'Desconhecida'
      'Graus Decimais'
      'Metros'
      'P'#233's')
  end
  object btAplicar: TRzBitBtn
    Left = 17
    Top = 158
    Width = 85
    Height = 30
    Caption = 'Aplicar'
    TabOrder = 1
    OnClick = btAplicarClick
  end
  object btCancelar: TRzBitBtn
    Left = 102
    Top = 158
    Width = 85
    Height = 30
    Caption = '&Cancelar'
    TabOrder = 2
    OnClick = btCancelarClick
  end
  object btFechar: TRzBitBtn
    Left = 187
    Top = 158
    Width = 85
    Height = 30
    Caption = '&Fechar'
    Enabled = False
    TabOrder = 3
    OnClick = btCancelarClick
  end
  object ckBarra: TCheckBox
    Left = 56
    Top = 133
    Width = 217
    Height = 17
    Caption = 'Barra de Rolagem'
    Checked = True
    State = cbChecked
    TabOrder = 4
    Visible = False
    OnClick = ckBarraClick
  end
  object ColorDialog1: TColorDialog
    Color = clWhite
    Left = 246
    Top = 19
  end
end
