unit U_Print;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, RzBorder, ExtCtrls,RzButton,
  comobj, MapObjects2_TLB, printers, ComCtrls, StdCtrls, bsSkinCtrls,
  bsSkinTabs, BusinessSkinForm;

type
  TfrmPrint = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    PageControl1: TbsSkinPageControl;
    tbSem: TbsSkinTabSheet;
    tbCom: TbsSkinTabSheet;
    Label1: TLabel;
    RzBorder4: TRzBorder;
    Label3: TLabel;
    Label4: TLabel;
    edtEscala: TEdit;
    bsSkinButton1: TbsSkinButton;
    RzBorder7: TRzBorder;
    bsSkinButton3: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    RzBorder6: TRzBorder;
    lblUnidades: TLabel;
    RzBorder2: TRzBorder;
    bsSkinButton4: TbsSkinButton;
    bsSkinButton5: TbsSkinButton;
    bsSkinButton6: TbsSkinButton;
    RzBorder5: TRzBorder;
    rdPapel: TbsSkinRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelarClick(Sender: TObject);
    procedure btConfigClick(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure calc_escala(mapScale2:integer);
    procedure print_escala(userScale: real);
    procedure unidade_mapa();
    function  pegar_escala(): integer;
    function  TwipsToPixelsX(DC: HDC; lTwips: Extended): Extended;
    function  PixelsToTwipsX(DC: HDC; lPixels: Extended): Extended;
    function  PixelsToTwipsY(DC: HDC; lPixels: Extended): Extended;
    procedure btImpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtEscalaKeyPress(Sender: TObject; var Key: Char);
    function calculaescalacerta(escala:real):string;

  private
    { Private declarations }
    mapscale2, mapscale  : integer;
    convFactor  : double;

  public
    { Public declarations }
  end;

var
  frmPrint: TfrmPrint;

implementation

uses U_menu;

{$R *.dfm}

const
TWIPSPERINCH = 1440;

procedure tfrmPrint.unidade_mapa();
var
INCH2FEET, INCH2METERS, INCH2DEGREES : double;
begin

  convfactor   := 0.0;
  frmMenu.convFactor2  := 0.0;
  INCH2FEET    := 12;
  INCH2METERS  := 39.3701;
  INCH2DEGREES := 4322893.46;

  if frmmenu.varMapUnits = 2 THEN //metros
     begin
       convFactor := INCH2METERS;
        frmMenu.convFactor2:= 0.025;
     end else
     if frmmenu.varMapUnits = 3 THEN //pés
        begin
           convFactor := INCH2FEET;
           frmMenu.convFactor2:=0.083;
        end else
           begin  //degrees
             convFactor := INCH2DEGREES;
             frmMenu.convFactor2:=1/4322893.46;
           end;

     mapscale:= pegar_escala;

end;

function TfrmPrint.TwipsToPixelsX(DC: HDC; lTwips: Extended): Extended;
begin
  Result := (lTwips * GetDeviceCaps(DC, LOGPIXELSX)) / TWIPSPERINCH;
end;

function TfrmPrint.PixelsToTwipsX(DC: HDC; lPixels: Extended): Extended;
begin
  Result := (lPixels * TWIPSPERINCH) / GetDeviceCaps(DC, LOGPIXELSX);
end;

function TfrmPrint.PixelsToTwipsY(DC: HDC; lPixels: Extended): Extended;
begin
  Result := (lPixels * TWIPSPERINCH) / GetDeviceCaps(DC, LOGPIXELSY);
end;

procedure tfrmPrint.print_escala(userScale: real);
var
conversionFactor, TwipsX, TwipsY, PWidth, pHeight,
MapWidth, MapHeight, RectSalW, RectSalH,
PolegadaporUnit, pageOriginX, pageOriginY : real;
RectSalW2, RectSalH2, pageOriginX2, pageOriginY2, z : integer;
unidade,aux_esc : string;
INCH2FEET, INCH2METERS, INCH2DEGREES : double;
escalaCerta : string;

begin

{*********************************
*** INCHES   -> TWIPS   x1440  ***
*** MM       -> TWIPS   x56    ***
*** 1 INCH   = 2.54 CM         ***
*** 1 INCH   = 96 PIXELS       ***
**********************************
*** TWIPS -> INCHES            ***
***  X / 1440 =                ***
***                            ***
*** POLEGADAS -> CM            ***
***  X * 2.54 =                ***
***                            ***
*** POLEGADAS -> PIXELS        ***
***   X * 96 =                 ***
***                            ***
**********************************
**********************************}

   try
      convfactor          := 0.0;
      frmMenu.convFactor2 := 0.0;
      INCH2FEET           := 12;
      INCH2METERS         := 39.37;
      INCH2DEGREES        := 4322893.46;
      printer.Orientation := poLandscape;

   if frmmenu.varMapUnits = 2 THEN //metros
      begin
         convFactor  := INCH2METERS;
         frmMenu.convFactor2 := 0.025;
         unidade     := 'Metros'
      end else
    if frmmenu.varMapUnits = 3 THEN //pés
       begin
         convFactor  := INCH2FEET;
         frmMenu.convFactor2 := 0.083;
         unidade     := 'Pés';
       end else
          begin     // degrees
            convFactor  := INCH2DEGREES;
            frmMenu.convFactor2 := 1/4322893.46;
            unidade     := 'Graus Decimais';
          end;

       conversionFactor := convFactor;
       z:=Trunc(userScale);
       aux_esc:=IntToStr(z);

       if tryStrToInt(aux_esc,z) then
          begin
            userScale := StrToFloat(aux_esc);
           // calc_escala(z); // <-- Error!
          end
       else
          begin
            frmmenu.mensagem('Escreva a Escala Corretamente!',mtInformation,[mbok]);
            edtEscala.setfocus;
            exit;
          end;

       //pegamos os valores da impressora, convertendo eles de pixels para twips
       TwipsX:=PixelsToTwipsX(Printer.Handle, 1);
       TwipsY:=PixelsToTwipsY(Printer.Handle, 1);

       //pega o tamanho do papel
       pHeight := GetDeviceCaps(printer.Handle, VERTSIZE)/25.4;
       PWidth  := GetDeviceCaps(printer.Handle, HORZSIZE)/25.4;

       //pega as medidas do mapa e converte para inches
       MapWidth  := frmmenu.map1.Extent.Width  * conversionFactor;
       MapHeight := frmmenu.map1.Extent.Height * conversionFactor;

       //retangulo de saida
       RectSalW  := MapWidth / userScale;
       RectSalH  := MapHeight / userScale;

       //valor por unidade
       PolegadaporUnit := (userScale/conversionFactor) * 2.54;

       If (RectSalW > PWidth) or (RectSalH > pHeight) then
          begin
             escalaCerta := calculaescalacerta(userscale);
             frmmenu.mensagem(pchar('A Escala Que Você Especificou Para o Mapa é Muita Larga Para a Página de Impressão.' +
                                    #13 + #13 +'Para o Seu Tamanho de Papel Você Deve Utilizar uma Escala Igual ou Superior a 1:'+ escalacerta +' '+unidade+ #13),mtInformation,[mbok]);
             edtEscala.text := escalaCerta;
             exit;

          end;

       //*****************************************************
       // DESATIVADO POR CONFUNDIR A CABEÇA DO USUARIO!!
       //ESTA COMENTADO PARA SERVIR COMO REFERENCIAS FUTURAS para impressao em escala

       {//se a medida for maior que o papel,saia da rotina
       If RectSalW > PWidth then
          begin
             application.messagebox(pchar('A Escala Que Você Especificou Para o Mapa é Muita Larga Para a Página de Impressão.' +
                                    #13 + #13 + 'Sua Impressora Possui Apenas ' +  Formatfloat('0.00',PWidth) + ' de Largura Máxima, ' + 'Mas Uma Escala de 1:' + inttostr(trunc(userscale)) + ' Exige do Mapa ' + Formatfloat('0.00',RectSalW) + ' de Largura.'),'SIGGeo', mb_ok + mb_iconwarning);
             exit;
          end
       else
          if RectSalH > pHeight then
             begin
                application.messagebox(pchar('A Escala Que Você Especificou Para o Mapa é Muita Larga Para a Página de Impressão.' +
                                      #13 + #13 + 'Sua Impressora Possui Apenas ' +  Formatfloat('0.00',pHeight) + ' de Largura Máxima, ' + 'Mas Uma Escala de 1:' + inttostr(trunc(userscale)) + ' Exige do Mapa ' + Formatfloat('0.00',RectSalH) + ' de Largura.'),'SIGGeo', mb_ok + mb_iconwarning);
                exit;
             end;
       }//********************************************************************************************

       //centralizar o mapa no papel
       pageOriginX := (PWidth - RectSalW) / 2;
       pageOriginY := (pHeight - RectSalH) / 2;

       //damos os valores para impressão
       pageOriginX:=(pageOriginX * 1440) / TwipsX;
       pageOriginY:=(pageOriginY * 1440) / TwipsY;

       RectSalW:=(RectSalW * 1440) / TwipsX;
       RectSalH:=(RectSalH * 1440) / TwipsY;

       pageOriginX2 := Trunc(pageOriginX);
       pageOriginY2 := Trunc(pageOriginY);

       RectSalW2 := Trunc(RectSalW);
       RectSalH2 := Trunc(RectSalH);

       if frmmenu.mensagem(pchar('VOCÊ DESEJA CONTINUAR? '+ #13 + #13 +
          'Tamanho da Página: '+#13 +
          Formatfloat('0.00',PWidth) + ' Largura '+ #13 +
          Formatfloat('0.00',PHeight) + ' Largura ' + #13 + #13 +
          'Extensão do Mapa Impresso: ' + #13 +
          Formatfloat('0.00',(RectSalW * 2.54)) + ' Centimetros De Largura' + #13 +
          Formatfloat('0.00',(RectSalH * 2.54)) + ' Centimetros De Altura' + #13 + #13 +
          'Relação da Escala:' + #13 +
          '1:' + inttostr(trunc(userscale)) + #13 + #13 +
          '1 Centimetro = ' + Formatfloat('0',PolegadaporUnit) + ' ' + unidade + #13),mtConfirmation,
          [mbyes,mbno]) = idyes then
       begin
          //imprimindo o mapa
          printer.BeginDoc;
          frmmenu.map1.OutputMap2(printer.Handle,pageOriginX2,PageOriginY2,RectSalW2,RectSalH2);
          printer.EndDoc;
          frmPrint.Close;
       end;
   EXCEPT
       frmmenu.mensagem('Ocorreu Um Erro Desconhecido!',mtInformation,[mbok]);
   end;

end;

function tfrmPrint.calculaescalacerta(escala:real):string;
var
conversionFactor, TwipsX, TwipsY, PWidth, pHeight,
MapWidth, MapHeight, RectSalW, RectSalH,
PolegadaporUnit, pageOriginX, pageOriginY : real;
RectSalW2, RectSalH2, pageOriginX2, pageOriginY2, z : integer;
unidade,aux_esc : string;
INCH2FEET, INCH2METERS, INCH2DEGREES : double;
valorOK : boolean;
userScale,valorEscala : real;
begin

  valorEscala := escala;

  valorOK     := false;

  convfactor          := 0.0;
  frmMenu.convFactor2 := 0.0;
  INCH2FEET           := 12;
  INCH2METERS         := 39.37;
  INCH2DEGREES        := 4322893.46;
  printer.Orientation := poLandscape;

  if frmmenu.varMapUnits = 2 THEN //metros
  begin
     convFactor  := INCH2METERS;
     frmMenu.convFactor2 := 0.025;
     unidade     := 'Metros'
  end else
  if frmmenu.varMapUnits = 3 THEN //pés
   begin
     convFactor  := INCH2FEET;
     frmMenu.convFactor2 := 0.083;
     unidade     := 'Pés';
   end else
      begin     // degrees
        convFactor  := INCH2DEGREES;
        frmMenu.convFactor2 := 1/4322893.46;
        unidade     := 'Graus Decimais';
      end;

  //**********************************
  while not valorOK do
     begin

           conversionFactor := convFactor;
           z:=Trunc(valorEscala);
           aux_esc:=IntToStr(z);

           userScale := StrToFloat(aux_esc);

           //pegamos os valores da impressora, convertendo eles de pixels para twips
           TwipsX:=PixelsToTwipsX(Printer.Handle, 1);
           TwipsY:=PixelsToTwipsY(Printer.Handle, 1);

           //pega o tamanho do papel
           pHeight := GetDeviceCaps(printer.Handle, VERTSIZE)/25.4;
           PWidth  := GetDeviceCaps(printer.Handle, HORZSIZE)/25.4;

           //pega as medidas do mapa e converte para inches
           MapWidth  := frmmenu.map1.Extent.Width  * conversionFactor;
           MapHeight := frmmenu.map1.Extent.Height * conversionFactor;

           //retangulo de saida
           RectSalW  := MapWidth / userScale;
           RectSalH  := MapHeight / userScale;

           //valor por unidade
           PolegadaporUnit := (userScale/conversionFactor) * 2.54;

           If (RectSalW > PWidth) or (RectSalH > pHeight) then
              begin
                valorOK := false;
                valorEscala := valorEscala + 1;
              end
              else
                 valorOK := true;

     end;

     result := inttostr(trunc(ValorEscala));

end;

procedure tfrmPrint.calc_escala(mapScale2:integer);
var
 i : integer;
 mapw2,controlw2 : real;
 rect_temp: IMoRectangle;

begin
for i:=0 to 1 do
  rect_temp       := IMoRectangle(CreateOleObject('MapObjects2.Rectangle'));
  mapscale        := mapScale2;
  controlw2       := frmmenu.map1.Width * PixelsToTwipsX(Canvas.Handle, 1);
  controlw2       := controlw2 / 1440;
  controlw2       := controlw2 * frmMenu.convFactor2; //convierto a UNIDAD DE MEDIDA
  mapw2           := mapscale2 * controlw2;
  rect_temp       := frmmenu.map1.Extent;
  rect_temp.Right := rect_temp.Left + mapw2;
  mapw2           := mapw2 / frmmenu.map1.Extent.Width * frmmenu.map1.Extent.Height;
  rect_temp.Top   := rect_temp.Bottom + mapw2;
  frmmenu.map1.Extent := rect_temp;

  unidade_mapa; //procedure

  frmmenu.map1.Refresh;

end;

function tfrmPrint.pegar_escala(): integer;
var
mapw2,controlw2: real;

begin
   //the map in in meters
   mapw2 := frmmenu.map1.Extent.Width;
   //the control is in twips
   controlw2 := frmmenu.map1.Width*PixelsToTwipsX(Canvas.Handle, 1);
   //now in inches
   controlw2 := controlw2 / 1440;
   //now in meters
   if frmMenu.convFactor2=0 then
      controlw2 := controlw2 * (2.54/100)
   else
      controlw2 := controlw2 * frmMenu.convfactor2;

   //' scale is :
   mapscale2   := trunc(mapw2 / controlw2);
   result := mapscale2;

end;

procedure TfrmPrint.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := cafree;
   frmPrint := nil;

end;

procedure TfrmPrint.btCancelarClick(Sender: TObject);
begin
   frmPrint.Close;
end;

procedure TfrmPrint.btConfigClick(Sender: TObject);
begin
   frmmenu.PrintDialog1.Execute;
end;

procedure TfrmPrint.RzBitBtn5Click(Sender: TObject);
var
orient : boolean;
begin

   If rdPapel.ItemIndex = 0 then
      orient := false
   else
      orient := true;
//   frmMenu.Map1.ScaleBy(1,2000); //código malicioso
   frmmenu.map1.PrintMap('Meu mapa','',orient);

end;

procedure TfrmPrint.btImpClick(Sender: TObject);
var
escala : Currency;
begin

  If (frmmenu.varMapUnits = -1) or (frmmenu.varMapUnits = 0) then
    begin
       frmmenu.mensagem('É Necessário Definir as Unidades do Mapa Para Imprimir!',mtInformation,[mbok]);
       exit;
    end;

  if trim(edtEscala.text)='' then
     begin
        frmmenu.mensagem('Informe a Escala do Mapa!',mtInformation,[mbOk]);
        edtEscala.setfocus;
        exit;
     end;

  If TryStrTocurr(edtEscala.text,escala) then
     print_escala(escala)
  else
     frmmenu.mensagem('Escala Inválida!',mtInformation,[mbok]);

end;

procedure TfrmPrint.FormCreate(Sender: TObject);
begin
   case frmmenu.varMapUnits of
      -1:
      lblUnidades.caption := 'Desconhecida';
      0:
      lblUnidades.caption := 'Desconhecida';
      1:
      lblUnidades.caption := 'Graus Decimais';
      2:
      lblUnidades.caption := 'Metros';
      3:
      lblUnidades.caption := 'Pés';
   end;

   PageControl1.ActivePageIndex := 0;

end;

procedure TfrmPrint.edtEscalaKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9',',', #8]) then
     key:=#0;

end;

end.
