unit U_LocalizarSimples;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsSkinCtrls, bsSkinBoxCtrls, StdCtrls,MapObjects2_TLB,
  Mask, bsSkinGrids;

type
  TfrmLocalizarSimples = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    dbDados: TbsSkinStringGrid;
    ssHorinzon: TbsSkinScrollBar;
    ssVertical: TbsSkinScrollBar;
    spBusca: TbsSkinStatusPanel;
    bsSkinPanel1: TbsSkinPanel;
    btBusca: TbsSkinButton;
    edtCons: TbsSkinEdit;
    cbLayers: TbsSkinComboBox;
    Label1: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbLayersChange(Sender: TObject);
    procedure btBuscaClick(Sender: TObject);
    procedure dbDadosSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure edtConsKeyPress(Sender: TObject; var Key: Char);
    function wright(wtexto:string;quant:integer):string;

  private
    { Private declarations }
    lyr                 : IMoMapLayer;
    lyrs                : IMoLayers;
    varBusca            : Boolean;
    varVetIndexLegenda  : array of smallint;
    Tabela              : String;
    EhSDE               : Boolean;
    
  public
    { Public declarations }
    searchExp : WideString;
  end;

var
  frmLocalizarSimples: TfrmLocalizarSimples;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmLocalizarSimples.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action              := cafree;
   frmLocalizarSimples := nil;

end;

procedure TfrmLocalizarSimples.FormCreate(Sender: TObject);
var
lyrs : imolayers;
lyr  : imomaplayer;
i    : smallint;
begin

 FormStyle := fsStayOnTop;
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

    //*************************************************
    lyr     := CoMapLayer.Create;
    lyrs    := frmmenu.map1.Layers;
    lyr     := imomaplayer(lyrs.item(varVetIndexLegenda[cbLayers.ItemIndex]));
    //*************************************************


end;

procedure TfrmLocalizarSimples.cbLayersChange(Sender: TObject);
var
dados : IMoRecordset;
fld   : IMoField;
flds  : IMoFields;
cont : integer;
//recont : integer;
Desc  : IMoTableDesc;
//campo, tipo
//texto, texto1 : string;
begin

  if trim(cbLayers.Text) <> '' then
     begin
         lyr     := CoMapLayer.Create;
         lyrs    := frmmenu.map1.Layers;
         lyr     := imomaplayer(lyrs.item(varVetIndexLegenda[cbLayers.ItemIndex]));
         dados   := lyr.records;
         Desc    := CoTableDesc.Create;
         Desc    := dados.TableDesc;
         flds    := dados.Fields;
         frmmenu.MapLegend1.Active[varVetIndexLegenda[cbLayers.ItemIndex]] := true;
         //*************************************************
         dbDados.RowCount   := 2;
         dbDados.ColCount   := 2;
         dbDados.Cells[0,0] := 'FeatureID';
         dbDados.ColCount   := flds.Count-1;
         //*************************************************************
         for cont := 0 to Desc.FieldCount-1 do
          begin
             fld := flds.Item(Desc.FieldName[cont]);
             dbDados.Cells[cont+1,0] := fld.name;
          end;
      //*************************************************

     end;

end;

function TfrmLocalizarSimples.wright(wtexto:string;quant:integer):string;
begin
    result := copy(wtexto,((length(wtexto) - quant)+1),quant);
//   ex: wcopy := wright(wtexto,3); - copia as 3 ultimas
end;

procedure TfrmLocalizarSimples.btBuscaClick(Sender: TObject);
var
dados         : IMoRecordset;
fld           : IMoField;
flds          : IMoFields;
fldTMP        : IMoField;
fldsTMP       : IMoFields;
DescTMP       : IMoTableDesc;
cont          : Integer;
recont        : Smallint;
posicaovet    : Smallint;
contdb        : Smallint;
i             : Smallint;
x             : Smallint;
Desc          : IMoTableDesc;
campo         : string;
tipo          : string;
texto         : string;
texto1        : string;
PodeBuscar    : Boolean;
ext           : String;
tmp           : String;
tmpString     : String;
posSdeTexto   : Smallint;
tmpStrSDE     : String;
varNome       : String;
varPos01      : Smallint;
varTam        : Smallint;
varTempSTR01  : String;
DonoTabela    : String;
begin


    screen.Cursor := crHourGlass;

    //limpando o grid
    for i:=1 to dbdados.RowCount-1 do
        for x:=0 to dbdados.ColCount-1 do
            dbdados.Cells[x,i] := '';
    dbDados.RowCount := 2;
    //*************************

    varBusca        := true;
    spBusca.caption := '';

    If trim(edtCons.Text) = '' then
       begin
         frmmenu.Mensagem('Informe o Texto que Deseja Localizar!',mterror,[mbok]);
         edtCons.SetFocus;
         screen.Cursor := crDefault;
         exit;
      end;

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

    //Screen.Cursor  := crHourGlass;
    dados          := lyr.records;
    Desc           := CoTableDesc.Create;
    Desc           := dados.TableDesc;
    flds           := dados.Fields;

    dbDados.Cells[0,0] := 'FeatureID';

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

    //**********************************************
    for cont := 0 to lyr.Records.TableDesc.FieldCount-1 do
        begin
             fld   := flds.Item(desc.FieldName[cont]);
             Campo := UpperCase(fld.Name);
             //verificando tipo de campo
             tipo  := vartostr(lyr.Records.TableDesc.FieldType[cont]);
             texto := edtCons.Text;

             podeBuscar := false;

             try //verificando se o que foi digitado é string ou inteiro
                strtoint(texto);
                texto   := texto; //inteiro
                texto1  := '''' + texto + '''';
                if tipo = '8' then
                   PodeBuscar := false
                else
                   PodeBuscar := True;
                //******
             except
                try
                  StrToFloat(texto);
                  texto := StringReplace(texto,',','.',[rfreplaceall]);
                  texto1:= '''' + texto + '''';
                  if tipo = '8' then
                     PodeBuscar := false
                  else
                     PodeBuscar := True;
                  //******
                except
                  texto1:= texto; //string
                  texto := '''' + texto + '''';
                  if tipo = '8' then
                   PodeBuscar := true
                  else
                   PodeBuscar := false;
                  //******
                end;
             end;

             If tipo = '8' then
                   searchExp := '( '+campo +  ' LIKE '+ QuotedStr('%'+texto1+'%') +' )'  //' containing ''' + texto1 + ''''
                else
                   searchExp := campo + ' = ' + texto;

             //***************      
             if (Trim(uppercase(Campo))='FEATUREID') or (Trim(uppercase(Campo))='OBJECTID') then
                podeBuscar := false;

             //*************************************************
             if podeBuscar then
                begin
                     try

                       //verificando se existe algo selecionado
                       If frmMenu.vet_SelectedFeatures[posicaovet] = nil then
                          frmMenu.vet_SelectedFeatures[posicaovet] := lyr.SearchExpression(searchExp)
                       else
                          begin
                            frmMenu.vet_SelectedFeatures[posicaovet] := nil;
                            frmMenu.vet_SelectedFeatures[posicaovet] := lyr.SearchExpression(searchExp);
                          end;
                     except
                        //***
                        screen.Cursor := crDefault;
                     end;
                     //se achar alguma coisa...sai da rotina
                     recont := 0;

                     if not frmMenu.vet_SelectedFeatures[posicaovet].EOF then
                        begin
                             DescTMP           := CoTableDesc.Create;
                             DescTMP           := frmMenu.vet_SelectedFeatures[posicaovet].TableDesc;
                             fldsTMP           := frmMenu.vet_SelectedFeatures[posicaovet].Fields;
                        end;

                     //************************************************************
                     if not frmMenu.vet_SelectedFeatures[posicaovet].EOF Then
                        begin
                             While not frmMenu.vet_SelectedFeatures[posicaovet].EOF do
                                 begin
                                    recont := recont + 1;
                                    dbDados.RowCount  := dbDados.RowCount+1;
                                    //*******************
                                    for contdb := 0 to Desc.FieldCount-1 do
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

                    //*********************
                    recont := frmMenu.vet_SelectedFeatures[posicaovet].CalculateStatistics('FeatureID').Count;
                    //*********************
                    If recont > 0 then
                         begin
                               frmMenu.vet_SelectedFeatures[posicaovet].MoveFirst;
                               spBusca.caption := pchar(inttostr(recont) + ' Registro(s) Encontrado(s)!');
                               //o shape foi adicionado foi adicionado via SDE
                               frmMenu.zoomselecionados(posicaovet);
                               varBusca        := false;
                               break;
                         end;

                end;
             //**********************************************************   

        end;

    varBusca := false;
    screen.Cursor := crDefault;
    frmMenu.Map1.Refresh;

end;

procedure TfrmLocalizarSimples.dbDadosSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
i           : Smallint;
posicaovet  : Smallint;
ext         : String;
tmp         : String;
tmpString   : String;
posSdeTexto : Smallint;
tmpStrSDE   : String;
begin

   if not varBusca then
      begin
           if (trim(dbDados.Cells[0,aRow])<>'') and (uppercase(trim(dbDados.Cells[0,aRow])) <> 'FEATUREID') then
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
                          frmMenu.vet_SelectedFeatures[posicaovet] := lyr.SearchExpression('('+Tabela+'.OBJECTID = '+dbDados.Cells[0,aRow]+')');
                          frmMenu.zoomselecionados(posicaovet);
                      End
                      else
                         begin
                             frmMenu.vet_SelectedFeatures[posicaovet] := lyr.SearchExpression('( FEATUREID = '+dbDados.Cells[0,aRow]+' )');
                             frmMenu.zoomselecionados(posicaovet);
                         end;
              end;
      end;
 
end;

procedure TfrmLocalizarSimples.edtConsKeyPress(Sender: TObject;
  var Key: Char);
begin

   if key=#13 then
      begin
          if trim(edtCons.text)<>'' then
             btBuscaClick(self);
          key := #0;   
      end;

end;

end.
