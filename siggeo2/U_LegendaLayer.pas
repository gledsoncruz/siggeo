unit U_LegendaLayer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ComObj, bsSkinCtrls, ComCtrls, OleCtrls, bsSkinTabs, BusinessSkinForm, StdCtrls,MapObjects2_TLB;

type
  TfrmLegendaLayer = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinTabSheet2: TbsSkinTabSheet;
    bsSkinTabSheet3: TbsSkinTabSheet;
    bsSkinPanel1: TbsSkinPanel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    lyr              : imomaplayer;
    lyrs             : imolayers;
    cbr              : IMoClassBreaksRenderer;
    vmr              : IMoValueMapRenderer;
    strsUniqueValues : IMoStrings;
    zRend            : IMoZRenderer;
    lr               : IMoLabelRenderer;
    lp               : IMoLabelPlacer;
    grpRenderer      : IMoGroupRenderer;
  end;

var
  frmLegendaLayer: TfrmLegendaLayer;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmLegendaLayer.Button1Click(Sender: TObject);
var
symInt           : smallint;
varTrue          : wordbool;
ss : smallint;
begin

   ss := 0;

   //copiando o nome da layer
   lyr                      := CoMapLayer.Create;
   lyrs                     := frmmenu.map1.Layers;
   lyr                      := imomaplayer(lyrs.item(ss));          //frmmenu.maplegend1.getActiveLayer));
   //*************************

   //verifica o tipo do shape,para carregar o simbolo correto do maprenderer;
   If (lyr.shapeType = moShapeTypeMultipoint) or (lyr.shapeType = moShapeTypePoint) then
       symInt := 0
   Else
       symInt := lyr.shapeType - 21;

   vmr  := CoValueMapRenderer.Create;

   //maprenderer recebe os valores para classificar
   vmr.SymbolType          := symInt;
   vmr.Field               := 'CADASTRO';
   varTrue                 := true;
   vmr.UseDefault          := varTrue;
   vmr.ValueCount          := 4;

   vmr.DefaultSymbol.Size  := 10;
   vmr.DefaultSymbol.Style := lyr.Symbol.style;

   vmr.value[0] := '12';
   vmr.Symbol[0].color := clYellow;

   vmr.value[1] := '16';
   vmr.Symbol[1].color := clBlue;

   vmr.value[2] := '23';
   vmr.Symbol[2].color := clRed;

   vmr.value[2] := '27 - 999999999999';
   vmr.Symbol[2].color := clGreen;

   lyr.Renderer := vmr;
   frmmenu.Map1.Refresh;



end;

end.
