unit U_GrafInsCoordsUTM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, bsSkinTabs, DB, DBTables, StdCtrls, Mask,
  bsSkinBoxCtrls, bsSkinCtrls, bsSkinShellCtrls, RzLabel, RzBorder,
  BusinessSkinForm,MapObjects2_TLB, bsColorCtrls;

type
  TfrmGrafInsCoordUTM = class(TForm)
    tbPonto: TTable;
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinTabSheet2: TbsSkinTabSheet;
    stAbrir: TbsSkinEdit;
    bsSkinButton1: TbsSkinButton;
    OpenDialog1: TbsSkinOpenDialog;
    RzBorder1: TRzBorder;
    RzBorder2: TRzBorder;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    cbCoordX: TbsSkinComboBox;
    cbCoordY: TbsSkinComboBox;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    SaveDialog1: TbsSkinSaveDialog;
    spStatus: TbsSkinStatusPanel;
    bsSkinColorDialog1: TbsSkinColorDialog;
    bsSkinColorDialog2: TbsSkinColorDialog;
    RzBorder4: TRzBorder;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    bsSkinPanel1: TbsSkinPanel;
    RzBorder3: TRzBorder;
    RzLabel5: TRzLabel;
    Label1: TLabel;
    spEspLinha: TbsSkinSpinEdit;
    Label3: TLabel;
    cbEstilo: TbsSkinComboBox;
    bsSkinButton2: TbsSkinButton;
    btConvShapePoli: TbsSkinButton;
    bsSkinButton3: TbsSkinButton;
    btTransPoli: TbsSkinButton;
    Label2: TLabel;
    edtColor: TRzLabel;
    cbUsaOutline: TbsSkinCheckRadioBox;
    Label7: TLabel;
    edtColor1: TRzLabel;
    Edt_X: TbsSkinEdit;
    Edt_Y: TbsSkinEdit;
    bsSkinButton4: TbsSkinButton;
    bsSkinButton5: TbsSkinButton;
    procedure bsSkinButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure bsSkinButton3Click(Sender: TObject);
    procedure btTransPoliClick(Sender: TObject);
    procedure btConvShapePoliClick(Sender: TObject);
    procedure edtColorClick(Sender: TObject);
    procedure edtColor1Click(Sender: TObject);
    procedure Edt_XKeyPress(Sender: TObject; var Key: Char);
    procedure bsSkinButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bsSkinButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrafInsCoordUTM : TfrmGrafInsCoordUTM;
  tempLine           : IMoLine;

implementation

uses U_Menu, Math, Types;

{$R *.dfm}

procedure TfrmGrafInsCoordUTM.bsSkinButton1Click(Sender: TObject);
begin

   OpenDialog1.FileName := '';
   OpenDialog1.Execute;
   stAbrir.Text := '';
   
   if OpenDialog1.FileName <> '' then
      begin
         //atributos := trim(OpenDialog1.FileName);
         stAbrir.Text         := OpenDialog1.FileName;
         tbponto.Active       := false;
         tbPonto.DatabaseName := ExtractFilePath(OpenDialog1.FileName);
         tbponto.TableName    := ExtractFileName(OpenDialog1.FileName);
         try
           tbponto.Active := true;
         except
           frmMenu.Mensagem('Não é Possível Abrir a Tabela!', mtWarning,[mbOk]);
         end;
         tbPonto.GetFieldNames(cbCoordX.Items);
         tbPonto.GetFieldNames(cbCoordY.Items);

         cbCoordX.Update;
         cbCoordX.UpdateControlState;
         cbCoordX.Refresh;

      end;


end;

procedure TfrmGrafInsCoordUTM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action             := cafree;
   frmGrafInsCoordUTM := nil;

end;

procedure TfrmGrafInsCoordUTM.bsSkinButton2Click(Sender: TObject);
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

//    frmMenu.varGrafCoordsPontosCor     := edtColor.Color;
//    frmMenu.varGrafCoordsPontosSize    := StrToInt(spEspLinha.text);
//    frmMenu.varGrafCoordsPontosStyle   := cbEstilo.ItemIndex;
//    frmMenu.varGrafCoordsPontosUsaOutL := cbUsaOutline.Checked;
//    frmMenu.varGrafCoordsPontosOutCor  := edtColor1.Color;

    //frmMenu.varGrafCoordsPontos        := CoPoints.Create;

    cont   := 1;
    tbPonto.First;

    while not (tbPonto.Eof) do
        begin
             //spStatus.Caption := IntToStr(cont) +' De '+IntToStr(tbPonto.RecordCount);
             //inc(Cont);

             pt    := CoPoint.Create;
             pt.X  := tbPonto.fieldbyname(cbCoordX.text).AsFloat;
             pt.Y  := tbPonto.fieldbyname(cbCoordY.text).AsFloat;
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

         if trim(Edt_X.Text)=''  then
          begin
             frmMenu.Mensagem('Informe a Coordenada X!', mtWarning,[mbOk]);
             Edt_X.SetFocus;
             exit;
          end;

             if trim(Edt_Y.Text)='' then
                begin
                   frmMenu.Mensagem('Informe a Coordenada Y!', mtWarning,[mbOk]);
                   Edt_Y.SetFocus;
                   exit;
                end;

                  try
                   StrToFloat(Edt_X.Text);
                  except
                      begin
                         frmmenu.Mensagem('Coordenada X inválida!', mtWarning,[mbOk]);
                         Edt_X.SetFocus;
                         exit;
                      end;
                  end;
                try
                 StrToFloat(Edt_Y.Text);
                except
                  begin
                     frmmenu.Mensagem('Coordenada Y inválida!', mtWarning,[mbOk]);
                     Edt_Y.SetFocus;
                     exit;
                  end;
                end;

                   pt   := CoPoint.Create;
                   pt.X := StrToFloat(Edt_X.Text);
                   pt.Y := StrToFloat(Edt_Y.Text);
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

//******************************************************************************

procedure TfrmGrafInsCoordUTM.bsSkinButton3Click(Sender: TObject);
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

procedure TfrmGrafInsCoordUTM.btTransPoliClick(Sender: TObject);
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

procedure TfrmGrafInsCoordUTM.btConvShapePoliClick(Sender: TObject);
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

procedure TfrmGrafInsCoordUTM.edtColorClick(Sender: TObject);
begin

   bsSkinColorDialog1.Execute;

   edtColor.Color := bsSkinColorDialog1.Color;

end;

procedure TfrmGrafInsCoordUTM.edtColor1Click(Sender: TObject);
begin

   bsSkinColorDialog2.Execute;

   edtColor1.Color := bsSkinColorDialog2.Color;

end;

procedure TfrmGrafInsCoordUTM.Edt_XKeyPress(Sender: TObject;
  var Key: Char);
begin
 If not (key in ['0'..'9',#8,','] ) then
  key := #0;
end;

procedure TfrmGrafInsCoordUTM.bsSkinButton4Click(Sender: TObject);
var
dist             :  double;
atualiza         : WordBool;
v                : Variant;
//tempLine         : IMoLine;
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

procedure TfrmGrafInsCoordUTM.FormCreate(Sender: TObject);
begin

 frmmenu.varGrafCoordsPontos := CoPoints.Create;

end;

procedure TfrmGrafInsCoordUTM.bsSkinButton5Click(Sender: TObject);
var
//i        : integer;
v        : variant;
begin

//limpando tabs
    If bsSkinPageControl1.ActivePageIndex = 1 then
      begin
        edt_X.Text := '';
        edt_Y.Text := '';
      end;

    If bsSkinPageControl1.ActivePageIndex = 0 then
      begin
        stAbrir.Text       := '';
        cbCoordX.ItemIndex := -1;
        cbCoordY.ItemIndex := -1;
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

end.
















