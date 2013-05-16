program Atualiza_Sistema;

uses
  Forms,
  U_Atualizacao_Sistema in 'U_Atualizacao_Sistema.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
