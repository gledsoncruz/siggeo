program P_Atualiza_Shapes;

uses
  Forms,
  U_Atualizacao_Shapes in 'U_Atualizacao_Shapes.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
