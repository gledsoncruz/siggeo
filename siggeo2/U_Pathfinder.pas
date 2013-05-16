unit U_Pathfinder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsSkinCtrls,MapObjects2_TLB, StdCtrls, RzLabel;

type
  TfrmMarcarRotas = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    cbPontos: TbsSkinCheckRadioBox;
    bsSkinButton1: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    RzLabel1: TRzLabel;
    lblX: TbsSkinStdLabel;
    bsSkinButton3: TbsSkinButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbPontosClick(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMarcarRotas: TfrmMarcarRotas;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmMarcarRotas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action         := cafree;
   frmMarcarRotas := nil;

end;

procedure TfrmMarcarRotas.cbPontosClick(Sender: TObject);
begin

  if cbPontos.Checked then
     begin
         frmMarcarRotas.Hide;
         frmmenu.Mensagem('Clique no Mapa Para Indicar o Ponto Inicial e Final da Rota!',mtInformation,[mbok]);
     end;

end;

procedure TfrmMarcarRotas.bsSkinButton2Click(Sender: TObject);
var
VarTrue  : WordBool;
V        : Variant;
begin

  frmmenu.twopointcoll.Remove(1);
  frmmenu.twopointcoll.Remove(0);

  frmMenu.pathline     := nil;
  cbPontos.Checked     := false;
  lblX.caption         := '';

  varTrue := true;
  frmmenu.Map1.TrackingLayer.Refresh(varTrue,V);


end;

end.
