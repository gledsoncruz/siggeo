unit U_GrafPoli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsSkinCtrls, bsSkinBoxCtrls, StdCtrls, ImgList,
  RzLabel;

type
  TfrmGrafPoli = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    ImageList1: TImageList;
    cbPreench: TbsSkinComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    cbUsaOutline: TbsSkinCheckRadioBox;
    Label5: TLabel;
    spEspLinha: TbsSkinSpinEdit;
    cbSalva: TbsSkinCheckRadioBox;
    bsSkinButton1: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    Label3: TLabel;
    cbPreenchCor: TRzLabel;
    cbPreenchLinha: TRzLabel;
    procedure bsSkinButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure cbPreenchCorClick(Sender: TObject);
    procedure cbPreenchLinhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrafPoli: TfrmGrafPoli;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmGrafPoli.bsSkinButton1Click(Sender: TObject);
var
i        : smallint;
atualiza : WordBool;
v        : Variant;

begin

   if cbSalva.Checked then
      frmmenu.varBoolSalvaConfigPoli := true
   else
      frmmenu.varBoolSalvaConfigPoli := false;

   //***********
   frmmenu.varGrafPoliStyle       := cbPreench.ItemIndex;
   frmmenu.varGrafPoliColor       := cbPreenchCor.color;
   frmmenu.varGrafPoliUsaOutline  := cbUsaOutline.Checked;
   frmmenu.varGrafPoliSize        := StrToInt(spEspLinha.Text);
   frmmenu.varGrafPoliOutCor      := cbPreenchLinha.color;

   if Length(frmMenu.vetSelectPoli)>0 then
       begin
          for i:=0 to Length(frmMenu.vetSelectPoli)-1 do
              begin
                    if trim(frmMenu.vetSelectPoli[i])<> '' then
                      begin
                           frmMenu.varVetGrafPoliColor[StrToInt(frmMenu.vetSelectPoli[i])]      := frmMenu.varGrafPoliColor;
                           frmMenu.varVetGrafPoliUsaOutline[StrToInt(frmMenu.vetSelectPoli[i])] := frmMenu.varGrafPoliUsaOutline;
                           frmMenu.varVetGrafPoliSize[StrToInt(frmMenu.vetSelectPoli[i])]       := frmMenu.varGrafPoliSize;
                           frmMenu.varVetGrafPoliOutCor[StrToInt(frmMenu.vetSelectPoli[i])]     := frmMenu.varGrafPoliOutCor;
                           frmMenu.varVetGrafPoliStyle[StrToInt(frmMenu.vetSelectPoli[i])]      := frmMenu.varGrafPoliStyle;
                      end;
              end;

          atualiza := true;
          frmmenu.map1.TrackingLayer.Refresh(atualiza,v);

       end
       else
          begin
            // frmmenu.btPolig.Down           := true;
          end;


   close;

end;

procedure TfrmGrafPoli.FormCreate(Sender: TObject);
begin

   cbPreench.ItemIndex     := frmmenu.varGrafPoliStyle;
   cbPreenchCor.color      := frmMenu.varGrafPoliColor;
   cbPreenchLinha.color    := frmMenu.varGrafPoliOutCor;
   spEspLinha.Text         := IntToStr(frmMenu.varGrafPoliSize);
   cbUsaOutline.Checked    := frmMenu.varGrafPoliUsaOutline;
   cbSalva.Checked         := frmMenu.varBoolSalvaConfigPoli;

end;

procedure TfrmGrafPoli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action      := cafree;
   frmGrafPoli := nil;

end;

procedure TfrmGrafPoli.bsSkinButton2Click(Sender: TObject);
begin

  close;

end;

procedure TfrmGrafPoli.cbPreenchCorClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbPreenchCor.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmGrafPoli.cbPreenchLinhaClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbPreenchlinha.Color := frmmenu.ColorDialog1.Color;

end;

end.
