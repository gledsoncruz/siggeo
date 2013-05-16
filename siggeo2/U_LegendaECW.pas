unit U_LegendaECW;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,MapObjects2_TLB, BusinessSkinForm,
  bsSkinCtrls;

type
  TfrmLegendaECW = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    edtNome: TEdit;
    Label1: TLabel;
    btAplicar: TbsSkinButton;
    bsSkinButton1: TbsSkinButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    lyr  : imomaplayer;
    lyrs : IMoLayers;
  public
    { Public declarations }
  end;

var
  frmLegendaECW: TfrmLegendaECW;

implementation

uses U_menu;

{$R *.dfm}

procedure TfrmLegendaECW.FormCreate(Sender: TObject);
begin

 //copiando o nome da layer
   lyr  := comaplayer.create;
   lyrs := frmmenu.map1.Layers;
   lyr  := imomaplayer(lyrs.item(frmmenu.maplegend1.getActiveLayer));

   edtNome.text := lyr.Name;

end;

procedure TfrmLegendaECW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  action        := cafree;
  frmLegendaECW := nil;

end;

procedure TfrmLegendaECW.Button2Click(Sender: TObject);
begin

   frmLegendaECW.close;

end;

procedure TfrmLegendaECW.Button1Click(Sender: TObject);
begin

      lyr.Name := edtNome.text;
      frmmenu.legenda;
      frmLegendaECW.close;

end;

procedure TfrmLegendaECW.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
     begin
         key := #0;
         perform(WM_NEXTDLGCTL,0,0);
     end;
     

end;

end.
