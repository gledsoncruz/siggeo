unit U_LoginProj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, StdCtrls, bsSkinBoxCtrls, Mask, BusinessSkinForm;

type
  TfrmLoginProj = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    edtLogin: TbsSkinEdit;
    edtSenha: TbsSkinPasswordEdit;
    bsSkinStdLabel6: TbsSkinStdLabel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    btOk: TbsSkinButton;
    btCancelar: TbsSkinButton;
    procedure btOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ContLogin : smallint;
  public
    { Public declarations }
  end;

var
  frmLoginProj: TfrmLoginProj;

implementation

uses U_Menu, U_ConfigProj;

{$R *.dfm}

procedure TfrmLoginProj.btOkClick(Sender: TObject);
begin

    if trim(edtLogin.text)='' then
       begin
           frmmenu.mensagem('Informe o Login!',mtInformation,[mbOk]);
           edtLogin.SetFocus;
           exit;
       end;

    if trim(edtSenha.text)='' then
       begin
          frmmenu.mensagem('Informe a Senha!', mtInformation,[mbOk]);
          edtSenha.setfocus;
          exit;
       end;

    if (trim(edtLogin.text)<>frmmenu.varNomeUsuproj) and (trim(edtSenha.Text)<>frmmenu.varSenhaUsuproj) then
       begin
          frmmenu.Mensagem('Login e/ou Senha Não Conferem!',mtError,[mbok]);
          inc(contLogin);
          if ContLogin > 3 then close;
       end
       else
          begin
             frmConfigProj := TfrmConfigProj.Create(application);
             frmConfigProj.FormStyle := fsStayOnTop;
             frmConfigProj.Show;
             close;             
          end;

end;

procedure TfrmLoginProj.FormCreate(Sender: TObject);
begin

    ContLogin := 0;

end;

end.
