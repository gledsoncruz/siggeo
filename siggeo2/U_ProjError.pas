unit U_ProjError;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, bsSkinBoxCtrls, BusinessSkinForm, bsSkinCtrls;

type
  TfrmProjError = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    memo1: TbsSkinMemo;
    Label5: TLabel;
    bsSkinScrollBar1: TbsSkinScrollBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProjError: TfrmProjError;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmProjError.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action       := cafree;
   frmProjError := nil;

end;

procedure TfrmProjError.FormCreate(Sender: TObject);
begin

   FormStyle := fsStayOnTop;

end;

end.
