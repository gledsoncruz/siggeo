unit U_ConfBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsSkinCtrls, bsSkinBoxCtrls, StdCtrls, Mask;

type
  TfrmConfBancoJoin = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinStdLabel6: TbsSkinStdLabel;
    edtBanco: TbsSkinEdit;
    edtSenha: TbsSkinPasswordEdit;
    edtUsu: TbsSkinEdit;
    btConectar: TbsSkinButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btConectarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfBancoJoin: TfrmConfBancoJoin;

implementation

uses U_Menu, U_DMGeo, U_Join;

{$R *.dfm}

procedure TfrmConfBancoJoin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

    action           := cafree;
    frmConfBancoJoin := nil;

end;

procedure TfrmConfBancoJoin.btConectarClick(Sender: TObject);
begin

   //**** CONECTO NO BANCO
   dmGeo.OracleSession01.Disconnect;
   dmGeo.OracleSession01.ConnectString := edtUsu.text + '/' + edtSenha.text + '@'+ edtBanco.text;

   dmgeo.OracleSession01.Connect;

   if dmGeo.OracleSession01.Connected then
      begin
          frmJoin.varUsuarioBanco  := edtUsu.text;
          frmJoin.varSenhaBanco    := edtSenha.text;
          //
          dmGeo.OracleSession01.GetTableNames(frmJoin.cbTabelasJoin.items,true);
          frmConfBancoJoin.close;
      end
   else
      frmmenu.mensagem('Não Foi Possível Conectar No Servidor de Banco de Dados! Verifique Sua Configuração e Tente Novamente!',mtError,[mbok]);

end;

procedure TfrmConfBancoJoin.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if key = #13 then
     begin
        perform(WM_NEXTDLGCTL,0,0);
        key := #0;
     end;

end;

end.
