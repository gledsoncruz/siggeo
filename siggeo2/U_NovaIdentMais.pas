unit U_NovaIdentMais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsSkinBoxCtrls, bsSkinCtrls, StdCtrls, Mask,
  RzLabel, RzBorder, ComCtrls, bsSkinTabs, ExtCtrls, DB, MemDS, DBAccess,
  Ora;

type
  TfrmAdicionarNova1N = class(TForm)
    bsBusinessSkinForm2: TbsBusinessSkinForm;
    btConexao: TbsSkinButton;
    pgcConfigurar: TbsSkinPageControl;
    tabServidor: TbsSkinTabSheet;
    RzBorder3: TRzBorder;
    tabCondicao: TbsSkinTabSheet;
    RzBorder4: TRzBorder;
    btConcluir: TbsSkinButton;
    RzLabel9: TRzLabel;
    RzLabel3: TRzLabel;
    edtCampos: TbsSkinEdit;
    bsSkinButton1: TbsSkinButton;
    RzLabel2: TRzLabel;
    cbTabelaJoin: TbsSkinComboBox;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    cbTabelaCampo: TbsSkinComboBox;
    RzLabel7: TRzLabel;
    lblCampoShape: TRzLabel;
    edtServidor: TbsSkinEdit;
    edtPorta: TbsSkinEdit;
    bsSkinStdLabel1: TbsSkinStdLabel;
    edtBanco: TbsSkinEdit;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    edtUsu: TbsSkinEdit;
    edtSenha: TbsSkinPasswordEdit;
    bsSkinStdLabel6: TbsSkinStdLabel;
    RzLabel1: TRzLabel;
    bsSkinButton2: TbsSkinButton;
    OraSession1: TOraSession;
    OraQuery1: TOraQuery;
    Timer1: TTimer;
    procedure bsSkinButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btConcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cbTabelaJoinExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdicionarNova1N: TfrmAdicionarNova1N;

implementation

uses U_Menu, U_ConfigurarMaisInf, U_DMGeo;

{$R *.dfm}

procedure TfrmAdicionarNova1N.bsSkinButton2Click(Sender: TObject);
begin

   if trim(edtServidor.text)='' then
      begin
          frmmenu.mensagem('Informe o Nome de Rede ou o IP do Servidor Oracle!',mtInformation,[mbOk]);
          edtServidor.SetFocus;
          exit;
      end;

   if trim(edtPorta.text)='' then
      begin
          frmmenu.mensagem('Informe o Nº da Porta Servidor Oracle!',mtInformation,[mbOk]);
          edtPorta.SetFocus;
          exit;
      end;

    if trim(edtBanco.text)='' then
      begin
          frmmenu.mensagem('Informe o Nome do Banco do Servidor Oracle!',mtInformation,[mbOk]);
          edtBanco.SetFocus;
          exit;
      end;

   if trim(edtUsu.text)='' then
      begin
          frmmenu.mensagem('Informe o Nome de Usuário!',mtInformation,[mbOk]);
          edtUsu.SetFocus;
          exit;
      end;

   if trim(edtSenha.text)='' then
      begin
          frmmenu.mensagem('Informe a Senha!',mtInformation,[mbOk]);
          edtSenha.SetFocus;
          exit;
      end;

   screen.Cursor := crHourGlass;

   //**** CONECTO NO BANCO
   dmGeo.OracleSession01.Disconnect;
   dmGeo.OracleSession01.ConnectString := edtUsu.Text + '/' + edtSenha.Text + '@' + edtServidor.text + ':' + edtPorta.text + ':' + edtBanco.Text;
   //**********************
   dmgeo.OracleSession01.Connect;

    try
       OraSession1.Disconnect;
       //setor5/mudar123@192.168.10.41:1521:dbgeo
       OraSession1.ConnectString := edtUsu.Text + '/' + edtSenha.Text + '@' + edtServidor.text + ':' + edtPorta.text + ':' + edtBanco.Text;
       OraSession1.Connect;

       cbTabelaJoin.Items.Clear;

       OraSession1.GetTableNames(cbTabelaJoin.Items,true);

    except
       frmmenu.mensagem('Não Foi Possivel Conectar No Servidor! Verifique Suas Configurações e Tente Novamente!',mtError,[mbok]);
       screen.Cursor := crDefault;
       exit;
    end;

    edtServidor.Enabled    := false;
    edtBanco.Enabled       := false;
    edtUsu.enabled         := false;
    edtSenha.Enabled       := false;
    edtPorta.Enabled       := false;
    btConexao.Enabled      := false;

    edtCampos.Enabled      := true;
    cbTabelaJoin.Enabled   := true;
    cbTabelaCampo.Enabled  := true;
    btConcluir.Enabled     := true;

    pgcConfigurar.ActivePageIndex := 1;
    screen.Cursor          := crDefault;

end;

procedure TfrmAdicionarNova1N.Timer1Timer(Sender: TObject);
begin

   timer1.Enabled  := false;
   edtUsu.SetFocus;

end;

procedure TfrmAdicionarNova1N.btConcluirClick(Sender: TObject);
var
i: smallint;
begin

   if trim(edtCampos.Text) = '' then
       edtCampos.text := '*';

   if cbTabelaJoin.ItemIndex = -1 then
      begin
         frmmenu.mensagem('Selecione Uma Tabela!',mtInformation,[mbOk]);
         cbTabelaJoin.Text;
         exit;
      end;

   if cbTabelaCampo.ItemIndex = -1 then
      begin
         frmmenu.mensagem('Selecione Um Campo!',mtInformation,[mbOk]);
         cbTabelaCampo.Text;
         exit;
      end;

    SetLength(frmmenu.varIDENTConexao,length(frmmenu.varIDENTConexao)+1);
    SetLength(frmmenu.varIDENTSQL,length(frmmenu.varIDENTSQL)+1);
    SetLength(frmmenu.varIDENTTabela,length(frmmenu.varIDENTTabela)+1);
    SetLength(frmmenu.varIDENTCampo,length(frmmenu.varIDENTCampo)+1);
    //**********************************
    frmmenu.varIDENTConexao[length(frmmenu.varIDENTConexao)-1]  := edtUsu.Text + '/' + edtSenha.Text + '@' + edtServidor.text + ':' + edtPorta.text + ':' + edtBanco.Text;
    frmmenu.varIDENTSQL[Length(frmmenu.varIDENTSQL)-1]          := 'select '+edtCampos.text +' from '+cbTabelaJoin.text + ' Where '+ cbTabelaCampo.Text +' = ';
    frmmenu.varIDENTTabela[length(frmmenu.varIDENTTabela)-1]    := cbTabelaJoin.text;
    frmmenu.varIDENTCampo[length(frmmenu.varIDENTCampo)-1]      := cbTabelaCampo.Text;

    //atualizar a lista de conexoes do form de join;
    frmConfigIDentificador.ListaConexoes.Items.Clear;
    for i:=0 to length(frmmenu.varIDENTTabela)-1 do
        begin
           frmConfigIDentificador.ListaConexoes.Items.Add('TABELA: '+frmmenu.varIDENTTabela[i]+' - CAMPO: '+frmmenu.varIDENTCampo[i]);
        end;

    close;

end;

procedure TfrmAdicionarNova1N.FormCreate(Sender: TObject);
begin

   pgcConfigurar.ActivePageIndex := 0;

end;

procedure TfrmAdicionarNova1N.FormKeyPress(Sender: TObject; var Key: Char);
begin

   if key=#13 then
      begin
         perform(WM_NEXTDLGCTL,0,0);
         key := #0;
      end;

end;

procedure TfrmAdicionarNova1N.cbTabelaJoinExit(Sender: TObject);
begin

//   if cbTabelaJoin.ItemIndex = -1 then
 //     begin
 //         exit;
 //     end;

{   cbTabelaCampo.Items.Clear;

   dmGeo.OraQuery.Close;
   //dmGeo.OraQuery.
   dmGeo.OraQuery.SQL.Clear;
   dmGeo.OraQuery.sql.Text := 'select * from ' + cbTabelaJoin.Text;
   dmGeo.OraQuery.Active   := true;

   dmGeo.OraQuery.GetFieldNames(cbTabelaCampo.items);
}
   if cbTabelaJoin.ItemIndex <> -1 then
      begin
         OraQuery1.Close;
         OraQuery1.SQL.Clear;
         OraQuery1.SQL.Text   := 'select * from '+cbTabelaJoin.Text;
         OraQuery1.Open;
         cbTabelaCampo.Items.Clear;
         OraQuery1.GetFieldNames(cbTabelaCampo.Items);
      end
   
end;

procedure TfrmAdicionarNova1N.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action             := cafree;
   frmAdicionarNova1N := nil;

end;

end.
