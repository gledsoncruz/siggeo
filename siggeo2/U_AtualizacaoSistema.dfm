object frm_atualizacao: Tfrm_atualizacao
  Left = 232
  Top = 211
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Atualizando Sistema...'
  ClientHeight = 97
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Gauge1: TGauge
    Left = 24
    Top = 40
    Width = 361
    Height = 17
    Progress = 0
  end
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 64
    Height = 13
    Caption = 'Atualizando...'
  end
  object Label2: TLabel
    Left = 104
    Top = 24
    Width = 40
    Height = 13
    Caption = 'arquivos'
  end
  object ListBox1: TListBox
    Left = 258
    Top = 11
    Width = 25
    Height = 17
    ItemHeight = 13
    TabOrder = 0
    Visible = False
  end
  object Edit1: TEdit
    Left = 296
    Top = 8
    Width = 25
    Height = 21
    TabOrder = 1
    Visible = False
  end
end
