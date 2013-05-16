unit U_ConexaoAnaliseSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsSkinCtrls, bsSkinBoxCtrls, StdCtrls, Mask,
  RzLabel;

type
  TfrmConexaoAnaliseSaida = class(TForm)
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConexaoAnaliseSaida: TfrmConexaoAnaliseSaida;

implementation

uses U_analiseProximidade, U_Menu;

{$R *.dfm}

procedure TfrmConexaoAnaliseSaida.FormKeyPress(Sender: TObject;
  var Key: Char);
begin

   if key=#13 then
      begin
         perform(WM_NEXTDLGCTL,0,0);
         key := #0;
      end;
      
end;

procedure TfrmConexaoAnaliseSaida.bsSkinButton1Click(Sender: TObject);
begin

   close;

end;

procedure TfrmConexaoAnaliseSaida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

    action                 := cafree;
    frmConexaoAnaliseSaida := nil;

end;

procedure TfrmConexaoAnaliseSaida.bsSkinButton2Click(Sender: TObject);
begin

   frmAnaliseProximidade.varBoolTabelaSaida := false;

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
       frmmenu.OraSessionProxAnalise.Disconnect;
       //setor5/mudar123@192.168.10.41:1521:dbgeo
       frmmenu.OraSessionProxAnalise.ConnectString := edtUsu.Text + '/' + edtSenha.Text + '@' + edtServidor.text + ':' + edtPorta.text + ':' + edtBanco.Text;
       frmmenu.OraSessionProxAnalise.Connect;
       frmAnaliseProximidade.varBoolTabelaSaida := true;
       close;

    except
       frmmenu.mensagem('Não Foi Possivel Conectar No Servidor! Verifique Suas Configurações e Tente Novamente!',mtError,[mbok]);
       screen.Cursor := crDefault;
       exit;
    end;

end;

end.
