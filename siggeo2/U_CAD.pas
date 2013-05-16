unit U_CAD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsSkinCtrls, StdCtrls, ExtCtrls,MapObjects2_TLB,activex,OleCtrls;

type
  TfrmCAD = class(TForm)
    bsSkinBevel1: TbsSkinBevel;
    cbLinha: TbsSkinCheckRadioBox;
    cbPonto: TbsSkinCheckRadioBox;
    cbPoligono: TbsSkinCheckRadioBox;
    cbTexto: TbsSkinCheckRadioBox;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinButton1: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormCreate(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCAD: TfrmCAD;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmCAD.FormCreate(Sender: TObject);
var
TesteRecs  : IMoRecordset;
layerTeste : IMoMapLayer;
dcTeste    : IMoDataConnection;
//cont       : Integer;
begin


   frmmenu.Cursor:= crHourGlass;
   screen.Cursor := crHourGlass;

   FormStyle     := fsStayOnTop; 

   caption := frmmenu.arquivo+'.'+frmmenu.extensao;

   //*****************************
   //* VERIFICAR O LINHA
   dcTeste := CoDataConnection.create;

   dcTeste.Database := '[CadLine]' + frmmenu.caminho ; //dando o caminho p/ o database
   dcTeste.connect;// conectando

   If not dcTeste.connect then exit;

   layerTeste            := CoMapLayer.create;
   layerTeste.GeoDataset := dcTeste.FindGeoDataSet(frmmenu.arquivo + '.' + frmmenu.extensao);
   TesteRecs             := layerTeste.Records;

   if not TesteRecs.EOF then
      begin
         cbLinha.enabled := true;
         cbLinha.Checked := true;
      end
      else
         begin
             cbLinha.enabled := false;
             cbLinha.Checked := false;
         end;

  //*****************************
  //* FIM LINHA
  //*****************************


   //*****************************
   //* VERIFICAR PONTO

   dcTeste.Database := '[CadPoint]' + frmmenu.caminho ; //dando o caminho p/ o database
   dcTeste.connect;// conectando

   If not dcTeste.connect then exit;

   layerTeste            := CoMapLayer.create;
   layerTeste.GeoDataset := dcTeste.FindGeoDataSet(frmmenu.arquivo + '.' + frmmenu.extensao);
   TesteRecs             := layerTeste.Records;

   if not TesteRecs.EOF then
      begin
         cbPonto.enabled := true;
         cbPonto.Checked := true;
      end
      else
         begin
             cbPonto.enabled := false;
             cbPonto.Checked := false;
         end;
   //*****************************
   //* FIM PONTO
   //*****************************


  //*****************************
  //* VERIFICAR Poly
   dcTeste.Database := '[CadArea]' + frmmenu.caminho ; //dando o caminho p/ o database
   dcTeste.connect;// conectando

   If not dcTeste.connect then exit;

   layerTeste            := CoMapLayer.Create;
   layerTeste.GeoDataset := dcTeste.FindGeoDataSet(frmmenu.arquivo + '.' + frmmenu.extensao);
   TesteRecs             := layerTeste.Records;

   if not TesteRecs.EOF then
      begin
         cbPoligono.enabled := true;
         cbPoligono.Checked := true;
      end
      else
         begin
             cbPoligono.enabled := false;
             cbPoligono.Checked := false;
         end;

   //*****************************
   //* FIM POLY
   //*****************************

   //*****************************
   //* VERIFICAR TEXTO

   dcTeste.Database := '[CadText]' + frmmenu.caminho ; //dando o caminho p/ o database
   dcTeste.connect;// conectando

   If not dcTeste.connect then exit;

   layerTeste            := CoMapLayer.Create;
   layerTeste.GeoDataset := dcTeste.FindGeoDataSet(frmmenu.arquivo + '.' + frmmenu.extensao);
   TesteRecs             := layerTeste.Records;

   if not TesteRecs.EOF then
      begin
         cbTexto.enabled := true;
         cbTexto.Checked := true;
      end
      else
         begin
             cbPoligono.enabled := false;
             cbTexto.Checked    := false;
         end;
   //*****************************
   //* FIM TEXTO
   //*****************************
   
   screen.Cursor := crDefault;
   frmmenu.Cursor:= crDefault;

end;

procedure TfrmCAD.bsSkinButton1Click(Sender: TObject);
var
Ft        : TFont;
oRenderer : IMoLabelRenderer;
ly        : IMoMapLayer;
lyrs      : IMoLayers;
//ss        : smallint;
//lyr       : imomaplayer;
//Gdtset    : IMoGeoDataset;
begin

 frmmenu.Cursor:= crHourGlass;
 screen.Cursor := crHourGlass;

 If (cbLinha.Checked = false) and (cbponto.Checked = false) and
    (cbPoligono.Checked = false) and (cbTexto.Checked = false) then
     application.MessageBox('Selecione um tipo de Arquivo!', 'SIGGeo', mb_ok + mb_iconerror)

 else
   begin
      Screen.Cursor := crHourGlass;

      //adicionando arquivos do tipo linha
      If cbLinha.Checked = true then
          begin
             frmMenu.dc.Database := '[CadLine]' + frmmenu.caminho ; //dando o caminho p/ o database
             frmmenu.dc.connect;// conectando
             If not frmmenu.dc.connect then exit;
                frmmenu.layer := CoMapLayer.create;
                frmmenu.layer.GeoDataset := frmmenu.dc.FindGeoDataSet(frmmenu.arquivo + '.' + frmmenu.extensao);
                frmmenu.layer.Name       := copy(ExtractFileName(frmmenu.completo),1,length(ExtractFileName(frmmenu.completo))-4);
                frmmenu.layer.Tag := frmmenu.completo + '|LINHA';

                //configurar o array de seleçao de shapes
                frmmenu.ConfigurarVetorNovoTema(frmmenu.layer.tag);

                frmmenu.Map1.Layers.Add(frmmenu.Layer);
           end;

       //frmmenu.legenda;

       //adicionando arquivos do tipo ponto
      If cbPonto.Checked = true then
          begin
             frmMenu.dc.Database := '[CadPoint]' + frmmenu.caminho ; //dando o caminho p/ o database
             frmmenu.dc.connect;// conectando
             If not frmmenu.dc.connect then exit;

             frmmenu.layer := CoMapLayer.create;
             frmmenu.layer.GeoDataset := frmmenu.dc.FindGeoDataSet(frmmenu.arquivo + '.' + frmmenu.extensao);
             frmmenu.layer.Name       := copy(ExtractFileName(frmmenu.completo),1,length(ExtractFileName(frmmenu.completo))-4);
             frmmenu.layer.Tag := frmmenu.completo + '|PONTO';

             //configurar o array de seleçao de shapes
             frmmenu.ConfigurarVetorNovoTema(frmmenu.layer.tag);

             frmmenu.Map1.Layers.Add(frmmenu.Layer);
          end;

      //frmmenu.legenda;

      //adicionando arquivos do tipo polígono
      If cbPoligono.Checked = true then
          begin
             frmMenu.dc.Database := '[CadArea]' + frmmenu.caminho ; //dando o caminho p/ o database
             frmmenu.dc.connect;// conectando
             If not frmmenu.dc.connect then exit;

             frmmenu.layer            := CoMapLayer.Create;
             frmmenu.layer.GeoDataset := frmmenu.dc.FindGeoDataSet(frmmenu.arquivo + '.' + frmmenu.extensao);
             frmmenu.layer.Name       := copy(ExtractFileName(frmmenu.completo),1,length(ExtractFileName(frmmenu.completo))-4);
             frmmenu.layer.Tag        := frmmenu.completo + '|POLIG';

             //configurar o array de seleçao de shapes
             frmmenu.ConfigurarVetorNovoTema(frmmenu.layer.tag);

             frmmenu.Map1.Layers.Add(frmmenu.Layer);

          end;

     // frmmenu.legenda;

      //adicionando arquivos do tipo texto
      If cbtexto.Checked = true then
         begin
             frmMenu.dc.Database := '[CadText]' + frmmenu.caminho ; //dando o caminho p/ o database
             frmmenu.dc.connect;// conectando

             If not frmmenu.dc.connect then exit;

             //the Font
             Ft:= TFont.Create;
             with Ft do
               begin
                 Name := 'Arial';
               end;

             frmmenu.layer            := CoMapLayer.Create;
             frmmenu.layer.GeoDataset := frmmenu.dc.FindGeoDataSet(frmmenu.arquivo + '.' + frmmenu.extensao);
             frmmenu.layer.Name       := copy(ExtractFileName(frmmenu.completo),1,length(ExtractFileName(frmmenu.completo))-4);
             frmmenu.layer.Tag        := frmmenu.completo + '|TEXTO';

             //configurar o array de seleçao de shapes
             frmmenu.ConfigurarVetorNovoTema(frmmenu.layer.tag);

             frmmenu.Map1.Layers.Add(frmmenu.Layer);

       //      frmmenu.legenda;

             //tranformando as linhas em textos de verdade
             orenderer := CoLabelRenderer.Create;
             lyrs      := IMoLayers(frmMenu.map1.layers);
             ly        := CoMapLayer.Create;
             ly        := IMoMapLayer(lyrs.item(0));

             ly.Renderer := oRenderer;

             With oRenderer do
               begin
                 SymbolCount := 2;
                 AllowDuplicates := true;
                 DrawBackground  := false;
                 SplinedText     := true;
                 Symbol[0].Font  := IFontDisp(IDispatch(FontToOleFont(Ft)));
                 Symbol[0].color := moBlack;
                 //aki define o tamanho da label
                 Symbol[0].Height := 6;
                 Field := 'text';
                 ft.Free;
               end;

         end;

   end;

  frmmenu.AdicionarMeiofioMap2;

  frmmenu.legenda;
  frmmenu.Cursor:= crDefault;
  Screen.Cursor := crDefault;

  close;

end;

procedure TfrmCAD.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  action := cafree;
  frmCad := nil;
end;

end.
