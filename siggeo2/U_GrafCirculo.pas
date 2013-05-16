unit U_GrafCirculo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, BusinessSkinForm, bsSkinCtrls, bsSkinBoxCtrls, StdCtrls,
  RzLabel;

type
  TfrmGrafCirculo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    cbPreench: TbsSkinComboBox;
    cbUsaOutline: TbsSkinCheckRadioBox;
    spEspLinha: TbsSkinSpinEdit;
    cbSalva: TbsSkinCheckRadioBox;
    bsSkinButton1: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    ImageList1: TImageList;
    bsBusinessSkinForm2: TbsBusinessSkinForm;
    cbPreenchCor: TRzLabel;
    cbPreenchLinha: TRzLabel;
    procedure bsSkinButton1Click(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbPreenchCorClick(Sender: TObject);
    procedure cbPreenchLinhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrafCirculo: TfrmGrafCirculo;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmGrafCirculo.bsSkinButton1Click(Sender: TObject);
var
i        : smallint;
atualiza : WordBool;
v        : Variant;

begin

   if cbSalva.Checked then
      frmmenu.varBoolSalvaConfigCirculo := true
   else
      frmmenu.varBoolSalvaConfigCirculo := false;

   //***********
   frmmenu.varGrafCirculoStyle       := cbPreench.ItemIndex;
   frmmenu.varGrafCirculoColor       := cbPreenchCor.color;
   frmmenu.varGrafCirculoUsaOutline  := cbUsaOutline.Checked;
   frmmenu.varGrafCirculoSize        := StrToInt(spEspLinha.Text);
   frmmenu.varGrafCirculoOutCor      := cbPreenchLinha.color;

   if Length(frmMenu.vetSelectCirculo)>0 then
       begin
          for i:=0 to Length(frmMenu.vetSelectCirculo)-1 do
              begin
                    if trim(frmMenu.vetSelectCirculo[i])<> '' then
                      begin
                           frmMenu.varVetGrafCirculoColor[StrToInt(frmMenu.vetSelectCirculo[i])]      := frmMenu.varGrafCirculoColor;
                           frmMenu.varVetGrafCirculoUsaOutline[StrToInt(frmMenu.vetSelectCirculo[i])] := frmMenu.varGrafCirculoUsaOutline;
                           frmMenu.varVetGrafCirculoSize[StrToInt(frmMenu.vetSelectCirculo[i])]       := frmMenu.varGrafCirculoSize;
                           frmMenu.varVetGrafCirculoOutCor[StrToInt(frmMenu.vetSelectCirculo[i])]     := frmMenu.varGrafCirculoOutCor;
                           frmMenu.varVetGrafCirculoStyle[StrToInt(frmMenu.vetSelectCirculo[i])]      := frmMenu.varGrafCirculoStyle;
                      end;
              end;

          atualiza := true;
          frmmenu.map1.TrackingLayer.Refresh(atualiza,v);

       end
       else
          begin
            // frmmenu.btCirculo.Down           := true;
          end;

   close;

end;

procedure TfrmGrafCirculo.bsSkinButton2Click(Sender: TObject);
begin

  close;
  
end;

procedure TfrmGrafCirculo.FormCreate(Sender: TObject);
begin

   cbPreench.ItemIndex     := frmmenu.varGrafCirculoStyle;
   cbPreenchCor.color      := frmMenu.varGrafCirculoColor;
   cbPreenchLinha.color    := frmMenu.varGrafCirculoOutCor;
   spEspLinha.Text         := IntToStr(frmMenu.varGrafCirculoSize);
   cbUsaOutline.Checked    := frmMenu.varGrafCirculoUsaOutline;
   cbSalva.Checked         := frmMenu.varBoolSalvaConfigCirculo;

end;

procedure TfrmGrafCirculo.cbPreenchCorClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbPreenchCor.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmGrafCirculo.cbPreenchLinhaClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbPreenchLinha.Color := frmmenu.ColorDialog1.Color;

end;

end.
