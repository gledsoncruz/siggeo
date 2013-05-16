unit U_GrafLinha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinBoxCtrls, ImgList, BusinessSkinForm, bsSkinCtrls, StdCtrls,
  RzLabel;

type
  TfrmGrafLinha = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    spEspLinha: TbsSkinSpinEdit;
    bsSkinButton1: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    ImageList1: TImageList;
    cbEstiloLinha: TbsSkinComboBox;
    Label1: TLabel;
    cbSalva: TbsSkinCheckRadioBox;
    cbPreenchLinha: TRzLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure cbPreenchLinhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrafLinha: TfrmGrafLinha;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmGrafLinha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action        := cafree;
   frmGrafLinha  := nil;

end;

procedure TfrmGrafLinha.bsSkinButton1Click(Sender: TObject);
var
i        : smallint;
atualiza : WordBool;
v        : Variant;
begin

   if cbSalva.Checked then
      frmmenu.varBoolSalvaConfigLinha := true
   else
      frmmenu.varBoolSalvaConfigLinha := false;

   //***********
   frmmenu.varGrafLinhaStyle       := cbEstiloLinha.ItemIndex;
   frmmenu.varGrafLinhaColor       := cbPreenchLinha.color;
   frmmenu.varGrafLinhaSize        := StrToInt(spEspLinha.Text);

   if Length(frmMenu.vetSelectLinha)>0 then
       begin
          for i:=0 to Length(frmMenu.vetSelectLinha)-1 do
              begin
                    if trim(frmMenu.vetSelectLinha[i])<> '' then
                      begin
                           frmMenu.varVetGrafLinhaColor[StrToInt(frmMenu.vetSelectLinha[i])]  := frmMenu.varGrafLinhaColor;
                           frmMenu.varVetGrafLinhaSize[StrToInt(frmMenu.vetSelectLinha[i])]   := frmMenu.varGrafLinhaSize;
                           frmMenu.varVetGrafLinhaStyle[StrToInt(frmMenu.vetSelectLinha[i])]  := frmMenu.varGrafLinhaStyle;
                      end;
              end;

          atualiza := true;
          frmmenu.map1.TrackingLayer.Refresh(atualiza,v);

       end
       else
          begin
            // frmmenu.btLinha.Down := true;
          end;

   close;

end;

procedure TfrmGrafLinha.FormCreate(Sender: TObject);
begin

  FormStyle := fsStayOnTop;

  cbEstiloLinha.ItemIndex   := frmmenu.varGrafLinhaStyle;
  cbPreenchLinha.color      := frmMenu.varGrafLinhaColor;
  spEspLinha.Text           := IntToStr(frmMenu.varGrafLinhaSize);
  cbSalva.Checked           := frmMenu.varBoolSalvaConfigLinha;

end;

procedure TfrmGrafLinha.bsSkinButton2Click(Sender: TObject);
begin


  close;
  
end;

procedure TfrmGrafLinha.cbPreenchLinhaClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbPreenchlinha.Color := frmmenu.ColorDialog1.Color;

end;

end.
