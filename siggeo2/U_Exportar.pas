unit U_Exportar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsSkinData, bsSkinCtrls, StdCtrls,
  bsSkinBoxCtrls, Mask, bsSkinShellCtrls;

type
  TfrmExportar = class(TForm)
    bsSkinSlider1: TbsSkinSlider;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    edt_nome_arquivo: TbsSkinEdit;
    Cmbobox_Simbolo_escala: TbsSkinComboBox;
    bsSkinStdLabel6: TbsSkinStdLabel;
    bsSkinStdLabel7: TbsSkinStdLabel;
    bsSkinStdLabel8: TbsSkinStdLabel;
    bsSkinStdLabel9: TbsSkinStdLabel;
    bsSkinButton1: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    bsSkinSavePictureDialog1: TbsSkinSavePictureDialog;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinSpinEdit1: TbsSkinSpinEdit;
    procedure bsSkinButton2Click(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure bsSkinSpeedButton1Click(Sender: TObject);
    procedure bsSkinSlider1DrawPoints(Sender: TObject);
    procedure bsSkinSpinEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExportar: TfrmExportar;

implementation

uses U_Menu, MapObjects2_TLB;

{$R *.dfm}

procedure TfrmExportar.bsSkinButton2Click(Sender: TObject);
begin
frmExportar.Close;
end;

procedure TfrmExportar.bsSkinButton1Click(Sender: TObject);
var
fatorEscala : double;
vartrue     : WordBool;
begin
 if frmMenu.Map1.Layers.Count = 0 then
  begin
   frmMenu.Mensagem('Adicione uma camada para exportação...',mtWarning,[mbOK]);
   frmExportar.Close;
   exit;
  end;

  if edt_nome_arquivo.Text = '' then
   begin
    frmMenu.Mensagem('Digite o caminho e o nome para o arquivo a ser exportado...',mtWarning,[mbOK]);
    edt_nome_arquivo.SetFocus;
    exit;
   end;
     fatorEscala := bsSkinSpinEdit1.Value;
     vartrue := true;
     frmMenu.Map1.ExportMapToJpeg(edt_nome_arquivo.Text,bsSkinSlider1.Value,vartrue,fatorEscala,Cmbobox_Simbolo_escala.ItemIndex);
     frmMenu.Mensagem('Exportação realizada com sucesso...',mtInformation,[mbOK]);
     frmExportar.Close;
end;

procedure TfrmExportar.bsSkinSpeedButton1Click(Sender: TObject);
begin
bsSkinSavePictureDialog1.Execute;
edt_nome_arquivo.Text := bsSkinSavePictureDialog1.FileName;
end;

procedure TfrmExportar.bsSkinSlider1DrawPoints(Sender: TObject);
begin
bsSkinSlider1.Hint := IntToStr(bsSkinSlider1.Value);
end;

procedure TfrmExportar.bsSkinSpinEdit1Change(Sender: TObject);
var
pixWidth, pixHeight  : Double;
begin
    pixWidth                := frmMenu.Map1.FromMapDistance(frmMenu.Map1.Extent.Width);
    pixWidth                := pixWidth * bsSkinSpinEdit1.Value;
    pixHeight               := frmMenu.Map1.FromMapDistance(frmMenu.Map1.Extent.Height);
    pixHeight               := pixHeight * bsSkinSpinEdit1.Value;
    bsSkinStdLabel8.Caption := FloatToStr(pixWidth);
    bsSkinStdLabel6.Caption := FloatToStr(pixHeight);
end;

procedure TfrmExportar.FormCreate(Sender: TObject);
var
pixWidth, pixHeight  : Double;
begin
    pixWidth                := frmMenu.Map1.FromMapDistance(frmMenu.Map1.Extent.Width);
    pixWidth                := pixWidth * bsSkinSpinEdit1.Value;
    pixHeight               := frmMenu.Map1.FromMapDistance(frmMenu.Map1.Extent.Height);
    pixHeight               := pixHeight * bsSkinSpinEdit1.Value;
    bsSkinStdLabel8.Caption := FloatToStr(pixWidth);
    bsSkinStdLabel6.Caption := FloatToStr(pixHeight);
end;

end.
