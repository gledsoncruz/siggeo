unit U_Sobre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, RzLabel, RzBorder, RzPanel, jpeg, shellapi,
  StdCtrls, ExtCtrls, Buttons, RzBckgnd, BusinessSkinForm;

type
  TfrmSobre = class(TForm)
    RzPanel1: TRzPanel;
    RzBackground1: TRzBackground;
    RzBorder1: TRzBorder;
    Image2: TImage;
    RzLabel4: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel1: TRzLabel;
    Image1: TImage;
    RzLabel2: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzBorder2: TRzBorder;
    Image3: TImage;
    RzLabel10: TRzLabel;
    RzLabel11: TRzLabel;
    RzURLLabel1: TRzURLLabel;
    lblPortal: TRzURLLabel;
    RzLabel8: TRzLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
    procedure RzLabel6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RzLabel5Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := cafree;
   frmSobre := nil;
end;

procedure TfrmSobre.btOkClick(Sender: TObject);
begin
   frmSobre.Close;
end;

procedure TfrmSobre.RzLabel6Click(Sender: TObject);
begin
   ShellExecute(Handle,'open','mailto:geo@epdvr.com.br',nil ,nil,sw_show);
end;

procedure TfrmSobre.BitBtn1Click(Sender: TObject);
begin

  close;

end;

procedure TfrmSobre.RzLabel5Click(Sender: TObject);
begin

   ShellExecute(Handle,'open','mailto:marcelo@epdvr.com.br',nil ,nil,sw_show);
   
end;

procedure TfrmSobre.Image3Click(Sender: TObject);
begin

    RzURLLabel1.Click;

end;

procedure TfrmSobre.Image1Click(Sender: TObject);
begin

  lblPortal.Click;

end;

end.
