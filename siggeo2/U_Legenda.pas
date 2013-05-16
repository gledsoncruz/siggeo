unit U_Legenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, OleCtrls, ComObj, MapObjects2_TLB, Buttons, Clipbrd,
  ComCtrls,RzLabel, RzBorder, variants, activex, RzButton,
  U_FrameLegenda, Mask, RzEdit, ImgList, RzCmboBx, uACShapes, RzPanel,
  U_frameClasses, U_frameElevacao, RzTrkBar, ExtCtrls, bsSkinCtrls,
  bsSkinTabs, bsSkinBoxCtrls, BusinessSkinForm, bsColorCtrls, bsDialogs;

type
  //********************************************
  //ESTA CONSTANTE DEVE SER DECLARADA COMO TYPE
  //********************************************
  TRendererType = (momNoRenderer,momClassBreaksRenderer,momDotDensityRenderer,
  momLabelRenderer,momLabelPlacer,momGroupRenderer,momValueMapRenderer,momZRenderer,momUnknownRenderer);
  //********************************************
  //********************************************
  //********************************************
  TfrmLegenda = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    pgcLegenda: TbsSkinPageControl;
    tbUnicoSim: TbsSkinTabSheet;
    tbUnicoV: TbsSkinTabSheet;
    tbEscala: TbsSkinTabSheet;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    btZerar: TbsSkinButton;
    bsSkinBevel3: TbsSkinBevel;
    bsSkinBevel4: TbsSkinBevel;
    Label31: TLabel;
    Label32: TLabel;
    bsSkinBevel5: TbsSkinBevel;
    bsSkinBevel6: TbsSkinBevel;
    shPolig: TShape;
    Label3: TLabel;
    shQuadrado: TSquareShape;
    shTriangulo: TTriangleShape;
    lblCross: TLabel;
    shCirculo: TCircleShape;
    lblTexto: TLabel;
    lblLinha: TLabel;
    edt: TbsSkinEdit;
    btAplicar: TbsSkinButton;
    btCancelar: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    BitBtn1: TbsSkinButton;
    tbLblPadrao: TbsSkinTabSheet;
    tbadvLabel: TbsSkinTabSheet;
    Label1: TLabel;
    cbCampoNum: TbsSkinComboBox;
    cbNumClasses: TbsSkinComboBox;
    Label2: TLabel;
    Label34: TLabel;
    inicial: TRzLabel;
    Label35: TLabel;
    final: TRzLabel;
    Button1: TbsSkinButton;
    chClasses: TbsSkinCheckRadioBox;
    label29: TLabel;
    lblEscCor: TRzLabel;
    cbEscalaEsp: TbsSkinComboBox;
    label30: TLabel;
    panelClasses: TbsSkinPanel;
    frmframeClasses1: TfrmframeClasses;
    tbElevacao: TbsSkinTabSheet;
    cbTipo: TbsSkinComboBox;
    panelLegenda: TbsSkinPanel;
    Frame11: TfrmFrameLegenda;
    Label6: TLabel;
    cbCampo: TbsSkinComboBox;
    lblOut1: TLabel;
    lblOut2: TLabel;
    lblUVoutcor: TRzLabel;
    btReiniciar: TbsSkinButton;
    cbUVoutcor: TbsSkinComboBox;
    chkUV: TbsSkinCheckRadioBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    lblRotacao: TLabel;
    cbLBCampo: TbsSkinComboBox;
    cbLBHorizon: TbsSkinComboBox;
    cbLBVertical: TbsSkinComboBox;
    cbLBX: TbsSkinComboBox;
    cbLBY: TbsSkinComboBox;
    chLBCaract: TbsSkinCheckRadioBox;
    chLBDuplic: TbsSkinCheckRadioBox;
    chLBSplined: TbsSkinCheckRadioBox;
    chLBFlip: TbsSkinCheckRadioBox;
    edtFonte: TbsSkinEdit;
    bsSkinButton1: TbsSkinButton;
    tbRot: TbsSkinTrackBar;
    Label25: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    cbADVCampo: TbsSkinComboBox;
    advCor: TRzLabel;
    edtAdvFonte: TbsSkinEdit;
    bsSkinButton2: TbsSkinButton;
    chAdvCaract: TbsSkinCheckRadioBox;
    chAdvDuplic: TbsSkinCheckRadioBox;
    chAdvMasc: TbsSkinCheckRadioBox;
    bsSkinGroupBox1: TbsSkinGroupBox;
    rdSobre: TbsSkinCheckRadioBox;
    rdAcima: TbsSkinCheckRadioBox;
    rdAbaixo: TbsSkinCheckRadioBox;
    bsSkinGroupBox2: TbsSkinGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    scrAdv: TbsSkinScrollBar;
    panelElevacao: TbsSkinPanel;
    frmElevacao1: TfrmElevacao;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    elvInicial: TRzLabel;
    ElvFinal: TRzLabel;
    bsSkinButton3: TbsSkinButton;
    cbElevClasses: TbsSkinComboBox;
    cbElvTipo: TbsSkinComboBox;
    cbLinha: TbsSkinComboBox;
    cbItemlegenda: TbsSkinComboBox;
    cbPreenchvmr: TbsSkinComboBox;
    ImageList1: TImageList;
    Label7: TLabel;
    cbPreenchCbr: TbsSkinComboBox;
    Label8: TLabel;
    FontDialog2: TFontDialog;
    FontDialog1: TFontDialog;
    procedure FormCreate(Sender: TObject);
    procedure loadClasses;
    function GetRendererType(const ARenderer: IDispatch): TRendererType;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cbTipoChange(Sender: TObject);
    procedure cbLinhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure shPoligMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure shCirculoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblCrossClick(Sender: TObject);
    procedure shTrianguloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure shQuadradoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblLinhaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btAplicarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure lblTextoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    Procedure CarregarNovaLegenda;
    procedure btReiniciar1Click(Sender: TObject);
    procedure CarregarCombo;
    procedure CarregarClasses;
    procedure GerarClasses;
    procedure loadLegenda;
    procedure Button11Click(Sender: TObject);
    procedure final1DblClick(Sender: TObject);
    procedure elvInicialDblClick(Sender: TObject);
    procedure ElvFinalDblClick(Sender: TObject);
    procedure CarregarZLegenda;
    procedure LoadElevacao;
    procedure CarregarLR;
    procedure CarregarLBCombo;
    procedure RzButton1Click(Sender: TObject);
    procedure LoadLB;
    procedure CarregarLP;
    procedure advCorDblClick(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure CarregarADVCombo;
    procedure CarregarGroupRenderer;
    procedure LoadLP;
    procedure chkUV1Click(Sender: TObject);
    procedure lblUVoutcorDblClick(Sender: TObject);
    procedure lblEscCorDblClick(Sender: TObject);
    procedure chClassesClick(Sender: TObject);
    procedure btZerarClick(Sender: TObject);
    procedure tbRotMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure inicial1DblClick(Sender: TObject);
    procedure LimparLegenda;
    procedure Button1Click(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btReiniciarClick(Sender: TObject);
    procedure pgcLegendaChange(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bsSkinButton3Click(Sender: TObject);
    procedure ConfigurarLegendaPelaLayer(varItem : smallint);
    procedure cbItemlegendaChange(Sender: TObject);
    procedure TrocarCorItemVMR(Sender: TObject);
    procedure lblUVoutcorClick(Sender: TObject);
    procedure TrocarCorItemCBR(Sender: TObject);
    procedure TrocarCorItemZlegend(Sender: TObject);

  private
    { Private declarations }
    ftn          : TFont;
    layerAtual   : smallint;
    //****       
    itemlegenda  : smallint;
    varMudaCombo : boolean;
    tempitem     : smallint;

  public
    { Public declarations }
    lyr              : imomaplayer;
    lyrs             : imolayers;
    cbr              : IMoClassBreaksRenderer;
    vmr              : IMoValueMapRenderer;
    strsUniqueValues : IMoStrings;
    zRend            : IMoZRenderer;
    lr               : IMoLabelRenderer;
    lp               : IMoLabelPlacer;
    grpRenderer      : IMoGroupRenderer;

    //*********************************
  end;

var
  frmLegenda : TfrmLegenda;
  lbl1       : TLabel;
  rzlbl1     : TRZLabel;

implementation

uses U_menu, U_ConfigLeg;

{$R *.dfm}

//FUNÇÃO QUE PEGA O TIPO DO RENDERER DA LAYER
function TfrmLegenda.GetRendererType(const ARenderer: IDispatch): TRendererType;
begin

     if (ARenderer = nil) then
        result := momNoRenderer//nenhum Renderer Definido
     else
         try
            with (ARenderer as GroupRenderer) do
                 result := momGroupRenderer;
         except on EIntfCastError do
                try
                   with (ARenderer as ClassBreaksRenderer) do
                        result := momClassBreaksRenderer;
                except on EIntfCastError do
                       try
                         with (ARenderer as DotDensityRenderer) do
                             result := momDotDensityRenderer;
                       except on EIntfCastError do
                              try
                                with (ARenderer as LabelRenderer) do
                                     result := momLabelRenderer;
                              except on EIntfCastError do
                                     try
                                       with (ARenderer as LabelPlacer) do
                                            result := momLabelPlacer;
                                     except on EIntfCastError do
                                            try
                                              with (ARenderer as ValueMapRenderer) do
                                                   result := momValueMapRenderer;
                                            except on EIntfCastError do
                                                   try
                                                     with (ARenderer as ZRenderer) do
                                                          result := momZRenderer;
                                                   except on EIntfCastError do
                                                          result := momUnknownRenderer; //renderer desconhecido
                                                   end;//end
                                            end;
                                     end;
                              end;
                       end;
                end;
         end;

end;

//*************************************
procedure TfrmLegenda.LimparLegenda;
var
texto:string;
begin

     //limpar qualquer possivel renderer da layer
     vmr          := nil;
     cbr          := nil;
     Zrend        := nil;
     lp           := nil;
     lr           := nil;
     texto := ExtractFileExt(lyr.Tag);

     if (UpperCase(texto) <> '.DWG') and (UpperCase(texto) <> '.DWG|TEXTO') and (UpperCase(texto) <> '.DXF') and (UpperCase(texto) <> '.DXF|TEXTO') then
        lyr.renderer := nil;

     grpRenderer  := nil;

     //Recria o frame para limpa-lo
     frame11.Free;
     Frame11                   := TfrmFrameLegenda.create(self);
     frame11.Parent            := panelLegenda;
     frame11.Align             := alClient;
     frame11.legenda1.Caption  := '';
     frame11.legenda1.AutoSize := true;
     frame11.picCor0.visible   := false;
     frame11.visible := true;
     //************************************************
     //**** RECRIA OS OUTROS FRAMES PARA LIMPA-LOS ****
     //************************************************
     //*****Recria o frame para limpa-lo (CBR)
     frmframeClasses1.Free;
     frmframeClasses1                    := TfrmframeClasses.create(self);
     frmframeClasses1.Parent             := panelClasses;
     frmframeClasses1.Align              := alClient;
     frmframeClasses1.LblClass1.Caption  := '';
     frmframeClasses1.LblClass1.AutoSize := true;
     frmframeClasses1.Cor0.visible       := false;
     frmframeClasses1.visible            := true;

     //******recria o frame (ZREND)
     frmElevacao1.free;
     frmElevacao1                  := TfrmElevacao.create(self);
     frmElevacao1.parent           := panelElevacao;
     frmElevacao1.align            := alclient;
     frmElevacao1.Elev1.caption    := '';
     frmElevacao1.Elev1.autosize   := true;
     frmelevacao1.ElevCor0.visible := true;
     frmelevacao1.visible          := true;

     //******************************************
     //******************************************
     cbcampo.itemindex       := -1;
     cbCampoNum.ItemIndex    := -1;
     cbNumClasses.itemindex  := -1;
     cbLBCampo.itemindex     := -1;
     cbLBX.itemindex         := -1;
     cbLBY.itemindex         := -1;
     //tbRot.value position
     tbRot.value             :=  0;
     lblRotacao.caption      :=  '0';
     chLBCaract.Checked      := true;
     chLBDuplic.Checked      := false;
     chLBSplined.Checked     := true;
     chLBFlip.Checked        := true;
     cbADVCampo.ItemIndex    := -1;
     chAdvCaract.Checked     := true;
     chAdvDuplic.checked     := false;
     chAdvMasc.checked       := false;
     rdSobre.Checked         := true;
     cbElevClasses.itemindex := -1;
     cbElvTipo.itemindex     := -1;
     //***********

     frmmenu.map1.refresh;
     frmmenu.legenda;

end;

procedure TfrmLegenda.LoadLP;
var
scaleHeightUnit : double;
varnum          : double;
i,ind           : integer;
cly             : IMoMapLayer;
clys            : IMoLayers;
ShapeRecords    : IMoRecordset;
campos          : IMofields;
campo           : IMoField;
t_desc          : IMoTableDesc;
begin

    lp := CoLabelPlacer.Create;
    lp := IMoLabelPlacer(lyr.renderer);

    advCor.Color := lp.MaskColor;

    clys                 := IMoLayers(frmmenu.map1.layers);
    cly                  := CoMapLayer.Create;
    cly                  := IMoMapLayer(lyrs.item(itemlegenda));
    ShapeRecords         := cly.Records;
    campos               := ShapeRecords.Fields;
    t_desc               := ShapeRecords.TableDesc;


    for i:=0 to t_desc.FieldCount-1 do
       begin
          campo := campos.Item(t_desc.FieldName[i]);
          cbAdvCampo.Items.Add(campo.Name);
          if lp.Field = campo.name Then
             ind := i;
       end;


    cbADVCampo.ItemIndex := ind;

    OleFontToFont(lp.DefaultSymbol.Font,FontDialog2.font);
    fontdialog2.font.color := lp.DefaultSymbol.color;

    edtAdvFonte.text := fontdialog2.font.Name;

  rdAcima.Checked  := lp.PlaceAbove;
  rdAbaixo.Checked := lp.PlaceBelow;
  rdSobre.checked  := lp.PlaceOn;

  if lp.DrawBackground = true then
     chAdvCaract.Checked := true
     else
     chAdvCaract.Checked := false;

  if lp.AllowDuplicates = true then
     chAdvDuplic.Checked := true
     else
     chAdvDuplic.Checked := false;

  if lp.MaskLabels = true then
     chAdvMasc.Checked := true
     else
     chAdvMasc.Checked := false;

  scaleHeightUnit := lyr.Extent.Width / 10000;
  varnum          := 504;

  scrAdv.Position := trunc(strtofloat(vartostr(varNum - (lp.DefaultSymbol.Height / scaleHeightUnit))));

end;

procedure TfrmLegenda.CarregarGroupRenderer;
var
i : integer;
begin

  for i:=grpRenderer.Count-1 downto 0 do
    begin
         lyr.renderer := nil;
         lyr.Renderer := Idispatch(grpRenderer.Renderer[i]);

         //se nao, verifico individualmente
         if GetRendererType(lyr.Renderer) = momNoRenderer then
            begin
               pgclegenda.ActivePageIndex := 0;
            end
         else
         if GetRendererType(lyr.Renderer) = momValueMapRenderer then
           begin
              pgcLegenda.ActivePageIndex := 1;
              loadLegenda;
           end
         else
         if GetRendererType(lyr.Renderer) = momClassBreaksRenderer then
            begin
              pgcLegenda.ActivePageIndex := 2;
              loadClasses;
            end
         else
         if GetRendererType(lyr.Renderer) = momLabelRenderer then
            begin
              pgcLegenda.ActivePageIndex := 3;
              LoadLB;
            end
         else
         if GetRendererType(lyr.Renderer) = momLabelPlacer then
            begin
               pgcLegenda.ActivePageIndex := 4;
               loadLP;
            end
         else
         if GetRendererType(lyr.Renderer) = momZRenderer then
            begin
              pgcLegenda.ActivePageIndex := 5;
              loadElevacao;
            end
         else
         if GetRendererType(lyr.Renderer) = momUnknownRenderer then
            pgclegenda.ActivePageIndex := 0;
    end;


end;

procedure TfrmLegenda.CarregarADVCombo;
var
i            : integer;
cly          : IMoMapLayer;
clys         : IMoLayers;
ShapeRecords : IMoRecordset;
campos       : IMofields;
campo        : IMoField;
t_desc       : IMoTableDesc;
begin

  try
         cbadvCampo.items.clear;
         edtAdvFonte.text := FontDialog2.Font.Name; //edit recebe nome da fonte

         //verifica se o shape é do tipo poligono, para habilitar ou nao a seleçao
         //de desenhar outlines

         clys                 := IMoLayers(frmmenu.map1.layers);
         cly                  := CoMapLayer.create;
         cly                  := IMoMapLayer(lyrs.item(itemlegenda));
         ShapeRecords         := cly.Records;
         campos               := ShapeRecords.Fields;
         t_desc               := ShapeRecords.TableDesc;

         for i:=0 to t_desc.FieldCount-1 do
            begin
               campo := campos.Item(t_desc.FieldName[i]);
               cbAdvCampo.Items.Add(campo.Name);
            end;
   except
     exit;
   end;

end;

procedure TfrmLegenda.CarregarLP;
var
scaleHeightUnit : Double;
begin

 if trim(cbAdvCampo.text) = '' then
    exit;

 lyr.renderer              := nil;
 lp                        := CoLabelPlacer.create;
 lp.field                  := cbADVCampo.text;

 scaleHeightUnit           := lyr.Extent.Width / 10000;

 lp.DefaultSymbol.Height   := scaleHeightUnit * (504 - scrAdv.Position);

 lp.DefaultSymbol.color    := FontDialog2.font.Color;
 lp.DefaultSymbol.Font     := IFontDisp(IDispatch(FontToOleFont(FontDialog2.Font)));

 lp.PlaceAbove             := rdAcima.Checked;
 lp.PlaceBelow             := rdAbaixo.Checked;
 lp.PlaceOn                := rdSobre.checked;

  if chAdvCaract.Checked = true then
     lp.DrawBackground := true
     else
     lp.DrawBackground := false;

  if chAdvDuplic.Checked = true then
     lp.AllowDuplicates := true
     else
     lp.AllowDuplicates := false;

  if chAdvMasc.Checked = true then
     begin
        lp.MaskLabels := true;
        lp.MaskColor  := advCor.color;
     end
     else
        lp.MaskLabels := false;

  //*****************
  lyr.renderer := lp;

end;

procedure tfrmLegenda.LoadLB;
var
cly               : IMoMapLayer;
clys              : IMoLayers;
ShapeRecords      : IMoRecordset;
campos            : IMofields;
campo             : IMoField;
t_desc            : IMoTableDesc;
i,ind,indX,indY,w : integer;
nomecampo,texto   : string;
begin

   //se for do tipo cad o arquivo, sai da rotina
   texto :=  ExtractFileExt(lyr.Tag);

   if (UpperCase(texto) = '.DWG') or (UpperCase(texto) = '.DWG|TEXTO') or (UpperCase(texto) = '.DXF') or (UpperCase(texto) = '.DXF|TEXTO') then
      begin
        pgcLegenda.ActivePageIndex := 0;
        tbUnicoSim.Enabled         := true;
        tbUnicoV.Enabled           := false;
        tbEscala.Enabled           := false;
        tbLblPadrao.enabled        := false;
        tbadvLabel.enabled         := false;
        tbElevacao.enabled         := false;
        exit;
      end;

   lr := CoLabelRenderer.create;
   lr := IMoLabelRenderer(lyr.Renderer);

   clys                 := IMoLayers(frmmenu.map1.layers);
   cly                  := CoMapLayer.create;
   cly                  := IMoMapLayer(lyrs.item(itemlegenda));
   ShapeRecords         := cly.Records;
   campos               := ShapeRecords.Fields;
   t_desc               := ShapeRecords.TableDesc;

   nomecampo            := lr.field;

   //carregando os combos
   w := 0;

   for i:=0 to t_desc.FieldCount-1 do
      begin

        campo := campos.Item(t_desc.FieldName[i]);

        if campo.name = nomecampo then
           ind := i;
           cbLBCampo.Items.Add(campo.Name);

        if (campo.type_ = modouble) or (campo.type_ = moLong) then
           begin
              if campo.Name = lr.XOffsetField then
                 indX := w;
              if campo.Name = lr.YOffsetField then
                 indY := w;
                 inc(w);
              cbLBX.items.add(campo.Name);
              cbLBY.items.add(campo.Name);
           end;
      end;

   //combo recebe o antigo campo selecionado
   cbLBCampo.itemindex := ind;
   cbLBX.ItemIndex     := indX;
   cbLBY.ItemIndex     := indY;

   //carregando os alinhamentos
   with lr.Symbol[0] do
       begin
          //ALINHAMENTO HORIZONTAL
          if HorizontalAlignment = moAlignLeft then
             cbLBHorizon.ItemIndex := 0
             else
                if HorizontalAlignment = moAligncenter then
                   cbLBHorizon.ItemIndex := 1
                   else
                      if HorizontalAlignment = moAlignRight then
                         cbLBHorizon.ItemIndex := 2;

          //ALINHAMENTO VERTICAL
          if VerticalAlignment = moAlignTop then
             cbLBVertical.itemindex := 0
             else
             if VerticalAlignment = moAlignCenter then
                cbLBVertical.itemindex := 1
                else
                if VerticalAlignment = moAlignBottom then
                   cbLBVertical.itemindex := 2;
       end;

       //carregar os checkbox
       if lr.DrawBackground = true then
          chLBCaract.Checked := true
          else
          chLBCaract.Checked := false;
       If lr.AllowDuplicates = true Then
          chLBDuplic.Checked := true
          else
          chLBDuplic.Checked := false;
       if lr.SplinedText = true then
          chLBSplined.Checked := true
          else
          chLBSplined.Checked := false;
       if lr.Flip = true then
          chLBFlip.Checked := true
          else
          chLBFlip.Checked := false;

   //pegando a rotação
   if lr.Symbol[0].rotation = 0 then
      tbRot.value := 0
      else
      tbRot.value := strtoint(vartostr(lr.Symbol[0].rotation));

   //Pegando a Fonte
   FontDialog1.Font.color := lr.Symbol[0].color;
   OleFontToFont(lr.Symbol[0].Font,fontdialog1.Font);

   //atualizando o edit da fonte e a label da rotaçao;
   edtFonte.text      := FontDialog1.Font.Name;
   lblRotacao.caption := inttostr(tbRot.value);

end;

procedure TfrmLegenda.CarregarLR;
begin

  if trim(cbLBCampo.text)='' then
     exit;

  lr       := CoLabelRenderer.create;
  lr.Field := cbLBCampo.text;

  With lr.Symbol[0] do
     begin
        //combo horizontal
        if cbLBHorizon.ItemIndex = 0 then //esquerda
           HorizontalAlignment := moAlignLeft;
        if cbLBHorizon.ItemIndex = 1 then //centro
           HorizontalAlignment := moAlignCenter;
        if cbLBHorizon.ItemIndex = 2 then //direita
           HorizontalAlignment := moAlignRight;
        //combo vertical
        if cbLBVertical.ItemIndex = 0 then //topo
           VerticalAlignment := moAlignTop;
        if cbLBVertical.ItemIndex = 1 then //Centro
           VerticalAlignment := moAlignCenter;
        if cbLBVertical.ItemIndex = 2 then //fundo
           VerticalAlignment := moAlignBottom;
        //ROTAÇÃO
        if tbRot.value = 0 then
           rotation := 0
        else
           rotation := tbrot.value;

       //FONTE
       color := FontDialog1.Font.Color;
       font  := IFontDisp(IDispatch(FontToOleFont(FontDialog1.Font)));

   end;

   if trim(cblbX.Text)<>'' then
      lr.XOffsetField := trim(cbLBX.text);
   if trim(cblbY.Text)<>'' then
      lr.YOffsetField := trim(cbLBY.text);

    with lr do
      begin
        //checkbox
         if chLBCaract.Checked = true then
            DrawBackground := true
         else
            DrawBackground := false;
         if chLBDuplic.Checked = true then
            AllowDuplicates := true
         else
            AllowDuplicates := false;
         if chLBSplined.Checked = true then
            SplinedText := true
         else
            SplinedText := false;
         if chLBFlip.Checked = true then
            Flip := true
         else
            Flip := false;

     end;

   lyr.Renderer := lr;

end;

procedure TfrmLegenda.LoadElevacao;
var
corSymbol : IMoSymbol;
i   : integer;
begin

//pega a layer ja configurada
   zRend := CoZRenderer.Create;
   zRend := IMoZRenderer(lyr.renderer);

//****************************
//recria o frame (ZREND)
//****************************
  frmElevacao1.free;
  frmElevacao1        := TfrmElevacao.create(self);
  frmElevacao1.parent := panelElevacao;
  frmElevacao1.align  := alclient;
  frmElevacao1.Elev1.caption    := '';
  frmElevacao1.Elev1.autosize   := true;
  frmelevacao1.ElevCor0.visible := true;
  frmelevacao1.visible          := true;

//combo pega numero de classes

  cbElevClasses.ItemIndex := zRend.BreakCount - 2; // -2 para corresponder ao itemindex

  //carregar combo do calculo
  cbElvTipo.ItemIndex    := zRend.ValueCalculation;

  //pegamos as cores iniciais e finais para colocar nos edits cor inicial e final
  corSymbol              := CoSymbol.create; //IMoSymbol(CreateOleObject('mapobjects2.symbol'));

  //inicial
  corsymbol              := IMoSymbol(zrend.symbol[0]);
  elvInicial.Color       := corSymbol.Color;

  //final
  corsymbol              := IMoSymbol(zrend.symbol[zRend.BreakCount - 1]);
  ElvFinal.color         := corsymbol.color;

//agora finalmente preenchemos o frame
  corsymbol := IMoSymbol(zrend.symbol[0]);
  frmElevacao1.ElevCor0.color := corSymbol.Color;
  frmElevacao1.Elev1.caption  := 'Menor Que ' + Formatfloat('0.00',zRend.Break[0]);


//do primeiro ao ultimo simbolo, preenchemos o frame
  For i:= 1 To zRend.BreakCount do
     begin
          lbl1   := TLabel.Create(self);
          rzlbl1 := TRZLabel.create(self);
          {criando os objetos da legenda}
          with frmElevacao1 do
              begin
                  with lbl1 do
                    begin
                       name     := 'Elev1'+inttostr(i);
                       parent   := frmElevacao1;
                       top      := frmElevacao1.Elev1.top + i * 16;
                       autosize := true;
                       height   := 13;
                       left     := 39;
                       Width    := 141;
                       visible  := true;
                       color    := clSilver;
                       if i = zRend.breakcount then
                          caption  := 'Maior Que ' + Formatfloat('0.00',zRend.Break[i-1])
                       else
                          caption  := Formatfloat('0.00',zRend.Break[i-1]);
                   end;

                  with RZlbl1 do
                     begin
                        name        := 'ElevCor'+inttostr(i);
                        parent      := frmElevacao1;
                        BorderOuter := ElevCor0.BorderOuter;
                        top         := frmElevacao1.ElevCor0.top + i * 16;
                        autosize    := false;
                        height      := 16;
                        left        := 5;
                        Width       := 30;
                        visible     := true;
                        corSymbol   := IMoSymbol(zrend.symbol[i]);
                        color       := corsymbol.Color;
                        caption     := '';
                     end;

              end;
     end;

end;

procedure TfrmLegenda.CarregarZLegenda;
var
n         : Integer;
range     : Double;
MinZ      : Double;
MaxZ      : Double;
corSymbol : IMoSymbol;
begin

   if trim(cbElevClasses.Text)='' then
      begin
         application.MessageBox('Selecione Um Número De Classes','SIGGeo', mb_ok + mb_iconwarning);
         exit;
      end;

   if trim(cbElvTipo.Text)='' then
      begin
         application.MessageBox('Selecione Um Tipo De Cálculo!','SIGGeo', mb_ok + mb_iconwarning);
         exit;
      end;

//recria o frame
  frmElevacao1.free;
  frmElevacao1                  := TfrmElevacao.create(self);
  frmElevacao1.parent           := panelElevacao;
  frmElevacao1.align            := alclient;
  frmElevacao1.Elev1.caption    := '';
  frmElevacao1.Elev1.autosize   := true;
  frmelevacao1.ElevCor0.visible := true;
//  frmelevacao1.ElevCor0.OnClick := TrocarCorItemZlegend;
  frmelevacao1.visible          := true;

//*******************************
//**** limpa os outros frames ***
//*******************************
//Recria o frame para limpa-lo (VMR)
  frame11.Free;
  Frame11                   := TfrmFrameLegenda.create(self);
  frame11.Parent            := panelLegenda;
  frame11.Align             := alClient;
  frame11.legenda1.Caption  := '';
  frame11.legenda1.AutoSize := true;
  frame11.picCor0.visible   := true;
  frame11.visible := true;

//**********************************
//Recria o frame para limpa-lo (CBR)
//**********************************
  frmframeClasses1.Free;
  frmframeClasses1                    := TfrmframeClasses.create(self);
  frmframeClasses1.Parent             := panelClasses;
  frmframeClasses1.Align              := alClient;
  frmframeClasses1.LblClass1.Caption  := '';
  frmframeClasses1.LblClass1.AutoSize := true;
  frmframeClasses1.Cor0.visible       := false;
  frmframeClasses1.visible            := true;
//**********************************
//**********************************

//pega valores das layers
  try

  MinZ             := lyr.Extent.Floor;
  MaxZ             := lyr.Extent.Ceiling;
  range            := MaxZ - MinZ;

  zRend            := CoZRenderer.Create;
  zRend.BreakCount := strtoint(cbElevClasses.text);

  zRend.ValueCalculation := cbElvTipo.ItemIndex;

// Set the breaks using simple equal interval ranges...
    For n:= 1 To zRend.BreakCount do
        zRend.Break[n-1] := MinZ + ((range / zRend.BreakCount + 1) * (n));

//Build symbol array by ramping start and end colors
  zRend.RampColors(elvInicial.Color,elvFinal.color);

  corSymbol := CoSymbol.create; //IMoSymbol(CreateOleObject('mapobjects2.symbol'));
  corsymbol := IMoSymbol(zrend.symbol[0]);

  frmElevacao1.ElevCor0.color := corSymbol.Color;
  frmElevacao1.Elev1.caption  := 'Menor Que ' + Formatfloat('0.00',zRend.Break[0]);

  For n:= 1 To zRend.BreakCount do
     begin
          lbl1   := TLabel.Create(self);
          rzlbl1 := TRZLabel.create(self);
          {criando os objetos da legenda}
          with frmElevacao1 do
              begin
                  with lbl1 do
                    begin
                       name     := 'Elev1'+inttostr(N);
                       parent   := frmElevacao1;
                       top      := frmElevacao1.Elev1.top + n * 16;
                       Transparent := true;
                       autosize := true;
                       height   := 13;
                       left     := 39;
                       Width    := 141;
                       visible  := true;
                       color    := clSilver;
                       if n = zRend.breakcount then
                          caption  := 'Maior Que ' + Formatfloat('0.00',zRend.Break[n-1])
                       else
                          caption  := Formatfloat('0.00',zRend.Break[n-1]);
                   end;
                  with RZlbl1 do
                     begin
                        name        := 'ElevCor'+inttostr(n);
                        parent      := frmElevacao1;
                        BorderOuter := ElevCor0.BorderOuter;
                        top         := frmElevacao1.ElevCor0.top + n * 16;
                        autosize    := false;
                        height      := 16;
                        left        := 5;
                        Width       := 30;
                        visible     := true;
                        corSymbol   := IMoSymbol(zrend.symbol[n]);
                        color       := corsymbol.Color;
                        caption     := '';
                     end;
              end;
          //*******************
     end;

  except
     btZerar.Click;
  end;


end;

procedure TfrmLegenda.loadLegenda;
var
ind              : integer;
i                : Integer;
cly              : IMoMapLayer;
clys             : IMoLayers;
ShapeRecords     : IMoRecordset;
campos           : IMofields;
campo            : IMoField;
t_desc           : IMoTableDesc;
novaLista        : TStringList;
begin

 try

 //Recria o frame para limpa-lo (VMR)
  frame11.Free;
  Frame11                   := TfrmFrameLegenda.create(self);
  frame11.Parent            := panelLegenda;
  frame11.Align             := alClient;
  frame11.legenda1.Caption  := '';
  frame11.legenda1.AutoSize := true;
  frame11.picCor0.visible   := true;
  frame11.picCor0.OnClick   := TrocarCorItemVMR;
  frame11.visible           := true;
  frame11.Enabled           := true;


//inicializa as variaveis do mapobjects
   vmr := CoValueMapRenderer.Create; //IMoValueMapRenderer(CreateOleObject('mapobjects2.ValueMapRenderer'));
   vmr := IMoValueMapRenderer(lyr.renderer);

  //insere os valores do campo do shape no maprenderer

  //frame recebe o primeiro valor e cor da legenda
     frame11.picCor0.Color    := vmr.Symbol[0].color;
     frame11.legenda1.Caption := vmr.value[0];
     cbPreenchvmr.ItemIndex   := vmr.Symbol[0].Style;

  //se for ter mais de 1 item na legenda, a rotina abaixo vai
  //carregar todos os dados da legenda no frame
  For i:=1 To vmr.ValueCount - 1 do
     begin
          lbl1   := TLabel.Create(self);
          rzlbl1 := TRZLabel.create(self);
          {criando os objetos da legenda}
          with frame11 do
              begin
                  with lbl1 do
                    begin
                       name     := 'Legenda'+inttostr(I);
                       parent   := frame11;
                       top      := frame11.legenda1.top + i * 16;
                       autosize := true;
                       height   := 13;
                       left     := 39;
                       Width    := 141;
                       visible  := true;
                       color    := clSilver;
                       Transparent := true;
                       enabled  := true;
                       caption  := vmr.value[i];
                   end;
                  with RZlbl1 do
                     begin
                        name        := 'PicCor'+inttostr(I);
                        parent      := frame11;
                        BorderOuter := picCor0.BorderOuter;
                        top         := Frame11.picCor0.top + i * 16;
                        autosize    := false;
                        height      := 16;
                        left        := 5;
                        Width       := 30;
                        visible     := true;
                        enabled     := true;
                        color       := vmr.Symbol[i].color;
                        OnClick     := TrocarCorItemVMR;
                        caption     := '';
                     end;
              end;
          //*******************
     end;

    cbcampo.items.clear;

    Frame11.Enabled      := true;
    panelLegenda.Enabled := true;

  //verifica se o shape é do tipo poligono, para habilitar ou nao a seleçao
  //de desenhar outlines
  if lyr.shapeType = moShapeTypePolygon then
     begin
        chkUV.visible := true;
        if vmr.Symbol[0].Outline = true then
           begin
              chkUV.Checked        := true;
              lblUVoutcor.enabled  := true;
              cbUVoutcor.enabled   := true;
              lblOut1.enabled      := true;
              lblOut2.enabled      := true;
              lblUVoutcor.color    := vmr.Symbol[0].outlineColor;
              cbUVoutcor.ItemIndex := vmr.Symbol[0].Size - 1;
           end
        else
           chkUV.Checked := false;
     end
  else
     chkUV.visible := false;

         clys                 := IMoLayers(frmmenu.map1.layers);
         cly                  := CoMapLayer.Create; //IMomaplayer(CreateOleObject('MapObjects2.maplayer'));
         cly                  := IMoMapLayer(lyrs.item(itemlegenda));
         ShapeRecords         := cly.Records;
         campos               := ShapeRecords.Fields;
         t_desc               := ShapeRecords.TableDesc;

         //***********************************
         //***********************************
         NovaLista := TStringList.create;

         for i:=0 to t_desc.FieldCount-1 do
            begin
               campo := campos.Item(t_desc.FieldName[i]);
               if campo.Type_ <> moDouble then
                  novalista.Add(campo.Name);
            end;

         //tive que fazer essa maluquice pra nao dar bug por causa
         //do itemindex dos campos campos double
         for i:=0 to novaLista.Count-1 do
            begin
               if novaLista.Strings[i] = vmr.Field then
                  ind := i;
               cbcampo.Items.Add(novaLista.Strings[i]);
            end;
         //novo index
         cbCampo.ItemIndex := ind;
         //***********************************
         //***********************************

         if chkUV.Checked = true then
            begin
                lblUVoutcor.enabled := true;
                cbUVoutcor.enabled  := true;
                lblOut1.enabled     := true;
                lblOut2.enabled     := true;
         end
         else
            begin
               lblUVoutcor.enabled := false;
               cbUVoutcor.enabled  := false;
               lblOut1.enabled     := false;
               lblOut2.enabled     := false;
            end;

  except
     frmmenu.mensagem('Não é Possível Reiniciar a Legenda!',mtError,[mbok]);
     exit;
  end;

end;

procedure TfrmLegenda.CarregarCombo;
var
i            : integer;
cly          : IMoMapLayer;
clys         : IMoLayers;
ShapeRecords : IMoRecordset;
campos       : IMofields;
campo        : IMoField;
t_desc       : IMoTableDesc;
begin

  try
   cbcampo.items.clear;
   //verifica se o shape é do tipo poligono, para habilitar ou nao a seleçao
   //de desenhar outlines
  if lyr.shapeType = moShapeTypePolygon then
     chkUV.visible := true
  else
     chkUV.visible := false;

         clys                 := IMoLayers(frmmenu.map1.layers);
         cly                  := CoMapLayer.create; //IMomaplayer(CreateOleObject('MapObjects2.maplayer'));
         cly                  := IMoMapLayer(lyrs.item(itemlegenda));
         ShapeRecords         := cly.Records;
         campos               := ShapeRecords.Fields;
         t_desc               := ShapeRecords.TableDesc;

         for i:=0 to t_desc.FieldCount-1 do
            begin
               campo := campos.Item(t_desc.FieldName[i]);
               if campo.Type_ <> moDouble then
                  cbcampo.Items.Add(campo.Name);
            end;
   except
      frmmenu.mensagem('Shape Inválido!',mtInformation,[mbok]);
      exit;
   end;

end;

procedure TfrmLegenda.CarregarLBCombo;
var
i            : integer;
cly          : IMoMapLayer;
clys         : IMoLayers;
ShapeRecords : IMoRecordset;
campos       : IMofields;
campo        : IMoField;
t_desc       : IMoTableDesc;
begin

  try
    cbLBCampo.items.clear;
    cbLBX.items.Clear;
    cbLBY.items.clear;

    cbLBHorizon.itemindex  := 1; //define para centro
    cbLBVertical.itemindex := 1; //define para centro

    edtFonte.text := FontDialog1.Font.Name; //edit recebe nome da fonte

   //verifica se o shape é do tipo poligono, para habilitar ou nao a seleçao
   //de desenhar outlines

         clys                 := IMoLayers(frmmenu.map1.layers);
         cly                  := CoMapLayer.create; //IMomaplayer(CreateOleObject('MapObjects2.maplayer'));
         cly                  := IMoMapLayer(lyrs.item(itemlegenda));
         ShapeRecords         := cly.Records;
         campos               := ShapeRecords.Fields;
         t_desc               := ShapeRecords.TableDesc;

         for i:=0 to t_desc.FieldCount-1 do
            begin
               campo := campos.Item(t_desc.FieldName[i]);
               cbLBCampo.Items.Add(campo.Name);
               if (campo.Type_ = modouble) or (campo.Type_ = molong) then
                  begin
                     cbLBX.items.add(campo.Name);
                     cbLBY.Items.add(campo.name);
                  end;
            end;
   except
     exit;
   end;

end;

procedure tfrmlegenda.GerarClasses;
var
stats : IMoStatistics;
range : Double;
i,numClasses,numBreaks : Integer;
recs  : IMoRecordset;
begin

  If trim(cbCampoNum.Text)= '' Then
     begin
        frmmenu.mensagem('Selecione um Campo!',mtError,[mbok]);
        exit;
     end;

  If trim(cbNumClasses.Text)= '' Then
     begin
        frmmenu.mensagem('Selecione o Numero de Classes!',mtError,[mbok]);
        exit;
     end;

  recs           := lyr.Records;
  stats          := recs.CalculateStatistics(cbCampoNum.Text);

  numClasses     := strtoint(cbNumClasses.Text);
  numBreaks      := numClasses - 1;

  cbr            := CoClassBreaksRenderer.Create; //IMoClassBreaksRenderer(CreateOleObject('mapobjects2.ClassBreaksRenderer'));
  cbr.Field      := cbCampoNum.Text;

  cbr.BreakCount := numBreaks;
  range          := stats.Max - stats.Min;

  For i:= 0 To numBreaks - 1 do
     cbr.Break[i] := stats.Min + ((range / numClasses) * (i + 1));

  cbr.RampColors(inicial.Color,final.Color);

//Recria o frame para limpa-lo
  frmframeClasses1.Free;
  frmframeClasses1                    := TfrmframeClasses.create(self);
  frmframeClasses1.Parent             := panelClasses;
  frmframeClasses1.Align              := alClient;
  frmframeClasses1.LblClass1.Caption  := '';
  frmframeClasses1.LblClass1.AutoSize := true;
  frmframeClasses1.Cor0.visible       := false;
  frmframeClasses1.Cor0.OnClick       := TrocarCorItemCBR;
  frmframeClasses1.visible            := true;

//**********************************
//LIMPA OS OUTROS FRAMES
//**********************************

//Recria o frame para limpa-lo (VMR)
  frame11.Free;
  Frame11                   := TfrmFrameLegenda.create(self);
  frame11.Parent            := panelLegenda;
  frame11.Align             := alClient;
  frame11.legenda1.Caption  := '';
  frame11.legenda1.AutoSize := true;
  frame11.picCor0.visible   := true;
  frame11.visible           := true;
//recria o frame (ZREND)
  frmElevacao1.free;
  frmElevacao1        := TfrmElevacao.create(self);
  frmElevacao1.parent := panelElevacao;
  frmElevacao1.align  := alclient;
  frmElevacao1.Elev1.caption    := '';
  frmElevacao1.Elev1.autosize   := true;
  frmelevacao1.ElevCor0.visible := true;
  frmelevacao1.visible          := true;
//************************************
//************************************


//**********

try
  frmframeClasses1.Cor0.Visible        := true;
  frmframeClasses1.Cor0.color          := cbr.Symbol[0].color;
  cbr.Symbol[0].Style                  := cbPreenchCbr.ItemIndex;
  frmframeClasses1.LblClass1.caption   := 'Menor Que ' + FormatFloat('0.00',cbr.Break[0]);

  For i:=1 To cbr.BreakCount do
     begin
        lbl1   := TLabel.Create(self);
        rzlbl1 := TRZLabel.create(self);
        {criando os objetos da legenda}
        cbr.Symbol[i].Style := cbPreenchCbr.ItemIndex;

        with frmframeClasses1 do
            begin
                  with lbl1 do
                    begin
                       name     := 'LblClass'+inttostr(I);
                       parent   := frmframeClasses1;
                       Transparent := true;
                       top      := frmframeClasses1.LblClass1.top + i * 16;
                       autosize := true;
                       height   := 13;
                       left     := 39;
                       Width    := 141;
                       visible  := true;
                       Transparent := true;
                       color    := clSilver;
                       if i = cbr.BreakCount then
                          caption  := 'Maior Que ' + Formatfloat('0.00',cbr.Break[i - 1])
                       else
                          caption  := Formatfloat('0.00',cbr.Break[i - 1]) + ' - ' + Formatfloat('0.00',cbr.Break[i]);

                    end;
                  with RZlbl1 do
                     begin
                        name        := 'Cor'+inttostr(I);
                        parent      := frmframeClasses1;
                        BorderOuter := Cor0.BorderOuter;
                        top         := frmframeClasses1.Cor0.top + i * 16;
                        autosize    := false;
                        height      := 16;
                        left        := 5;
                        Width       := 30;
                        visible     := true;
                        //Transparent := true;
                        color       := cbr.Symbol[i].Color;
                        caption     := '';
                        OnClick     := TrocarCorItemCBR; 
                     end;
              end;
          //*******************
    end;
 //**********
 except
     btZerar.Click;
 end;    

end;

procedure TfrmLegenda.CarregarClasses;
var
i            : integer;
cly          : IMoMapLayer;
clys         : IMoLayers;
ShapeRecords : IMoRecordset;
campos       : IMofields;
campo        : IMoField;
t_desc       : IMoTableDesc;
begin

  try
   cbCampoNum.items.clear;
   //verifica se o shape é do tipo poligono, para habilitar ou nao a seleçao
   //de desenhar outlines

  if lyr.shapeType = moShapeTypePolygon then
     chClasses.visible := true
  else
     chClasses.visible := false;

         clys                 := IMoLayers(frmmenu.map1.layers);
         cly                  := CoMapLayer.create; //IMomaplayer(CreateOleObject('MapObjects2.maplayer'));
         cly                  := IMoMapLayer(lyrs.item(itemlegenda));
         ShapeRecords         := cly.Records;
         campos               := ShapeRecords.Fields;
         t_desc               := ShapeRecords.TableDesc;

         for i:=0 to t_desc.FieldCount-1 do
            begin
               campo := campos.Item(t_desc.FieldName[i]);
               // 5 - float
               // 3 - longint integer
               // 8 - string
               if (campo.Type_ = moDouble ) or (campo.Type_ = moLong) then
                  cbcamponum.Items.Add(campo.Name);
            end;
   except
      frmmenu.mensagem('Shape Inválido!',mtError,[mbok]);
      exit;
   end;

end;

Procedure tfrmLegenda.CarregarNovaLegenda;
var
fld              : IMoField;
flds             : IMofields;
i                : Integer;
recs             : IMoRecordset;
symInt           : smallint;
varTrue          : wordbool;
begin

 if trim(cbcampo.text)='' then
    begin
       frmmenu.mensagem('Selecione Um Campo!',mtError,[mbok]);
       exit;
    end;

 try

//Recria o frame para limpa-lo
  frame11.Free;
  Frame11                   := TfrmFrameLegenda.create(self);
  frame11.Parent            := panelLegenda;
  frame11.Align             := alClient;
  frame11.legenda1.Caption  := '';
  frame11.legenda1.AutoSize := true;
  frame11.picCor0.visible   := true;
  frame11.visible           := true;
  frame11.picCor0.OnClick   := TrocarCorItemVMR;
//************************************************
//**** RECRIA OS OUTROS FRAMES PARA LIMPA-LOS ****
//************************************************
//*****Recria o frame para limpa-lo (CBR) ********
  frmframeClasses1.Free;
  frmframeClasses1                    := TfrmframeClasses.create(self);
  frmframeClasses1.Parent             := panelClasses;
  frmframeClasses1.Align              := alClient;
  frmframeClasses1.LblClass1.Caption  := '';
  frmframeClasses1.LblClass1.AutoSize := true;
  frmframeClasses1.Cor0.visible       := false;
  frmframeClasses1.visible            := true;
//******recria o frame (ZREND)
  frmElevacao1.free;
  frmElevacao1                        := TfrmElevacao.create(self);
  frmElevacao1.parent                 := panelElevacao;
  frmElevacao1.align                  := alclient;
  frmElevacao1.Elev1.caption          := '';
  frmElevacao1.Elev1.autosize         := true;
  frmelevacao1.ElevCor0.visible       := true;
  frmelevacao1.visible                := true;
//******************************************
//******************************************
//pega os dados da layer
   recs                               := lyr.records;
   flds                               := recs.Fields;

//pega o campo que será feita a classificaçao
   fld                                := flds.Item(cbCampo.text);

//se o campo nao existir ou nao conseguir pegar o campo, sair da rotina
   If fld = nil Then
      Exit;

//inicializa as variaveis do mapobjects
   vmr              := CoValueMapRenderer.create; //MoValueMapRenderer(CreateOleObject('mapobjects2.ValueMapRenderer'));
   strsUniqueValues := CoStrings.Create; //IMoStrings(CreateOleObject('mapobjects2.strings'));

//pegar todos os dados e inserir dentro do imostring
   recs.MoveFirst;
   While Not recs.EOF do
      begin
         strsUniqueValues.Add(vartostr(fld.value));
         recs.MoveNext;
      end;

//colocar os dados em ordem alfabetica
   strsUniqueValues.Sort(2);

//verifica o numero de itens que tera na legenda, se for mais de 200, sai da rotina
   If (strsUniqueValues.Count > 200) Or (strsUniqueValues.Count < -1) Then
      begin
         application.messagebox('Não é possivel gerar a legenda pois o número de itens é superior a 200.','SIGGeo', mb_ok + mb_iconerror);
         frame11.picCor0.visible   := false;
         Exit;
      End;

//verifica o tipo do shape,para carregar o simbolo correto do maprenderer;
   If (lyr.shapeType = moShapeTypeMultipoint) or (lyr.shapeType = moShapeTypePoint) then
      symInt := 0
   Else
      symInt := lyr.shapeType - 21;

   //maprenderer recebe os valores para classificar
   vmr.SymbolType          := symInt;
   vmr.Field               := cbCampo.text;
   varTrue                 := true;
   vmr.UseDefault          := varTrue;
   vmr.ValueCount          := strsUniqueValues.Count;

   //******************************************
   vmr.DefaultSymbol.Size          := 1;
   vmr.DefaultSymbol.OutlineColor  := clGray;
   vmr.DefaultSymbol.Style         := lyr.Symbol.style;  //cbPreenchvmr.ItemIndex;
   //******************************************

  //insere os valores do campo do shape no maprenderer
   For i:= 0 To strsUniqueValues.Count - 1 do
     begin
        vmr.value[i] := strsUniqueValues.Item(i);
     end;

  //frame recebe o primeiro valor e cor da legenda
  frame11.picCor0.Color    := vmr.Symbol[0].color;
  frame11.legenda1.Caption := vmr.value[0];
  vmr.Symbol[0].Style      := cbPreenchvmr.ItemIndex;

  //se for ter mais de 1 item na legenda, a rotina abaixo vai
  //carregar todos os dados da legenda no frame
  For i:=1 To vmr.ValueCount - 1 do
     begin
          lbl1   := TLabel.Create(self);
          rzlbl1 := TRZLabel.create(self);
          vmr.Symbol[i].Style      := cbPreenchvmr.ItemIndex;
          {criando os objetos da legenda}
          with frame11 do
              begin
                  with lbl1 do
                    begin
                       name     := 'Legenda'+inttostr(I);
                       Transparent := true;
                       parent   := frame11;
                       top      := frame11.legenda1.top + i * 16;
                       autosize := true;
                       height   := 13;
                       left     := 39;
                       Width    := 141;
                       visible  := true;
                       Transparent := true;
                       color    := clSilver;
                       caption  := vmr.value[i];
                   end;

                  //****************
                  with RZlbl1 do
                     begin
                        name        := 'PicCor' + inttostr(I);
                        parent      := frame11;
                        BorderOuter := picCor0.BorderOuter;
                        top         := Frame11.picCor0.top + i * 16;
                        autosize    := false;
                        height      := 16;
                        left        := 5;
                        Width       := 30;
                        visible     := true;
                        color       := vmr.Symbol[i].color;
                        //Transparent := true;
                        caption     := '';
                        OnClick     := TrocarCorItemVMR;
                     end;
              end;
          //*******************
     end;
  except
     frmmenu.mensagem('Não é Possível Reiniciar a Legenda!',MtError, [mbok]);
     btZerar.Click;
     exit;
  end;

End;

procedure TfrmLegenda.TrocarCorItemVMR(Sender: TObject);
var
nomObj : String;
item   : smallint;
begin

   //******************************
   if sender is TrzLabel then
      begin
         frmmenu.ColorDialog1.Execute;
         nomObj := TrzLabel(Sender).Name;
         TrzLabel(Sender).Color := frmmenu.ColorDialog1.Color;
         item   := StrToInt(copy(nomObj,7,length(nomObj)-6));
         vmr.Symbol[item].Color := frmmenu.ColorDialog1.Color;
      end;

end;

procedure TfrmLegenda.TrocarCorItemZlegend(Sender: TObject);
//var
//nomObj : String;
//item   : smallint;
begin
{
   //******************************
   if sender is TrzLabel then
      begin
         ColorDialog1.Execute;
         nomObj := TrzLabel(Sender).Name;
         TrzLabel(Sender).Color := ColorDialog1.Color;
         item   := StrToInt(copy(nomObj,4,length(nomObj)-3));
         cbr.Symbol[item].Color := ColorDialog1.Color;
      end;
}

end;

procedure TfrmLegenda.TrocarCorItemCBR(Sender: TObject);
var
nomObj : String;
item   : smallint;
begin

   //******************************
   if sender is TrzLabel then
      begin
         frmmenu.ColorDialog1.Execute;
         nomObj := TrzLabel(Sender).Name;
         TrzLabel(Sender).Color := frmmenu.ColorDialog1.Color;
         item   := StrToInt(copy(nomObj,4,length(nomObj)-3));
         cbr.Symbol[item].Color := frmmenu.ColorDialog1.Color;
      end;

end;

procedure TfrmLegenda.loadClasses;
var
i            : integer;
cly          : IMoMapLayer;
clys         : IMoLayers;
ShapeRecords : IMoRecordset;
campos       : IMofields;
campo        : IMoField;
t_desc       : IMoTableDesc;
cont,ind     : integer;
begin

  cbr := CoClassBreaksRenderer.Create; 
  cbr := IMoClassBreaksRenderer(lyr.renderer);

  if lyr.shapeType = moShapeTypePolygon then
     chClasses.visible := true
  else
     chClasses.visible := false;

  if chclasses.Visible = true then
     if cbr.Symbol[0].Outline = true then
        begin
           lblEscCor.enabled     := true;
           cbEscalaEsp.enabled   := true;
           label29.enabled       := true;
           label30.enabled       := true;
           chClasses.Checked     := true;
           cbEscalaEsp.ItemIndex := cbr.Symbol[0].Size - 1;
           lblEscCor.Color       := cbr.Symbol[0].OutlineColor;
        end
        else
           begin
              chClasses.Checked    := false;
              lblEscCor.enabled    := false;
              cbEscalaEsp.enabled  := false;
              label29.enabled      := false;
              label30.enabled      := false;
           end;

 if chClasses.Checked = true then
     begin
        lblEscCor.enabled    := true;
        cbEscalaEsp.enabled  := true;
        label29.enabled      := true;
        label30.enabled      := true;
    end
    else
       begin
          lblEscCor.enabled    := false;
          cbEscalaEsp.enabled  := false;
          label29.enabled      := false;
          label30.enabled      := false;
       end;

//Recria o frame para limpa-lo (CBR)
  frmframeClasses1.Free;
  frmframeClasses1         := TfrmframeClasses.create(self);
  frmframeClasses1.Parent  := panelClasses;
  frmframeClasses1.Align   := alClient;
  frmframeClasses1.LblClass1.Caption  := '';
  frmframeClasses1.LblClass1.AutoSize := true;
  frmframeClasses1.Cor0.visible       := false;
  frmframeClasses1.visible            := true;
//**********
  frmframeClasses1.Cor0.Visible        := true;
  frmframeClasses1.Cor0.OnClick        := TrocarCorItemCBR;
  frmframeClasses1.Cor0.color          := cbr.Symbol[0].color;
  frmframeClasses1.LblClass1.caption   := 'Menor Que ' + FormatFloat('0.00',cbr.Break[0]);


  inicial.color := cbr.Symbol[0].Color;
  final.color   := cbr.Symbol[cbr.BreakCount].Color;

  //recebe o numero de classes
  cbNumClasses.ItemIndex := cbr.BreakCount - 1;

  clys                 := IMoLayers(frmmenu.map1.layers);
  cly                  := CoMapLayer.create; //IMomaplayer(CreateOleObject('MapObjects2.maplayer'));
  cly                  := IMoMapLayer(lyrs.item(itemlegenda));
  ShapeRecords         := cly.Records;
  campos               := ShapeRecords.Fields;
  t_desc               := ShapeRecords.TableDesc;

  cont := 0;
  for i:=0 to t_desc.FieldCount-1 do
      begin
         campo := campos.Item(t_desc.FieldName[i]);
         // 5 - float
         // 3 - longint integer
         if (campo.Type_ = moDouble ) or (campo.Type_ = moLong) then
            begin
               cbcamponum.Items.Add(campo.Name);
               if campo.Name = cbr.Field then
                  ind := cont;
               cont := cont + 1
            end;
     end;

  cbcamponum.ItemIndex := ind;

  For i:=1 To cbr.BreakCount do
     begin
       lbl1   := TLabel.Create(self);
       rzlbl1 := TRZLabel.create(self);
       {criando os objetos da legenda}
        with frmframeClasses1 do
            begin
                  with lbl1 do
                    begin
                       name     := 'LblClass' + inttostr(I);
                       parent   := frmframeClasses1;
                       top      := frmframeClasses1.LblClass1.top + i * 16;
                       autosize := true;
                       height   := 13;
                       left     := 39;
                       Width    := 141;
                       visible  := true;
                       color    := clSilver;
                       Transparent := true;
                       if i = cbr.BreakCount then
                          caption  := 'Maior Que ' + Formatfloat('0.00',cbr.Break[i - 1])
                       else
                          caption  := Formatfloat('0.00',cbr.Break[i - 1]) + ' - ' + Formatfloat('0.00',cbr.Break[i]);

                    end;
                  with RZlbl1 do
                     begin
                        name        := 'Cor'+inttostr(I);
                        parent      := frmframeClasses1;
                        BorderOuter := Cor0.BorderOuter;
                        top         := frmframeClasses1.Cor0.top + i * 16;
                        autosize    := false;
                        height      := 16;
                        left        := 5;
                        Width       := 30;
                        visible     := true;
                        color       := cbr.Symbol[i].Color;
                        OnClick     := TrocarCorItemCBR;
                        caption     := '';
                     end;
              end;
          //*******************
    end;

end;

procedure TfrmLegenda.ConfigurarLegendaPelaLayer(varItem : smallint);
var
cadtexto : string;
ext      : string;
lbr      : IMoLabelRenderer;
begin

   pgcLegenda.ActivePageIndex := 0;
   grpRenderer                := CoGroupRenderer.Create;

   cbEscalaEsp.itemindex      := 0;
   cbUVoutcor.ItemIndex       := 0;
   itemlegenda                := varItem;

   tempitem                   := itemlegenda;

   layerAtual                 := itemlegenda;

   //copiando o nome da layer
   lyr                        := CoMapLayer.Create;
   lyrs                       := frmmenu.map1.Layers;

   if IMoMapLayer(IMoLayers(lyrs).Item(itemlegenda)).LayerType <> moMapLayer then
      begin
          frmmenu.mensagem('O Tema Selecionado Não Pode Ser Editado Porque é do Tipo ImageLayer!',mtError,[mbOk]);
          cbItemlegenda.ItemIndex := tempitem;
          exit;
      end;

   lyr                        := imomaplayer(lyrs.item(itemlegenda));
   varmudacombo               := false;
   cbItemlegenda.itemindex    := itemlegenda;
   varmudacombo               := true;

   //verificando se a layer é do tipoZ
   ext                        := ExtractFileExt(lyr.tag);

   if (UpperCase(ext) = '.SHP|Z') or (UpperCase(ext) = '.|SDEZ') then
      begin
         pgcLegenda.Pages[5].tabVisible := true;
         cbtipo.Items.clear;
         cbtipo.Items.Add('Único Símbolo');
         cbtipo.Items.Add('Único Valor');
         cbtipo.Items.Add('Escala de Cores');
         cbtipo.Items.Add('Label Padrão');
         cbtipo.Items.Add('AdvLabel');
         cbtipo.Items.Add('Elevação');
      end
      else
        begin
          pgcLegenda.Pages[5].tabVisible := false;
          cbtipo.Items.clear;
          cbtipo.Items.Add('Único Símbolo');
          cbtipo.Items.Add('Único Valor');
          cbtipo.Items.Add('Escala de Cores');
          cbtipo.Items.Add('Label Padrão');
          cbtipo.Items.Add('AdvLabel');
        end;

   if (UpperCase(ext) = '.DWG') or (UpperCase(ext) = '.DWG|TEXTO') or (UpperCase(ext) = '.DXF') or (UpperCase(ext) = '.DXF|TEXTO') then
      begin
         pgcLegenda.Pages[1].tabVisible := false;
         pgcLegenda.Pages[2].tabVisible := false;
         cbtipo.items.Delete(2);
         cbtipo.items.Delete(1);
      end;

   //carregando itens no form
   edt.text            := lyr.Name;
   cbTipo.ItemIndex    := 0;
   tbUnicoSim.Enabled  := true;

   //""""" Verificando o tipo de shape da layer """""""
   If lyr.shapeType = 21 then // ponto
      begin
         If lyr.Symbol.Style = 0 then    //Círculo
            begin
               shCirculo.Visible     := true;
               shcirculo.Top         := 60;
               shcirculo.Left        := 40;
               shTriangulo.Visible   := false;
               lblCross.Visible      := false;
               shQuadrado.Visible    := false;
               cbLinha.Visible       := false;
               lblLinha.Visible      := false;
               lblTexto.Visible      := false;
               shPolig.visible       := false;
               shCirculo.Brush.Color := lyr.Symbol.Color;
               shCirculo.Pen.Color   := lyr.Symbol.OutlineColor;
            end;

         If lyr.Symbol.Style = 1 then    //Quadrado
            begin
                 shQuadrado.Visible     := true;
                 shQuadrado.Top         := 60;
                 shQuadrado.Left        := 40;
                 shTriangulo.Visible    := false;
                 lblCross.Visible       := false;
                 shCirculo.Visible      := false;
                 lblLinha.Visible       := false;
                 lblTexto.Visible       := false;
                 cbLinha.Visible        := false;
                 shPolig.visible        := false;
                 shQuadrado.Brush.Color := lyr.Symbol.Color;
                 shQuadrado.Pen.Color   := lyr.Symbol.OutlineColor;
          end;

         If lyr.Symbol.Style = 2 then    //Triângulo
            begin
               shTriangulo.Visible     := true;
               shTriangulo.Top         := 60;
               shTriangulo.Left        := 40;
               shQuadrado.Visible      := false;
               lblCross.Visible        := false;
               shCirculo.Visible       := false;
               lblLinha.Visible        := false;
               lblTexto.Visible        := false;
               cbLinha.Visible         := false;
               shPolig.visible         := false;
               shTriangulo.Brush.Color := lyr.Symbol.Color;
               shTriangulo.Pen.Color   := lyr.Symbol.OutlineColor;
            end;

         If lyr.Symbol.Style = 3 then    //Cross
            begin
               lblCross.Visible      := true;
               lblCross.Top          := 60;
               lblCross.Left         := 40;
               shQuadrado.Visible    := false;
               shTriangulo.Visible   := false;
               shCirculo.Visible     := false;
               lblLinha.Visible      := false;
               lblTexto.Visible      := false;
               cbLinha.Visible       := false;
               shPolig.visible       := false;
               lblCross.Font.Color   := lyr.Symbol.Color;
            end;
      end;
  //*********************************

  If lyr.shapeType = 22 then // linha
    begin
       cadtexto := ExtractFileExt(lyr.Tag);
       If (uppercase(cadtexto) = '.DWG|TEXTO') or (uppercase(cadtexto) = '.DXF|TEXTO') then
          begin
             lbr := CoLabelRenderer.create;
             lbr := IMoLabelRenderer(lyr.renderer);
             if ftn = nil then
             ftn       := TFont.create;
             ftn.Color := lbr.Symbol[0].Color;
             OleFontToFont(lbr.Symbol[0].Font,ftn);
             shPolig.visible     := false;
             shCirculo.Visible   := false;
             lblCross.Visible    := false;
             shTriangulo.Visible := false;
             shQuadrado.Visible  := false;
             cbLinha.Visible     := false;
             lblLinha.Visible    := false;
             lblTexto.Visible    := true;
             lbltexto.Top        := 60;
             lbltexto.Left       := 28;
             lblTexto.Font.Color := ftn.color;
             lbltexto.Font       := ftn;
             lblTexto.Caption    := 'TEXTO';
          end
       else
          begin
             shPolig.visible     := false;
             shCirculo.Visible   := false;
             lblCross.Visible    := false;
             shTriangulo.Visible := false;
             shQuadrado.Visible  := false;
             cbLinha.Visible     := false;
             lblTexto.Visible    := false;
             lblLinha.Visible    := true;
             lblLinha.Top        := 60;
             lblLinha.Left       := 28;
             lblLinha.Caption    := cbLinha.Items.Strings[cbLinha.itemindex];
             lblLinha.Font.Color := lyr.Symbol.Color;
          end;
    end;

 If lyr.shapeType = 23 then // polígono
    begin
       shCirculo.Visible   := false;
       shTriangulo.Visible := false;
       lblCross.Visible    := false;
       shQuadrado.Visible  := false;
       lblLinha.Visible    := false;
       lblTexto.Visible    := false;
       cbLinha.Visible     := false;
       shPolig.visible     := true;
       shpolig.Top         := 60;
       shpolig.Left        := 28;
       shPolig.Brush.Color := lyr.Symbol.Color;
       shPolig.Pen.Color   := lyr.Symbol.OutlineColor;
    end;


 //VERIFICO O TIPO DO RENDERER DA LAYER AO ABRIR
 //primeiro olho se existe vários renderer aplicados a layer
 if GetRendererType(lyr.Renderer) = momGroupRenderer then
  begin
     grpRenderer := IMoGroupRenderer(lyr.renderer);
     CarregarGroupRenderer;
  end
  else
     if GetRendererType(lyr.Renderer) = momNoRenderer then
        begin
           pgclegenda.ActivePageIndex := 0
        end
        else
        //se nao, verifico individualmente
        if GetRendererType(lyr.Renderer) = momValueMapRenderer then  //unico
           begin
              pgcLegenda.ActivePageIndex := 1;
              loadLegenda;
           end
           else
           if GetRendererType(lyr.Renderer) = momClassBreaksRenderer then //escaladecores
              begin
                pgcLegenda.ActivePageIndex := 2;
                loadClasses;
              end
              else
              if GetRendererType(lyr.Renderer) = momLabelRenderer then
                 begin
                    pgcLegenda.ActivePageIndex := 3;
                    LoadLB;
                 end
                 else
                  if GetRendererType(lyr.Renderer) = momLabelPlacer then
                     begin
                        pgcLegenda.ActivePageIndex := 4;
                        loadLP;
                     end
                     else
                       if GetRendererType(lyr.Renderer) = momZRenderer then
                          begin
                             pgcLegenda.ActivePageIndex := 5;
                             loadElevacao;
                          end
                          else
                            if GetRendererType(lyr.Renderer) = momUnknownRenderer then
                               begin
                                  pgclegenda.ActivePageIndex := 0;
                                  tbUnicoSim.Enabled  := true;
                                  tbUnicoV.Enabled   := false;
                                  tbEscala.Enabled    := false;
                                  tbLblPadrao.enabled := false;
                                  tbadvLabel.enabled  := false;
                                  tbElevacao.enabled  := false;
                               end;
 //******************************************************************************

 tbUnicoSim.Enabled  := true;
 tbUnicoV.Enabled    := true;
 tbEscala.Enabled    := true;
 tbLblPadrao.enabled := true;
 tbadvLabel.enabled  := true;
 tbElevacao.enabled  := true;

end;

procedure TfrmLegenda.FormCreate(Sender: TObject);
var
lyrs   : IMoLayers;
lyr    : IMoMaplayer;
imgLyr : IMoImageLayer;
i      : Smallint;
begin

 FormStyle := fsStayOnTop;

 varMudaCombo := false;
 cbItemlegenda.Items.Clear;

 lyrs := frmmenu.map1.Layers;

 for i:=0 to frmmenu.Map1.Layers.Count -1 do
    begin
       try
           if IMoMapLayer(IMoLayers(lyrs).Item(i)).LayerType = moMapLayer then
              begin
                  lyr  := CoMapLayer.Create;
                  lyr  := imomaplayer(lyrs.item(i));
                  cbItemlegenda.Items.Add(lyr.name);
              end
                else
                   begin
                       imglyr := CoImageLayer.Create;
                       imglyr := IMoImageLayer(lyrs.item(i));
                       cbItemlegenda.Items.Add(imglyr.name);
                   end;
       except
          //********
       end;

    end;

//**************
    ConfigurarLegendaPelaLayer(frmmenu.ItemDaLegendaSelecionado);
//**************

 varMudaCombo := true;

end;

procedure TfrmLegenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   if frmConfigLeg <> nil then frmConfigLeg.close;

   action     := cafree;
   frmLegenda := nil;

end;

procedure TfrmLegenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If key =#13 then
     begin
       key:=#0;
       perform(WM_NEXTDLGCTL,0,0);
     end;
end;

procedure TfrmLegenda.cbTipoChange(Sender: TObject);
begin

   If trim(cbTipo.text) = 'Único Símbolo' then //Único Símbolo
      begin
        tbUnicoSim.Enabled  := true;
        tbUnicoV.Enabled   := false;
        tbEscala.Enabled    := false;
        tbLblPadrao.enabled := false;
        tbadvLabel.enabled  := false;
        tbElevacao.enabled  := false;
        pgcLegenda.ActivePageIndex := 0;
      end;

   If trim(cbTipo.text) = 'Único Valor' then //Único Valor
      begin
        tbUnicoSim.Enabled  := false;
        tbUnicoV.Enabled   := true;
        tbEscala.Enabled    := false;
        tbLblPadrao.enabled := false;
        tbadvLabel.enabled  := false;
        tbElevacao.enabled  := false;
        pgcLegenda.ActivePageIndex := 1;
      end;

   If trim(cbTipo.text) = 'Escala de Cores' then  //Escala de Cores
      begin
        tbUnicoSim.Enabled  := false;
        tbUnicoV.Enabled   := false;
        tbEscala.Enabled    := true;
        tbLblPadrao.enabled := false;
        tbadvLabel.enabled  := false;
        tbElevacao.enabled  := false;
        pgcLegenda.ActivePageIndex := 2;
      end;

   If trim(cbTipo.text) = 'Label Padrão' then  //label padrao
      begin
        tbUnicoSim.Enabled  := false;
        tbUnicoV.Enabled   := false;
        tbEscala.Enabled    := false;
        tbLblPadrao.enabled := true;
        tbadvLabel.enabled  := false;
        tbElevacao.enabled  := false;
        pgcLegenda.ActivePageIndex := 3;
      end;

   If trim(cbTipo.text) = 'AdvLabel' then  //ADVLabel
      begin
        tbUnicoSim.Enabled  := false;
        tbUnicoV.Enabled   := false;
        tbEscala.Enabled    := false;
        tbLblPadrao.enabled := false;
        tbadvLabel.enabled  := true;
        tbElevacao.enabled  := false;
        pgcLegenda.ActivePageIndex := 4;
      end;
   If trim(cbTipo.text) = 'Elevação' then  //Elevacao
      begin
        tbUnicoSim.Enabled  := false;
        tbUnicoV.Enabled   := false;
        tbEscala.Enabled    := false;
        tbLblPadrao.enabled := false;
        tbadvLabel.enabled  := false;
        tbElevacao.enabled  := true;
        pgcLegenda.ActivePageIndex := 5;
      end;


//verifico se ja foi carregado os campos nas combos
//para evitar limpar as combos quando trocar de tab

    if pgcLegenda.ActivePageIndex = 1 then
       begin
       if cbCampo.itemindex = -1 then
       CarregarCombo;
       end;
    if pgcLegenda.ActivePageIndex = 2 then
       begin
       if cbCampoNum.itemindex = -1 then
       CarregarClasses;
       end;
    if pgcLegenda.ActivePageIndex = 3 then
       begin
       if cbLBCampo.itemindex = -1 then
       CarregarLBCombo;
       end;
    if pgcLegenda.ActivePageIndex = 4 then
       begin
       if cbADVCampo.itemindex = -1 then
       CarregarADVCombo;
       end;

end;

procedure TfrmLegenda.cbLinhaKeyPress(Sender: TObject; var Key: Char);
begin

   key:=#0;

end;

procedure TfrmLegenda.FormShow(Sender: TObject);
begin
  If lyr.shapeType = 22 then // linha
    begin
       lblLinha.Visible    := true;
       lblLinha.Top        := 60;
       lblLinha.Left       := 28;
       lblLinha.Caption    := cbLinha.Items.Strings[cbLinha.itemindex];
       lblLinha.Font.Color := lyr.Symbol.Color;
    end;

  If lyr.shapeType = 23 then   //polígono
   begin
        shPolig.Brush.Color := lyr.Symbol.Color;
        shPolig.pen.Color   := lyr.Symbol.OutlineColor;

        if lyr.Symbol.Style = 0 then
           shPolig.Brush.Style := bssolid;
        if lyr.Symbol.Style = 1 then
           shPolig.Brush.Style := bsClear;
        if lyr.Symbol.Style = 2 then
           shPolig.Brush.Style := bsHorizontal ;
        if lyr.Symbol.Style = 3 then
           shPolig.Brush.Style := bsVertical ;
        if lyr.Symbol.Style = 4 then
           shPolig.Brush.Style := bsFDiagonal ;
        if lyr.Symbol.Style = 5 then
           shPolig.Brush.Style := bsbDiagonal ;
        if lyr.Symbol.Style = 6 then
           shPolig.Brush.Style := bsCross ;
        if lyr.Symbol.Style = 7 then
           shPolig.Brush.Style := bsDiagCross;
        if lyr.Symbol.Style = 8 then
           shPolig.Brush.Style := bsSolid ;
        if lyr.Symbol.Style = 9 then
           shPolig.Brush.Style := bsSolid ;
        if lyr.Symbol.Style = 10 then
           shPolig.Brush.Style := bsSolid ;
   end;
end;

procedure TfrmLegenda.shPoligMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

   //para evitar bugs
   If frmconfigleg <> nil then frmConfigLeg.close;

   If frmconfigleg = nil then
      begin
        frmConfigLeg := TfrmConfigLeg.Create(application);
        frmConfigLeg.Show;

        //configurando o form
        frmConfigLeg.tbPolig.Enabled             := true;
        frmConfigLeg.tblinha.Enabled             := false;
        frmConfigLeg.tbPonto.Enabled             := false;
        frmConfigLeg.tbTexto.Enabled             := false;
        frmConfigLeg.pgLegenda.ActivePageIndex   := 0;
        frmConfigLeg.vartab                      := 1;
        frmConfigLeg.cbPreenchCor.color          := shPolig.Brush.Color;
        frmConfigLeg.cbPreenchLinha.color        := shPolig.Pen.Color;
        frmConfigLeg.cbPreench.ItemIndex         := lyr.Symbol.Style;
        If lyr.Symbol.Size = 0 then
           frmConfigLeg.cbPreenchTam.text   := '0'
        else
           frmConfigLeg.cbPreenchTam.text   := IntToStr(lyr.Symbol.Size);
      end
      else
      frmConfigLeg.Show;

end;

procedure TfrmLegenda.shCirculoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  If frmconfigleg <> nil then frmConfigLeg.close;

   If frmconfigleg = nil then
      begin
        frmConfigLeg := TfrmConfigLeg.Create(application);
        frmConfigLeg.Show;
        //configurando o form
        frmConfigLeg.tbPolig.Enabled := false;
        frmConfigLeg.tblinha.Enabled := false;
        frmConfigLeg.tbPonto.Enabled := true;
        frmConfigLeg.tbTexto.Enabled := false;
        frmConfigLeg.vartab          := 3;
        frmConfigLeg.pgLegenda.ActivePageIndex := 2;
        frmConfigLeg.cbPtEstilo.ItemIndex := 0;
        frmConfigLeg.cbPtPreench.color    := shCirculo.Brush.Color;
        frmConfigLeg.cbPtLinha.color      := shQuadrado.Pen.Color;
        frmConfigLeg.cbPtTam.text := '8';
      end
      else
      frmConfigLeg.Show;

end;

procedure TfrmLegenda.lblCrossClick(Sender: TObject);
begin

  If frmconfigleg <> nil then frmConfigLeg.close;

   If frmconfigleg = nil then
      begin
        frmConfigLeg := TfrmConfigLeg.Create(application);
        frmConfigLeg.Show;
        //configurando o form
        frmConfigLeg.tbPolig.Enabled      := false;
        frmConfigLeg.tblinha.Enabled      := false;
        frmConfigLeg.tbPonto.Enabled      := true;
        frmConfigLeg.tbTexto.Enabled      := false;
        frmConfigLeg.pgLegenda.ActivePage := frmConfigLeg.tbPonto;
        frmConfigLeg.vartab               := 3;
        frmConfigLeg.pgLegenda.ActivePageIndex := 2;
        frmConfigLeg.cbPtEstilo.ItemIndex := 3;
        frmConfigLeg.cbPtPreench.color    := lblCross.font.Color ;
        frmConfigLeg.cbPtLinha.color      := shQuadrado.Pen.Color;
        frmConfigLeg.cbPtTam.text         := '8';
      end
      else
      frmConfigLeg.Show;

end;

procedure TfrmLegenda.shTrianguloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  If frmconfigleg <> nil then frmConfigLeg.close;

   If frmconfigleg = nil then
      begin
        frmConfigLeg := TfrmConfigLeg.Create(application);
        frmConfigLeg.Show;
        //configurando o form
        frmConfigLeg.tbPolig.Enabled      := false;
        frmConfigLeg.tblinha.Enabled      := false;
        frmConfigLeg.tbPonto.Enabled      := true;
        frmConfigLeg.tbTexto.Enabled      := false;
        frmConfigLeg.pgLegenda.ActivePage := frmConfigLeg.tbPonto;
        frmConfigLeg.vartab               := 3;
        frmConfigLeg.pgLegenda.ActivePageIndex := 2;
        frmConfigLeg.cbPtEstilo.ItemIndex := 2;
        frmConfigLeg.cbPtPreench.color    := shTriangulo.Brush.Color ;
        frmConfigLeg.cbPtLinha.color      := shQuadrado.Pen.Color;
        frmConfigLeg.cbPtTam.text         := '8';
      end
      else
      frmConfigLeg.Show;

end;

procedure TfrmLegenda.shQuadradoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  If frmconfigleg <> nil then frmConfigLeg.close;

   If frmconfigleg = nil then
      begin
        frmConfigLeg := TfrmConfigLeg.Create(application);
        frmConfigLeg.Show;
        //configurando o form
        frmConfigLeg.tbPolig.Enabled      := false;
        frmConfigLeg.tblinha.Enabled      := false;
        frmConfigLeg.tbPonto.Enabled      := true;
        frmConfigLeg.tbTexto.Enabled      := false;
        frmConfigLeg.pgLegenda.ActivePage := frmConfigLeg.tbPonto;
        frmConfigLeg.vartab               := 3;
        frmConfigLeg.pgLegenda.ActivePageIndex := 2;
        frmConfigLeg.cbPtEstilo.ItemIndex := 1;
        frmConfigLeg.cbPtPreench.color    := shQuadrado.Brush.Color ;
        frmConfigLeg.cbPtLinha.color      := shQuadrado.Pen.Color;
        frmConfigLeg.cbPtTam.text         := '8';
      end
      else
      frmConfigLeg.Show;

end;

procedure TfrmLegenda.lblLinhaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  If frmconfigleg <> nil then frmConfigLeg.close;

   If frmconfigleg = nil then
      begin
        frmConfigLeg := TfrmConfigLeg.Create(application);
        frmConfigLeg.Show;
        //configurando o form
        frmConfigLeg.tbPolig.Enabled      := false;
        frmConfigLeg.tblinha.Enabled      := true;
        frmConfigLeg.tbPonto.Enabled      := false;
        frmConfigLeg.tbTexto.Enabled      := false;
        frmConfigLeg.pgLegenda.ActivePageIndex := 1;
        frmConfigLeg.vartab                    := 2;
        frmConfigLeg.cbEstiloLinha.ItemIndex   := lyr.Symbol.Style;
        frmConfigLeg.cbCorLinha.color          := lblLinha.font.Color;
        frmConfigLeg.cbTamLinha.text           := IntToStr(lyr.Symbol.size);
      end
      else
      frmConfigLeg.Show;

end;

procedure TfrmLegenda.btAplicarClick(Sender: TObject);
var
i        : integer;
numgrp,y : smallint;
symInt   : Integer;
temp     : smallint;
begin

  screen.cursor := crHourGlass;
  if trim(edt.text)='' then
     begin
         frmmenu.mensagem('O Nome Da Layer Não Pode Ser Vazio!',mtInformation,[mbok]);
         exit;
     end;

  //********************************************************
  varMudaCombo            := false;
  temp                    := cbItemlegenda.ItemIndex;
  //pra poder atualizar o item;
  cbItemLegenda.Items.BeginUpdate;
  cbItemlegenda.Items.Strings[cbItemlegenda.ItemIndex] := edt.Text;
  lyr.Name                := edt.text;
  cbItemlegenda.Items.EndUpdate;
  //fim da atualização;
  cbItemlegenda.ItemIndex := -1;
  cbItemlegenda.ItemIndex := temp;
  cbItemlegenda.Refresh;
  varMudaCombo            := true;
 //*********************************************************

 //colocando o vmr classificado na view para carregar no mapa
 if pgcLegenda.ActivePageIndex = 1 then
  begin
     if vmr <> nil then
       begin
          if chkUV.Visible = true then
            begin
               For i:= 0 To vmr.ValueCount - 1 do
                  begin
                     if chkUV.Checked = false then
                        begin
                           vmr.Symbol[i].Outline      := False;
                           vmr.Symbol[i].OutlineColor := vmr.Symbol[i].color;
                           vmr.Symbol[i].Style        := cbPreenchvmr.ItemIndex;
                        end
                        else
                          begin
                            vmr.Symbol[i].Outline      := True;
                            vmr.Symbol[i].Size         := strtoint(cbUVoutcor.text);
                            vmr.Symbol[i].OutlineColor := lblUVoutcor.color;
                            vmr.Symbol[i].Style        := cbPreenchvmr.ItemIndex;
                          end;
                  end;
            end;
         lyr.renderer := vmr;
       end;
    end;


//CLASSES
  if pgcLegenda.ActivePageIndex = 2 then
     Begin
        if cbr <> nil then
          begin

           If lyr.shapeType = moShapeTypeMultipoint Then
              symInt := 0
           Else
              symInt := lyr.shapeType - 21;

           cbr.SymbolType := symInt;

           If cbr.SymbolType = moFillSymbol Then
              begin
                 if chClasses.visible = true then
                    begin
                       For i:= 0 To cbr.BreakCount do
                           begin
                               if chClasses.Checked = false then
                                  begin
                                    cbr.Symbol[i].OutlineColor := cbr.Symbol[i].color;
                                    cbr.Symbol[i].Outline      := False;
                                    cbr.Symbol[i].Style        := cbPreenchCbr.ItemIndex;
                                  end
                                  else
                                     begin
                                       cbr.Symbol[i].OutlineColor := lblEscCor.Color;
                                       cbr.Symbol[i].Size         := strtoint(cbEscalaEsp.text);
                                       cbr.Symbol[i].Outline      := True;
                                       cbr.Symbol[i].Style        := cbPreenchCbr.ItemIndex;
                                     end;
                           end;
                    end;
              end;
               lyr.Renderer := cbr;

           end;
     end;


//LABELRENDERER
  if pgcLegenda.ActivePageIndex = 3 then
      begin
        lp := nil;
        CarregarLR;
        //frmmenu.Map1.refresh;
      end;


//LABELPLACER
 if pgcLegenda.ActivePageIndex = 4 then
    begin
      lr := nil;
      CarregarLP;
      //frmmenu.Map1.refresh;
    end;


//ELEVAÇÃO
  if pgcLegenda.ActivePageIndex = 5 then
     begin
        if zrend <> nil then
           begin
              If lyr.shapeType = moShapeTypeMultipoint Then
                 symInt := 0
              Else
                symInt := lyr.shapeType - 21;
                zRend.SymbolType := symInt;
                lyr.Renderer     := zRend;
           end;
     end;


//caso o grouprenderer for utilizado, a rotina abaixo
//define o grupo

  //se o grouprenderer estiver zerado é necessário reinicia-lo
     grpRenderer := nil;
     grpRenderer := CoGroupRenderer.Create; //IMoGroupRenderer(CreateOleObject('mapobjects2.GroupRenderer'));

  if vmr <> nil then //unico valor
     begin
        if lr <> nil then  //label renderer
           begin
              if grpRenderer.Count > 0 then
                 begin
                    numGrp := grpRenderer.Count;
                   //limpando o renderer antes de tudo
                    for y:= numGrp-1 downto 0 do
                        grpRenderer.Remove(y);
                 end;
                 grpRenderer.Add(vmr);
                 grpRenderer.add(lr);
                 lyr.renderer := grpRenderer;
           end
           else
              if lp <> nil then //unico valor + labelplacer
                 begin
                    if grpRenderer.Count > 0 then
                       begin
                          numGrp := grpRenderer.Count;
                          //limpando o renderer antes de tudo
                          for y:= numGrp-1 downto 0 do
                              grpRenderer.Remove(y);
                       end;
                       grpRenderer.Add(vmr);
                       grpRenderer.add(lp);
                       lyr.renderer := grpRenderer;
                 end;
     end;

  if cbr <> nil then //CLASSBREAKS
     begin
        if lr <> nil then  //label renderer
           begin
              if grpRenderer.Count > 0 then
                 begin
                    numGrp := grpRenderer.Count;
                   //limpando o renderer antes de tudo
                    for y:= numGrp-1 downto 0 do
                        grpRenderer.Remove(y);
                 end;
                 grpRenderer.Add(cbr);
                 grpRenderer.add(lr);
                 lyr.renderer := grpRenderer;
           end
           else
              if lp <> nil then //unico valor + labelplacer
                 begin
                    if grpRenderer.Count > 0 then
                       begin
                          numGrp := grpRenderer.Count;
                          //limpando o renderer antes de tudo
                          for y:= numGrp-1 downto 0 do
                              grpRenderer.Remove(y);
                       end;
                       grpRenderer.Add(cbr);
                       grpRenderer.add(lp);
                       lyr.renderer := grpRenderer;
                 end;
     end;

//ZREND
  if Zrend <> nil then //ZRenderer
     begin
        if lr <> nil then  //label renderer
           begin
              if grpRenderer.Count > 0 then
                 begin
                    numGrp := grpRenderer.Count;
                   //limpando o renderer antes de tudo
                    for y:= numGrp-1 downto 0 do
                    grpRenderer.Remove(y);
                 end;
                 grpRenderer.Add(zrend);
                 grpRenderer.add(lr);
                 lyr.renderer := grpRenderer;
           end
           else
              if lp <> nil then //unico valor + labelplacer
                 begin
                    if grpRenderer.Count > 0 then
                       begin
                          numGrp := grpRenderer.Count;
                          //limpando o renderer antes de tudo
                          for y := numGrp-1 downto 0 do
                              grpRenderer.Remove(y);
                       end;
                       grpRenderer.Add(zrend);
                       grpRenderer.add(lp);
                       lyr.renderer := grpRenderer;
                 end;
     end;

   if pgcLegenda.ActivePageIndex = 0 then
     begin
       if grpRenderer.Count = 0 then
          begin
             if lr <> nil then
                lyr.Renderer := lr;
             if lp <> nil then
                lyr.Renderer := lp;
             //frmmenu.Map1.refresh;
          end;
     end;

     
   //frmmenu.maplegend1.Active[layerAtual]:= true;
   //frmMenu.Map1.RefreshLayer(frmMenu.maplegend1.getActiveLayer);
   frmmenu.Map1.Refresh;
   frmmenu.legenda;
   screen.cursor := crDefault;

end;

procedure TfrmLegenda.BitBtn2Click(Sender: TObject);
begin

 frmLegenda.Close;

end;

procedure TfrmLegenda.lblTextoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
i : smallint;
begin

   If frmconfigleg = nil then
        frmConfigLeg := TfrmConfigLeg.Create(application);
        frmConfigLeg.Show;
        //configurando o form
        frmConfigLeg.tbPolig.Enabled      := false;
        frmConfigLeg.tblinha.Enabled      := false;
        frmConfigLeg.tbPonto.Enabled      := false;
        frmConfigLeg.tbTexto.Enabled      := true;
        frmConfigLeg.pgLegenda.ActivePageIndex := 3;
        frmConfigLeg.vartab                    := 4;
        frmConfigLeg.cbTextoCor.color          := lblTexto.Font.color;

        for i:=0 to frmconfigleg.cbfonte.Items.Count-1 do
            begin
               if frmConfigLeg.cbFonte.Items.Strings[i] = lbltexto.font.name then
                  begin
                     frmConfigLeg.cbFonte.ItemIndex := i;
                  end;
            end;


        //estilo
        if lbltexto.Font.Style = [] then
           frmConfigLeg.cbEstiloTx.itemindex := 0;
        if lbltexto.Font.Style = [fsbold] then
           frmConfigLeg.cbEstiloTx.itemindex := 1;
        if lbltexto.Font.Style = [fsitalic] then
           frmConfigLeg.cbEstiloTx.itemindex := 2;
        if lbltexto.Font.Style = [fsbold,fsitalic] then
           frmConfigLeg.cbEstiloTx.itemindex := 3;
        //fonte
        frmConfigLeg.cbTextoTam.ItemIndex := ftn.Size - 1;

end;

procedure TfrmLegenda.btReiniciar1Click(Sender: TObject);
begin

   screen.cursor := crHourGlass;
   zrend := nil;
   cbr   := nil;
   CarregarNovaLegenda;
   screen.cursor := crDefault;

end;

procedure TfrmLegenda.Button11Click(Sender: TObject);
begin

   screen.cursor := crHourGlass;
   vmr   := nil;
   zrend := nil;
   GerarClasses;
   screen.cursor := crDefault;


end;

procedure TfrmLegenda.final1DblClick(Sender: TObject);
begin


   frmmenu.ColorDialog1.Execute;
   final.Color := frmmenu.ColorDialog1.Color;


end;

procedure TfrmLegenda.elvInicialDblClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   Elvinicial.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmLegenda.ElvFinalDblClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   Elvfinal.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmLegenda.RzButton1Click(Sender: TObject);
begin

  FontDialog1.Execute;
  edtFonte.text := FontDialog1.Font.Name;


end;

procedure TfrmLegenda.advCorDblClick(Sender: TObject);
begin

 frmmenu.ColorDialog1.Execute;
 advCor.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmLegenda.RzButton2Click(Sender: TObject);
begin

  FontDialog2.Execute;
  edtAdvFonte.text := FontDialog2.Font.Name;

end;

procedure TfrmLegenda.chkUV1Click(Sender: TObject);
begin

  if chkUV.Checked = true then
     begin
        lblUVoutcor.enabled := true;
        cbUVoutcor.enabled  := true;
        lblOut1.enabled     := true;
        lblOut2.enabled     := true;
    end
    else
       begin
          lblUVoutcor.enabled := false;
          cbUVoutcor.enabled  := false;
          lblOut1.enabled     := false;
          lblOut2.enabled     := false;
       end;

end;

procedure TfrmLegenda.lblUVoutcorDblClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   lblUVoutcor.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmLegenda.lblEscCorDblClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   lblEscCor.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmLegenda.chClassesClick(Sender: TObject);
begin

  if chClasses.Checked = true then
     begin
        lblEscCor.enabled    := true;
        cbEscalaEsp.enabled  := true;
        label29.enabled      := true;
        label30.enabled      := true;
    end
    else
       begin
          lblEscCor.enabled    := false;
          cbEscalaEsp.enabled  := false;
          label29.enabled      := false;
          label30.enabled      := false;
       end;

end;

procedure TfrmLegenda.btZerarClick(Sender: TObject);
begin

  screen.cursor         := crHourGlass;
  LimparLegenda;
  pgcLegenda.ActivePage := tbUnicoSim;
  screen.cursor         := crDefault;

end;

procedure TfrmLegenda.tbRotMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   lblrotacao.Caption := inttostr(tbrot.value);
end;

procedure TfrmLegenda.inicial1DblClick(Sender: TObject);
begin

   frmmenu.ColorDialog1.Execute;
   inicial.Color := frmmenu.ColorDialog1.Color;

end;

procedure TfrmLegenda.Button1Click(Sender: TObject);
begin

   screen.cursor := crHourGlass;
   vmr   := nil;
   zrend := nil;
   GerarClasses;
   screen.cursor := crDefault;

end;

procedure TfrmLegenda.btCancelarClick(Sender: TObject);
begin

 frmLegenda.Close;

end;

procedure TfrmLegenda.btReiniciarClick(Sender: TObject);
begin

   screen.cursor := crHourGlass;
   zrend := nil;
   cbr   := nil;
   CarregarNovaLegenda;
   screen.cursor := crDefault;

end;

procedure TfrmLegenda.pgcLegendaChange(Sender: TObject);
begin

//verifico se ja foi carregado os campos nas combos
//para evitar limpar as combos quando trocar de tab
    if pgcLegenda.ActivePageIndex = 0 then
       cbtipo.itemindex := 0;
    if pgcLegenda.ActivePageIndex = 1 then
       begin
       cbtipo.itemindex := 1;
       if cbCampo.itemindex = -1 then
       CarregarCombo;
       end;
    if pgcLegenda.ActivePageIndex = 2 then
       begin
       cbtipo.itemindex := 2;
       if cbCampoNum.itemindex = -1 then
       CarregarClasses;
       end;
    if pgcLegenda.ActivePageIndex = 3 then
       begin
       cbtipo.itemindex := 3;
       if cbLBCampo.itemindex = -1 then
       CarregarLBCombo;
       end;
    if pgcLegenda.ActivePageIndex = 4 then
       begin
       cbtipo.itemindex := 4;
       if cbADVCampo.itemindex = -1 then
       CarregarADVCombo;
       end;
    if pgcLegenda.ActivePageIndex = 5 then
       begin
       cbtipo.itemindex := 5;
       end;

end;

procedure TfrmLegenda.bsSkinButton1Click(Sender: TObject);
begin

  FontDialog1.Execute;
  edtFonte.text := FontDialog1.Font.Name;

end;

procedure TfrmLegenda.bsSkinButton2Click(Sender: TObject);
begin

  FontDialog2.Execute;
  edtAdvFonte.text := FontDialog2.Font.Name;

end;

procedure TfrmLegenda.BitBtn1Click(Sender: TObject);
begin

   btAplicarClick(self);
   close;

end;

procedure TfrmLegenda.bsSkinButton3Click(Sender: TObject);
begin

  screen.cursor := crHourGlass;
  vmr := nil;
  cbr := nil;
  CarregarZLegenda;
  screen.cursor := crDefault;

end;

procedure TfrmLegenda.cbItemlegendaChange(Sender: TObject);
begin

 if varmudacombo then
    begin
       if trim(cbItemlegenda.text)<>'' then
          ConfigurarLegendaPelaLayer(cbItemlegenda.ItemIndex);
    end;

end;

procedure TfrmLegenda.lblUVoutcorClick(Sender: TObject);
begin
 //****************
end;

end.

