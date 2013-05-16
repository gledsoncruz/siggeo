unit U_ConfigurarMaisInf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, ComCtrls, bsSkinTabs, BusinessSkinForm,
  bsSkinCtrls, RzBorder, bsSkinBoxCtrls, Mask,MapObjects2_TLB, DB, MemDS,
  DBAccess, Ora;

type
  TfrmConfigIDentificador = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    DataSource1: TDataSource;
    RzBorder5: TRzBorder;
    RzLabel8: TRzLabel;
    RzBorder6: TRzBorder;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzLabel12: TRzLabel;
    lblUsuario: TRzLabel;
    ListaConexoes: TbsSkinListBox;
    btCriarNova: TbsSkinButton;
    cbCamadaMapa: TbsSkinComboBox;
    cbCamposShape: TbsSkinComboBox;
    btConcluir: TbsSkinButton;
    btOk: TbsSkinButton;
    bsBusinessSkinForm2: TbsBusinessSkinForm;
    btRemoverConexao: TbsSkinButton;
    procedure FormCreate(Sender: TObject);
    procedure cbCamadaMapaChange(Sender: TObject);
    procedure btCamadaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
    procedure btCriarNovaClick(Sender: TObject);
    procedure btConcluirClick(Sender: TObject);
    procedure btRemoverConexaoClick(Sender: TObject);
  private
    { Private declarations }
    varTagShape : String;

  public
    { Public declarations }
  end;

var
  frmConfigIDentificador: TfrmConfigIDentificador;

implementation

uses U_Menu, U_NovaIdentMais;

{$R *.dfm}

procedure TfrmConfigIDentificador.FormCreate(Sender: TObject);
var
lyrs      : IMoLayers;
lyr       : IMoMaplayer;
i         : Smallint;
Begin

   lyr   := CoMapLayer.Create;
   lyrs  := frmMenu.map1.Layers;

   cbCamadaMapa.Items.Clear;

   for i:=0 to frmmenu.map1.Layers.Count - 1 do
       begin
           lyr   := imomaplayer(lyrs.item(i));
           //verificando se a layer é do tipo SDE
           cbCamadaMapa.Items.Add(lyr.name);
           //*****
       end;

    //atualizar a lista de conexoes do form de join;
    ListaConexoes.Items.Clear;
    for i:=0 to length(frmmenu.varIDENTTabela)-1 do
        begin
           ListaConexoes.Items.Add('TABELA: '+frmmenu.varIDENTTabela[i]+' - CAMPO: '+frmmenu.varIDENTCampo[i]);
        end;

end;

procedure TfrmConfigIDentificador.cbCamadaMapaChange(Sender: TObject);
var
lyrs        : imolayers;
lyr         : imomaplayer;
recs        : IMoRecordset;
field       : IMoField;
fields      : IMoFields;
t_Desc      : IMoTableDesc;
cont        : Smallint;
begin

  if cbCamadaMapa.ItemIndex <> -1 then
     begin
         cbCamposShape.Items.Clear;

         lyr  := CoMapLayer.Create;
         lyrs := frmmenu.map1.Layers;
         lyr  := imomaplayer(lyrs.item(cbCamadaMapa.ItemIndex));

         varTagShape := lyr.tag;

         recs        := lyr.Records;

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
     end
     else
         cbCamposShape.Items.Clear;

end;

procedure TfrmConfigIDentificador.btCamadaClick(Sender: TObject);
begin

    if cbCamadaMapa.ItemIndex = -1 then
       begin
          frmmenu.mensagem('Selecione Uma Camada!',mtInformation,[mbok]);
          cbCamadaMapa.SetFocus;
          exit;
       end;

    if cbCamposShape.ItemIndex = -1 then
       begin
          frmmenu.mensagem('Selecione O Campo da Camada Que Será Feito o Join!',mtInformation,[mbok]);
          cbCamposShape.SetFocus;
          exit;
       end;

   cbCamadaMapa.Enabled   := false;
   cbCamposShape.Enabled  := false;

end;

procedure TfrmConfigIDentificador.FormKeyPress(Sender: TObject;
  var Key: Char);
begin

    if key=#13 then
       begin
          key := #0;
          perform(WM_NEXTDLGCTL,0,0);
       end;

end;

procedure TfrmConfigIDentificador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action                 := cafree;
   frmConfigIdentificador := nil;

end;

procedure TfrmConfigIDentificador.btOkClick(Sender: TObject);
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

procedure TfrmConfigIDentificador.btCriarNovaClick(Sender: TObject);
begin

  if frmAdicionarNova1N = nil then
     frmAdicionarNova1N := TfrmAdicionarNova1N.create(application);
     frmAdicionarNova1N.lblCampoShape.Caption := cbCamadaMapa.Text +'.'+cbCamposShape.text;
  frmAdicionarNova1N.showmodal;

end;

procedure TfrmConfigIDentificador.btConcluirClick(Sender: TObject);
begin

 //*******************
  SetLength(frmmenu.varVetIDentTagLayer,length(frmmenu.varVetIDentTagLayer)+1);
  frmmenu.varVetIDentTagLayer[length(frmmenu.varVetIDentTagLayer)-1]                   := varTagShape;

  //********************
  SetLength(frmmenu.varVetIDentOraSession,length(frmmenu.varVetIDentOraSession)+1);
  frmmenu.varVetIDentOraSession[length(frmmenu.varVetIDentOraSession)-1]               := TOraSession.Create(application);
  frmmenu.varVetIDentOraSession[length(frmmenu.varVetIDentOraSession)-1].ConnectPrompt := false;
  //frmmenu.varVetIDentOraSession[length(frmmenu.varVetIDentOraSession)-1].Name          := 'OraISession'+formatFloat('00',length(frmmenu.varVetIDentOraSession));
  frmmenu.varVetIDentOraSession[length(frmmenu.varVetIDentOraSession)-1].ConnectString := frmmenu.varIDENTConexao[ListaConexoes.ItemIndex];
  frmmenu.varVetIDentOraSession[length(frmmenu.varVetIDentOraSession)-1].Connect;

  //********************
  SetLength(frmmenu.varVetIDentOraQuery,length(frmmenu.varVetIDentOraQuery)+1);
  frmmenu.varVetIDentOraQuery[length(frmmenu.varVetIDentOraQuery)-1]                   := TOraQuery.Create(application);
  frmmenu.varVetIDentOraQuery[length(frmmenu.varVetIDentOraQuery)-1].Close;
  frmmenu.varVetIDentOraQuery[length(frmmenu.varVetIDentOraQuery)-1].Session           := frmmenu.varVetIDentOraSession[length(frmmenu.varVetIDentOraSession)-1];

  //****************
  SetLength(frmmenu.varVetIDentLayerCampo,length(frmmenu.varVetIDentLayerCampo)+1);
  frmmenu.varVetIDentLayerCampo[length(frmmenu.varVetIDentLayerCampo)-1]               := cbCamposShape.Text;

  //****************
  SetLength(frmmenu.varVetIDentSQL,length(frmmenu.varVetIDentSQL)+1);
  frmmenu.varVetIDentSQL[length(frmmenu.varVetIDentSQL)-1]                             := frmmenu.varIDENTSQL[ListaConexoes.ItemIndex];
  //***************************************************************************************************************

  frmmenu.Mensagem('Configuração Concluida!',mtInformation,[mbOk]);

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

procedure TfrmConfigIDentificador.btRemoverConexaoClick(Sender: TObject);
var
Conexao   : array of String;
SQL       : array of String;
Tabela    : array of String;
Campo     : array of String;
i         : smallint;
begin

    if ListaConexoes.ItemIndex = -1 then exit;
    //*********************
    for i:=0 to length(frmmenu.varIDENTConexao)-1 do
        begin
            if i <> ListaConexoes.ItemIndex then
               begin
                  if trim(frmmenu.varIDENTConexao[i])<> '' then
                     begin
                          SetLength(Conexao,length(Conexao)+1);
                          SetLength(SQL,length(SQL)+1);
                          SetLength(Tabela,length(Tabela)+1);
                          SetLength(Campo,length(Campo)+1);
                          //******************
                          Conexao[length(Conexao)-1]   := frmmenu.varIDENTConexao[i];
                          SQL[length(SQL)-1]           := frmmenu.varIDENTSQL[i];
                          Tabela[length(Tabela)-1]     := frmmenu.varIDENTTabela[i];
                          Campo[length(Campo)-1]       := frmmenu.varIDENTCampo[i];
                     end;
               end;
        end;
    //***********************
    SetLength(frmmenu.varIDENTConexao,0);
    SetLength(frmmenu.varIDENTSQL,0);
    SetLength(frmmenu.varIDENTTabela,0);
    SetLength(frmmenu.varIDENTCampo,0);
    //************************
    //************************
    for i:=0 to length(Conexao)-1 do
        begin
            SetLength(frmmenu.varIDENTConexao,length(frmmenu.varIDENTConexao)+1);
            SetLength(frmmenu.varIDENTSQL,length(frmmenu.varIDENTSQL)+1);
            SetLength(frmmenu.varIDENTTabela,Length(frmmenu.varIDENTTabela)+1);
            SetLength(frmmenu.varIDENTCampo,Length(frmmenu.varIDENTCampo)+1);
            //************************************************
            frmmenu.varIDENTConexao[i]  := Conexao[i];
            frmmenu.varIDENTSQL[i]      := SQL[i];
            frmmenu.varIDENTTabela[i]   := Tabela[i];
            frmmenu.varIDENTCampo[i]    := Campo[i];
        end;
    //*************************************
    //atualizar a lista de conexoes do form de join;
    ListaConexoes.Items.Clear;
    for i:=0 to length(frmmenu.varIDENTTabela)-1 do
        begin
           ListaConexoes.Items.Add('TABELA: '+frmmenu.varIDENTTabela[i]+' - CAMPO: '+frmmenu.varIDENTCampo[i]);
        end;

end;

end.
