unit U_PropView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, BusinessSkinForm, StdCtrls, bsSkinBoxCtrls,
  RzBorder, RzLabel, ImgList;

type
  TfrmPropView = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinGroupBox2: TbsSkinGroupBox;
    bsSkinXFormButton1: TbsSkinXFormButton;
    bsSkinXFormButton2: TbsSkinXFormButton;
    bsSkinStdLabel3: TbsSkinStdLabel;
    RzBorder4: TRzBorder;
    cbCorShape: TRzLabel;
    RzLabel1: TRzLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    cbCorLinha: TRzLabel;
    Label4: TLabel;
    cbCorFundo: TRzLabel;
    cbCorRegua: TRzLabel;
    RzBorder2: TRzBorder;
    RzBorder3: TRzBorder;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    Label2: TLabel;
    cbEstiloLinha: TbsSkinComboBox;
    Label5: TLabel;
    spEspLinha: TbsSkinSpinEdit;
    Label3: TLabel;
    ImageList1: TImageList;
    cbPreenchTam: TbsSkinSpinEdit;
    cbPreench: TbsSkinComboBox;
    chCamada: TbsSkinCheckRadioBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bsSkinXFormButton1Click(Sender: TObject);
    procedure bsSkinXFormButton2Click(Sender: TObject);
    procedure cbCorFundoClick(Sender: TObject);
    procedure cbCorShapeClick(Sender: TObject);
    procedure cbCorLinhaClick(Sender: TObject);
    procedure cbCorPreenchGrafClick(Sender: TObject);
    procedure cbCorLinhaGrafClick(Sender: TObject);
    procedure cbCorReguaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPropView: TfrmPropView;

implementation

uses U_Menu, MapObjects2_TLB;

{$R *.dfm}

procedure TfrmPropView.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

    action      := cafree;
    frmPropView := nil;

end;

procedure TfrmPropView.FormCreate(Sender: TObject);
begin

   //cor de fundo do mapa;
   cbCorFundo.color            :=   frmmenu.Map1.BackColor;
   //seleçao de camadas
   cbCorShape.color            := frmmenu.cor_SelectPreenchCamada;
   cbPreenchTam.text           := IntToStr(frmmenu.varEspSelecaoCamada);
   cbPreench.ItemIndex         := frmmenu.varPreenchSelecaoCamada;
   chCamada.Checked            := frmmenu.varBoolDesenharOutCamada;
   cbCorLinha.Color            := frmmenu.cor_OutSelectCamada;
   //***********************************************************
//   cbCorPreenchGraf.color      := frmmenu.cor_SelectGraf;
//   cbCorLinhaGraf.Color        := frmmenu.cor_OutSelectGraf;
//   cbTamGraf.text              := IntToStr(frmmenu.varEspSelecaoGrafico);
//   cbPreenchGraficos.ItemIndex := frmmenu.varPreenchSelecaoGrafico;
//   chGrafico.Checked           := frmmenu.varBoolDesenharOutGrafico;
   //***********************************************************
   //******* REGUA  ********************************************
   cbEstiloLinha.ItemIndex     := frmmenu.varReguaEstilo;
   spEspLinha.text             := IntToStr(frmmenu.varReguaSize);
   cbCorRegua.Color            := frmmenu.varReguaColor;
   cbEstiloLinha.ItemIndex     := frmmenu.varReguaEstiloSelect;
   spEspLinha.text             := IntToStr(frmmenu.varReguaSizeSelect);
   //cbCorPreenchGraf.color      := frmmenu.varReguaColorSelect;
   //***********************************************************

end;

procedure TfrmPropView.bsSkinXFormButton1Click(Sender: TObject);
var
varTrue : WordBool;
v       : variant;
begin

   //cor de fundo do mapa;
   frmmenu.Map1.BackColor          := cbCorFundo.color;

   //seleçao de camadas
   frmmenu.cor_SelectPreenchCamada         := cbCorShape.color;
   frmmenu.varEspSelecaoCamada             := StrToInt(cbPreenchTam.text);
   frmmenu.varPreenchSelecaoCamada         := cbPreench.ItemIndex;
   frmmenu.varBoolDesenharOutCamada        := chCamada.Checked;
   frmmenu.cor_OutSelectCamada             := cbCorLinha.Color;
   //***********************************************************
//   frmmenu.cor_SelectGraf                  := cbCorPreenchGraf.color;
//   frmmenu.cor_OutSelectGraf               := cbCorLinhaGraf.Color;
//   frmmenu.varEspSelecaoGrafico            := strToInt(cbTamGraf.text);
//   frmmenu.varPreenchSelecaoGrafico        := cbPreenchGraficos.ItemIndex;
//   frmmenu.varBoolDesenharOutGrafico       := chGrafico.Checked;
   //***********************************************************
   //******* REGUA  ********************************************
   frmmenu.varReguaEstilo                  := cbEstiloLinha.ItemIndex;
   frmmenu.varReguaSize                    := StrToInt(spEspLinha.text);
   frmmenu.varReguaColor                   := cbCorRegua.Color;
   frmmenu.varReguaEstiloSelect            := cbEstiloLinha.ItemIndex;
   frmmenu.varReguaSizeSelect              := StrToInt(spEspLinha.text);
   frmmenu.varReguaColorSelect             := cbCorShape.color;
   //***********************************************************

   varTrue := true;
   frmmenu.map1.TrackingLayer.Refresh(varTrue,V);

   close;

end;

procedure TfrmPropView.bsSkinXFormButton2Click(Sender: TObject);
begin

   close;

end;

procedure TfrmPropView.cbCorFundoClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbCorFundo.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmPropView.cbCorShapeClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbCorShape.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmPropView.cbCorLinhaClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbCorLinha.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmPropView.cbCorPreenchGrafClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
//   cbCorPreenchGraf.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmPropView.cbCorLinhaGrafClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
//   cbCorLinhaGraf.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmPropView.cbCorReguaClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbCorRegua.Color := frmmenu.ColorDialog1.Color;

end;

end.
