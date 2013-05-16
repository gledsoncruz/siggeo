unit U_GrafTexto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, BusinessSkinForm, bsDialogs, bsSkinBoxCtrls,
  RzBorder, StdCtrls, RzLabel,MapObjects2_TLB;

type
  TfrmGrafTexto = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinButton1: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    memo1: TbsSkinMemo;
    RzLabel2: TRzLabel;
    SpinEdit1: TbsSkinSpinEdit;
    bsSkinButton3: TbsSkinButton;
    RzLabel3: TRzLabel;
    bsSkinPanel1: TbsSkinPanel;
    RzBorder1: TRzBorder;
    RzLabel1: TRzLabel;
    edtColor: TRzLabel;
    Label2: TLabel;
    btAplicar: TbsSkinButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinButton3Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure memo1Change(Sender: TObject);
    procedure edtColorClick(Sender: TObject);
    procedure btAplicarClick(Sender: TObject);
  private
    { Private declarations }
    JaDesenhou     : boolean;
    itemIndexAtual : smallint;
  public
    { Public declarations }
    ponto : IMoPoint;
  end;

var
  frmGrafTexto: TfrmGrafTexto;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmGrafTexto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action       := cafree;
   frmGrafTexto := nil;

end;

procedure TfrmGrafTexto.bsSkinButton3Click(Sender: TObject);
begin

  frmMenu.FontDialog1.Font.Style   := frmmenu.varGrafTextoFonteEstilo;
  frmMenu.FontDialog1.font.Name    := frmmenu.varGrafTextoFonte;
  frmMenu.FontDialog1.font.Color   := edtColor.Color;
  frmMenu.FontDialog1.Font.Size    := frmmenu.varGrafTextoSize;

  frmMenu.FontDialog1.Execute;

  RzLabel1.Font.name   := frmMenu.FontDialog1.Font.name;
  rzlabel1.font.size   := frmMenu.FontDialog1.Font.size;
  rzLabel1.font.Style  := frmMenu.FontDialog1.Font.Style;
  RzLabel1.Angle       := StrToInt(SpinEdit1.text);

  frmmenu.varGrafTextoFonteEstilo := frmMenu.FontDialog1.Font.Style;
  frmmenu.varGrafTextoFonte       := frmMenu.FontDialog1.font.Name;
  frmmenu.varGrafTextoSize        := frmMenu.FontDialog1.Font.Size;
  
end;

procedure TfrmGrafTexto.SpinEdit1Change(Sender: TObject);
begin

   RzLabel1.Angle := StrToInt(SpinEdit1.text);

end;

procedure TfrmGrafTexto.bsSkinButton1Click(Sender: TObject);
begin

   if trim(memo1.text) = '' then
      begin
         frmmenu.Mensagem('Informe o Texto',mtInformation,[mbok]);
         exit;
      end;

   btAplicarClick(self);
   close;

end;

procedure TfrmGrafTexto.FormCreate(Sender: TObject);
begin

  JaDesenhou          := false;

  edtColor.color      := frmmenu.varGrafTextoColor;
  SpinEdit1.Value     := frmmenu.varGrafTextoRotacao;

  rzlabel1.Font.Name  := frmmenu.varGrafTextoFonte;
  rzLabel1.font.Size  := frmmenu.varGrafTextoSize;
  RzLabel1.Font.color := edtColor.color;
  Rzlabel1.Font.Style := frmmenu.varGrafTextoFonteEstilo;

  if frmmenu.varBoolEditarTexto then
     begin
         memo1.Text                    := frmmenu.varVetGrafTexto[StrToInt(frmmenu.vetSelectTexto[0])];
         SpinEdit1.Text                := IntToStr(frmmenu.varVetGrafTextoRotacao[StrToInt(frmmenu.vetSelectTexto[0])]);
         rzLabel1.Angle                := strToInt(SpinEdit1.Text);
         RzLabel1.Font.Style           := frmMenu.varVetGrafTextoFonteStyle[StrToInt(frmmenu.vetSelectTexto[0])];
         frmmenu.FontDialog1.Font.name := frmMenu.varVetGrafTextoFonteNome[StrToInt(frmmenu.vetSelectTexto[0])];
     end;

end;

procedure TfrmGrafTexto.bsSkinButton2Click(Sender: TObject);
begin

   close;

end;

procedure TfrmGrafTexto.memo1Change(Sender: TObject);
begin

   if trim(memo1.text)<>'' then
      begin
          rzLabel1.Caption := memo1.text;
      end
      else
         if trim(memo1.text)='' then
            rzLabel1.caption := 'texto';

end;

procedure TfrmGrafTexto.edtColorClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.execute;
   edtColor.Color            := frmmenu.ColorDialog1.color;
   RzLabel1.font.Color       := edtColor.Color;
   frmmenu.varGrafTextoColor := edtColor.Color; 

end;

procedure TfrmGrafTexto.btAplicarClick(Sender: TObject);
var
i       : word;
v       : variant;
varTrue : WordBool;
begin

   if  frmmenu.varBoolEditarTexto then
       begin
            for i:= 0 to length(frmmenu.vetSelectTexto)-1 do
                begin
                    frmMenu.varBoolGrafTexto[StrToInt(frmmenu.vetSelectTexto[i])]                  := true;
                    frmMenu.varVetGrafTexto[StrToInt(frmmenu.vetSelectTexto[i])]                   := memo1.Text;
                    frmMenu.varVetGrafTextoColor[StrToInt(frmmenu.vetSelectTexto[i])]              := edtColor.color;
                    frmMenu.varVetGrafTextoFonteNome[StrToInt(frmmenu.vetSelectTexto[i])]          := frmMenu.varGrafTextoFonte;
                    frmMenu.varVetGrafTextoFonteStyle[StrToInt(frmmenu.vetSelectTexto[i])]         := frmMenu.varGrafTextoFonteEstilo;
                    frmMenu.varvetGrafTextoSize[StrToInt(frmmenu.vetSelectTexto[i])]               := frmMenu.varGrafTextoSize;
                    frmMenu.varVetGrafTextoRotacao[StrToInt(frmmenu.vetSelectTexto[i])]            := StrToInt(SpinEdit1.Text);
                end;
       end
       else
          begin
               if JaDesenhou = false then
                  begin
                       SetLength(frmMenu.varBoolGrafTexto,length(frmMenu.varBoolGrafTexto)+1);
                       SetLength(frmMenu.varVetGrafTexto,length(frmMenu.varVetGrafTexto)+1);
                       SetLength(frmMenu.varVetGrafTextoPT,length(frmMenu.varVetGrafTextoPT)+1);
                       SetLength(frmMenu.varVetGrafTextoFonteStyle,length(frmMenu.varVetGrafTextoFonteStyle)+1);
                       SetLength(frmMenu.varVetGrafTextoFonteNome,length(frmMenu.varVetGrafTextoFonteNome)+1);
                       SetLength(frmMenu.varVetGrafTextoRotacao,length(frmMenu.varVetGrafTextoRotacao)+1);
                       SetLength(frmMenu.varvetGrafTextoSize,length(frmMenu.varvetGrafTextoSize)+1);
                       SetLength(frmMenu.varVetGrafTextoColor,length(frmMenu.varVetGrafTextoColor)+1);

                       frmMenu.varBoolGrafTexto[length(frmMenu.varBoolGrafTexto)-1]                   := true;
                       frmMenu.varVetGrafTexto[length(frmMenu.varVetGrafTexto)-1]                     := memo1.Text;
                       frmMenu.varvetGrafTextoSize[length(frmMenu.varvetGrafTextoSize)-1]             := frmMenu.varGrafTextoSize;
                       frmMenu.varVetGrafTextoColor[length(frmMenu.varVetGrafTextoColor)-1]           := edtColor.color;
                       frmMenu.varVetGrafTextoPT[length(frmMenu.varVetGrafTextoPT)-1]                 := CoPoint.Create;
                       frmMenu.varVetGrafTextoPT[length(frmMenu.varVetGrafTextoPT)-1]                 := ponto;
                       //*********
                       frmMenu.varVetGrafTextoFonteStyle[length(frmMenu.varVetGrafTextoFonteStyle)-1] := frmMenu.varGrafTextoFonteEstilo;
                       frmMenu.varVetGrafTextoFonteNome[length(frmMenu.varVetGrafTextoFonteNome)-1]   := frmMenu.varGrafTextoFonte;
                       //*******
                       frmMenu.varVetGrafTextoRotacao[length(frmMenu.varVetGrafTextoRotacao)-1]       := StrToInt(SpinEdit1.Text);
                       itemIndexAtual                                                                 := length(frmMenu.varVetGrafTextoRotacao)-1;

                       JaDesenhou := true;
                  end
                  else
                      begin
                           frmMenu.varBoolGrafTexto[itemIndexAtual]            := true;
                           frmMenu.varVetGrafTexto[itemIndexAtual]             := memo1.Text;
                           frmMenu.varvetGrafTextoSize[itemIndexAtual]         := frmMenu.varGrafTextoSize;
                           frmMenu.varVetGrafTextoColor[itemIndexAtual]        := edtColor.color;
                           frmMenu.varVetGrafTextoFonteStyle[itemIndexAtual]   := frmMenu.varGrafTextoFonteEstilo;
                           frmMenu.varVetGrafTextoFonteNome[itemIndexAtual]    := frmMenu.varGrafTextoFonte;
                           frmMenu.varVetGrafTextoRotacao[itemIndexAtual]      := StrToInt(SpinEdit1.Text);
                      end;
           end;

   varTrue := true;
   frmmenu.Map1.TrackingLayer.Refresh(varTrue,V);

end;

end.
