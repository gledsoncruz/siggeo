unit U_GrafInsCoordLatLong;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, bsSkinBoxCtrls, StdCtrls, Mask, RzLabel, RzBorder,
  ComCtrls, bsSkinTabs, BusinessSkinForm, DB, DBTables, bsColorCtrls,
  bsSkinShellCtrls, MapObjects2_TLB;

type
  TfrmGrafInsCoordLatLong = class(TForm)
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    RzBorder1: TRzBorder;
    RzBorder2: TRzBorder;
    RzLabel4: TRzLabel;
    stAbrir: TbsSkinEdit;
    bsSkinButton1: TbsSkinButton;
    bsSkinTabSheet2: TbsSkinTabSheet;
    RzBorder4: TRzBorder;
    RzLabel6: TRzLabel;
    bsSkinPanel1: TbsSkinPanel;
    RzBorder3: TRzBorder;
    RzLabel5: TRzLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    edtColor: TRzLabel;
    Label7: TLabel;
    edtColor1: TRzLabel;
    spEspLinha: TbsSkinSpinEdit;
    cbEstilo: TbsSkinComboBox;
    bsSkinButton2: TbsSkinButton;
    btConvShapePoli: TbsSkinButton;
    bsSkinButton3: TbsSkinButton;
    btTransPoli: TbsSkinButton;
    cbUsaOutline: TbsSkinCheckRadioBox;
    bsSkinButton4: TbsSkinButton;
    bsSkinButton5: TbsSkinButton;
    spStatus: TbsSkinStatusPanel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinPanel2: TbsSkinPanel;
    cbCoordYGrau: TbsSkinComboBox;
    RzLabel3: TRzLabel;
    cbCoordXGrau: TbsSkinComboBox;
    RzLabel2: TRzLabel;
    cbCoordYMin: TbsSkinComboBox;
    RzLabel11: TRzLabel;
    cbCoordXMin: TbsSkinComboBox;
    RzLabel9: TRzLabel;
    cbCoordYSeg: TbsSkinComboBox;
    RzLabel12: TRzLabel;
    cbCoordXSeg: TbsSkinComboBox;
    RzLabel10: TRzLabel;
    bsPanelManualmenteGrau: TbsSkinPanel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel17: TRzLabel;
    RzLabel18: TRzLabel;
    RzLabel19: TRzLabel;
    bsEdtXGrau: TbsSkinEdit;
    bsEdtXMin: TbsSkinEdit;
    bsEdtXSeg: TbsSkinEdit;
    bsEdtYGrau: TbsSkinEdit;
    bsEdtYMin: TbsSkinEdit;
    bsEdtYSeg: TbsSkinEdit;
    SaveDialog1: TbsSkinSaveDialog;
    bsSkinColorDialog2: TbsSkinColorDialog;
    bsSkinColorDialog1: TbsSkinColorDialog;
    OpenDialog1: TbsSkinOpenDialog;
    tbPonto: TTable;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure controlPanels;
    procedure bsSkinRadioGroup1Click(Sender: TObject);
    procedure bsSkinRadioGroup2Click(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure bsSkinButton4Click(Sender: TObject);
    procedure bsSkinButton5Click(Sender: TObject);
    procedure btConvShapePoliClick(Sender: TObject);
    procedure btTransPoliClick(Sender: TObject);
    procedure bsSkinButton3Click(Sender: TObject);
    procedure edtColorClick(Sender: TObject);
    procedure edtColor1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    //variáveis de entrada
 Deg_Long         : integer;
 Min_Long         : integer;
 Sec_Long         : integer;
 Deg_Lat          : integer;
 Min_Lat          : integer;
 Sec_Lat          : integer;
 
 Direction_East   : String;
 Direction_North  : String;
 DirEW            : String;
 DirNS            : String;

 //variaveis de saída
 Zone_Number      : double;
 X_North_south    : double;
 Y_East_West      : double;

 //variaveis intermediarias
 b, f, deg_RAD, longrad, FormuleLong, FormuleLat, FormuleNS    : extended;
 longi, longo, lat, longdeg_origin, longradorigin              : extended;
 sinlat, sin2lat, coslat, tanlat, n1, n2, n3, n4, n5, T, C, A0 : double;
 Aprime, Bprime, Cprime, Dprime, Eprime, M, N                  : double;
 tempLine                                                      : IMoLine;
 procedure ConverterLatLongForUTM;
 

  end;

var
  frmGrafInsCoordLatLong: TfrmGrafInsCoordLatLong;
  //constantes
    Const A = 6378137; //a (earth radius-m)
    Const PI = 3.1415927;
    Const k0 = 0.9996; //coeff.d'aplatissement de la terre
    Const e = 0.8; //excentricité
    Const eccSquared = 0.0064; //carré de l'excentricité
    Const eccPrimeSquared = 0.007;
    Const North_South_Offset = 10000000; //décalage NS pour toujours manipuler des données positives l'équateur a la valeur
                                        //10000km quand on va vers le Sud
    Const East_West_Offset = 500000; //Le centre de chaque zone de 6 degrés a la valeur de 500km.


implementation

uses U_Menu, Math;

{$R *.dfm}

procedure TfrmGrafInsCoordLatLong.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action                  := cafree;
   frmGrafInsCoordLatLong  := nil;
end;

procedure TfrmGrafInsCoordLatLong.bsSkinButton1Click(Sender: TObject);
begin
   OpenDialog1.FileName := '';
   OpenDialog1.Execute;
   stAbrir.Text := '';
    if OpenDialog1.FileName <> '' then
      begin
         stAbrir.Text         := OpenDialog1.FileName;
         tbponto.Active       := false;
         tbPonto.DatabaseName := ExtractFilePath(OpenDialog1.FileName);
         tbponto.TableName    := ExtractFileName(OpenDialog1.FileName);
         try
           tbponto.Active := true;
         except
           frmMenu.Mensagem('Não é Possível Abrir a Tabela!', mtWarning,[mbOk]);
         end;
         //grau
         tbPonto.GetFieldNames(cbCoordXGrau.Items);
         tbPonto.GetFieldNames(cbCoordXMin.Items);
         tbPonto.GetFieldNames(cbCoordXSeg.Items);
         tbPonto.GetFieldNames(cbCoordYGrau.Items);
         tbPonto.GetFieldNames(cbCoordYMin.Items);
         tbPonto.GetFieldNames(cbCoordYSeg.Items);


         cbCoordXGrau.Update;
         cbCoordXGrau.UpdateControlState;
         cbCoordXGrau.Refresh;

         cbCoordXMin.Update;
         cbCoordXMin.UpdateControlState;
         cbCoordXMin.Refresh;

         cbCoordXSeg.Update;
         cbCoordXSeg.UpdateControlState;
         cbCoordXSeg.Refresh;

         cbCoordYGrau.Update;
         cbCoordYGrau.UpdateControlState;
         cbCoordYGrau.Refresh;

         cbCoordYMin.Update;
         cbCoordYMin.UpdateControlState;
         cbCoordXMin.Refresh;

         cbCoordYSeg.Update;
         cbCoordYSeg.UpdateControlState;
         cbCoordYSeg.Refresh;



      end;
end;

procedure TfrmGrafInsCoordLatLong.FormCreate(Sender: TObject);
begin
 frmmenu.varGrafCoordsPontos := CoPoints.Create;
end;


procedure TfrmGrafInsCoordLatLong.controlPanels;
begin
 if bsSkinPageControl1.ActivePageIndex = 0 then
  begin
   bsSkinPanel2.Visible        := not bsSkinPanel2.Visible;

  end
   else
    begin
     bsPanelManualmenteGrau.Visible        := not bsPanelManualmenteGrau.Visible;
    end;
end;

procedure TfrmGrafInsCoordLatLong.bsSkinRadioGroup1Click(Sender: TObject);
begin
 controlPanels;
end;

procedure TfrmGrafInsCoordLatLong.bsSkinRadioGroup2Click(Sender: TObject);
begin
 controlPanels;
end;

procedure TfrmGrafInsCoordLatLong.ConverterLatLongForUTM;
begin

 //'Intermediario
 b := A - A / 298.2572;
 deg_RAD := 2 * PI / 360;

 FormuleLong := ((Deg_Long) + (Min_Long) / 60 + (Sec_Long) / 3600) * deg_RAD;
 FormuleLat := ((Deg_Lat) + ((Min_Lat) / 60) + ((Sec_Lat) / 3600)) * deg_RAD;


//'Determinando o sentido da longitude

If DirEW = 'E' Then
    longi := FormuleLong
Else
 begin
    longi := -1 * FormuleLong;
 end;

//'Determinando o sentido da latitude

If DirNS = 'N' Then
    lat := FormuleLat
Else
 begin
    lat := -1 * FormuleLat;
 End;

//'Calculando o numero da zona
If Deg_Long = 180 Then
    Zone_Number := 1
Else
    If DirEW = 'E' Then
        Zone_Number := int((Deg_Long / 6) + 31)
    Else
     begin
        Zone_Number := Abs(Int((Deg_Long) / 6) - 30);
     End;


//'Calculando a origem central da zona

longdeg_origin := ((Zone_Number - 1) * 6) - 180 + 3;
longo := (longdeg_origin) * deg_RAD;


//'Calculos geométricos

sinlat := Sin(lat);
sin2lat := Sin(lat) * Sin(lat);
coslat := Cos(lat);
tanlat := Tan(lat);

T := Tan(lat);
N := A / Sqr(1 - eccSquared * sin2lat);
C := eccPrimeSquared * coslat * coslat;
A0 := coslat * (longi - longo);

n1 := (A - b) / (A + b);
n2 := n1 * n1;
n3 := n2 * n1;
n4 := n3 * n1;
n5 := n4 * n1;


Aprime := A * (1 - n1 + (5 / 4) * (n2 - n3) + (81 / 64) * (n4 - n5));
Bprime := (3 * A * n1 / 2) * (1 - n1 + (7 / 8) * (n2 - n3) + (55 / 64) * (n4 - n5));
Cprime := (15 * A * n2 / 16) * (1 - n1 + (3 / 4) * (n2 - n3));
Dprime := (35 * A * n3 / 48) * (1 - n1 + (11 / 16) * (n2 - n3));
Eprime := (315 * A * n4 / 51) * (99 / 144) * (n2 - n3);

M := Aprime * lat - Bprime * Sin(2 * lat) + Cprime * Sin(4 * lat) - Dprime * Sin(6 * lat) + Eprime * Sin(8 * lat);
FormuleNS := (k0 * (M + N * tanlat * (A0 * A0 / 2 + (5 - T + 9 * C + 4 * C * C) * A0 * A0 * A0 * A0 / 24 + (61 - 58 * T + T * T + 600 * C - 330 * eccPrimeSquared) * A0 * A0 * A0 * A0 * A0 * A0 / 720)));

//saída
If lat < 0 Then
    X_North_south := North_South_Offset + FormuleNS
Else
 begin
    X_North_south := FormuleNS
 End;

Y_East_West := (k0 * N * (A0 + (1 - T + C) * A0 * A0 * A0 / 6 + (5 - 18 * T + T * T + 72 * C - 58 * eccPrimeSquared) * A0 * A0 * A0 * A0 * A0 / 120) + East_West_Offset);


end;

procedure TfrmGrafInsCoordLatLong.bsSkinButton2Click(Sender: TObject);
var
pt         : IMoPoint;
cont       : Integer;
atualiza   : WordBool;
v          : Variant;
begin

if bsSkinPageControl1.ActivePageIndex = 0 then
  begin

    if tbPonto.Active = false then
       begin
           frmmenu.Mensagem('Informe Uma Tabela Com as Coordenadas!',mtInformation,[mbOk]);
           exit;
       end;

    cont   := 1;
    tbPonto.First;

    while not (tbPonto.Eof) do
        begin

            //Longitude
             Deg_Long := tbPonto.fieldbyname(cbCoordXGrau.Text).AsInteger;
             Min_Long := tbPonto.fieldbyname(cbCoordXMin.Text).AsInteger;
             Sec_Long := tbPonto.fieldbyname(cbCoordXSeg.Text).AsInteger;

            //latitude
             Deg_Lat := tbPonto.fieldbyname(cbCoordYGrau.Text).AsInteger;
             Min_Lat := tbPonto.fieldbyname(cbCoordYMin.Text).AsInteger;
             Sec_Lat := tbPonto.fieldbyname(cbCoordYSeg.Text).AsInteger;

             DirNS := 'S';  //Sul
             DirEW := 'W';  //Oeste

          //faz a conversão para UTM
             ConverterLatLongForUTM;

             pt    := CoPoint.Create;
             pt.X  := Y_East_West;
             pt.Y  := X_North_south;
             frmmenu.varGrafCoordsPontos.Add(pt);
             tbPonto.Next;

             //**********
            SetLength(frmmenu.varBoolGrafPontoUTM ,length(frmMenu.varBoolGrafPontoUTM)+1);
             SetLength(frmmenu.varGrafPontoUTM ,length(frmMenu.varGrafPontoUTM)+1);
             SetLength(frmMenu.varVetGrafPontoColorUTM,length(frmMenu.varVetGrafPontoColorUTM)+1);
             SetLength(frmMenu.varVetGrafPontoUsaOutlineUTM,length(frmMenu.varVetGrafPontoUsaOutlineUTM)+1);
             SetLength(frmMenu.varVetGrafPontoSizeUTM,length(frmMenu.varVetGrafPontoSizeUTM)+1);
             SetLength(frmMenu.varVetGrafPontoOutCorUTM,length(frmMenu.varVetGrafPontoOutCorUTM)+1);
             SetLength(frmMenu.varVetGrafPontoStyleUTM,length(frmMenu.varVetGrafPontoStyleUTM)+1);
             //**********
             frmMenu.varGrafPontoUTM[length(frmMenu.varGrafPontoUTM)-1]                            := CoPoint.Create;
             frmMenu.varGrafPontoUTM[length(frmMenu.varGrafPontoUTM)-1]                            := Pt;
             //***********
             frmMenu.varVetGrafPontoStyleUTM[length(frmMenu.varVetGrafPontoStyleUTM)-1]            := cbEstilo.Itemindex;
             frmMenu.varBoolGrafPontoUTM[length(frmMenu.varBoolGrafPontoUTM)-1]                    := true;
             frmMenu.varVetGrafPontoColorUTM[length(frmMenu.varVetGrafPontoColorUTM)-1]            := edtColor.Color;//varGrafPontoColor;
             frmMenu.varVetGrafPontoUsaOutlineUTM[length(frmMenu.varVetGrafPontoUsaOutlineUTM)-1]  := cbUsaOutLine.checked;//varGrafPontoUsaOutline;
             frmMenu.varVetGrafPontoSizeUTM[length(frmMenu.varVetGrafPontoSizeUTM)-1]              := StrToInt(spEspLinha.text);
             frmMenu.varVetGrafPontoOutCorUTM[length(frmMenu.varVetGrafPontoOutCorUTM)-1]          := edtColor1.Color;

        end;

  end
   else
//**********************************GLEDSON*************************************
    begin
       if trim(bsEdtXGrau.Text)=''  then
          begin
             frmMenu.Mensagem('Informe o valor X graus!', mtWarning,[mbOk]);
             bsEdtXGrau.SetFocus;
             exit;
          end;

          if trim(bsEdtXMin.Text)=''  then
          begin
             frmMenu.Mensagem('Informe o valor X minutos!', mtWarning,[mbOk]);
             bsEdtXMin.SetFocus;
             exit;
          end;

          if trim(bsEdtXSeg.Text)=''  then
          begin
             frmMenu.Mensagem('Informe o valor X segundos!', mtWarning,[mbOk]);
             bsEdtXSeg.SetFocus;
             exit;
          end;


             if trim(bsEdtYGrau.Text)='' then
                begin
                   frmMenu.Mensagem('Informe o valor Y graus!', mtWarning,[mbOk]);
                   bsEdtYGrau.SetFocus;
                   exit;
                end;

               if trim(bsEdtYMin.Text)='' then
                begin
                   frmMenu.Mensagem('Informe o valor Y minutos!', mtWarning,[mbOk]);
                   bsEdtYMin.SetFocus;
                   exit;
                end;

                if trim(bsEdtYSeg.Text)='' then
                begin
                   frmMenu.Mensagem('Informe o valor Y segundos!', mtWarning,[mbOk]);
                   bsEdtYSeg.SetFocus;
                   exit;
                end;
       //end;



                //Longitude
                   Deg_Long := StrToInt(bsEdtXGrau.Text);
                   Min_Long := StrToInt(bsEdtXMin.Text);
                   Sec_Long := StrToInt(bsEdtXSeg.Text);

                //latitude
                   Deg_Lat := StrToInt(bsEdtYGrau.Text);
                   Min_Lat := StrToInt(bsEdtYMin.Text);
                   Sec_Lat := StrToInt(bsEdtYSeg.Text);
                   DirNS := 'S';  //Sul
                   DirEW := 'W';  //Oeste


                //faz a conversão para UTM
                   ConverterLatLongForUTM;

                   pt   := CoPoint.Create;
                   pt.X :=  Y_East_West;
                   pt.Y :=  X_North_south;
                   frmMenu.varGrafCoordsPontos.Add(pt);

                   SetLength(frmmenu.varBoolGrafPontoUTM ,length(frmMenu.varBoolGrafPontoUTM)+1);
                   SetLength(frmmenu.varGrafPontoUTM ,length(frmMenu.varGrafPontoUTM)+1);
                   SetLength(frmMenu.varVetGrafPontoColorUTM,length(frmMenu.varVetGrafPontoColorUTM)+1);
                   SetLength(frmMenu.varVetGrafPontoUsaOutlineUTM,length(frmMenu.varVetGrafPontoUsaOutlineUTM)+1);
                   SetLength(frmMenu.varVetGrafPontoSizeUTM,length(frmMenu.varVetGrafPontoSizeUTM)+1);
                   SetLength(frmMenu.varVetGrafPontoOutCorUTM,length(frmMenu.varVetGrafPontoOutCorUTM)+1);
                   SetLength(frmMenu.varVetGrafPontoStyleUTM,length(frmMenu.varVetGrafPontoStyleUTM)+1);
                   //**********
                   frmMenu.varGrafPontoUTM[length(frmMenu.varGrafPontoUTM)-1]                            := CoPoint.Create;
                   frmMenu.varGrafPontoUTM[length(frmMenu.varGrafPontoUTM)-1]                            := Pt;
                   //***********
                   frmMenu.varVetGrafPontoStyleUTM[length(frmMenu.varVetGrafPontoStyleUTM)-1]            := cbEstilo.Itemindex;
                   frmMenu.varBoolGrafPontoUTM[length(frmMenu.varBoolGrafPontoUTM)-1]                    := true;
                   frmMenu.varVetGrafPontoColorUTM[length(frmMenu.varVetGrafPontoColorUTM)-1]            := edtColor.Color;//varGrafPontoColor;
                   frmMenu.varVetGrafPontoUsaOutlineUTM[length(frmMenu.varVetGrafPontoUsaOutlineUTM)-1]  := cbUsaOutLine.checked;//varGrafPontoUsaOutline;
                   frmMenu.varVetGrafPontoSizeUTM[length(frmMenu.varVetGrafPontoSizeUTM)-1]              := StrToInt(spEspLinha.text);
                   frmMenu.varVetGrafPontoOutCorUTM[length(frmMenu.varVetGrafPontoOutCorUTM)-1]          := edtColor1.Color;
          end;

  frmMenu.varTemCoordDesenhada := true;
  atualiza  := true;
  frmmenu.Map1.TrackingLayer.Refresh(atualiza,v);

end;

procedure TfrmGrafInsCoordLatLong.bsSkinButton4Click(Sender: TObject);
var
dist             :  double;
atualiza         : WordBool;
v                : Variant;
begin

  if frmMenu.varGrafCoordsPontos.Count = 0 then
      begin
         frmmenu.Mensagem('Não Existem Pontos Desenhados!',mtWarning, [mbOk]);
         exit;
      end;
    if frmmenu.varGrafCoordsPontos.Count = 1 then
      begin
         frmMenu.Mensagem('Só Existe Um Ponto!',mtWarning,[mbOk]);
         exit;
      end;

       If frmmenu.varGrafCoordsPontos.Count > 1 then
      begin
         tempLine    := CoLine.Create;
         tempLine.Parts.Add(IMoPoints(frmmenu.varGrafCoordsPontos));

         if tempLine = nil then exit;

         //**********
         SetLength(frmMenu.varBoolGrafLinha,length(frmMenu.varBoolGrafLinha)+1);
         SetLength(frmMenu.varGrafLinha,length(frmmenu.varGrafLinha)+1);
         SetLength(frmmenu.varVetGrafLinhaColor,length(frmmenu.varVetGrafLinhaColor)+1);
         SetLength(frmmenu.varVetGrafLinhaSize,length(frmmenu.varVetGrafLinhaSize)+1);
         SetLength(frmmenu.varVetGrafLinhaStyle,length(frmmenu.varVetGrafLinhaStyle)+1);
         //**********

         frmmenu.varGrafLinha[length(frmmenu.varGrafLinha)-1]                            := CoLine.Create;
         frmmenu.varGrafLinha[length(frmmenu.varGrafLinha)-1]                            := tempLine;
         //***********
         frmmenu.varBoolGrafLinha[length(frmmenu.varBoolGrafLinha)-1]                    := true;
         frmmenu.varVetGrafLinhaColor[length(frmmenu.varVetGrafLinhaColor)-1]            := frmmenu.varGrafLinhaColor;
         frmmenu.varVetGrafLinhaSize[length(frmmenu.varVetGrafLinhaSize)-1]              := frmmenu.varGrafLinhaSize;
         frmmenu.varVetGrafLinhaStyle[length(frmmenu.varVetGrafLinhaStyle)-1]            := frmmenu.varGrafLinhaStyle;

         dist   := frmMenu.varGrafLinha[length(frmmenu.varGrafLinha)-1].Length;

         //**** atualizo o trackinglayer
         atualiza  := true;
         frmmenu.Map1.TrackingLayer.Refresh(atualiza,v);
//         ShowMessage(floatToStr(dist));

 end;
end;

procedure TfrmGrafInsCoordLatLong.bsSkinButton5Click(Sender: TObject);
var
v        : variant;
begin

//limpando tabs
    If bsSkinPageControl1.ActivePageIndex = 1 then
      begin
        bsEdtXGrau.Text := '';
        bsEdtXMin.Text := '';
        bsEdtXSeg.Text := '';

        bsEdtYGrau.Text := '';
        bsEdtYMin.Text := '';
        bsEdtYSeg.Text := '';

      end;

    If bsSkinPageControl1.ActivePageIndex = 0 then
      begin
        stAbrir.Text       := '';
        cbCoordXGrau.ItemIndex := -1;
        cbCoordXMin.ItemIndex := -1;
        cbCoordXSeg.ItemIndex := -1;

        cbCoordYGrau.ItemIndex := -1;
        cbCoordYMin.ItemIndex := -1;
        cbCoordYSeg.ItemIndex := -1;

      end;

    try

      //limpando linhas q foram unidas
      SetLength(frmmenu.varGrafLinha,0);
      SetLength(frmmenu.varBoolGrafLinha,0);
      SetLength(frmmenu.varVetGrafLinhaColor,0);
      SetLength(frmmenu.varVetGrafLinhaSize,0);
      SetLength(frmmenu.varVetGrafLinhaStyle,0);

     //limpando pontos
      SetLength(frmmenu.varGrafPontoUTM,0);
      SetLength(frmmenu.varBoolGrafPontoUTM,0);
      SetLength(frmmenu.varVetGrafPontoColorUTM,0);
      SetLength(frmmenu.varVetGrafPontoUsaOutlineUTM,0);
      SetLength(frmmenu.varVetGrafPontoSizeUTM,0);
      SetLength(frmmenu.varVetGrafPontoOutCorUTM,0);
      SetLength(frmmenu.varVetGrafPontoStyleUTM,0);

      //limpando poligonos
      SetLength(frmmenu.varGrafPoli,0);
      SetLength(frmmenu.varBoolGrafPoli,0);
      SetLength(frmmenu.varVetGrafPoliColor,0);
      SetLength(frmmenu.varVetGrafPoliUsaOutline,0);
      SetLength(frmmenu.varVetGrafPoliSize,0);
      SetLength(frmmenu.varVetGrafPoliOutCor,0);
      SetLength(frmmenu.varVetGrafPoliStyle,0);

      //atualizando layer
      frmmenu.Map1.TrackingLayer.Refresh(True,v);

      //desativando a table
      tbPonto.Active := false;

      //recriando os pontos
      frmmenu.varGrafCoordsPontos := CoPoints.Create;

    except
      exit;

    end;



end;

procedure TfrmGrafInsCoordLatLong.btConvShapePoliClick(Sender: TObject);
var
oTable      : IMoTableDesc;
oDataset    : IMoGeoDataset;
oConnection : IMoDataConnection;
dc          : IMoDataConnection;
layer       : MapLayer;
i           : integer;
recs        : IMoRecordset;
p           : IMoPolygon;
//novalyr     : IMoMapLayer;
//GeoDtSet    : IMoGeoDataset;
begin

  if frmmenu.varGrafCoordsPontos.count = 0 then
     begin
        frmMenu.Mensagem('Não Existem Pontos Desenhados!',mtInformation,[mbok]);
        exit;
     end;

  SaveDialog1.FileName := '';
  SaveDialog1.Execute;

  if SaveDialog1.FileName = '' then
     exit;

  oConnection := CoDataConnection.create;
  oConnection.Database := ExtractFileDir(SaveDialog1.FileName);

  oTable := coTableDesc.create;
  oTable.FieldCount := 3;
  oTable.FieldName[0]      := 'ID'; //deve ter menos de 11 caracteres
  oTable.FieldType[0]      := molong;
  oTable.FieldLength[0]    := 16;
  oTable.FieldName[1]      := 'Area'; //deve ter menos de 11 caracteres
  oTable.FieldType[1]      := moDouble;
  oTable.FieldLength[1]    := 16;
  oTable.FieldName[2]      := 'Perimetro'; //deve ter menos de 11 caracteres
  oTable.FieldType[2]      := moDouble;
  oTable.FieldLength[2]    := 16;

  If oConnection.Connect Then
     begin
        oDataset    := oConnection.AddGeoDataset(ExtractFileName(SaveDialog1.FileName), moPolygon, oTable,false,false); //'NOME DO SHAPE TEMPORARIO + O TIPO DO POLIGONO
        dc          := CoDataConnection.create;
        dc.Database := ExtractFileDir(SaveDialog1.FileName);

        If Not dc.Connect Then
           frmmenu.mensagem('Erro na Conexão!',mtInformation,[mbok])
        Else
          begin
             layer := coMapLayer.Create;
             layer.GeoDataset := dc.FindGeoDataset(ExtractFileName(SaveDialog1.FileName));
          End;

     End;

   recs := layer.Records;
   recs.AutoFlush := true;

   with recs do
      begin
         p   := nil;
         p   := CoPolygon.Create;
         p.Parts.Add(frmmenu.varGrafCoordsPontos);
         AddNew;
         Fields.Item('Shape').Value     := p;
         Fields.Item('ID').Value        := i+1;
         Fields.Item('Area').Value      := p.Area;
         Fields.Item('Perimetro').Value := p.Perimeter;
         Update;
    end;


   frmmenu.Mensagem('Shape Criado Com Sucesso!',mtInformation,[mbOk]);

end;

procedure TfrmGrafInsCoordLatLong.btTransPoliClick(Sender: TObject);
var
tmpPoli    : IMoPolygon;
atualiza   : WordBool;
v          : Variant;
begin
    if frmMenu.varGrafCoordsPontos.Count = 0 then
        begin
           frmmenu.Mensagem('Não Existem Coordenadas Lançadas Para Serem Convertidas Para Poligono!',mtInformation,[mbok]);
           exit;
        end;

      if frmMenu.varGrafCoordsPontos.Count <= 2 then
        begin
           frmmenu.Mensagem('Precisa-se de no mínimo 3 pontos para converter para polígono!!',mtInformation,[mbok]);
           exit;
        end;

     tmpPoli := CoPolygon.Create;
     tmpPoli.Parts.Add(frmMenu.varGrafCoordsPontos);

     if tmpPoli = nil then exit;
     //**********
     SetLength(frmMenu.varBoolGrafPoli,length(frmMenu.varBoolGrafPoli)+1);
     SetLength(frmMenu.varGrafPoli,length(frmMenu.varGrafPoli)+1);
     SetLength(frmMenu.varVetGrafPoliColor,length(frmMenu.varVetGrafPoliColor)+1);
     SetLength(frmMenu.varVetGrafPoliUsaOutline,length(frmMenu.varVetGrafPoliUsaOutline)+1);
     SetLength(frmMenu.varVetGrafPoliSize,length(frmMenu.varVetGrafPoliSize)+1);
     SetLength(frmMenu.varVetGrafPoliOutCor,length(frmMenu.varVetGrafPoliOutCor)+1);
     SetLength(frmMenu.varVetGrafPoliStyle,length(frmMenu.varVetGrafPoliStyle)+1);
     //**********
     frmMenu.varGrafPoli[length(frmMenu.varGrafPoli)-1]                            := CoPolygon.Create;
     frmMenu.varGrafPoli[length(frmMenu.varGrafPoli)-1]                            := tmpPoli;
     //***********
     frmMenu.varBoolGrafPoli[length(frmMenu.varBoolGrafPoli)-1]                    := true;
     frmMenu.varVetGrafPoliColor[length(frmMenu.varVetGrafPoliColor)-1]            := frmMenu.varGrafPoliColor;
     frmMenu.varVetGrafPoliUsaOutline[length(frmMenu.varVetGrafPoliUsaOutline)-1]  := frmMenu.varGrafPoliUsaOutline;
     frmMenu.varVetGrafPoliSize[length(frmMenu.varVetGrafPoliSize)-1]              := frmMenu.varGrafPoliSize;
     frmMenu.varVetGrafPoliOutCor[length(frmMenu.varVetGrafPoliOutCor)-1]          := frmMenu.varGrafPoliOutCor;
     frmMenu.varVetGrafPoliStyle[length(frmMenu.varVetGrafPoliStyle)-1]            := frmMenu.varGrafPoliStyle;
     //**** atualizo o trackinglayer

     atualiza  := true;
     frmMenu.Map1.TrackingLayer.Refresh(atualiza,v);

end;


procedure TfrmGrafInsCoordLatLong.bsSkinButton3Click(Sender: TObject);
var
oTable      : IMoTableDesc;
oDataset    : IMoGeoDataset;
oConnection : IMoDataConnection;
dc          : IMoDataConnection;
layer       : MapLayer;
i           : integer;
recs        : IMoRecordset;
p           : imopoint;
//novalyr     : IMoMapLayer;
//GeoDtSet    : IMoGeoDataset;
begin

  if frmmenu.varGrafCoordsPontos.count = 0 then
     begin
        frmMenu.Mensagem('Não Existem Pontos Desenhados!',mtInformation,[mbok]);
        exit;
     end;

  SaveDialog1.FileName := '';
  SaveDialog1.Execute;

  if SaveDialog1.FileName = '' then
     exit;

  oConnection := CoDataConnection.create;
  oConnection.Database := ExtractFileDir(SaveDialog1.FileName);

  oTable := coTableDesc.create;
  oTable.FieldCount := 3;
  oTable.FieldName[0]      := 'ID'; //deve ter menos de 11 caracteres
  oTable.FieldType[0]      := molong;
  oTable.FieldLength[0]    := 16;
  oTable.FieldName[1]      := 'X'; //deve ter menos de 11 caracteres
  oTable.FieldType[1]      := moDouble;
  oTable.FieldLength[1]    := 16;
  otable.FieldScale[1]     := 6;
  oTable.FieldName[2]      := 'Y'; //deve ter menos de 11 caracteres
  oTable.FieldType[2]      := moDouble;
  oTable.FieldLength[2]    := 16;
  otable.FieldScale[2]     := 6;

  If oConnection.Connect Then
     begin
        oDataset    := oConnection.AddGeoDataset(ExtractFileName(SaveDialog1.FileName), moPoint, oTable,false,false); //'NOME DO SHAPE TEMPORARIO + O TIPO DO POLIGONO
        dc          := CoDataConnection.create;
        dc.Database := ExtractFileDir(SaveDialog1.FileName);

        If Not dc.Connect Then
           frmmenu.mensagem('Erro na Conexão!',mtInformation,[mbok])
        Else
          begin
             layer := coMapLayer.Create;
             layer.GeoDataset := dc.FindGeoDataset(ExtractFileName(SaveDialog1.FileName));
          End;

     End;

   recs := layer.Records;
   recs.AutoFlush := true;

   for i:=0 to frmmenu.varGrafCoordsPontos.Count-1 do
      begin
          with recs do
             begin
               p   := nil;
               p   := coPoint.Create;
               p   := frmmenu.varGrafCoordsPontos.Item(i);
               AddNew;
               Fields.Item('Shape').Value  := p;
               Fields.Item('ID').Value     := i+1;
               Fields.Item('X').Value      := p.X;
               Fields.Item('Y').Value      := p.Y;
               Update;
           end;
     end;

   frmmenu.Mensagem('Shape Criado Com Sucesso!',mtInformation,[mbOk]);

end;


procedure TfrmGrafInsCoordLatLong.edtColorClick(Sender: TObject);
begin
   bsSkinColorDialog1.Execute;
   edtColor.Color := bsSkinColorDialog1.Color;

end;

procedure TfrmGrafInsCoordLatLong.edtColor1Click(Sender: TObject);
begin
   bsSkinColorDialog2.Execute;
   edtColor1.Color := bsSkinColorDialog2.Color;
end;



end.
