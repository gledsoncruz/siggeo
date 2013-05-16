unit U_NovoJoin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinBoxCtrls, bsSkinCtrls, StdCtrls, RzLabel, RzBorder,
  ComCtrls, bsSkinTabs, Mask, BusinessSkinForm, ExtCtrls;

type
  TfrmNovoJoin = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    edtSenha: TbsSkinPasswordEdit;
    bsSkinStdLabel6: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    edtUsu: TbsSkinEdit;
    edtBanco: TbsSkinEdit;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinTabSheet2: TbsSkinTabSheet;
    bsSkinButton1: TbsSkinButton;
    RzLabel5: TRzLabel;
    cbCamposTabela: TbsSkinComboBox;
    btConcluir: TbsSkinButton;
    cbTabelasJoin: TbsSkinComboBox;
    RzLabel1: TRzLabel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    edtBancoSDE: TbsSkinEdit;
    bsSkinStdLabel2: TbsSkinStdLabel;
    edtServico: TbsSkinEdit;
    edtSDE: TbsSkinEdit;
    bsSkinStdLabel4: TbsSkinStdLabel;
    Timer1: TTimer;
    procedure bsSkinButton1Click(Sender: TObject);
    procedure cbTabelasJoinExit(Sender: TObject);
    procedure btConcluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNovoJoin: TfrmNovoJoin;

implementation

uses U_DMGeo, U_Join, U_Menu;

{$R *.dfm}

procedure TfrmNovoJoin.bsSkinButton1Click(Sender: TObject);
begin

   if trim(edtSDE.text) = '' then
      begin
          frmmenu.mensagem('Informe o Servidor SDE!',mtInformation,[mbOk]);
          exit;
      end;

   if trim(edtBanco.text) = '' then
      begin
          frmmenu.mensagem('Informe o Banco Oracle!',mtInformation,[mbOk]);
          exit;
      end;

   if trim(edtBancoSDE.text) = '' then
      begin
          frmmenu.mensagem('Informe o Banco SDE!',mtInformation,[mbOk]);
          exit;
      end;

   if trim(edtServico.text) = '' then
      begin
          frmmenu.mensagem('Informe o Serviço SDE!',mtInformation,[mbOk]);
          exit;
      end;

   if trim(edtUsu.text) = '' then
      begin
          frmmenu.mensagem('Informe o Usuário!',mtInformation,[mbOk]);
          exit;
      end;

   if trim(edtSenha.text) = '' then
      begin
          frmmenu.mensagem('Informe a Senha!',mtInformation,[mbOk]);
          exit;
      end;
   //*************************
    try 
   //**** CONECTO NO BANCO
   dmGeo.OracleSession01.Disconnect;
   dmGeo.OracleSession01.ConnectString := edtUsu.text + '/' + edtSenha.text + '@'+ edtBanco.text;
   //**********************
   dmgeo.OracleSession01.Connect;
    except
     frmmenu.mensagem('Não Foi Possível Conectar No Servidor de Banco de Dados! Verifique Sua Configuração e Tente Novamente!',mtError,[mbok]);
     exit;
    end;

   if dmGeo.OracleSession01.Connected then
      begin
          //frmJoin.varUsuarioBanco  := edtUsu.text;
          //frmJoin.varSenhaBanco    := edtSenha.text;
          dmGeo.OracleSession01.GetTableNames(cbTabelasJoin.items,true);
          cbTabelasJoin.Enabled  := true;
          cbCamposTabela.enabled := true;
          btConcluir.Enabled     := true;
          bsSkinPageControl1.ActivePageIndex := 1;

      end
   else
      frmmenu.mensagem('Não Foi Possível Conectar No Servidor de Banco de Dados! Verifique Sua Configuração e Tente Novamente!',mtError,[mbok]);

end;

procedure TfrmNovoJoin.cbTabelasJoinExit(Sender: TObject);
begin

   if cbTabelasJoin.ItemIndex = -1 then
      begin
          exit;
      end;

   cbCamposTabela.Items.Clear;

   dmGeo.OraQuery.Close;
   dmGeo.OraQuery.SQL.Clear;
   dmGeo.OraQuery.sql.Text := 'select * from '+cbTabelasJoin.Text;
   dmGeo.OraQuery.Active   := true;

   dmGeo.OraQuery.GetFieldNames(cbCamposTabela.items);

end;

procedure TfrmNovoJoin.btConcluirClick(Sender: TObject);
var
i   : smallint;
begin

    if trim(cbTabelasJoin.Text)='' then
       begin
          frmmenu.mensagem('Informe Uma Tabela!',mtInformation,[mbOk]);
          exit;
       end;

    if trim(cbCamposTabela.Text)='' then
       begin
          frmmenu.mensagem('Informe Um Campo da Tabela!',mtInformation,[mbOk]);
          exit;
       end;

    SetLength(frmmenu.varVetListaCampo,length(frmmenu.varVetListaCampo)+1);
    SetLength(frmmenu.varVetListaTabela,length(frmmenu.varVetListaTabela)+1);
    SetLength(frmmenu.varVetListaUsuario,Length(frmmenu.varVetListaUsuario)+1);
    SetLength(frmmenu.varVetListaSenha,Length(frmmenu.varVetListaSenha)+1);
    SetLength(frmmenu.varVetListaServidor,Length(frmmenu.varVetListaServidor)+1);
    SetLength(frmmenu.varVetListaServico,Length(frmmenu.varVetListaServico)+1);
    SetLength(frmmenu.varVetListaBanco,Length(frmmenu.varVetListaBanco)+1);
    //**********************************
    frmmenu.varVetListaCampo[length(frmmenu.varVetListaCampo)-1]       := cbCamposTabela.text;
    frmmenu.varVetListaTabela[length(frmmenu.varVetListaTabela)-1]     := cbTabelasJoin.Text;
    frmmenu.varVetListaUsuario[Length(frmmenu.varVetListaUsuario)-1]   := edtUsu.text;
    frmmenu.varVetListaSenha[Length(frmmenu.varVetListaSenha)-1]       := edtSenha.Text;
    frmmenu.varVetListaServidor[Length(frmmenu.varVetListaServidor)-1] := edtSDE.text;
    frmmenu.varVetListaServico[Length(frmmenu.varVetListaServico)-1]   := edtServico.text;
    frmmenu.varVetListaBanco[Length(frmmenu.varVetListaBanco)-1]       := edtBancoSDE.Text;

    //atualizar a lista de conexoes do form de join;
    frmJoin.ListaConexoes.Items.Clear;
    for i:=0 to length(frmmenu.varVetListaServidor)-1 do
        begin
           frmJoin.ListaConexoes.Items.Add('TABELA: '+frmmenu.varVetListaTabela[i]+' - CAMPO: '+frmmenu.varVetListaCampo[i]);
        end;

    close;

end;

procedure TfrmNovoJoin.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
     begin
        Perform(WM_NEXTDLGCTL,0,0);
        key := #0;
     end;   

end;

procedure TfrmNovoJoin.Timer1Timer(Sender: TObject);
begin

    timer1.enabled := false;
    edtUsu.SetFocus;

end;

procedure TfrmNovoJoin.FormCreate(Sender: TObject);
var
i : integer;
begin

   frmMenu.LerArquivoIni;
   
   //PROCURO A CHAVE [SDE]
    for i:=0 to frmMenu.leituraIni.Count -1 do
     if frmMenu.leituraIni.Strings[i] = '[SDE]' then
      begin
       frmMenu.varSDEServidor := frmMenu.leituraIni.Strings[i+1];
       frmMenu.varSDEBanco := frmMenu.leituraIni.Strings[i+2];
       frmMenu.varSDEservico := frmMenu.leituraIni.Strings[i+3];
      end;
       i := i + 1;

       edtSDE.Text      := frmMenu.varSDEServidor;
       edtBanco.Text    := frmMenu.varSDEServidor+':'+'1521'+':'+frmMenu.varSDEBanco;
       edtBancoSDE.Text := frmMenu.varSDEBanco;
       edtServico.Text  := frmMenu.varSDEservico;
       bsSkinPageControl1.ActivePageIndex := 0;

end;

procedure TfrmNovoJoin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

    action       := cafree;
    frmNovoJoin  := nil;

end;

end.
