unit U_GrafPonto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, RzLabel, StdCtrls, bsColorCtrls, BusinessSkinForm,
  bsSkinBoxCtrls;

type
  TfrmGrafPonto = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    edtColor1: TRzLabel;
    edtColor: TRzLabel;
    cbSalva: TbsSkinCheckRadioBox;
    cbUsaOutline: TbsSkinCheckRadioBox;
    Label4: TLabel;
    cbEstilo: TbsSkinComboBox;
    bsSkinButton1: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinColorDialog1: TbsSkinColorDialog;
    bsSkinColorDialog2: TbsSkinColorDialog;
    spEspLinha: TbsSkinSpinEdit;
    procedure edtColorDblClick(Sender: TObject);
    procedure edtColor1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrafPonto: TfrmGrafPonto;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmGrafPonto.edtColorDblClick(Sender: TObject);
begin

   bsSkinColorDialog1.Execute;

   edtColor.Color := bsSkinColorDialog1.Color;

end;

procedure TfrmGrafPonto.edtColor1DblClick(Sender: TObject);
begin

  bsSkinColorDialog2.Execute;

  edtColor1.Color := bsSkinColorDialog2.Color;

end;

procedure TfrmGrafPonto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action  := cafree;
   frmGrafPonto := nil;

end;

procedure TfrmGrafPonto.bsSkinButton1Click(Sender: TObject);
var
i        : smallint;
atualiza : WordBool;
v        : Variant;
begin

   if cbSalva.Checked then
      frmmenu.varBoolSalvaConfigPonto := true
   else
      frmmenu.varBoolSalvaConfigPonto := false;

   //***********
   frmmenu.varGrafPontoStyle        := cbEstilo.ItemIndex;
   frmmenu.varGrafPontoColor        := edtColor.Color;
   frmmenu.varGrafPontoUsaOutline   := cbUsaOutline.Checked;
   frmmenu.varGrafPontoSize         := StrToInt(spEspLinha.Text);
   frmmenu.varGrafRetangOutCor      := edtColor1.Color;

   if Length(frmMenu.vetSelectPonto)>0 then
       begin
          for i:=0 to Length(frmMenu.vetSelectPonto)-1 do
              begin
                    if trim(frmMenu.vetSelectPonto[i])<> '' then
                      begin
                           frmMenu.varVetGrafPontoColor[StrToInt(frmmenu.vetSelectPonto[i])]      := frmMenu.varGrafPontoColor;
                           frmMenu.varVetGrafPontoUsaOutline[StrToInt(frmmenu.vetSelectPonto[i])] := frmMenu.varGrafPontoUsaOutline;
                           frmMenu.varVetGrafPontoSize[StrToInt(frmmenu.vetSelectPonto[i])]       := frmMenu.varGrafPontoSize;
                           frmMenu.varVetGrafPontoOutCor[StrToInt(frmmenu.vetSelectPonto[i])]     := frmMenu.varGrafPontoOutCor;
                           frmMenu.varVetGrafPontoStyle[StrToInt(frmmenu.vetSelectPonto[i])]      := frmMenu.varGrafPontoStyle;
                      end;
              end;
          atualiza := true;
          frmmenu.map1.TrackingLayer.Refresh(atualiza,v);
       end
       else
          begin
             //frmmenu.btPonto.Down := true;
          end;

   close;

end;

procedure TfrmGrafPonto.FormCreate(Sender: TObject);
begin

   cbEstilo.ItemIndex      := frmmenu.varGrafPontoStyle;
   edtColor.color          := frmMenu.varGrafPontoColor;
   edtColor1.color         := frmMenu.varGrafPontoOutCor;
   spEspLinha.Text         := IntToStr(frmMenu.varGrafPontoSize);
   cbUsaOutline.Checked    := frmMenu.varGrafPontoUsaOutline;
   cbSalva.Checked         := frmMenu.varBoolSalvaConfigPonto;

end;

end.
