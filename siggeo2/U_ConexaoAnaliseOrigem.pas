unit U_ConexaoAnaliseOrigem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, bsSkinBoxCtrls, StdCtrls, Mask, RzLabel,
  BusinessSkinForm;

type
  TfrmConexaoAnaliseOrigem = class(TForm)
    RzLabel1: TRzLabel;
    edtServidor: TbsSkinEdit;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    edtBanco: TbsSkinEdit;
    bsSkinStdLabel1: TbsSkinStdLabel;
    edtPorta: TbsSkinEdit;
    edtUsu: TbsSkinEdit;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinStdLabel6: TbsSkinStdLabel;
    edtSenha: TbsSkinPasswordEdit;
    bsSkinButton2: TbsSkinButton;
    bsSkinButton1: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure bsSkinButton2Click(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConexaoAnaliseOrigem: TfrmConexaoAnaliseOrigem;

implementation

uses U_Menu, U_analiseProximidade;

{$R *.dfm}

procedure TfrmConexaoAnaliseOrigem.bsSkinButton2Click(Sender: TObject);
begin

   frmAnaliseProximidade.varBoolTabelaEntrada := false;

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

    try
       frmmenu.OraSessionAnaliseProxEnt.Disconnect;
       //setor5/mudar123@192.168.10.41:1521:dbgeo
       frmmenu.OraSessionAnaliseProxEnt.ConnectString := edtUsu.Text + '/' + edtSenha.Text + '@' + edtServidor.text + ':' + edtPorta.text + ':' + edtBanco.Text;
       frmmenu.OraSessionAnaliseProxEnt.Connect;

       frmAnaliseProximidade.cbTabelaEntrada.Items.Clear;
       frmmenu.OraSessionAnaliseProxEnt.GetTableNames(frmAnaliseProximidade.cbTabelaEntrada.Items,true);

       frmAnaliseProximidade.varBoolTabelaEntrada := true;

       close;

    except
       frmmenu.mensagem('Não Foi Possivel Conectar No Servidor! Verifique Suas Configurações e Tente Novamente!',mtError,[mbok]);
       screen.Cursor := crDefault;
       exit;
    end;

end;

procedure TfrmConexaoAnaliseOrigem.bsSkinButton1Click(Sender: TObject);
begin

   close;

end;

procedure TfrmConexaoAnaliseOrigem.FormCreate(Sender: TObject);
begin

// varBoolTabelaEntrada := false

end;

procedure TfrmConexaoAnaliseOrigem.FormKeyPress(Sender: TObject;
  var Key: Char);
begin

   if key=#13 then
      begin
         perform(WM_NEXTDLGCTL,0,0);
         key := #0;
      end;
      
end;

end.
