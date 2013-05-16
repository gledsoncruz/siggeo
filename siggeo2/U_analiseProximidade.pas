unit U_analiseProximidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, bsSkinBoxCtrls, StdCtrls, RzLabel, ComCtrls,
  bsSkinTabs, BusinessSkinForm,MapObjects2_TLB, RzBorder, Mask, ExtCtrls,
  Grids;

type
  TfrmAnaliseProximidade = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    pgAnalise: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    cbCamadaEntrada: TbsSkinComboBox;
    RzLabel3: TRzLabel;
    bsSkinTabSheet2: TbsSkinTabSheet;
    cbCamadaAnalise: TbsSkinComboBox;
    btOkCamada: TbsSkinButton;
    bsSkinTabSheet3: TbsSkinTabSheet;
    RzLabel4: TRzLabel;
    cbCamposEntrada: TbsSkinComboBox;
    cbCamposAnalise: TbsSkinComboBox;
    RzLabel5: TRzLabel;
    RzBorder1: TRzBorder;
    RzBorder2: TRzBorder;
    cbTabelaEntrada: TbsSkinComboBox;
    RzLabel7: TRzLabel;
    RzBorder3: TRzBorder;
    RzLabel8: TRzLabel;
    btCriarEnt: TbsSkinButton;
    RzBorder4: TRzBorder;
    RzLabel9: TRzLabel;
    RzLabel10: TRzLabel;
    edtTabelaSaida: TbsSkinEdit;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    btCriarSaida: TbsSkinButton;
    btOkTabela: TbsSkinButton;
    cbCampoEntrada: TbsSkinComboBox;
    RzLabel6: TRzLabel;
    chEntrada: TbsSkinCheckRadioBox;
    chSaida: TbsSkinCheckRadioBox;
    sgColunas: TStringGrid;
    sgValores: TStringGrid;
    Label1: TLabel;
    bsSkinBevel1: TbsSkinBevel;
    btMaiorIgual: TbsSkinButton;
    btMaior: TbsSkinButton;
    btMenor: TbsSkinButton;
    btMenorIgual: TbsSkinButton;
    btIgual: TbsSkinButton;
    btDiferente: TbsSkinButton;
    btOperadorOU: TbsSkinButton;
    BtOperadorE: TbsSkinButton;
    btOperadorNao: TbsSkinButton;
    btOPLike: TbsSkinButton;
    cbValores: TbsSkinCheckRadioBox;
    mmSQL: TbsSkinMemo;
    Label2: TLabel;
    cbBuffer: TbsSkinCheckRadioBox;
    edtDist: TbsSkinEdit;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    RzBorder5: TRzBorder;
    RzBorder6: TRzBorder;
    sbStatus: TbsSkinStatusPanel;
    bsSkinButton2: TbsSkinButton;
    btAnalise: TbsSkinButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbCamadaEntradaChange(Sender: TObject);
    procedure cbCamadaAnaliseChange(Sender: TObject);
    procedure btOkCamadaClick(Sender: TObject);
    procedure btCriarEntClick(Sender: TObject);
    procedure btCriarSaidaClick(Sender: TObject);
    procedure btOkTabelaClick(Sender: TObject);
    procedure cbTabelaEntradaExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sgColunasClick(Sender: TObject);
    procedure sgColunasDblClick(Sender: TObject);
    procedure sgColunasSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgValoresClick(Sender: TObject);
    procedure sgValoresDblClick(Sender: TObject);
    procedure sgValoresSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure btMaiorIgualClick(Sender: TObject);
    procedure btMaiorClick(Sender: TObject);
    procedure btMenorIgualClick(Sender: TObject);
    procedure btMenorClick(Sender: TObject);
    procedure btIgualClick(Sender: TObject);
    procedure btDiferenteClick(Sender: TObject);
    procedure BtOperadorEClick(Sender: TObject);
    procedure btOperadorOUClick(Sender: TObject);
    procedure btOperadorNaoClick(Sender: TObject);
    procedure btOPLikeClick(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure cbBufferClick(Sender: TObject);
    procedure btAnaliseClick(Sender: TObject);
  private
    { Private declarations }
    lyrQuery        : IMoMapLayer;
    lyrsQuery       : IMoLayers;
    linhaColuna     : Smallint;
    recs            : IMoRecordset;
    tipo            : String;
    SqlStatus       : String;
    linha_v         : Integer;
    recont          : Integer;
    ColunaCarregada : String;
    varBoolLike     : Boolean;

  public
    { Public declarations }
    varBoolTabelaEntrada : Boolean;
    varBoolTabelaSaida   : Boolean;
  end;

var
  frmAnaliseProximidade: TfrmAnaliseProximidade;

implementation

uses U_Menu, U_ConexaoAnaliseOrigem, U_ConexaoAnaliseSaida, Ora, DB, MemDS;

{$R *.dfm}

procedure TfrmAnaliseProximidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action                := cafree;
   frmAnaliseProximidade := nil;

end;

procedure TfrmAnaliseProximidade.FormCreate(Sender: TObject);
var
lyrs   : IMoLayers;
lyr    : IMoMaplayer;
imgLyr : IMoImageLayer;
i      : Smallint;
begin

// FormStyle := fsStayOnTop;

 pganalise.ActivePageIndex := 0;

 varBoolTabelaEntrada      := false;
 varBoolTabelaSaida        := false;

 cbCamadaEntrada.Items.Clear;
 cbCamadaAnalise.Items.Clear;

 varBoolLike := false;

 lyrs := frmmenu.map1.Layers;

 for i:=0 to frmmenu.Map1.Layers.Count -1 do
    begin
       try
           if IMoMapLayer(IMoLayers(lyrs).Item(i)).LayerType = moMapLayer then
              begin
                  lyr  := CoMapLayer.Create;
                  lyr  := imomaplayer(lyrs.item(i));
                  cbCamadaEntrada.Items.Add(lyr.name);
                  cbCamadaAnalise.Items.Add(lyr.name);
              end
                else
                   begin
                       imglyr := CoImageLayer.Create;
                       imglyr := IMoImageLayer(lyrs.item(i));
                       cbCamadaEntrada.Items.Add(lyr.name);
                       cbCamadaAnalise.Items.Add(lyr.name);
                   end;
       except
          //********
       end;

    end;

end;

procedure TfrmAnaliseProximidade.cbCamadaEntradaChange(Sender: TObject);
var
dados                   : IMoRecordset;
fld                     : IMoField;
flds                    : IMoFields;
cont                    : integer;
Desc                    : IMoTableDesc;
count                   : Integer;
lyr                     : IMoMapLayer;
lyrs                    : IMoLayers;
begin

  cbCamposEntrada.Items.Clear;
  
  if trim(cbCamadaEntrada.Text) <> '' then
     begin
         if (IMoMapLayer(IMoLayers(frmmenu.Map1.layers).Item(cbCamadaEntrada.ItemIndex)).LayerType = moMapLayer) then
             begin
                   lyr     := CoMapLayer.Create;
                   lyrs    := frmmenu.map1.Layers;
                   lyr     := imomaplayer(lyrs.item(cbCamadaEntrada.ItemIndex));
                   dados   := lyr.records;
                   Desc    := CoTableDesc.Create;
                   Desc    := dados.TableDesc;
                   flds    := dados.Fields;
                   //********************
                   for cont := 0 to Desc.FieldCount-1 do
                    begin
                       fld := flds.Item(Desc.FieldName[cont]);
                       cbCamposEntrada.Items.Add(fld.name);
                    end;
                //*****************************************************
             end
             else
               begin
                 frmmenu.Mensagem('O Tema Selecionado Não Pode Ser Utilizado Por Não Ser Uma Camada Válida!(Imagem ou Arquivo CAD)',mtInformation,[mbOk]);
                 cbCamadaEntrada.ItemIndex := -1;
               end;
             //*******************
     end;

end;

procedure TfrmAnaliseProximidade.cbCamadaAnaliseChange(Sender: TObject);
var
dados                   : IMoRecordset;
fld                     : IMoField;
flds                    : IMoFields;
cont                    : integer;
Desc                    : IMoTableDesc;
count                   : Integer;
lyr                     : IMoMapLayer;
lyrs                    : IMoLayers;
begin

  cbCamposAnalise.Items.Clear;

  if trim(cbCamadaAnalise.Text) <> '' then
     begin
         if (IMoMapLayer(IMoLayers(frmmenu.Map1.layers).Item(cbCamadaAnalise.ItemIndex)).LayerType = moMapLayer) then
             begin
                   lyr     := CoMapLayer.Create;
                   lyrs    := frmmenu.map1.Layers;
                   lyr     := imomaplayer(lyrs.item(cbCamadaAnalise.ItemIndex));
                   dados   := lyr.records;
                   Desc    := CoTableDesc.Create;
                   Desc    := dados.TableDesc;
                   flds    := dados.Fields;
                   //********************
                   for cont := 0 to Desc.FieldCount-1 do
                    begin
                       fld := flds.Item(Desc.FieldName[cont]);
                       cbCamposAnalise.Items.Add(fld.name);
                    end;
                //*****************************************************
             end
             else
               begin
                 frmmenu.Mensagem('O Tema Selecionado Não Pode Ser Utilizado Por Não Ser Uma Camada Válida!(Imagem ou Arquivo CAD)',mtInformation,[mbOk]);
                 cbCamadaAnalise.ItemIndex := -1;
               end;
             //*******************
     end;

end;

procedure TfrmAnaliseProximidade.btOkCamadaClick(Sender: TObject);
var
dados                   : IMoRecordset;
fld                     : IMoField;
flds                    : IMoFields;
cont                    : integer;
// recont
Desc                    : IMoTableDesc;
//campo,tipo,texto,texto1 : string;
count                   : Integer;
begin

   if trim(cbCamadaEntrada.text)='' then
      begin
          frmmenu.mensagem('Selecione a Camada de Entrada!',mtInformation,[mbok]);
          exit;
      end;

   if trim(cbCamposEntrada.text)='' then
      begin
         frmmenu.Mensagem('Selecione o Campo Identificador Da Camada de Entrada!',mtInformation,[mbOk]);
         exit;
      end;

   if trim(cbCamadaAnalise.text)='' then
      begin
        frmmenu.Mensagem('Selecione a Camada de Análise!',mtInformation,[mbOk]);
        exit;
      end;

   if trim(cbCamposAnalise.text)='' then
      begin
        frmmenu.Mensagem('Selecione o Campo Identificador da Camda de Análise!',mtInformation,[mbOk]);
        exit;
      end;

   //**********************************
   cbCamadaEntrada.Enabled   := false;
   cbCamadaAnalise.Enabled   := false;
   cbCamposEntrada.Enabled   := false;
   cbCamposAnalise.Enabled   := false;
   btOkCamada.enabled        := false;

   cbTabelaEntrada.Enabled   := true;
   cbCampoEntrada.Enabled    := true;
   btCriarEnt.Enabled        := true;
   chEntrada.Enabled         := true;
   edtTabelaSaida.Enabled    := true;
   btCriarSaida.Enabled      := true;
   chSaida.Enabled           := true;
   btOkTabela.Enabled        := true;
   //********************************

   lyrQuery     := CoMapLayer.Create;
   lyrsQuery    := frmmenu.map1.Layers;
   lyrQuery     := imomaplayer(lyrsQuery.item(cbCamadaAnalise.ItemIndex));
   dados        := lyrQuery.records;
   Desc         := CoTableDesc.Create;
   Desc         := dados.TableDesc;
   flds         := dados.Fields;

   //*************************************************
   sgColunas.RowCount   := 2;
   sgColunas.RowCount   := flds.Count-1;
   //*************************************************
   for cont := 0 to Desc.FieldCount-1 do
    begin
       fld := flds.Item(Desc.FieldName[cont]);
       sgColunas.Cells[0,cont+1] := fld.name;
    end;
   //*****************************************************
   //Verificando número de registros
   recs  := lyrQuery.Records;
   count := recs.CalculateStatistics('FEATUREID').Count;//recs.Count;
   //******
   If count  > 28000 then
   begin
      cbValores.Checked  := false;
      cbValores.Enabled  := false;
   end;
   //******
   SqlStatus := 'CAMPO';
   sgValores.Cells[0,1] := '';
   sgValores.RowCount   := 2;
   pgAnalise.ActivePageIndex := 1;

end;

procedure TfrmAnaliseProximidade.btCriarEntClick(Sender: TObject);
begin

  if frmConexaoAnaliseOrigem = nil then
     frmConexaoAnaliseOrigem := tfrmConexaoAnaliseOrigem.create(application);
  frmConexaoAnaliseOrigem.showmodal;

end;

procedure TfrmAnaliseProximidade.btCriarSaidaClick(Sender: TObject);
begin

   if frmConexaoAnaliseSaida = nil then
      frmConexaoAnaliseSaida := tfrmConexaoAnaliseSaida.create(application);
   frmConexaoAnaliseSaida.showmodal;

end;

procedure TfrmAnaliseProximidade.btOkTabelaClick(Sender: TObject);
begin

  if not varBoolTabelaEntrada then
     begin
        frmmenu.mensagem('É Necessário Criar Uma Conexão Para a Entrada de Dados!',mtInformation,[mbOk]);
        exit;
     end;

  if not varBoolTabelaSaida then
     begin
        frmmenu.mensagem('É Necessário Criar Uma Conexão Para a Saida de Dados!',mtInformation,[mbOk]);
        exit;
     end;

  if trim(cbTabelaEntrada.Text)='' then
     begin
        frmmenu.mensagem('Informe o Nome da Tabela de Entrada!',mtInformation,[mbOk]);
        exit;
     end;

  if trim(cbCampoEntrada.Text)='' then
     begin
        frmmenu.mensagem('Informe o Nome do Campo Identificador da Tabela de Entrada!',mtInformation,[mbOk]);
        exit;
     end;

  if trim(edtTabelaSaida.Text)='' then
     begin
        frmmenu.mensagem('Informe o Nome da Tabela Que Será Criada Para a Saída de Dados!',mtInformation,[mbOk]);
        exit;
     end;

  cbTabelaEntrada.enabled   := false;
  cbCampoEntrada.enabled    := false;
  edtTabelaSaida.enabled    := false;
  btCriarEnt.enabled        := false;
  btCriarSaida.enabled      := false;
  chEntrada.enabled         := false;
  chSaida.enabled           := false;

  {try
    with frmmenu.qyAnaliseSaida do
       begin
          close;
          sql.Clear;
          sql.text := 'drop table '+edtTabelaSaida.Text;
          ExecSQL;
       end;
       frmmenu.qyAnaliseSaida.CommitUpdates;
       frmmenu.OraSessionProxAnalise.Commit;
  except

  end;

  try
    with frmmenu.qyAnaliseSaida do
       begin
          //***
          close;
          sql.Clear;
          sql.text := 'create table '+edtTabelaSaida.Text+
                      '('+cbCamposEntrada.text+' number,'+
                      cbCamposAnalise.text +' number,'+
                      'Distancia float);';
          ExecSQL;
          frmmenu.qyAnaliseSaida.CommitUpdates;
          frmmenu.OraSessionProxAnalise.Commit;
       end;
  except

  end; }

  with frmmenu.qyAnaliseSaida do
       begin
          //***
          close;
          sql.Clear;
          sql.text := 'select * from '+edtTabelaSaida.Text;
          open;
       end;

  pgAnalise.ActivePageIndex := 2;

end;

procedure TfrmAnaliseProximidade.cbTabelaEntradaExit(Sender: TObject);
begin

  if cbTabelaEntrada.ItemIndex <> -1 then
      begin
         frmMenu.qyAnaliseProxEntrada.Close;
         frmMenu.qyAnaliseProxEntrada.SQL.Clear;
         frmMenu.qyAnaliseProxEntrada.SQL.Text   := 'select * from '+cbTabelaEntrada.Text;
         frmMenu.qyAnaliseProxEntrada.Open;
         cbCampoEntrada.Items.Clear;
         frmMenu.qyAnaliseProxEntrada.GetFieldNames(cbCampoEntrada.Items);
      end;

end;

procedure TfrmAnaliseProximidade.FormKeyPress(Sender: TObject;
  var Key: Char);
begin

   if key=#13 then
      begin
         perform(WM_NEXTDLGCTL,0,0);
         key := #0;
      end;

      
end;

procedure TfrmAnaliseProximidade.sgColunasClick(Sender: TObject);
var
campo            : string;
strsUniqueValues : IMoStrings;
fld              : IMoField;
flds             : IMofields;
valor            : wordbool;
i                : integer;
total,cont       : Integer;
begin

      try
         campo := sgColunas.Cells[0,linhaColuna];
         tipo  := vartostr(lyrQuery.Records.TableDesc.FieldType[linhaColuna-1]);
       except
         exit;
       end;

      //carregando valores
        If cbValores.Checked = true then
           begin
              try

                if ColunaCarregada = campo then exit;

                ColunaCarregada := campo;

                Cursor := crHourGlass;

                strsUniqueValues        := CoStrings.Create; //inicializo o imostring
                valor                   := true; //defino que o imostring só irá aceitar um unico valor(sem repetições)
                strsUniqueValues.Unique := valor;

                recs := lyrQuery.records;//pego os dados da layer(os atributos da tabela

                flds := recs.Fields; //e jogo os campos e os valores desses atributos no imofields
                fld  := flds.Item(campo);//pego o campo que eu quero carregar os dados

                //se o campo nao existir ou nao conseguir pegar o campo, sair da rotina
                If fld = nil Then
                   Exit;

                //pego todos os dados para inserir dentro do imostring
                recs.MoveFirst;
                cont  := 1;

                total := recs.CalculateStatistics('FEATUREID').Count;
                //**********
                While Not recs.EOF do
                  begin
                    sbStatus.Caption := 'Lendo Valores do Campo: '+IntToStr(cont) +' Registros do Total De '+IntToStr(total)+ ' Registros';
                    inc(cont);
                    strsUniqueValues.Add(fld.value);
                    recs.MoveNext
                  end;

                strsUniqueValues.Sort(2);//colocar os dados em ordem alfabetica

                //adicionando os valores na stringgrid
                For i:= 1 To strsUniqueValues.Count - 1 do
                   begin
                     sgValores.RowCount      := strsUniqueValues.Count ;
                     sgValores.Cells[0,i]    := strsUniqueValues.Item(i);
                   end;

                Cursor          := crDefault;

              except
                Cursor         := crDefault;
              end;

           end;


end;

procedure TfrmAnaliseProximidade.sgColunasDblClick(Sender: TObject);
var
campo            : string;
Begin

    //*********************
    try
       campo := sgColunas.Cells[0,linhaColuna];
       tipo  := vartostr(lyrQuery.Records.TableDesc.FieldType[linhaColuna-1]);
     except
       exit;
     end;
    //*********************

    if (SqlStatus = 'CAMPO') or (SqlStatus = 'CAMPONOT')  then
       begin
           mmSQL.Text := mmSQL.text + '( ' + campo + ' ';
           SqlStatus  := 'OP';
       end
       else
          begin
               IF SQLStatus = 'OP' then
                  frmMenu.mensagem('Selecione Um Operador!',mtInformation,[mbok]);
               IF SQLStatus = 'VALOR' then
                  frmMenu.mensagem('Informe Um Valor!',mtInformation,[mbok]);
          end;


end;

procedure TfrmAnaliseProximidade.sgColunasSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin

   linhaColuna := aRow;
   
end;

procedure TfrmAnaliseProximidade.sgValoresClick(Sender: TObject);
var
campo            : string;
strsUniqueValues : IMoStrings;
fld              : IMoField;
flds             : IMofields;
//recs             : IMoRecordset;
valor            : wordbool;
i                : integer;
total,cont       : Integer;
begin

      try
         campo := sgColunas.Cells[0,linhaColuna];
         tipo  := vartostr(lyrQuery.Records.TableDesc.FieldType[linhaColuna-1]);
       except
         exit;
       end;

      //carregando valores
        If cbValores.Checked = true then
           begin
              try

                if ColunaCarregada = campo then exit;

                ColunaCarregada := campo;

                Cursor := crHourGlass;

                strsUniqueValues        := CoStrings.Create; //inicializo o imostring
                valor                   := true; //defino que o imostring só irá aceitar um unico valor(sem repetições)
                strsUniqueValues.Unique := valor;

                recs := lyrQuery.records;//pego os dados da layer(os atributos da tabela

                flds := recs.Fields; //e jogo os campos e os valores desses atributos no imofields
                fld  := flds.Item(campo);//pego o campo que eu quero carregar os dados

                //se o campo nao existir ou nao conseguir pegar o campo, sair da rotina
                If fld = nil Then
                   Exit;

                //pego todos os dados para inserir dentro do imostring
                recs.MoveFirst;
                cont  := 1;

                total := recs.CalculateStatistics('FEATUREID').Count;
                //**********
                While Not recs.EOF do
                  begin
                    sbStatus.Caption := 'Lendo Valores do Campo: '+IntToStr(cont) +' Registros do Total De '+IntToStr(total)+ ' Registros';
                    inc(cont);
                    strsUniqueValues.Add(fld.value);
                    recs.MoveNext
                  end;

                strsUniqueValues.Sort(2);//colocar os dados em ordem alfabetica

                //adicionando os valores na stringgrid
                For i:= 1 To strsUniqueValues.Count - 1 do
                   begin
                     sgValores.RowCount      := strsUniqueValues.Count ;
                     sgValores.Cells[0,i]    := strsUniqueValues.Item(i);
                   end;

                Cursor          := crDefault;

              except
                Cursor         := crDefault;
              end;

           end;

end;

procedure TfrmAnaliseProximidade.sgValoresDblClick(Sender: TObject);
var
valores : string;
begin

   If SqlStatus = 'VALOR' Then
      begin
         try
           valores := sgValores.Cells[0,linha_v];
         except
           exit;
         end;

         If tipo = '5' then //float
            mmsql.Text  := trim(mmsql.Text) + ' ' + StringReplace(valores,',','.',[rfreplaceall]) + ' ) '
         else
            If tipo = '8' then
                 begin
                     if varBoolLike then
                        begin
                            varBoolLike := false;
                            mmsql.Text  := trim(mmsql.Text) + ' ' + '''' +  valores+'%'+ '''' + ' ) ';
                        end
                        else
                            mmsql.Text  := trim(mmsql.Text) + ' ' + '''' +  valores+ '''' + ' ) '
                 end
         else
            mmsql.Text  := trim(mmsql.Text) + ' ' +  valores + ' ) ';
         SqlStatus := 'CONDICAO';
      end
      else
         frmMenu.mensagem('Selecione Um Operador "E" / "OU" ou Clique no Botão "Localizar" Para Executar o Comando SQL!',mtInformation,[mbok]);

end;

procedure TfrmAnaliseProximidade.sgValoresSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin

  linha_v := aRow;
  
end;

procedure TfrmAnaliseProximidade.btMaiorIgualClick(Sender: TObject);
begin

    if SqlStatus = 'OP' then
       begin
           mmSQL.Text := mmSQL.text + '>= ';
           SqlStatus  := 'VALOR';
       end
       else
          begin
               IF SQLStatus = 'CAMPO' then
                  frmMenu.mensagem('Selecione Um Campo!',mtInformation,[mbok]);
               IF SQLStatus = 'VALOR' then
                  frmMenu.mensagem('Informe Um Valor!',mtInformation,[mbok]);
               IF SQLStatus = 'CAMPONOT' then
                  frmMenu.mensagem('Informe Um Campo!',mtInformation,[mbok]);                  
          end;
          
end;

procedure TfrmAnaliseProximidade.btMaiorClick(Sender: TObject);
begin

    if SqlStatus = 'OP' then
       begin
           mmSQL.Text := mmSQL.text + '> ';
           SqlStatus  := 'VALOR';
       end
       else
          begin
               IF SQLStatus = 'CAMPO' then
                  frmMenu.mensagem('Selecione Um Campo!',mtInformation,[mbok]);
               IF SQLStatus = 'VALOR' then
                  frmMenu.mensagem('Informe Um Valor!',mtInformation,[mbok]);
               IF SQLStatus = 'CAMPONOT' then
                  frmMenu.mensagem('Informe Um Campo!',mtInformation,[mbok]);
          end;
          
end;

procedure TfrmAnaliseProximidade.btMenorIgualClick(Sender: TObject);
begin

    if SqlStatus = 'OP' then
       begin
           mmSQL.Text := mmSQL.text + '<= ';
           SqlStatus  := 'VALOR';
       end
       else
          begin
               IF SQLStatus = 'CAMPO' then
                  frmMenu.mensagem('Selecione Um Campo!',mtInformation,[mbok]);
               IF SQLStatus = 'VALOR' then
                  frmMenu.mensagem('Informe Um Valor!',mtInformation,[mbok]);
               IF SQLStatus = 'CAMPONOT' then
                  frmMenu.mensagem('Informe Um Campo!',mtInformation,[mbok]);                  
          end;

          
end;

procedure TfrmAnaliseProximidade.btMenorClick(Sender: TObject);
begin

    if SqlStatus = 'OP' then
       begin
           mmSQL.Text := mmSQL.text + '< ';
           SqlStatus  := 'VALOR';
       end
       else
          begin
               IF SQLStatus = 'CAMPO' then
                  frmMenu.mensagem('Selecione Um Campo!',mtInformation,[mbok]);
               IF SQLStatus = 'VALOR' then
                  frmMenu.mensagem('Informe Um Valor!',mtInformation,[mbok]);
               IF SQLStatus = 'CAMPONOT' then
                  frmMenu.mensagem('Informe Um Campo!',mtInformation,[mbok]);                  
          end;

          
end;

procedure TfrmAnaliseProximidade.btIgualClick(Sender: TObject);
begin

    if SqlStatus = 'OP' then
       begin
           mmSQL.Text := mmSQL.text + '= ';
           SqlStatus  := 'VALOR';
       end
       else
          begin
               IF SQLStatus = 'CAMPO' then
                  frmMenu.mensagem('Selecione Um Campo!',mtInformation,[mbok]);
               IF SQLStatus = 'VALOR' then
                  frmMenu.mensagem('Informe Um Valor!',mtInformation,[mbok]);
               IF SQLStatus = 'CAMPONOT' then
                  frmMenu.mensagem('Informe Um Campo!',mtInformation,[mbok]);                  
          end;
          
end;

procedure TfrmAnaliseProximidade.btDiferenteClick(Sender: TObject);
begin

    if SqlStatus = 'OP' then
       begin
           mmSQL.Text := mmSQL.text + '<> ';
           SqlStatus  := 'VALOR';
       end
       else
          begin
               IF SQLStatus = 'CAMPO' then
                  frmMenu.mensagem('Selecione Um Campo!',mtInformation,[mbok]);
               IF SQLStatus = 'VALOR' then
                  frmMenu.mensagem('Informe Um Valor!',mtInformation,[mbok]);
               IF SQLStatus = 'CAMPONOT' then
                  frmMenu.mensagem('Informe Um Campo!',mtInformation,[mbok]);                  
          end;
          
end;

procedure TfrmAnaliseProximidade.BtOperadorEClick(Sender: TObject);
begin

    if SqlStatus = 'CONDICAO' then
       begin
           mmSQL.Text := mmSQL.text + 'AND ';
           SqlStatus  := 'CAMPONOT';
       end
       else
          begin
               IF SQLStatus = 'CAMPO' then
                  frmMenu.mensagem('Selecione Um Campo!',mtInformation,[mbok]);
               IF SQLStatus = 'VALOR' then
                  frmMenu.mensagem('Informe Um Valor!',mtInformation,[mbok]);
               IF SQLStatus = 'OP' then
                  frmMenu.mensagem('Selecione um operador!',mtInformation,[mbok]);
               IF SQLStatus = 'CAMPONOT' then
                  frmMenu.mensagem('Informe Um Campo ou Use o Operador "NOT" Caso Seja Desejado',mtInformation,[mbok]);
          end;
          
end;

procedure TfrmAnaliseProximidade.btOperadorOUClick(Sender: TObject);
begin

    if SqlStatus = 'CONDICAO' then
       begin
           mmSQL.Text := mmSQL.text + 'OR ';
           SqlStatus  := 'CAMPONOT';
       end
       else
          begin
               IF SQLStatus = 'CAMPO' then
                  frmMenu.mensagem('Selecione Um Campo!',mtInformation,[mbok]);
               IF SQLStatus = 'VALOR' then
                  frmMenu.mensagem('Informe Um Valor!',mtInformation,[mbok]);
               IF SQLStatus = 'OP' then
                  frmMenu.mensagem('Selecione um operador!',mtInformation,[mbok]);
               IF SQLStatus = 'CAMPONOT' then
                  frmMenu.mensagem('Informe Um Campo ou Use o Operador "NOT" Caso Seja Desejado',mtInformation,[mbok]);                  
          end;

          
end;

procedure TfrmAnaliseProximidade.btOperadorNaoClick(Sender: TObject);
begin

    if SqlStatus = 'CAMPONOT' then
       begin
           mmSQL.Text := mmSQL.text + 'NOT ';
           SqlStatus  := 'CAMPO';
       end
       else
          IF SQLStatus = 'CAMPO' then
             frmMenu.mensagem('Selecione Um Campo!',mtInformation,[mbok])
          else IF SQLStatus = 'VALOR' then
             frmMenu.mensagem('Informe Um Valor!',mtInformation,[mbok])
          else IF SQLStatus = 'OP' then
             frmMenu.mensagem('Selecione um operador!',mtInformation,[mbok])
          else
             frmmenu.mensagem('É Necessário Um Operador "E" ou "OU" Antes do Operador "NOT" !',mtInformation,[mbOk]);
             
end;

procedure TfrmAnaliseProximidade.btOPLikeClick(Sender: TObject);
begin

    if tipo = '8' then
       begin
            if SqlStatus = 'OP' then
               begin
                   mmSQL.Text  := mmSQL.text + 'LIKE ';
                   varBoolLike := true;
                   SqlStatus   := 'VALOR';
               end
               else
                  begin
                       IF SQLStatus = 'CAMPO' then
                          frmMenu.mensagem('Selecione Um Campo!',mtInformation,[mbok]);
                       IF SQLStatus = 'VALOR' then
                          frmMenu.mensagem('Informe Um Valor!',mtInformation,[mbok]);
                       IF SQLStatus = 'CAMPONOT' then
                          frmMenu.mensagem('Informe Um Campo!',mtInformation,[mbok]);
                  end;
       end
       else
          frmmenu.mensagem('O Operador "LIKE" Só Pode Ser Utilizado Em Campos do Tipo Texto(String)!',mtInformation,[mbOk]);
          
end;

procedure TfrmAnaliseProximidade.bsSkinButton2Click(Sender: TObject);
begin

  SqlStatus := 'CAMPO';
  varBoolLike := false;
  mmSql.Clear;
  
end;

procedure TfrmAnaliseProximidade.cbBufferClick(Sender: TObject);
begin

    if cbBuffer.Checked then
       begin
           edtDist.Enabled    := true;
           //varBoolLike := false;
           SqlStatus := 'CAMPO';
       end
       else
          begin
             edtDist.Enabled    := false;
             //varBoolLike := false;
             SqlStatus          := 'CAMPO';
          end;

end;

procedure TfrmAnaliseProximidade.btAnaliseClick(Sender: TObject);
var
pt            : IMoPoint;
ptResults     : IMoPoint;
lyrbusca      : IMoMapLayer;
lyrsbusca     : IMoLayers;
recsBusca     : IMoRecordset;
recsSaida     : IMoRecordset;
lyrSaida      : IMoMapLayer;
dist          : Double;
tempDist      : Double;
tmpStrEntrada : String;
tmpStrSaida   : String;
total,cont    : integer;
contTotal     : Integer;
begin

   //***************
   lyrSaida   := CoMapLayer.Create;
   lyrsBusca  := frmmenu.map1.layers;
   lyrSaida   := IMoMaplayer(lyrsBusca.item(cbCamadaAnalise.ItemIndex));
   recsSaida  := lyrSaida.SearchExpression(mmSQL.text);

   //***************
   if recsSaida.EOF then
      begin
         frmmenu.mensagem('A Rotina SQL Informada Para a Camada de Análise Não Retornou Resultados!',mtInformation,[mbOk]);
         exit;
      end;
   //***************

   frmMenu.qyAnaliseProxEntrada.First;

   lyrBusca   := CoMapLayer.Create;
   lyrBusca   := IMoMaplayer(lyrsBusca.item(cbCamadaEntrada.ItemIndex));

   cont  := 1;
   frmmenu.qyAnaliseProxEntrada.FetchAll := true;
   total := frmmenu.qyAnaliseProxEntrada.RecordCount;
   contTotal := 0;

   while not frmmenu.qyAnaliseProxEntrada.Eof do
       begin
               contTotal := contTotal +1;
               sbStatus.Caption := 'Processando: '+IntToStr(cont) +' Registros do Total De '+IntToStr(total)+ ' Registros';
               inc(cont);
               recsBusca     := lyrBusca.SearchExpression(cbCamposEntrada.text+ ' = '+frmmenu.qyAnaliseProxEntrada.FieldByName(cbCampoEntrada.text).AsString);
               tmpStrEntrada := recsBusca.Fields.Item(cbCamposEntrada.text).ValueAsString;
               //***************
               if not recsBusca.eof then
                  begin
                      pt       := CoPoint.Create;
                      pt       := IMoPoint(IDispatch(recsBusca.Fields.Item('Shape').Value.centroid));
                      //agora vamos ver quem ta mais perto
                      dist     := 99999999999;

                      //******************
                      recsSaida.MoveFirst;
                      while not recsSaida.EOF do
                          begin
                               ptResults := CoPoint.Create;
                               //ptResults := IMoPoint(IDispatch(recsSaida.Fields.Item('Shape').Value.Centroid));
                               ptResults := IMoPoint(IDispatch(recsSaida.Fields.Item('Shape').Value));
                               //***********
                               tempDist  := pt.DistanceTo(ptResults);
                               //***********
                               if tempDist < dist then
                                  begin
                                     dist := tempDist;
                                     tmpStrSaida := recsSaida.Fields.Item(cbCamposAnalise.text).ValueAsString;
                                  end;
                               recsSaida.MoveNext;
                          end;

                      with frmmenu.qyAnaliseSaida do
                          begin
                              insert;
                              fieldbyname('OBJECTID').AsInteger  := contTotal;
                              fieldbyname('GEO_ID').AsString     := tmpStrEntrada;
                              fieldbyname('ID').AsString         := tmpStrSaida;
                              fieldbyname('DISTANCIA').AsString  := formatFloat('0.00',dist);
                              post;
                          end;
                      //frmmenu.Mensagem('O menor de todos foi '+formatFloat('0.00',dist),mtInformation,[mbOk]);
                      recsbusca.MoveNext;

                    end;
               //***********
               frmmenu.qyAnaliseProxEntrada.Next;
       end;

   frmmenu.mensagem('Operação Concluida Com Sucesso!',mtInformation,[mbok]);

end;

end.
