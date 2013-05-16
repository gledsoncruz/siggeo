unit U_Splash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, RzBorder, RzBckgnd, RzLabel, RzPanel, StdCtrls, ExtCtrls, jpeg;

type
  TfrmSplash = class(TForm)
    RzPanel1: TRzPanel;
    RzLabel4: TRzLabel;
    RzBackground1: TRzBackground;
    RzLabel1: TRzLabel;
    Image1: TImage;
    RzBorder1: TRzBorder;
    RzBorder2: TRzBorder;
    Image3: TImage;
    Image2: TImage;
    RzLabel3: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel6: TRzLabel;
    RzURLLabel1: TRzURLLabel;
    RzLabel11: TRzLabel;
    RzLabel7: TRzLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

procedure TfrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   action := cafree;
   frmSplash := nil;
   
end;

end.
