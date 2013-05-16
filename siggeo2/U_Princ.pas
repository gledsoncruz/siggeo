unit U_Princ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QRPrntr, StdCtrls, ExtCtrls, RzButton, QuickRpt, Buttons,
  BusinessSkinForm, Mask, bsSkinBoxCtrls, bsSkinCtrls;

type
  TfrmLayout = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    edtTitulo: TbsSkinEdit;
    edtSub: TbsSkinEdit;
    bsSkinButton1: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    rgLeg: TbsSkinRadioGroup;
    rgPapel: TbsSkinRadioGroup;
    rgOri: TbsSkinRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLayout: TfrmLayout;

implementation

uses U_Menu, U_A3, U_A3_Legenda, U_A4_Legenda, U_Menu_ly, U_A3_Retrato_Leg,
  U_A3_Retrato, U_A4_Retrato, U_A4_Retrato_Leg;

{$R *.DFM}

procedure TfrmLayout.BitBtn1Click(Sender: TObject);
begin
//verificações
//  If trim(edtTitulo.text) = '' then
//     begin
//        application.messagebox('É Necessário Informar o Título do Mapa!','Geo',MB_ICONERROR + MB_OK);
//        edtTitulo.SetFocus;
//        exit;
//     end;

  If rgLeg.ItemIndex = 1 then  //imprimir mapa sem legenda
     begin
       If rgPapel.ItemIndex = 0 then // papel A-3
          begin
             if rgOri.ItemIndex = 0 then //retrato
                begin
                   if frmA3Ret_SL <> nil then
                      frmA3Ret_SL.close;
                      frmA3Ret_SL := TfrmA3Ret_SL.Create(application);
                      frmA3Ret_SL.hide;
                      frmA3Ret_SL.qrA3Ret.Preview;
                end
             else
                begin   //paisagem
                   if frmA3 <> nil then
                      frmA3.close;
                      frmA3 := TfrmA3.Create(application);
                      frmA3.hide;
                      frmA3.qrcProd.Preview;
                end;
          end
       else // papel A-4
          begin
             if rgOri.ItemIndex = 0 then //retrato
                begin
                   if frma4Retrato <> nil then
                      frmA4Retrato.Close;
                      frmA4Retrato := TfrmA4Retrato.create(application);
                      frmA4Retrato.HIDE;
                      frmA4Retrato.qrcProd.Preview;
                end
             else
                begin
                   if frmA4 <> nil then
                      frmA4.close;
                      frmA4 := tfrmA4.create(application);
                      frmA4.HIDE;
                      frmA4.qrcProd.Preview;
                end;
          end;
     end
  else //imprimir mapa com legenda
     begin
       If rgPapel.ItemIndex = 0 then // papel A-3
          begin
             if rgOri.ItemIndex = 0 then //retrato
                begin
                   if frmA3Retrato <> nil then
                      frmA3Retrato.close;
                      frmA3Retrato := TfrmA3Retrato.Create(application);
                      frmA3Retrato.hide;
                      frmA3Retrato.qrA3Ret.Preview;
                end
             else
                begin   //paisagem
                   if frmA3_leg <> nil then
                      frmA3_leg.close;
                      frmA3_leg  := TfrmA3_leg.Create(application);
                      frmA3_leg.hide;
                      frmA3_leg.qrcProd.Preview;
                end;
          end
       else // papel A-4
          begin
             if rgOri.ItemIndex = 0 then //retrato
                begin
                   if frma4Retleg <> nil then
                      frmA4RetLeg.Close;
                      frmA4RetLeg := TfrmA4RetLeg.create(application);
                      frmA4RetLeg.HIDE;
                      frmA4RetLeg.qrcProd.Preview;
                end
             else
                begin
                   if frmA4_leg <> nil then
                      frmA4_leg.close;
                      frmA4_leg := TfrmA4_leg.create(application);
                      frmA4_leg.HIDE;
                      frmA4_leg.QuickRep1.Preview;
                end;
          end;
     end;

   //frmLayout.close;

end;

procedure TfrmLayout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  frmlayout:=nil;

end;

procedure TfrmLayout.Button1Click(Sender: TObject);
begin
   frmLayout.Close;
end;

procedure TfrmLayout.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key =#13 then
   begin
     key:=#0;
     perform(WM_NEXTDLGCTL ,0,0);
   end;
end;

end.
