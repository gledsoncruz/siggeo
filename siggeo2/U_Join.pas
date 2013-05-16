unit U_Join;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MapObjects2_TLB,StdCtrls, bsSkinBoxCtrls, bsSkinCtrls, RzLabel,
  BusinessSkinForm, RzBorder, ComCtrls, bsSkinTabs;

type
  TfrmJoin = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    RzLabel7: TRzLabel;
    RzBorder4: TRzBorder;
    RzBorder5: TRzBorder;
    ListaConexoes: TbsSkinListBox;
    RzLabel1: TRzLabel;
    btCriarNova: TbsSkinButton;
    cbCamadaMapa: TbsSkinComboBox;
    RzLabel2: TRzLabel;
    cbCamposShape: TbsSkinComboBox;
    RzBorder6: TRzBorder;
    btConcluir: TbsSkinButton;
    RzLabel9: TRzLabel;
    btOk: TbsSkinButton;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    lblServidor: TRzLabel;
    lblBanco: TRzLabel;
    lblUsuario: TRzLabel;
    btRemoverConexao: TbsSkinButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    function wright(wtexto:string;quant:integer):string;
    procedure cbCamadaMapaChange(Sender: TObject);
    procedure btCriarNovaClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btConcluirClick(Sender: TObject);
    procedure ListaConexoesClick(Sender: TObject);
    procedure btRemoverConexaoClick(Sender: TObject);
  private
    { Private declarations }
    varVetIndexLegenda : Array of Word;

  public
    { Public declarations }
 //   varUsuarioBanco   : String;
 //   varSenhaBanco     : String;
  end;

var
  frmJoin: TfrmJoin;

implementation

uses U_Menu, U_DMGeo, U_NovoJoin;

{$R *.dfm}

procedure TfrmJoin.FormClose(Sender: TObject; var Action: TCloseAction);
begin

    action         := cafree;
    frmJoin        := nil;

end;

function TfrmJoin.wright(wtexto:string;quant:integer):string;
begin
    result := copy(wtexto,((length(wtexto) - quant)+1),quant);
//   ex: wcopy := wright(wtexto,3); - copia as 3 ultimas
end;

procedure TfrmJoin.FormCreate(Sender: TObject);
var
lyrs        : imolayers;
lyr         : imomaplayer;
i           : Smallint;
ext         : String;
tmp         : String;
tmpString   : String;
posSdeTexto : Smallint;
tmpStrSDE   : String;
Begin

    //atualizar a lista de conexoes do form de join;
    ListaConexoes.Items.Clear;

    if length(frmmenu.varVetListaServidor)>0 then
       begin
          for i:=0 to length(frmmenu.varVetListaServidor)-1 do
              begin
                 ListaConexoes.Items.Add('TABELA: '+frmmenu.varVetListaTabela[i]+' - CAMPO: '+frmmenu.varVetListaCampo[i]);
              end;
       end;

   lyr   := CoMapLayer.Create;
   lyrs  := frmMenu.map1.Layers;

   cbCamadaMapa.Items.Clear;

   for i:=0 to frmmenu.map1.Layers.Count - 1 do
       begin
           lyr         := imomaplayer(lyrs.item(i));
           //verificando se a layer é do tipo SDE
           ext         := lyr.tag;
           tmp         := upperCase(wright(ext,3));
           tmpString   := upperCase(wright(ext,4));
           posSdeTexto := Pos('|',ext);
           tmpStrSDE   := copy(ext,posSdeTexto+1,3);

           //o shape foi adicionado foi adicionado via SDE
           if (tmpStrSDE = 'SDE') or (tmpStrSDE = 'DIC') then
             begin
               cbCamadaMapa.Items.Add(lyr.name);
               SetLength(varVetIndexLegenda,Length(varVetIndexLegenda)+1);
               varVetIndexLegenda[Length(varVetIndexLegenda)-1] := i;
             end;
           //*********************************************
       end;

end;

procedure TfrmJoin.cbCamadaMapaChange(Sender: TObject);
var
lyrs        : imolayers;
lyr         : imomaplayer;
recs        : IMoRecordset;
field       : IMoField;
fields      : IMoFields;
t_Desc      : IMoTableDesc;
cont        : Smallint;
begin

   if trim(cbcamadaMapa.text)='' then exit;

   lyr  := CoMapLayer.Create;
   lyrs := frmmenu.map1.Layers;
   lyr  := imomaplayer(lyrs.item(varVetIndexLegenda[cbCamadaMapa.ItemIndex]));

   recs := lyr.Records;

   cbCamposShape.Items.Clear;

   //Carrego os dados encontrados
   If not recs.EOF then
      begin
         t_Desc := CoTableDesc.Create;
         t_Desc := recs.TableDesc;
         fields := recs.Fields;
         //CARREGA OS CAMPOS DOS SHAPES
         for cont := 0 to t_desc.FieldCount-1 do
             begin
                field := fields.Item(t_desc.FieldName[cont]);
                cbCamposShape.Items.Add(field.Name);
             end;
      end;

end;

procedure TfrmJoin.btCriarNovaClick(Sender: TObject);
begin

   if frmNovoJoin = nil then
      frmNovoJoin := TfrmNovoJoin.create(application);
   frmNovoJoin.Showmodal;   


end;

procedure TfrmJoin.btOkClick(Sender: TObject);
begin

   if trim(cbCamadaMapa.Text)='' then
      begin
         frmmenu.mensagem('Selecione Uma Camada!',mtInformation,[mbOk]);
         exit;
      end;

   if trim(cbCamposShape.Text)='' then
      begin
         frmmenu.mensagem('Selecione Um Campo!',mtInformation,[mbOk]);
         exit;
      end;

   cbCamadaMapa.Enabled     := false;
   cbCamposShape.enabled    := false;

   ListaConexoes.enabled    := true;
   btCriarNova.Enabled      := true;
   btConcluir.enabled       := true;
   btRemoverConexao.enabled := true;
   //******************************
   btOk.enabled             := false;

end;

procedure TfrmJoin.btConcluirClick(Sender: TObject);
var
toField       : String;
fromField     : String;
varTrue       : WordBool;
//***
lyrs          : imolayers;
lyr           : imomaplayer;
varNome       : String;
varPos01      : Smallint;
varTam        : Smallint;
varTempSTR01  : String;
DonoTabela    : String;
relTable      : IMoTable;
begin

   if ListaConexoes.ItemIndex = -1 then
      begin
         frmmenu.Mensagem('Selecione Uma Conexão na Lista de Conexões Para Efetuar o Join!',mtInformation,[mbOk]);
         exit;
      end;

   Screen.Cursor := crHourGlass;

   //******************************
   lyr                     := CoMapLayer.Create;
   lyrs                    := frmmenu.map1.Layers;
   lyr                     := IMoMaplayer(lyrs.item(varVetIndexLegenda[cbCamadaMapa.ItemIndex]));

   //****************************************************
   //****************************************************
   varNome                 := lyr.tag;
   varPos01                := Pos('.',VarNome);
   varTam                  := length(VarNome);
   varTempSTR01            := copy(VarNome,1,varpos01-1);
   DonoTabela              := varTempSTR01;
   //***
   varTempSTR01            := copy(varNome,varpos01+1,vartam-(Length(DonoTabela)-1));
   varPos01                := Pos('.',varTempSTR01);
   varTempSTR01            := copy(varTempSTR01,1,varpos01-1);
   //****************************************************
   //****************************************************

   toField     := DonoTabela + '.' + VarTempSTR01 + '.' + cbCamposShape.text;

   //*******************************************************************************
   //*******************************************************************************

 	 fromField   := frmmenu.varVetListaTabela[ListaConexoes.itemindex] + '.' + frmmenu.varVetListaCampo[ListaConexoes.itemindex];

   //*******************************************************************************
   relTable := CoTable.Create;
 	 //Set a Table to relate FROM
   With relTable do
     begin
     		Server   := 'sde90:'+frmmenu.varVetListaServidor[ListaConexoes.itemindex];
		    Database := 'instance='+frmmenu.varVetListaServico[ListaConexoes.itemindex]+';database='+frmmenu.varVetListaBanco[ListaConexoes.itemindex];
		    User     := frmmenu.varVetListaUsuario[ListaConexoes.itemindex];
		    Password := frmmenu.varVetListaSenha[ListaConexoes.itemindex];
		    Name     := frmmenu.varVetListaTabela[ListaConexoes.itemindex];
     END;

   varTrue   := true;

   If Not lyr.AddRelate(toField, relTable,fromfield,vartrue) Then
        begin
            varTrue := false;
            if Not lyr.AddRelate(toField, relTable,fromfield,vartrue) then //fromfield
               begin
                  frmMenu.mensagem('Ocorreu Um Erro Ao Realizar o Join!',mtError,[mbOk]);
                  Screen.Cursor := crDefault;
                  close;
               end
               else
                  begin
                      //SALVO A CONFIGURAÇÃO DO JOIN!!
                      SetLength(frmmenu.varVetJoinTagLayer,length(frmmenu.varVetJoinTagLayer)+1);
                      SetLength(frmmenu.varVetJoinTOFIELD,Length(frmmenu.varVetJoinTOFIELD)+1);
                      SetLength(frmmenu.varVetJoinFROMFIELD,Length(frmmenu.varVetJoinFROMFIELD)+1);
                      SetLength(frmmenu.varVetJoinTabela,length(frmmenu.varVetJoinTabela)+1);
                      SetLength(frmmenu.varVetJoinUsuario,Length(frmmenu.varVetJoinUsuario)+1);
                      SetLength(frmmenu.varVetJoinSenha,length(frmmenu.varVetJoinSenha)+1);
                      SetLength(frmmenu.varVetJoinServidor,Length(frmmenu.varVetJoinServidor)+1);
                      SetLength(frmmenu.varVetJoinServico,Length(frmmenu.varVetJoinServico)+1);
                      SetLength(frmmenu.varVetJoinBanco,Length(frmmenu.varVetJoinBanco)+1);
                      //********************************
                      frmmenu.varVetJoinTagLayer[length(frmmenu.varVetJoinTagLayer)-1]    := lyr.tag;
                      frmmenu.varVetJoinTOFIELD[length(frmmenu.varVetJoinTOFIELD)-1]      := ToField;
                      frmmenu.varVetJoinFROMFIELD[length(frmmenu.varVetJoinFROMFIELD)-1]  := FromField;
                      frmmenu.varVetJoinTabela[length(frmmenu.varVetJoinTabela)-1]        := frmmenu.varVetListaTabela[ListaConexoes.itemindex];
                      frmmenu.varVetJoinUsuario[length(frmmenu.varVetJoinUsuario)-1]      := frmmenu.varVetListaUsuario[ListaConexoes.itemindex];
                      frmmenu.varVetJoinSenha[length(frmmenu.varVetJoinSenha)-1]          := frmmenu.varVetListaSenha[ListaConexoes.itemindex];
                      frmmenu.varVetJoinServidor[length(frmmenu.varVetJoinServidor)-1]    := frmmenu.varVetListaServidor[ListaConexoes.itemindex];
                      frmmenu.varVetJoinServico[length(frmmenu.varVetJoinServico)-1]      := frmmenu.varVetListaServico[ListaConexoes.itemindex];
                      frmmenu.varVetJoinBanco[length(frmmenu.varVetJoinBanco)-1]          := frmmenu.varVetListaBanco[ListaConexoes.itemindex];
                      //********************************
                      frmmenu.Mensagem('Join Realizado Com Sucesso!',mtInformation,[mbOk]);
                      Screen.Cursor := crDefault;
                      close;
                  end;
        end
   else
     begin
          //SALVO A CONFIGURAÇÃO DO JOIN!!
          SetLength(frmmenu.varVetJoinTagLayer,length(frmmenu.varVetJoinTagLayer)+1);
          SetLength(frmmenu.varVetJoinTOFIELD,Length(frmmenu.varVetJoinTOFIELD)+1);
          SetLength(frmmenu.varVetJoinFROMFIELD,Length(frmmenu.varVetJoinFROMFIELD)+1);
          SetLength(frmmenu.varVetJoinTabela,length(frmmenu.varVetJoinTabela)+1);
          SetLength(frmmenu.varVetJoinUsuario,Length(frmmenu.varVetJoinUsuario)+1);
          SetLength(frmmenu.varVetJoinSenha,length(frmmenu.varVetJoinSenha)+1);
          SetLength(frmmenu.varVetJoinServidor,Length(frmmenu.varVetJoinServidor)+1);
          SetLength(frmmenu.varVetJoinServico,Length(frmmenu.varVetJoinServico)+1);
          SetLength(frmmenu.varVetJoinBanco,Length(frmmenu.varVetJoinBanco)+1);
          //********************************
          frmmenu.varVetJoinTagLayer[length(frmmenu.varVetJoinTagLayer)-1]    := lyr.tag;
          frmmenu.varVetJoinTOFIELD[length(frmmenu.varVetJoinTOFIELD)-1]      := ToField;
          frmmenu.varVetJoinFROMFIELD[length(frmmenu.varVetJoinFROMFIELD)-1]  := FromField;
          frmmenu.varVetJoinTabela[length(frmmenu.varVetJoinTabela)-1]        := frmmenu.varVetListaTabela[ListaConexoes.itemindex];
          frmmenu.varVetJoinUsuario[length(frmmenu.varVetJoinUsuario)-1]      := frmmenu.varVetListaUsuario[ListaConexoes.itemindex];
          frmmenu.varVetJoinSenha[length(frmmenu.varVetJoinSenha)-1]          := frmmenu.varVetListaSenha[ListaConexoes.itemindex];
          frmmenu.varVetJoinServidor[length(frmmenu.varVetJoinServidor)-1]    := frmmenu.varVetListaServidor[ListaConexoes.itemindex];
          frmmenu.varVetJoinServico[length(frmmenu.varVetJoinServico)-1]      := frmmenu.varVetListaServico[ListaConexoes.itemindex];
          frmmenu.varVetJoinBanco[length(frmmenu.varVetJoinBanco)-1]          := frmmenu.varVetListaBanco[ListaConexoes.itemindex];
          //********************************
          frmmenu.Mensagem('Join Realizado Com Sucesso!',mtInformation,[mbOk]);
          Screen.Cursor := crDefault;
          //******
          btRemoverConexao.Enabled  := false;
          ListaConexoes.enabled     := false;
          btConcluir.Enabled        := false;
          btCriarNova.Enabled       := false;
          btOk.Enabled              := true;
          cbCamadaMapa.Enabled      := true;
          cbCamposShape.Enabled     := true;
          cbCamadaMapa.ItemIndex    := -1;
          cbCamposShape.ItemIndex   := -1;
          //*******
     end;

end;

procedure TfrmJoin.ListaConexoesClick(Sender: TObject);
begin

    if ListaConexoes.ItemIndex <> -1 then
       begin
          lblServidor.Caption := frmmenu.varVetListaServidor[ListaConexoes.ItemIndex];
          lblBanco.caption    := frmmenu.varVetListaBanco[ListaConexoes.ItemIndex];
          lblUsuario.caption  := frmmenu.varVetListaUsuario[ListaConexoes.ItemIndex];
       end
       else
         begin
            lblServidor.Caption := '';
            lblBanco.caption    := '';
            lblUsuario.caption  := '';
         end;

end;

procedure TfrmJoin.btRemoverConexaoClick(Sender: TObject);
var
ListaCampo    : array of String;
ListaTabela   : array of String;
ListaUsuario  : array of String;
ListaSenha    : array of String;
ListaServidor : array of String;
ListaServico  : array of String;
ListaBanco    : array of String;
i             : smallint;
begin

    if ListaConexoes.ItemIndex = -1 then exit;
    //*********************
    for i:=0 to length(frmmenu.varVetListaServidor)-1 do
        begin
            if i <> ListaConexoes.ItemIndex then
               begin
                  if trim(frmmenu.varVetListaServidor[i])<> '' then
                     begin
                          SetLength(ListaCampo,length(ListaCampo)+1);
                          SetLength(ListaTabela,length(ListaTabela)+1);
                          SetLength(ListaUsuario,length(ListaUsuario)+1);
                          SetLength(ListaSenha,length(ListaSenha)+1);
                          SetLength(ListaServidor,length(ListaServidor)+1);
                          SetLength(ListaServico,length(ListaServico)+1);
                          SetLength(ListaBanco,length(ListaBanco)+1);
                          //******************
                          ListaCampo[length(ListaCampo)-1]       := frmmenu.varVetListaCampo[i];
                          ListaTabela[length(ListaTabela)-1]     := frmmenu.varVetListaTabela[i];
                          ListaUsuario[length(ListaUsuario)-1]   := frmmenu.varVetListaUsuario[i];
                          ListaSenha[length(ListaSenha)-1]       := frmmenu.varVetListaSenha[i];
                          ListaServidor[length(ListaServidor)-1] := frmmenu.varVetListaServidor[i];
                          ListaServico[length(ListaServico)-1]   := frmmenu.varVetListaServico[i];
                          ListaBanco[length(ListaBanco)-1]       := frmmenu.varVetListaBanco[i];
                     end;
               end;
        end;
    //***********************
    SetLength(frmmenu.varVetListaCampo,0);
    SetLength(frmmenu.varVetListaTabela,0);
    SetLength(frmmenu.varVetListaUsuario,0);
    SetLength(frmmenu.varVetListaSenha,0);
    SetLength(frmmenu.varVetListaServidor,0);
    SetLength(frmmenu.varVetListaServico,0);
    SetLength(frmmenu.varVetListaBanco,0);
    //************************
    //************************
    for i:=0 to length(ListaServidor)-1 do
        begin
            SetLength(frmmenu.varVetListaCampo,length(frmmenu.varVetListaCampo)+1);
            SetLength(frmmenu.varVetListaTabela,length(frmmenu.varVetListaTabela)+1);
            SetLength(frmmenu.varVetListaUsuario,Length(frmmenu.varVetListaUsuario)+1);
            SetLength(frmmenu.varVetListaSenha,Length(frmmenu.varVetListaSenha)+1);
            SetLength(frmmenu.varVetListaServidor,Length(frmmenu.varVetListaServidor)+1);
            SetLength(frmmenu.varVetListaServico,Length(frmmenu.varVetListaServico)+1);
            SetLength(frmmenu.varVetListaBanco,Length(frmmenu.varVetListaBanco)+1);
            //************************************************
            frmmenu.varVetListaCampo[i]    := ListaCampo[i];
            frmmenu.varVetListaTabela[i]   := ListaTabela[i];
            frmmenu.varVetListaUsuario[i]  := ListaUsuario[i];
            frmmenu.varVetListaSenha[i]    := ListaSenha[i];
            frmmenu.varVetListaServidor[i] := ListaServidor[i];
            frmmenu.varVetListaServico[i]  := ListaServico[i];
            frmmenu.varVetListaBanco[i]    := ListaBanco[i];
        end;

    //*************************************
    //atualizar a lista de conexoes do form de join;
    ListaConexoes.Items.Clear;
    //*************************************
    if length(frmmenu.varVetListaServidor)>0 then
       begin
          for i:=0 to length(frmmenu.varVetListaServidor)-1 do
              begin
                 ListaConexoes.Items.Add('TABELA: '+frmmenu.varVetListaTabela[i]+' - CAMPO: '+frmmenu.varVetListaCampo[i]);
              end;
       end;
    //*********************************************

end;

end.








