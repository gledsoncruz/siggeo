unit U_ConfigLeg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, OleCtrls, ComObj, MapObjects2_TLB, activex,
  ComCtrls,RzLabel, RzBorder, RzButton, U_FrameLegenda, RzEdit, RzCmboBx,
  uACShapes, ImgList, bsSkinCtrls, bsSkinBoxCtrls, bsSkinTabs,
  BusinessSkinForm;

type

  TfrmConfigLeg = class(TForm)
    ImageList1: TImageList;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    pgLegenda: TbsSkinPageControl;
    tbPolig: TbsSkinTabSheet;
    tbLinha: TbsSkinTabSheet;
    tbPonto: TbsSkinTabSheet;
    tbTexto: TbsSkinTabSheet;
    Label1: TLabel;
    cbPreench: TbsSkinComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cbEstiloLinha: TbsSkinComboBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    cbPtEstilo: TbsSkinComboBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    cbEstiloTx: TbsSkinComboBox;
    cbTextoTam: TbsSkinFontSizeComboBox;
    cbFonte: TbsSkinFontComboBox;
    btOk: TbsSkinButton;
    btCancelar: TbsSkinButton;
    cbPreenchTam: TbsSkinSpinEdit;
    cbTamLinha: TbsSkinSpinEdit;
    cbPtTam: TbsSkinSpinEdit;
    cbTextoCor: TRzLabel;
    cbPreenchLinha: TRzLabel;
    cbPreenchCor: TRzLabel;
    cbCorLinha: TRzLabel;
    cbPtPreench: TRzLabel;
    cbPtLinha: TRzLabel;
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbTextoCorClick(Sender: TObject);
    procedure cbPreenchLinhaClick(Sender: TObject);
    procedure cbPreenchCorClick(Sender: TObject);
    procedure cbCorLinhaClick(Sender: TObject);
    procedure cbPtPreenchClick(Sender: TObject);
    procedure cbPtLinhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vartab : integer;
  end;

var
  frmConfigLeg: TfrmConfigLeg;

implementation

uses U_Legenda, U_menu;

{$R *.dfm}

procedure TfrmConfigLeg.btCancelarClick(Sender: TObject);
begin
   frmConfigLeg.Close;
   frmLegenda.Show;
end;

procedure TfrmConfigLeg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:= cafree;
   frmConfigLeg := nil;
end;

procedure TfrmConfigLeg.btOkClick(Sender: TObject);
var
Ft   : TFont;
oRenderer:IMoLabelRenderer;
begin

 //limpar qualquer possivel renderer da layer
  try
     frmLegenda.vmr          := nil;
     frmLegenda.cbr          := nil;
     frmLegenda.Zrend        := nil;
     //frmLegenda.lp           := nil;
     //frmLegenda.lr           := nil;
     frmLegenda.grpRenderer  := nil;
     frmLegenda.lyr.renderer := nil;
  except

  end;

 //********************************
//Configurando tema Polígono  **************************************************
   If vartab = 1 then
      begin
        //passando parâmetros para a layer
        frmLegenda.lyr.Symbol.Color        := cbPreenchCor.color;//SelectedColor;
        frmLegenda.lyr.Symbol.OutlineColor := cbPreenchLinha.color;
        frmLegenda.lyr.Symbol.Size         := StrToint(cbPreenchTam.text);//cbPreenchTam.ItemIndex + 1 ;
        frmLegenda.lyr.Symbol.Style        := cbPreench.ItemIndex;

        //atualizando cx da legenda
        frmLegenda.shPolig.Brush.Color := cbPreenchCor.color;
        frmLegenda.shPolig.Pen.Color   := cbPreenchLinha.color;

        //verificando o tipo de preenchimento escolhido...
        If cbPreench.ItemIndex = 0 then
           frmLegenda.shPolig.Brush.Style := bsSolid;
        If cbPreench.ItemIndex = 1 then
           frmLegenda.shPolig.Brush.Style := bsClear;
        If cbPreench.ItemIndex = 2 then
           frmLegenda.shPolig.Brush.Style := bsHorizontal;
        If cbPreench.ItemIndex = 3 then
           frmLegenda.shPolig.Brush.Style := bsVertical;
        If cbPreench.ItemIndex = 4 then
           frmLegenda.shPolig.Brush.Style := bsFDiagonal;
        If cbPreench.ItemIndex = 5 then
           frmLegenda.shPolig.Brush.Style := bsBDiagonal;
        If cbPreench.ItemIndex = 6 then
           frmLegenda.shPolig.Brush.Style := bsCross;
        If cbPreench.ItemIndex = 7 then
           frmLegenda.shPolig.Brush.Style := bsDiagCross ;
        If cbPreench.ItemIndex = 8 then
           frmLegenda.shPolig.Brush.Style := bsSolid;
        If cbPreench.ItemIndex = 9 then
           frmLegenda.shPolig.Brush.Style := bsSolid;
        If cbPreench.ItemIndex = 10 then
           frmLegenda.shPolig.Brush.Style := bsSolid;
      end;

//Configurando Tema Linha  *****************************************************

   If vartab = 2 then
      begin
        frmLegenda.lyr.Symbol.Color     := cbCorLinha.color;
        frmLegenda.lyr.Symbol.Size      := StrToInt(cbTamLinha.text);
        frmLegenda.lblLinha.Font.Color  := cbCorLinha.color;

        //********************************
        frmLegenda.cbLinha.ItemIndex    := cbEstiloLinha.ItemIndex ;
        frmLegenda.lblLinha.Caption     := frmlegenda.cbLinha.Items.Strings[frmlegenda.cbLinha.itemindex];

        If cbEstiloLinha.ItemIndex = -1 then
           frmmenu.mensagem('Selecione um estilo de linha!',mtError,[mbok])
        else
           frmLegenda.lyr.Symbol.Style     := cbEstiloLinha.ItemIndex;
      end;

//Configurando Tema Ponto  *****************************************************

   If vartab = 3 then
      begin
        //passando parâmetros para a layer
        frmLegenda.lyr.Symbol.Color        := cbPtPreench.color;
        frmLegenda.lyr.Symbol.OutlineColor := cbPtlinha.color;
        frmLegenda.lyr.Symbol.Size         := StrToInt(cbPtTam.text);
        frmLegenda.lyr.Symbol.Style        := cbPtEstilo.ItemIndex;

        //atualizando cx da legenda
        If cbPtEstilo.ItemIndex = 0 then //Circulo
           begin
              //limpa os possiveis pts visiveis e habilita o círculo
              frmLegenda.shCirculo.Visible     := true;
              frmLegenda.shcirculo.Top         := 60;
              frmLegenda.shcirculo.Left        := 40;
              frmLegenda.shTriangulo.Visible   := false;
              frmLegenda.lblCross.Visible      := false;
              frmLegenda.shQuadrado.Visible    := false;
              frmLegenda.shCirculo.Brush.Color := cbPtPreench.color;
              frmLegenda.shCirculo.Pen.Color   := cbPtLinha.color;
           end;

        If cbPtEstilo.ItemIndex = 1 then //Quadrado
           begin
              //limpa os possiveis pts visiveis e habilita o círculo
              frmLegenda.shQuadrado.Visible     := true;
              frmLegenda.shQuadrado.Top         := 60;
              frmLegenda.shQuadrado.Left        := 40;
              frmLegenda.shTriangulo.Visible    := false;
              frmLegenda.lblCross.Visible       := false;
              frmLegenda.shcirculo.Visible      := false;
              frmLegenda.shQuadrado.Brush.Color := cbPtPreench.color;
              frmLegenda.shQuadrado.Pen.Color   := cbPtLinha.color;
           end;

        If cbPtEstilo.ItemIndex = 2 then //Triangulo
           begin
              //limpa os possiveis pts visiveis e habilita o círculo
              frmLegenda.shTriangulo.Visible     := true;
              frmLegenda.shTriangulo.Top         := 60;
              frmLegenda.shTriangulo.Left        := 40;
              frmLegenda.shQuadrado.Visible      := false;
              frmLegenda.lblCross.Visible        := false;
              frmLegenda.shcirculo.Visible       := false;
              frmLegenda.shTriangulo.Brush.Color := cbPtPreench.color;
              frmLegenda.shTriangulo.Pen.Color   := cbPtLinha.color;
           end;

        If cbPtEstilo.ItemIndex = 3 then //Cross
           begin
              //limpa os possiveis pts visiveis e habilita o círculo
              frmLegenda.lblCross.Visible     := true;
              frmLegenda.lblCross.Top         := 60;
              frmLegenda.lblCross.Left        := 28;
              frmLegenda.shQuadrado.Visible   := false;
              frmLegenda.shTriangulo.Visible  := false;
              frmLegenda.shcirculo.Visible    := false;
              frmLegenda.lblCross.font.Color  := cbPtPreench.color;
           end;
      end;

//Configurando Tema Texto  *****************************************************
   If vartab = 4 then
      begin
        //passando parâmetros para a layer
        frmLegenda.lyr.Symbol.Color :=  cbTextoCor.color;
        Ft:= TFont.Create;
        with Ft do
          begin
            Name     := trim(cbFonte.FontName);
            Color    := cbTextoCor.color;
            Size     := 8;
            if cbEstiloTx.ItemIndex = 0 then
               Style := [];
            if cbEstiloTx.itemindex = 1 then
               ft.Style := [fsbold];
            if cbEstiloTx.itemindex = 2 then
               ft.Style := [fsitalic];
            if cbEstiloTx.itemindex = 3 then
               ft.Style := [fsbold,fsitalic];

         end;
        //tranformando as linhas em textos
        orenderer := imolabelrenderer(CreateOleObject('MapObjects2.labelrenderer'));
        frmLegenda.lyr.Renderer := oRenderer;
        With oRenderer do
          begin
            SymbolCount      := 2;
            AllowDuplicates  := true;
            DrawBackground   := false;
            SplinedText      := true;
            Symbol[0].Font   := IFontDisp(IDispatch(FontToOleFont(Ft)));
            Symbol[0].color  := cbTextoCor.color;
            Symbol[0].Height := cbTextoTam.ItemIndex - 1;
            Field            := 'text';
            frmlegenda.lblTexto.Font.Color := cbTextoCor.color;
            frmlegenda.lblTexto.font       := ft;
            frmlegenda.lblTexto.font.Size  := 8;
            ft.Free;
          end;
      end;

   frmConfigLeg.Close;
   frmLegenda.Show;

end;

procedure TfrmConfigLeg.FormCreate(Sender: TObject);
begin

   FormStyle := fsStayOnTop;

end;

procedure TfrmConfigLeg.cbTextoCorClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbTextoCor.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmConfigLeg.cbPreenchLinhaClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbPreenchLinha.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmConfigLeg.cbPreenchCorClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbPreenchCor.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmConfigLeg.cbCorLinhaClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbCorLinha.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmConfigLeg.cbPtPreenchClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbPtPreench.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmConfigLeg.cbPtLinhaClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   cbPtLinha.Color := frmmenu.ColorDialog1.Color;

end;

end.
