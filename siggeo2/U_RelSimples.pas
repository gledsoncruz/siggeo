unit U_RelSimples;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, StdCtrls, bsSkinCtrls, bsSkinBoxCtrls, Mask,MapObjects2_TLB,
  bsSkinShellCtrls, ExtCtrls, QuickRpt, QRPDFFilter;

type
  TfrmRelSimples = class(TForm)
    QuickRep1: TQuickRep;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelSimples: TfrmRelSimples;

implementation

uses U_Menu, U_Relimp;

{$R *.dfm}

procedure TfrmRelSimples.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action        := cafree;  
   frmRelSimples := nil;

end;

end.
