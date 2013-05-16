unit U_Query;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsSkinCtrls, ExtCtrls, bsSkinGrids, StdCtrls,
  bsSkinBoxCtrls,MapObjects2_TLB, ComCtrls, bsSkinTabs, Mask,
  bsSkinShellCtrls, Grids;

type
  TfrmQuery = class(TForm)
    cbItemlegenda: TbsSkinComboBox;
    Label4: TLabel;
    bsSkinBevel2: TbsSkinBevel;
    mmSQL: TbsSkinMemo;
    Label2: TLabel;
    bsSkinButton1: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    bsSkinButton4: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    sbStatus: TbsSkinStatusPanel;
    edtY: TbsSkinEdit;
    edtDist: TbsSkinEdit;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    edtX: TbsSkinEdit;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    cbBuffer: TbsSkinCheckRadioBox;
    bsSkinBevel3: TbsSkinBevel;
    cbValores: TbsSkinCheckRadioBox;
    bsSkinBevel1: TbsSkinBevel;
    Label1: TLabel;
    btMaiorIgual: TbsSkinButton;
    btMaior: TbsSkinButton;
    btMenor: TbsSkinButton;
    btMenorIgual: TbsSkinButton;
    btIgual: TbsSkinButton;
    btDiferente: TbsSkinButton;
    btOperadorOU: TbsSkinButton;
    BtOperadorE: TbsSkinButton;
    btOperadorNao: TbsSkinButton;
    bsSkinBevel4: TbsSkinBevel;
    btCapturar: TbsSkinButton;
    bsSkinButton3: TbsSkinButton;
    bsSkinButton5: TbsSkinButton;
    OpenDialog1: TbsSkinOpenDialog;
    SaveDialog1: TbsSkinSaveDialog;
    bsSkinStdLabel5: TbsSkinStdLabel;
    btOPLike: TbsSkinButton;
    sgColunas: TStringGrid;
    sgValores: TStringGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbItemlegendaChange(Sender: TObject);
    procedure sgColunasDblClick(Sender: TObject);
    procedure sgColunasSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgColunasClick(Sender: TObject);
    procedure btMaiorIgualClick(Sender: TObject);
    procedure btMaiorClick(Sender: TObject);
    procedure btMenorIgualClick(Sender: TObject);
    procedure btMenorClick(Sender: TObject);
    procedure btIgualClick(Sender: TObject);
    procedure btDiferenteClick(Sender: TObject);
    procedure sgValoresDblClick(Sender: TObject);
    procedure sgValoresSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BtOperadorEClick(Sender: TObject);
    procedure btOperadorOUClick(Sender: TObject);
    procedure btOperadorNaoClick(Sender: TObject);
    procedure mmSQLClick(Sender: TObject);
    procedure bsSkinButton4Click(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure cbBufferClick(Sender: TObject);
    procedure btCapturarClick(Sender: TObject);
    procedure bsSkinButton3Click(Sender: TObject);
    procedure bsSkinButton5Click(Sender: TObject);
    procedure btOPLikeClick(Sender: TObject);
  private
    { Private declarations }

    lyr             : IMoMapLayer;
    lyrs            : IMoLayers;
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

  end;

var
  frmQuery: TfrmQuery;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmQuery.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   action   := cafree;
   frmQuery := nil;

end;

procedure TfrmQuery.FormCreate(Sender: TObject);
var
lyrs   : imolayers;
imglyr : IMoImageLayer;
lyr  : imomaplayer;
i    : smallint;
begin

 FormStyle := fsStayOnTop;

 cbItemlegenda.Items.Clear;
 varBoolLike := false;

 for i:=0 to frmmenu.Map1.Layers.Count -1 do
    begin
       if (IMoMapLayer(IMoLayers(frmmenu.Map1.layers).Item(i)).LayerType = moMapLayer) then
          begin
              lyr  := CoMapLayer.Create;
              lyrs := frmmenu.map1.Layers;
              lyr  := imomaplayer(lyrs.item(i));
              cbItemlegenda.Items.Add(lyr.name);
          end
          else
             begin
                 imglyr  := CoImageLayer.Create;
                 lyrs    := frmmenu.map1.Layers;
                 imglyr  := IMoImageLayer(lyrs.item(i));
                 cbItemlegenda.Items.Add(imglyr.name);
             end;

    end;

  if frmmenu.MapLegend1.GetActiveLayer <> -1 then
     begin
         if (IMoMapLayer(IMoLayers(frmmenu.Map1.layers).Item(frmmenu.MapLegend1.GetActiveLayer)).LayerType = moMapLayer) then
            begin
               cbItemlegenda.ItemIndex := frmmenu.MapLegend1.GetActiveLayer
            end
            else
                cbItemlegenda.ItemIndex := -1;
     end;
  //******************************

  sgColunas.Cells[0,0] := '           Colunas  ';
  sgValores.Cells[0,0] := '           Valores  ';

  SqlStatus := 'CAMPO';

end;

procedure TfrmQuery.cbItemlegendaChange(Sender: TObject);
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

  if trim(cbItemlegenda.Text) <> '' then
     begin
         if (IMoMapLayer(IMoLayers(frmmenu.Map1.layers).Item(cbItemlegenda.ItemIndex)).LayerType = moMapLayer) then
             begin
                   lyr     := CoMapLayer.Create;
                   lyrs    := frmmenu.map1.Layers;
                   lyr     := imomaplayer(lyrs.item(cbItemlegenda.ItemIndex));
                   dados   := lyr.records;
                   Desc    := CoTableDesc.Create;
                   Desc    := dados.TableDesc;
                   flds    := dados.Fields;
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
                recs  := lyr.Records;
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

            end
            else
               begin
                 frmmenu.Mensagem('O Tema Selecionado Não Pode Ser Utilizado Por Não Ser Uma Camada Válida!(Imagem ou Arquivo CAD)',mtInformation,[mbOk]);
                 cbItemlegenda.ItemIndex := -1;
               end;
     end;

end;

procedure TfrmQuery.sgColunasDblClick(Sender: TObject);
var
campo            : string;
Begin

    //*********************
    try
       campo := sgColunas.Cells[0,linhaColuna];
       tipo  := vartostr(lyr.Records.TableDesc.FieldType[linhaColuna-1]);
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

procedure TfrmQuery.sgColunasSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin

   linhaColuna := aRow;

end;

procedure TfrmQuery.sgColunasClick(Sender: TObject);
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
         tipo  := vartostr(lyr.Records.TableDesc.FieldType[linhaColuna-1]);
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

                recs := lyr.records;//pego os dados da layer(os atributos da tabela

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

procedure TfrmQuery.btMaiorIgualClick(Sender: TObject);
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

procedure TfrmQuery.btMaiorClick(Sender: TObject);
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

procedure TfrmQuery.btMenorIgualClick(Sender: TObject);
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

procedure TfrmQuery.btMenorClick(Sender: TObject);
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

procedure TfrmQuery.btIgualClick(Sender: TObject);
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

procedure TfrmQuery.btDiferenteClick(Sender: TObject);
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

procedure TfrmQuery.sgValoresDblClick(Sender: TObject);
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

procedure TfrmQuery.sgValoresSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin

  linha_v := aRow;

end;

procedure TfrmQuery.BtOperadorEClick(Sender: TObject);
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

procedure TfrmQuery.btOperadorOUClick(Sender: TObject);
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

procedure TfrmQuery.btOperadorNaoClick(Sender: TObject);
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

procedure TfrmQuery.mmSQLClick(Sender: TObject);
begin

  if SqlStatus  = 'VALOR' then
     begin
         if tipo = '8' then
            if varBoolLike then
               begin
                 mmSql.text  := mmSql.text + ' '' %'' ) ';
                 varBoolLike := false;
               end
               else
                  mmSql.text := mmSql.text + ' '' '' ) '
         else
            mmSql.text := mmSql.text + '  ) ';
         sqlStatus := 'CONDICAO';
     end;

end;

procedure TfrmQuery.bsSkinButton4Click(Sender: TObject);
var
i            : Smallint;
posicaoLayer : smallint;
begin
 if frmMenu.Map1.Layers.Count = 0 then
  begin
   frmMenu.Mensagem('Adicione uma camada para consulta...',mtWarning,[mbOK]);
   exit;
  end;

  //pegando a posição da layer atual no vetor
  for i:=0 to length(frmmenu.vet_taglayer) do
     begin
         if lyr.Tag = frmmenu.vet_taglayer[i] then
            begin
               posicaolayer := i;
               break;
            end;
     end;

   frmmenu.zoomselecionados(posicaoLayer);

end;

procedure TfrmQuery.bsSkinButton1Click(Sender: TObject);
var
varsql          : string;
i,posicaolayer  : Smallint;
TempCirculo     : IMoEllipse;
pt              : IMoPoint;
begin

      //***********************************
      screen.Cursor := crHourGlass;

      //Verficando se há algo pra pesquisar
      If trim(mmsql.Text) = '' then
         begin
             frmmenu.mensagem('Informe a Rotina!',mtInformation,[mbok]);
             exit;
         end;
      //************************************


      //************************************
      if cbBuffer.Checked then
         begin
             //************************
             if trim(edtX.Text)='' then
                begin
                    frmmenu.mensagem('É Necessário Informar o Eixo X!',mtInformation,[mbOk]);
                    edtX.SetFocus;
                    exit;
                end;
             //************************
             if trim(edtY.Text)='' then
                begin
                    frmmenu.mensagem('É Necessário Informar o Eixo X!',mtInformation,[mbOk]);
                    edtY.SetFocus;
                    exit;
                end;
             //***********************
             if trim(edtDist.Text)='' then
                begin
                    frmmenu.mensagem('É Necessário Informar a Distancia!',mtInformation,[mbOk]);
                    edtDist.SetFocus;
                    exit;
                end;
             //***********************

         end;
         
      //************************************
      //pegando a posição da layer atual no vetor
      for i:=0 to length(frmmenu.vet_taglayer) do
         begin
             if lyr.Tag = frmmenu.vet_taglayer[i] then
                begin
                   posicaolayer := i;
                   break;
                end;
         end;

      //carregando varsql
      varsql            := mmsql.text;


      //********************************
      if cbBuffer.Checked = false then
         begin
              //verificando se existe algo selecionado
              If frmMenu.vet_SelectedFeatures[posicaolayer] = nil then
                 frmMenu.vet_SelectedFeatures[posicaolayer] := lyr.SearchExpression(varsql)
              else
                 begin
                    frmMenu.vet_SelectedFeatures[posicaolayer] := nil;
                    frmMenu.vet_SelectedFeatures[posicaolayer] := lyr.SearchExpression(varsql);
                 end;

              recont := 0;
              {
              While not frmMenu.vet_SelectedFeatures[posicaolayer].EOF do
                 begin
                      recont := recont + 1;
                      frmMenu.vet_SelectedFeatures[posicaolayer].MoveNext;
                 end;
              }

              //pego o total localizado!
              recont := frmMenu.vet_SelectedFeatures[posicaolayer].CalculateStatistics('FeatureID').Count;

              If recont > 0 then
                begin
                  frmMenu.vet_SelectedFeatures[posicaolayer].MoveFirst;
                  sbStatus.Caption := inttostr(recont) +' Registro(s) Encontrado(s)!';
                  frmMenu.Map1.RefreshLayer(cbItemlegenda.ItemIndex);
                end
                  else
                     begin
                        sbStatus.Caption := 'Nenhum Registro Encontrado!';
                        frmMenu.Map1.RefreshLayer(cbItemlegenda.ItemIndex);
                     end;
         end
         else
            begin

                 TempCirculo        := CoEllipse.Create;
                 pt                 := CoPoint.Create;
                 pt.x               := StrToFloat(edtX.Text);
                 pt.Y               := StrToFloat(edtY.Text);

                 //*****************************
                 If frmMenu.vet_SelectedFeatures[posicaolayer] = nil then
                    frmMenu.vet_SelectedFeatures[posicaolayer] := lyr.SearchByDistance(pt,strToFloat(edtDist.text),varsql)
                 else
                    begin
                       frmMenu.vet_SelectedFeatures[posicaolayer] := nil;
                       frmMenu.vet_SelectedFeatures[posicaolayer] := lyr.SearchByDistance(pt,strToFloat(edtDist.text),varsql);;
                    end;
                 //*****************************

                 recont := 0;
                 While not frmMenu.vet_SelectedFeatures[posicaolayer].EOF do
                    begin
                         recont := recont + 1;
                         frmMenu.vet_SelectedFeatures[posicaolayer].MoveNext;
                    end;

                 If recont > 0 then
                    begin
                        frmMenu.vet_SelectedFeatures[posicaolayer].MoveFirst;
                        sbStatus.Caption := IntToStr(recont)+' Registro(s) Encontrado(s)!';
                        frmMenu.Map1.RefreshLayer(cbItemlegenda.ItemIndex);
                    end
                       else
                           begin
                              sbStatus.Caption := 'Nenhum Registro Encontrado!';
                              frmMenu.Map1.RefreshLayer(cbItemlegenda.ItemIndex);
                           end;
                 //******************************************************

                 TempCirculo.Right  := Pt.X + StrToFloat(edtDist.text);
                 TempCirculo.Left   := Pt.X - StrToFloat(edtDist.text);
                 TempCirculo.Top    := Pt.Y + StrToFloat(edtDist.text);
                 TempCirculo.Bottom := Pt.Y - StrToFloat(edtDist.text);
                 SetLength(frmMenu.varQueryCirculo,length(frmMenu.varQueryCirculo)+1);
                 SetLength(frmMenu.varQueryPontoOrigem,length(frmMenu.varQueryPontoOrigem)+1);
                 SetLength(frmMenu.varQueryLayer,length(frmMenu.varQueryLayer)+1);
                 //*********
                 frmMenu.varQueryLayer[length(frmMenu.varQueryLayer)-1]             := lyr.tag;
                 frmMenu.varQueryCirculo[length(frmMenu.varQueryCirculo)-1]         := CoEllipse.Create;
                 frmMenu.varQueryPontoOrigem[length(frmMenu.varQueryPontoOrigem)-1] := CoPoint.Create;
                 frmMenu.varQueryCirculo[length(frmMenu.varQueryCirculo)-1]         := TempCirculo;
                 frmMenu.varQueryPontoOrigem[length(frmMenu.varQueryPontoOrigem)-1] := pt;
                 frmmenu.map1.refresh;
            end;

   screen.Cursor := crDefault;

end;

procedure TfrmQuery.bsSkinButton2Click(Sender: TObject);
begin

  SqlStatus := 'CAMPO';
  varBoolLike := false;
  mmSql.Clear;

end;

procedure TfrmQuery.cbBufferClick(Sender: TObject);
begin

    if cbBuffer.Checked then
       begin
           edtX.Enabled       := true;
           edtY.Enabled       := True;
           edtDist.Enabled    := true;
           btCapturar.Enabled := true;
           varBoolLike := false;
           SqlStatus := 'CAMPO';
       end
       else
          begin
             edtX.Enabled       := false;
             edtY.Enabled       := false;
             edtDist.Enabled    := false;
             btCapturar.Enabled := false;
             edtX.Clear;
             edtY.Clear;
             edtDist.Clear;
             varBoolLike := false;
             SqlStatus := 'CAMPO';             
          end;

end;

procedure TfrmQuery.btCapturarClick(Sender: TObject);
begin

  frmmenu.VarFrmQueryCapture := True;
  frmmenu.mensagem('Clique no Mapa Aonde Será o Ponto de Origem do Buffer!',mtInformation,[mbok]);
  Hide;

end;

procedure TfrmQuery.bsSkinButton3Click(Sender: TObject);
begin

 OpenDialog1.Execute;
 if trim(OpenDialog1.FileName)='' then exit;
    mmSQL.Lines.LoadFromFile(openDialog1.filename);
 OpenDialog1.InitialDir  := ExtractFilePath(openDialog1.filename);
 SaveDialog1.InitialDir  := ExtractFilePath(openDialog1.filename);

end;

procedure TfrmQuery.bsSkinButton5Click(Sender: TObject);
begin

 SaveDialog1.Execute;
 if trim(SaveDialog1.FileName)='' then exit;
    mmSQL.Lines.SaveToFile(SaveDialog1.filename);
 OpenDialog1.InitialDir  := ExtractFilePath(SaveDialog1.filename);
 SaveDialog1.InitialDir  := ExtractFilePath(SaveDialog1.filename);

 frmmenu.Mensagem('Arquivo SQL Salvo Com Sucesso!',mtInformation,[mbok]);

end;

procedure TfrmQuery.btOPLikeClick(Sender: TObject);
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

end.
