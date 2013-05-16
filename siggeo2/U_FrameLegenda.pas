unit U_FrameLegenda;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RzLabel;

type
  TfrmFrameLegenda = class(TFrame)
    picCor0: TRzLabel;
    legenda1 : TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses U_Legenda;

{$R *.dfm}

end.
