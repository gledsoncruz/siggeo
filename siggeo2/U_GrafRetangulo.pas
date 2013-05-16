unit U_GrafRetangulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, BusinessSkinForm, bsSkinCtrls, bsSkinBoxCtrls, StdCtrls,
  RzLabel;

type
  TfrmGrafRetangulo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    cbPreench: TbsSkinComboBox;
    cbUsaOutline: TbsSkinCheckRadioBox;
    spEspLinha: TbsSkinSpinEdit;
    cbSalva: TbsSkinCheckRadioBox;
    bsSkinButton1: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    ImageList1: TImageList;
    cbPreenchCor: TRzLabel;
    cbPreenchLinha: TRzLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbPreenchCorClick(Sender: TObject);
    procedure cbPreenchLinhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrafRetangulo: TfrmGrafRetangulo;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmGrafRetangulo.FormClose(Sender: TObject; var Action: TCloseAction);
begin

    action           := cafree;
    frmGrafRetangulo := nil;

end;

procedure TfrmGrafRetangulo.bsSkinButton1Click(Sender: TObject);
var
i        : smallint;
atualiza : WordBool;
v        : Variant;
begin

   if cbSalva.Checked then
      frmmenu.varBoolSalvaConfigRetang := true
   else
      frmmenu.varBoolSalvaConfigRetang := false;

   //***********
   frmmenu.varGrafRetangStyle       := cbPreench.ItemIndex;
   frmmenu.varGrafRetangColor       := cbPreenchCor.color;
   frmmenu.varGrafRetangUsaOutline  := cbUsaOutline.Checked;
   frmmenu.varGrafRetangSize        := StrToInt(spEspLinha.Text);
   frmmenu.varGrafRetangOutCor      := cbPreenchLinha.color;

   if Length(frmMenu.vetSelectRetang)>0 then
       begin
          for i:=0 to Length(frmMenu.vetSelectRetang)-1 do
              begin
                    if trim(frmMenu.vetSelectRetang[i])<> '' then
                      begin
                           frmMenu.varVetGrafRetangColor[StrToInt(frmmenu.vetSelectRetang[i])]      := frmMenu.varGrafRetangColor;
                           frmMenu.varVetGrafRetangUsaOutline[StrToInt(frmmenu.vetSelectRetang[i])] := frmMenu.varGrafRetangUsaOutline;
                           frmMenu.varVetGrafRetangSize[StrToInt(frmmenu.vetSelectRetang[i])]       := frmMenu.varGrafRetangSize;
                           frmMenu.varVetGrafRetangOutCor[StrToInt(frmmenu.vetSelectRetang[i])]     := frmMenu.varGrafRetangOutCor;
                           frmMenu.varVetGrafRetangStyle[StrToInt(frmmenu.vetSelectRetang[i])]      := frmMenu.varGrafRetangStyle;
                      end;
              end;
          atualiza := true;
          frmmenu.map1.TrackingLayer.Refresh(atualiza,v);
       end
       else
          begin
            // frmmenu.btRetang.Down := true;
          end;

   close;

end;

procedure TfrmGrafRetangulo.bsSkinButton2Click(Sender: TObject);
begin

   close;

end;

procedure TfrmGrafRetangulo.FormCreate(Sender: TObject);
begin

   formStyle := fsStayOnTop;

   cbPreench.ItemIndex     := frmmenu.varGrafRetangStyle;
   cbPreenchCor.color      := frmMenu.varGrafRetangColor;
   cbPreenchLinha.color    := frmMenu.varGrafRetangOutCor;
   spEspLinha.Text         := IntToStr(frmMenu.varGrafRetangSize);
   cbUsaOutline.Checked    := frmMenu.varGrafRetangUsaOutline;
   cbSalva.Checked         := frmMenu.varBoolSalvaConfigRetang;

end;

procedure TfrmGrafRetangulo.cbPreenchCorClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbPreenchCor.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmGrafRetangulo.cbPreenchLinhaClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbPreenchlinha.Color := frmmenu.ColorDialog1.Color;

end;

end.
