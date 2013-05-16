unit U_TabelaSelecionados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, bsSkinBoxCtrls, bsSkinCtrls, bsSkinGrids,
  BusinessSkinForm,MapObjects2_TLB;

type
  TfrmTabelaSelecionados = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    spBusca: TbsSkinStatusPanel;
    bsSkinPanel1: TbsSkinPanel;
    Label5: TLabel;
    cbLayers: TbsSkinComboBox;
    bsSkinPanel2: TbsSkinPanel;
    ssVertical: TbsSkinScrollBar;
    ssHorinzon: TbsSkinScrollBar;
    dbDados: TbsSkinStringGrid;
    btBusca: TbsSkinButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbLayersChange(Sender: TObject);
    procedure btBuscaClick(Sender: TObject);
    procedure dbDadosSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    function wright(wtexto:string;quant:integer):string;

  private
    { Private declarations }
    lyr                 : IMoMapLayer;
    lyrs                : IMoLayers;
    varBusca            : Boolean;
    varVetIndexLegenda  : array of smallint;
    Tabela              : String;
    EhSDE               : Boolean;
    posicaovet          : smallint;
    aRowlista           : smallint;
  public
    { Public declarations }
  end;

var
  frmTabelaSelecionados: TfrmTabelaSelecionados;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmTabelaSelecionados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action                := cafree;
   frmTabelaSelecionados := nil;

end;

procedure TfrmTabelaSelecionados.FormCreate(Sender: TObject);
var
lyrs : imolayers;
lyr  : imomaplayer;
i    : smallint;
begin

//   FormStyle := fsStayOnTop;

 cbLayers.Items.Clear;

 for i:=0 to frmmenu.Map1.Layers.Count -1 do
    begin
         try
            if (IMoMapLayer(IMoLayers(frmmenu.Map1.layers).Item(i)).LayerType = moMapLayer) then
               begin
                  lyr  := CoMapLayer.Create;
                  lyrs := frmmenu.map1.Layers;
                  lyr  := imomaplayer(lyrs.item(i));
                  cbLayers.Items.Add(lyr.name);
                  //*****
                  SetLength(varVetIndexLegenda,Length(varVetIndexLegenda)+1);
                  varVetIndexLegenda[Length(varVetIndexLegenda)-1] := i;
               end;
         except
            //*****
         end;

    end;

    if frmmenu.MapLegend1.GetActiveLayer <> -1 then
       cbLayers.ItemIndex := frmmenu.MapLegend1.GetActiveLayer
    else
       cbLayers.ItemIndex := 0;

end;

procedure TfrmTabelaSelecionados.cbLayersChange(Sender: TObject);
var
dados    : IMoRecordset;
fld      : IMoField;
flds     : IMoFields;
cont     : integer;
fldTMP   : IMoField;
fldsTMP  : IMoFields;
DescTMP  : IMoTableDesc;
recont   : integer;
Desc     : IMoTableDesc;
contdb   : Smallint;
//campo, tipo
//texto, texto1 : string;
begin

  if trim(cbLayers.Text) <> '' then
     begin
         dbDados.RowCount   := 2;
         dbDados.ColCount   := 2;
         dbDados.Cells[0,0] := 'FeatureID';
         dbDados.Cells[0,1] := '';
         dbDados.Cells[1,1] := '';
         posicaovet         := varVetIndexLegenda[cbLayers.ItemIndex];

         //try
         if frmMenu.vet_SelectedFeatures[posicaovet] = nil then exit;

         if not frmMenu.vet_SelectedFeatures[posicaovet].EOF then
            begin
                DescTMP           := CoTableDesc.Create;
                DescTMP           := frmMenu.vet_SelectedFeatures[posicaovet].TableDesc;
                fldsTMP           := frmMenu.vet_SelectedFeatures[posicaovet].Fields;
                dbDados.ColCount   := fldsTMP.Count-1;
                frmmenu.MapLegend1.Active[varVetIndexLegenda[cbLayers.ItemIndex]] := true;
                //*************************************************
                for cont := 0 to DescTMP.FieldCount-1 do
                    begin
                       fldTMP := fldsTMP.Item(DescTMP.FieldName[cont]);
                       dbDados.Cells[cont+1,0] := fldTMP.name;
                    end;
                //*************************************************


                //********************************************************
                if not frmMenu.vet_SelectedFeatures[posicaovet].EOF Then
                    begin
                       //*********************
                       //recont := frmMenu.vet_SelectedFeatures[posicaovet].CalculateStatistics('FeatureID').Count;
                       //showmessage(intToStr(recont));
                       //*********************
                       recont := 0;

                       While not frmMenu.vet_SelectedFeatures[posicaovet].EOF do
                           begin
                              recont := recont + 1;
                              dbDados.RowCount  := dbDados.RowCount+1;
                              //*******************
                              for contdb := 0 to DescTMP.FieldCount-1 do
                                  begin
                                     if contdb = 0 then
                                        begin
                                           dbDados.Cells[0,recont] := frmmenu.vet_SelectedFeatures[posicaovet].Fields.Item('FeatureId').ValueAsString;
                                        end;
                                     fldTMP := fldsTMP.Item(DescTMP.FieldName[contdb]);
                                     dbDados.Cells[contdb+1,recont] := fldTMP.value;
                                  end;
                              //*************
                              frmMenu.vet_SelectedFeatures[posicaovet].MoveNext;
                           end;
                    //************************************************************
                    end;

                If recont > 0 then
                    begin
                        frmMenu.vet_SelectedFeatures[posicaovet].MoveFirst;
                        spBusca.caption := pchar(inttostr(recont) + ' Registro(s) Encontrado(s)!');
                        //frmMenu.zoomselecionados(posicaovet);
                        varBusca        := false;
                    end;
                 //*********************
            end;
         //except

         //end;

     end;


end;

function TfrmTabelaSelecionados.wright(wtexto:string;quant:integer):string;
begin
    result := copy(wtexto,((length(wtexto) - quant)+1),quant);
end;

procedure TfrmTabelaSelecionados.btBuscaClick(Sender: TObject);
var
i             : Smallint;
posicaovet    : Smallint;
tmp           : String;
tmpString     : String;
posSdeTexto   : Smallint;
tmpStrSDE     : String;
PodeBuscar    : Boolean;
ext           : String;
varNome       : String;
varPos01      : Smallint;
varTam        : Smallint;
varTempSTR01  : String;
DonoTabela    : String;
begin


   if aRowlista = 0 then exit;

   if trim(dbDados.Cells[0,1])='' then exit;

   try

   if not varBusca then
      begin
           //*************************************************
           lyr     := CoMapLayer.Create;
           lyrs    := frmmenu.map1.Layers;
           lyr     := imomaplayer(lyrs.item(varVetIndexLegenda[cbLayers.ItemIndex]));
           //*************************************************

           //******* VERIFICANDO SE O TEMA É SDE OU NAO
           // SE FOR EU PEGO O DONO DA TABELA.NOME DO SHAPE
           EhSDE := false;
           //**
           ext         := lyr.tag;
           tmp         := upperCase(wright(ext,3));
           tmpString   := upperCase(wright(ext,4));
           posSdeTexto := Pos('|',ext);
           tmpStrSDE   := copy(ext,posSdeTexto+1,3);

           //o shape foi adicionado foi adicionado via SDE
           if (tmpStrSDE = 'SDE') or (tmpStrSDE = 'DIC') then
              begin
                 ehSDE := true;
                 //***
                 varNome                 := lyr.tag;
                 varPos01                := Pos('.',VarNome);
                 varTam                  := length(VarNome);
                 varTempSTR01            := copy(VarNome,1,varpos01-1);
                 DonoTabela              := varTempSTR01;
                 //***
                 varTempSTR01            := copy(varNome,varpos01+1,vartam-(Length(DonoTabela)-1));
                 varPos01                := Pos('.',varTempSTR01);
                 varTempSTR01            := copy(varTempSTR01,1,varpos01-1);
                 //****
                 Tabela := DonoTabela + '.' + VarTempSTR01;
              end;
           //********************************************

           if (trim(dbDados.Cells[0,aRowlista])<>'') and (uppercase(trim(dbDados.Cells[0,aRowlista])) <> 'FEATUREID') then
              begin
                  //pego a posiçao do imorecordset correspondente ao shape selecionado;
                  //pegando a posição da layer atual no vetor
                  for i:=0 to length(frmmenu.vet_taglayer) do
                     begin
                         if lyr.Tag = frmmenu.vet_taglayer[i] then
                            begin
                               posicaovet := i;
                               break;
                            end;
                     end;

                  ext         := lyr.tag;
                  tmp         := upperCase(frmmenu.wright(ext,3));
                  tmpString   := upperCase(frmmenu.wright(ext,4));
                  posSdeTexto := Pos('|',ext);
                  tmpStrSDE   := copy(ext,posSdeTexto+1,3);

                  //o shape foi adicionado foi adicionado via SDE
                  if (tmpStrSDE = 'SDE') or (tmpStrSDE = 'DIC') then
                      begin
                          //frmMenu.vet_SelectedFeatures[posicaovet] := lyr.SearchExpression('CADASTRO = 50070001');
                          frmMenu.vet_SelectedFeatures[posicaovet] := lyr.SearchExpression('('+Tabela+'.OBJECTID = '+dbDados.Cells[0,aRowLista]+')');
                          frmMenu.zoomselecionados(posicaovet);
                      End
                      else
                         begin
                             frmMenu.vet_SelectedFeatures[posicaovet] := lyr.SearchExpression('( FEATUREID = '+dbDados.Cells[0,aRowLista]+' )');
                             frmMenu.zoomselecionados(posicaovet);
                         end;
              end;
      end;

      except


      end;

end;

procedure TfrmTabelaSelecionados.dbDadosSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin

   aRowlista := aRow;

end;

end.
