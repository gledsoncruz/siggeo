unit U_Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Dialogs,
  StdCtrls,bsSkinData,BusinessSkinForm, bsSkinHint,ImgList,bsSkinShellCtrls,
  Menus, bsTrayIcon, bsSkinCtrls,OleCtrls,MapObjects2_TLB, ExtCtrls,MapLegend_PanelEx,
  MapLegend_Legend, NCSECWLib_TLB,bsSkinBoxCtrls,bsMessages,MO21ScaleBar_TLB,
  bsSkinMenus,activex,Registry,RzLFName,jpeg,Buttons,RzLabel,OleServer,
  bsDialogs,RzLaunch,bsColorCtrls,SsCtrlSize,bsSkinPrinter,sEdit, DB,
  MemDS, DBAccess, Ora;


type
  //********************************************
  //ESTA CONSTANTE DEVE SER DECLARADA COMO TYPE
  //********************************************
  TRendererType = (momNoRenderer,momClassBreaksRenderer,momDotDensityRenderer,
  momLabelRenderer,momLabelPlacer,momGroupRenderer,momValueMapRenderer,momZRenderer,momUnknownRenderer);
  //********************************************
  //********************************************
  //********************************************
  TfrmMenu = class(TForm)
    bsSkinMainMenuBar1: TbsSkinMainMenuBar;
    bsCompressedStoredSkin1: TbsCompressedStoredSkin;
    bsTrayIcon1: TbsTrayIcon;
    bsSkinData1: TbsSkinData;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    MainMenu1: TMainMenu;
    N12: TMenuItem;
    NewItem: TMenuItem;
    Noskin1: TMenuItem;
    CloseItem: TMenuItem;
    Windows1: TMenuItem;
    RestoreItem: TMenuItem;
    teste1: TMenuItem;
    Controle1: TMenuItem;
    Relatrio1: TMenuItem;
    Sobre1: TMenuItem;
    bsSkinHint1: TbsSkinHint;
    pnStatus: TbsSkinPanel;
    pnMapa: TbsSkinPanel;
    Map1: TMap;
    Abrir1: TMenuItem;
    Salvar1: TMenuItem;
    Imprimir1: TMenuItem;
    Exportar1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    N2: TMenuItem;
    Layout1: TMenuItem;
    N3: TMenuItem;
    FullExtent1: TMenuItem;
    ZoomMaior1: TMenuItem;
    ZoomMenor1: TMenuItem;
    AdicionarTema1: TMenuItem;
    ApagarTemaAtivo1: TMenuItem;
    ApagarTodos1: TMenuItem;
    N6: TMenuItem;
    ConverterParaShape1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Query1: TMenuItem;
    LimparSeleo1: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    Ocultar1: TMenuItem;
    InserirCoordenadas1: TMenuItem;
    CoordenadasemUTM1: TMenuItem;
    N11: TMenuItem;
    CriarNovaConexo1: TMenuItem;
    DesativarConexoODBCAtiva1: TMenuItem;
    Sobre2: TMenuItem;
    SobreoSistema1: TMenuItem;
    ImageList2: TImageList;
    bsSkinControlBar1: TbsSkinControlBar;
    bsSkinToolBar1: TbsSkinToolBar;
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    bsSkinSpeedButton4: TbsSkinSpeedButton;
    bsSkinToolBar3: TbsSkinToolBar;
    btIdentify: TbsSkinSpeedButton;
    btSelect: TbsSkinSpeedButton;
    btSelectSh: TbsSkinSpeedButton;
    btPan: TbsSkinSpeedButton;
    btMenor: TbsSkinSpeedButton;
    btMaior: TbsSkinSpeedButton;
    bsSkinToolBar5: TbsSkinToolBar;
    btFull: TbsSkinSpeedButton;
    btAtivo: TbsSkinSpeedButton;
    btSelecionado: TbsSkinSpeedButton;
    btLimpar: TbsSkinSpeedButton;
    btAdd: TbsSkinSpeedButton;
    dlgShapes: TbsSkinOpenDialog;
    pnMapa2: TbsSkinExPanel;
    Map2: TMap;
    pnLegenda: TbsSkinExPanel;
    btRegua: TbsSkinSpeedButton;
    btQuery: TbsSkinSpeedButton;
    btLocalizar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    lblX: TbsSkinStdLabel;
    lblY: TbsSkinStdLabel;
    bsSkinBevel3: TbsSkinBevel;
    lblCoord: TbsSkinStdLabel;
    MostrarMapaGuia1: TMenuItem;
    MostrarLegenda1: TMenuItem;
    bsSkinMessage1: TbsSkinMessage;
    MapLegend1: TMapLegend;
    bsResourceStrData1: TbsResourceStrData;
    Savedialog1: TbsSkinSaveDialog;
    openProjeto: TbsSkinOpenDialog;
    TimerAbreProjeto: TTimer;
    PropriedadesdoProjeto1: TMenuItem;
    SalvarComo1: TMenuItem;
    pnEscala: TbsSkinExPanel;
    MostrarEscala1: TMenuItem;
    TimerPosEscala: TTimer;
    bsSkinBevel4: TbsSkinBevel;
    ScaleBar1: TScaleBar;
    pmGraficos: TbsSkinPopupMenu;
    ConfiguraodePoligonos1: TMenuItem;
    ConfiguraodeTexto1: TMenuItem;
    ConfiguraodePontos1: TMenuItem;
    ConfiguraodeLinhas1: TMenuItem;
    ConfiguraodeCirculos1: TMenuItem;
    ConfiguraodeRetngulos1: TMenuItem;
    bsSkinBevel5: TbsSkinBevel;
    bsSkinBevel6: TbsSkinBevel;
    bsSkinBevel7: TbsSkinBevel;
    lblSegRegua: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinBevel8: TbsSkinBevel;
    lblRegua: TbsSkinStdLabel;
    bsSkinStdLabel6: TbsSkinStdLabel;
    bsSkinBevel9: TbsSkinBevel;
    lblUnidadeMapa: TbsSkinStdLabel;
    bsSkinStdLabel8: TbsSkinStdLabel;
    Image1: TImage;
    btVertex: TbsSkinSpeedButton;
    lblGeoprocessamento: TRzLabel;
    bsSkinBevel10: TbsSkinBevel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    bsFontDialog1: TbsSkinFontDialog;
    N13: TMenuItem;
    EditarTextoSelecionado1: TMenuItem;
    EditarPontoSelecionado1: TMenuItem;
    EditarLinhaSelecionada1: TMenuItem;
    EditarCirculoSelecionado1: TMenuItem;
    EditarRetanguloSelecionado1: TMenuItem;
    EditarPoligonoSelecionado1: TMenuItem;
    N14: TMenuItem;
    SeleodeGrficos1: TMenuItem;
    SelecionarTodos1: TMenuItem;
    Des1: TMenuItem;
    exto1: TMenuItem;
    Ponto1: TMenuItem;
    Linha1: TMenuItem;
    Circulo1: TMenuItem;
    Retangulo1: TMenuItem;
    Poligono1: TMenuItem;
    exto2: TMenuItem;
    Ponto2: TMenuItem;
    Linha2: TMenuItem;
    Circulo2: TMenuItem;
    Retangulo2: TMenuItem;
    poligono2: TMenuItem;
    DeletarTodosSelecionados1: TMenuItem;
    RzLauncher1: TRzLauncher;
    FontDialog1: TFontDialog;
    ColorDialog1: TbsSkinColorDialog;
    ControlSizer1: TControlSizer;
    popLegenda: TbsSkinPopupMenu;
    MoverLegenda1: TMenuItem;
    RedimensionarLegenda1: TMenuItem;
    ppMapa: TbsSkinPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    lblInfo: TsEdit;
    bsSkinBevel2: TbsSkinBevel;
    OraIdent1: TOraSession;
    OraQueryIdent1: TOraQuery;
    bsSkinMenuSpeedButton1: TbsSkinMenuSpeedButton;
    ppConexao: TbsSkinPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    VerificarAtualizacao: TTimer;
    RzLauncher2: TRzLauncher;
    N15: TMenuItem;
    Relatrio2: TMenuItem;
    N16: TMenuItem;
    emas1: TMenuItem;
    ExOS1: TMenuItem;
    OD: TbsOpenSkinDialog;
    Outono1: TMenuItem;
    Clouds1: TMenuItem;
    Express1: TMenuItem;
    Windows981: TMenuItem;
    WindowsXPBlue1: TMenuItem;
    CarregarRelatrioSalvo1: TMenuItem;
    ExpandirTodososItensdaLegenda1: TMenuItem;
    AdicionarCamadasLocais1: TMenuItem;
    Adicionar1: TMenuItem;
    AdicionarCamadasviaConexoDireta1: TMenuItem;
    ppEscala: TbsSkinPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    N17: TMenuItem;
    ResetarJanelas1: TMenuItem;
    btZoomAnterior: TbsSkinSpeedButton;
    bsSkinSpeedButton2: TbsSkinSpeedButton;
    CriarJoinSDEBancoOracle1: TMenuItem;
    RemoverJoin1: TMenuItem;
    CriarIdentificadordeCamada1N1: TMenuItem;
    RemoverIdentificadordeCamada1N1: TMenuItem;
    CriarUmNovoRelatrio1: TMenuItem;
    CarregarUmRelatrioPreviamenteSalvo1: TMenuItem;
    AnliseEspacial1: TMenuItem;
    EMDESENVOLVIMENTO1: TMenuItem;
    AbrirTabelaDosShapesSelecionadosCamadaAtiva1: TMenuItem;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    ColorDialog2: TColorDialog;
    N4: TMenuItem;
    OraSessionAnaliseProxEnt: TOraSession;
    qyAnaliseProxEntrada: TOraQuery;
    OraSessionProxAnalise: TOraSession;
    qyAnaliseSaida: TOraQuery;
    upAnaliseSaida: TOraUpdateSQL;
    CoordenadasemLatLong1: TMenuItem;
    bsSkinMenuSpeedButton2: TbsSkinMenuSpeedButton;
    pmTabelas: TbsSkinPopupMenu;
    MenuItem7: TMenuItem;
    btZoomMais: TbsSkinSpeedButton;
    btZoomMenos: TbsSkinSpeedButton;
    VerificarAtualizacodeCamadas1: TMenuItem;
    N5: TMenuItem;
    RzLauncher3: TRzLauncher;
    Configuraes1: TMenuItem;
    Configuraes2: TMenuItem;
    SaveDialog2: TbsSkinSaveDialog;
    EditarTema1: TMenuItem;
    StopSaveEditing1: TMenuItem;
    btConfigGraf: TbsSkinMenuSpeedButton;
    btGrafico: TbsSkinMenuSpeedButton;
    ppGraficos: TbsSkinPopupMenu;
    ppGraftext: TMenuItem;
    ppGrafponto: TMenuItem;
    ppGrafLine: TMenuItem;
    ppGrafCirc: TMenuItem;
    ppGrafRet: TMenuItem;
    ppGrafpoli: TMenuItem;
    SaveDialog3: TbsSkinSaveDialog;
    procedure AdicionarCamada;
    procedure Sair1Click(Sender: TObject);
    procedure btAddClick(Sender: TObject);
    procedure pnLegendaMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure legend1AfterSetLayerVisible(ASender: TObject;
      var Index: Smallint; var isVisible: WordBool);
    procedure FormCreate(Sender: TObject);
    procedure btFullClick(Sender: TObject);
    procedure btAtivoClick(Sender: TObject);
    procedure ZoomExtentTema;
    procedure btMaiorClick(Sender: TObject);
    procedure zoomMenor;
    procedure Map1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure zoommaior(button : TMouseButton);
    procedure Map1AfterLayerDraw(ASender: TObject; index: Smallint;
      canceled: WordBool; hDC: Cardinal);
    procedure Map2AfterLayerDraw(ASender: TObject; index: Smallint;
      canceled: WordBool; hDC: Cardinal);
    procedure Map2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btMenorClick(Sender: TObject);
    procedure btPanClick(Sender: TObject);
    procedure btRotMapaClick(Sender: TObject);
    procedure Map1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EcwSetView(numTag : integer);
    procedure legenda;
    procedure MapLegend1AfterSetLayerVisible(Sender: TObject;
      index: Integer; isVisible: Boolean);
    procedure adicionarSDE(layer: String;numeroconexao:integer);
    procedure MostrarMapaGuia1Click(Sender: TObject);
    procedure MostrarLegenda1Click(Sender: TObject);
    procedure Identificador(x,y : Double;camada : smallint);
    procedure AdicionarMeiofioMap2;
    procedure btIdentifyClick(Sender: TObject);
    function TiraPontoNomeDaCamadaSDE(nome : string):string;
    procedure btSDEClick(Sender: TObject);
    function Mensagem(wmsg:string;wicon:TMsgDlgType;botao:TMsgDlgButtons):word;
    procedure MapLegend1LayerDblClick(Sender: TObject; index: Integer);
    procedure AtualizarScaleBar;
    procedure Map1AfterTrackingLayerDraw(ASender: TObject; hDC: Cardinal);
    Procedure AtualizarCoordenadasXY(x,y : integer);
    procedure btReguaClick(Sender: TObject);
    procedure btSelectShClick(Sender: TObject);
    procedure selecionarShape(varShift,varCtrl : boolean);
    procedure ExecuteSearch(varShift,varCtrl : boolean);
    procedure AlterarSelecao(ShiftDown,CtrlDown : Boolean;posicaovetor : smallint;shapes:IDispatch);
    procedure DrawRecordset(recs:IMoRecordset;varcor:Tcolor;style:integer);
    procedure ConfigurarVetorNovoTema(taglayer : string);
    procedure ApagarTodos1Click(Sender: TObject);
    procedure ApagarTodosTemasAdicionados;
    procedure ApagarTemaAtivo1Click(Sender: TObject);
    procedure zoomselecionados(posicaoSelecionada : Smallint);
    procedure btSelecionadoClick(Sender: TObject);
    function PegaNomeDaLayer(item : smallint):string;
    procedure FullExtent1Click(Sender: TObject);
    procedure LimparSelecaoShapes;
    procedure btLimparClick(Sender: TObject);
    procedure CarregarProjeto(caminhoFile  : String);
    function DecriptaArquivoSalvo(varLinha : string):string;
    procedure SalvarProjeto(CaminhoProjeto : String);
    function CryptArquivoSalvo(varLinha : string):string;
    function wright(wtexto:string;quant:integer):string;
    function GetRendererType(const ARenderer: IDispatch): TRendererType;
    procedure registraGeo;
    procedure Salvar1Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TimerAbreProjetoTimer(Sender: TObject);
    procedure BotaoSalvarProjeto;
    procedure bsSkinSpeedButton1Click(Sender: TObject);
    procedure SalvarComo1Click(Sender: TObject);
    procedure PropriedadesdoProjeto1Click(Sender: TObject);
    procedure MostrarEscala1Click(Sender: TObject);
    procedure TimerPosEscalaTimer(Sender: TObject);
    procedure HabilitaGrafico;
    procedure DesabilitaGrafico;
    procedure btSelectClick(Sender: TObject);
    procedure btGrafico1Click(Sender: TObject);
    procedure SelecionarGraficos(ctrl : Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DesenharGrafPoli;
    Procedure DeletaGraficos;
    procedure btPoligClick(Sender: TObject);
    procedure ConfiguraodePoligonos1Click(Sender: TObject);
    procedure SetMeasuresAsIndex(Line: IMoLine);
    procedure Map1DblClick(Sender: TObject);
    procedure ReguaMouseMove(x,y:double);
    procedure DesenharGraficos;
    procedure DesenharGraficosSelecionados;
    procedure btLocalizarClick(Sender: TObject);
    Procedure DesenharRegua;
    procedure ConfiguraodeLinhas1Click(Sender: TObject);
    procedure btLinhaClick(Sender: TObject);
    procedure DesenharGrafLinha;
    procedure DesenharGrafRetang;
    procedure btRetangClick(Sender: TObject);
    procedure ConfiguraodeRetngulos1Click(Sender: TObject);
    procedure btVertexClick(Sender: TObject);
    procedure FindVertex(X,Y : Double);
    procedure Map1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btQueryClick(Sender: TObject);
    procedure RestoreItemClick(Sender: TObject);
    procedure DeletarArquivosTemporarios;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCirculoClick(Sender: TObject);
    procedure ConfiguraodeCirculos1Click(Sender: TObject);
    procedure DesenharGrafCirculo;
    procedure CoordenadasemUTM1Click(Sender: TObject);
    procedure btPontoClick(Sender: TObject);
    procedure ConfiguraodePontos1Click(Sender: TObject);
    procedure DesenharGrafPonto(x,y : Double);
    procedure DesenharGrafTexto(x,y : Double);
  //  Procedure ClickPointFindClosestEnd(x : Double;y : Double);
  //  Procedure ClickPoint(x:Double;y:Double);
    procedure ConversordeCoordenadas1Click(Sender: TObject);
    procedure EditarTextoSelecionado1Click(Sender: TObject);
    procedure Layout1Click(Sender: TObject);
    procedure SetControlTo(c: TControl);
    procedure MoverLegenda1Click(Sender: TObject);
    procedure RedimensionarLegenda1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure bsSkinSpeedButton4Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure CloseItemClick(Sender: TObject);
    procedure SobreoSistema1Click(Sender: TObject);
    procedure EvitarBugDaLegenda;
    procedure NewItemClick(Sender: TObject);
    procedure DeletarVertices;
    procedure adicionarDirectConnect(layer: String;posicaovetor:smallint);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure lblGeoprocessamentoClick(Sender: TObject);
    procedure VerificarAtualizacaoTimer(Sender: TObject);
    procedure EditarPontoSelecionado1Click(Sender: TObject);
    procedure EditarLinhaSelecionada1Click(Sender: TObject);
    procedure EditarCirculoSelecionado1Click(Sender: TObject);
    procedure EditarRetanguloSelecionado1Click(Sender: TObject);
    procedure EditarPoligonoSelecionado1Click(Sender: TObject);
    procedure Ponto1Click(Sender: TObject);
    procedure exto1Click(Sender: TObject);
    procedure Linha1Click(Sender: TObject);
    procedure Circulo1Click(Sender: TObject);
    procedure Retangulo1Click(Sender: TObject);
    procedure Poligono1Click(Sender: TObject);
    procedure exto2Click(Sender: TObject);
    procedure Ponto2Click(Sender: TObject);
    procedure Linha2Click(Sender: TObject);
    procedure Circulo2Click(Sender: TObject);
    procedure Retangulo2Click(Sender: TObject);
    procedure poligono2Click(Sender: TObject);
    procedure DeletarTodosSelecionados1Click(Sender: TObject);
    function NovoProjeto:smallint;
    procedure Exportar1Click(Sender: TObject);
    function  RecriarTodosOsJoins:TStringList;
//    procedure LoadSkin(AFileName: String);
    procedure ExOS1Click(Sender: TObject);
    procedure WindowsXPBlue1Click(Sender: TObject);
    procedure Windows981Click(Sender: TObject);
    procedure Express1Click(Sender: TObject);
    procedure Clouds1Click(Sender: TObject);
    procedure Outono1Click(Sender: TObject);
    function  cript(VarTexto:string):string;
    function  desencript(VarTexto:string):string;
    procedure MoverGraficos(x,y:double);
    procedure MoverVertex(x,y : Double);
    procedure AdicionarVertexNoPoligono;
    procedure AtualizarSituacaoLegenda;
    procedure Ocultar1Click(Sender: TObject);
    procedure ExpandirTodososItensdaLegenda1Click(Sender: TObject);
    procedure AdicionarCamadasLocais1Click(Sender: TObject);
    procedure Adicionar1Click(Sender: TObject);
    procedure AdicionarCamadasviaConexoDireta1Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure ResetarJanelas1Click(Sender: TObject);
    procedure ResetarPanels;
    procedure CriarJoinSDEBancoOracle1Click(Sender: TObject);
    procedure CriarIdentificadordeCamada1N1Click(Sender: TObject);
    procedure RemoverJoin1Click(Sender: TObject);
    procedure RemoverIdentificadordeCamada1N1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CarregarUmRelatrioPreviamenteSalvo1Click(Sender: TObject);
    procedure CriarUmNovoRelatrio1Click(Sender: TObject);
    procedure AbrirTabeladoTemaCamadaAtiva1Click(Sender: TObject);
    procedure Query1Click(Sender: TObject);
    procedure LimparSeleo1Click(Sender: TObject);
    procedure ZoomMaior1Click(Sender: TObject);
    procedure ZoomMaiorPadrao;
    procedure ZoomMenorPadrao;
    procedure ZoomMenor1Click(Sender: TObject);
    procedure ControlarZoom;
    procedure ZoomAnterior;
    procedure ZoomPosterior;
    procedure btZoomAnteriorClick(Sender: TObject);
    procedure ZerarZooms;
    procedure bsSkinSpeedButton2Click(Sender: TObject);
    procedure pnLegendaChangeRollState(Sender: TObject);
    procedure pnEscalaChangeRollState(Sender: TObject);
    procedure pnMapa2ChangeRollState(Sender: TObject);
    procedure EMDESENVOLVIMENTO1Click(Sender: TObject);
    procedure AbrirTabelaDosShapesSelecionadosCamadaAtiva1Click(
      Sender: TObject);
    procedure CoordenadasemLatLong1Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    function RecriarJoins:String;
    procedure btZoomMaisClick(Sender: TObject);
    procedure btZoomMenosClick(Sender: TObject);
    procedure AdicionarVertexLinha;
    procedure MoverVertexLinha(x,y : Double);
    procedure AtualizarCamadas(Sender : TObject);
    procedure VerificarAtualizacodeCamadas1Click(Sender: TObject);
    procedure Configuraes2Click(Sender: TObject);
    procedure EditarTema1Click(Sender: TObject);
    procedure StopSaveEditing1Click(Sender: TObject);
    procedure ppGraftextClick(Sender: TObject);
    procedure ppGrafpontoClick(Sender: TObject);
    procedure ppGrafLineClick(Sender: TObject);
    procedure ppGrafCircClick(Sender: TObject);
    procedure ppGrafRetClick(Sender: TObject);
    procedure ppGrafpoliClick(Sender: TObject);
    procedure bsSkinMenuSpeedButton2Click(Sender: TObject);
    procedure bsSkinMenuSpeedButton1Click(Sender: TObject);
    procedure btConfigGrafClick(Sender: TObject);
    procedure ConverterParaShape1Click(Sender: TObject);





  private
    { Private declarations }

    //************controlar zoom*****************
    VarZoom                    : Array[0..20] of IMoRectangle;
    VarBoolPosicao             : Array[0..20] of Boolean;
    VarCtrlPosicao             : Byte;
    VarAtual                   : Byte;
    //*********************

    varVERSAOPROJETOSIGGEO     : smallint;

    //evitar bug legenda
    vetSitLayers               : Array of Boolean;

    //controla abertura do sistema
    VarBoolSistemaAbrindo      : Boolean;

    //Variaveis de controles de diretório
    varStrDirPadraoProjeto     : String;
    varStrDirPadraoShapes      : String;

    //posição X e Y do mouse para o Edit Vertex
    varPosVerticeX             : Double;
    varPosVerticeY             : Double;
    //**************

    //diretorio padrao
    varDirInicial              : string;

    //selected
    g_SearchShape              : IDispatch;

    //regua
    varLnRegua                 : IMoLine;
    varlnLinhaSelecionada      : IMoLine;
    varLnBoolUsaRegua          : Boolean;
    varlnBoolNovoSeg           : Boolean;
    varlnPriClick              : Boolean;
    varLnTemLinhaDesenhada     : Boolean;
    varlnPt1                   : IMoPoint;
    varlnTmpSegTam             : String;

    //*****vertex
    VarIntIndexVertice         : Smallint;
    bVertexMoving              : Boolean;
    tl                         : IMoTrackingLayer;

    //**************************
    //mover graficos
    varPosTlMovGraf            : Word;

    //controlar a visibilidade das layers ao abrir o projeto
    varVetCamadasVisiveis      : Array Of Boolean;
    varVetCamadaExpandida      : Array Of Boolean;
    //**************************




  public
     TemaAtivo      : String;
     data_atual_shp : string;
     vartema : integer;

    { Public declarations }
    //***********ZOOM DINAMICO*************
      mDC : double;
      mBitmap : double;
      mOldBitmap : double;
      mHasImage : Boolean;
      mWidth : double;
      mHeight : double;
      DrawBackColor : Boolean;
      BackColor : Longint;
    //*************************************

    //**********************************
    //caption padrao do sistema
    varStrCaptionSistema       : String;
    //**********************************


    //****** REGUA PUBLICA
    varReguaEstilo             : byte;
    varReguaSize               : byte;
    varReguaColor              : TColor;
    varReguaEstiloSelect       : byte;
    varReguaSizeSelect         : byte;
    varReguaColorSelect        : TColor;

    VarPermitirDesenharLayers  : Boolean;

    //***** SALVAR LISTA DE CONEXOES 1:N
    varIDENTConexao            : array of String;
    varIDENTSQL                : array of String;
    varIDENTTabela             : array of String;
    varIDENTCampo              : array of String;

    //CONEXOES 1:N
    varVetIDentTagLayer        : array of String;
    varVetIDentLayerCampo      : array of String;
    varVetIDentSQL             : array of String;
    varVetIDentOraSession      : array of TOraSession;
    varVetIDentOraQuery        : array of TOraQuery;

    //servidores de join
    varVetListaCampo           : array of String;
    varVetListaTabela          : array of String;
    varVetListaUsuario         : array of String;
    varVetListaSenha           : array of String;
    varVetListaServidor        : array of String;
    varVetListaServico         : array of String;
    varVetListaBanco           : array of String;

    //JOIN LAYER
    varVetJoinTagLayer         : array of String;
    varVetJoinTOFIELD          : array of String;
    varVetJoinFROMFIELD        : array of String;
    varVetJoinTabela           : array of String;
    varVetJoinUsuario          : array of String;
    varVetJoinSenha            : array of String;
    varVetJoinServidor         : array of String;
    varVetJoinServico          : array of String;
    varVetJoinBanco            : array of String;
    varVetJoinJaEfetuado       : array of Boolean;
    //******************************************
    //******************************************


    //DADOS DO PROJETO
    varAUTORPROJETO            : string[50];
    varCONTATO                 : string;
    varPAGINA                  : string;
    varDATACRIACAO             : string[10];
    varNomeUsuproj             : String[30];
    varSenhaUsuproj            : String[30];
    varVERSAOSIGGEO            : smallint;
    varVersaoShape             : String;
    varDELETARGRAFICOS         : Boolean;
    varSALVARPROJETO           : Boolean;
    varADICIONARSDE            : Boolean;
    varIMPRIMIR                : Boolean;
    varLAYOUT                  : Boolean;
    varADICIONARDODISCO        : Boolean;
    varREMOVERLAYERS           : Boolean;
    varEDITARLEGENDA           : Boolean;
    varConvNovoSHP             : Boolean;
    varProjetoJaConfig         : Boolean;
    varConfigOk                : Boolean;

    //unidades do mapa
    varMapUnits                : Smallint;
    convFactor2                : Double;

    //form da query
    VarFrmQueryCapture         : Boolean;

    //Controla os item da legenda que se encontra selecionado
    ItemDaLegendaSelecionado   : Word;

    //parametro passado via windows
    varTmpParamWin             : String;
    varCaminhoDoProjetoJaSalvo : String;

    //*************************************
    //Select Shapes;
    vet_SelectedFeatures       : array of IMoRecordset;
    AltSelect                  : array of IMoRecordset;
    vet_taglayer               : array of String;
    TipoShape                  : Word;

    //*** Cor de Seleção de Shapes e graficos;
    cor_SelectPreenchCamada    : TColor;
    cor_OutSelectCamada        : TColor;
    cor_SelectGraf             : TColor;
    cor_OutSelectGraf          : TColor;
    varEspSelecaoCamada        : Byte;
    varEspSelecaoGrafico       : Byte;
    varPreenchSelecaoCamada    : Byte;
    varPreenchSelecaoGrafico   : Byte;
    varBoolDesenharOutCamada   : Boolean;
    varBoolDesenharOutGrafico  : Boolean;
    //**************************************************

    //Controlar se estou conectado em um DIRECT CONNECT
    VarDICOativo               : boolean;
    DicoCon                    : array of IMoDataConnection;
    varVetDICOBanco            : array of String[50];
    varVetDICOusuario          : array of String[50];
    varVetDICOsenha            : array of String[50];
    varDICOBanco               : String[30];
    varDICOusuario             : String[30];
    varDICOsenha               : String[30];

    //Controlar se estou conectado em um banco SDE
    VarSDEativo                : boolean;
    SDECon                     : array of IMoDataConnection;
    varVetSDEServidor          : array of String[50];
    varVetSDEBanco             : array of String[50];
    varVetSDEservico           : array of String[50];
    varVetSDEusuario           : array of String[50];
    varVetSDEsenha             : array of String[50];
    varSDEServidor             : String[50];
    varSDEBanco                : String[30];
    varSDEservico              : String[30];
    varSDEusuario              : String[30];
    varSDEsenha                : String[30];

    //***************************************

    //***************************************
    //************   Graficos   *************
    //***************************************
    varBoolPermitirMudarPos    : Boolean;
    //POLIGONOS
    varGrafPoli                : array of IMoPolygon;
    varBoolGrafPoli            : array of Boolean;
    varVetGrafPoliColor        : array of TColor;
    varVetGrafPoliUsaOutline   : array of Boolean;
    varVetGrafPoliSize         : array of Byte;
    varVetGrafPoliOutCor       : Array of TColor;
    varVetGrafPoliStyle        : Array of Byte;
    varGrafPoliColor           : TColor;
    varGrafPoliUsaOutline      : Boolean;
    varGrafPoliSize            : Byte;//Word;
    varGrafPoliOutCor          : TColor;
    varGrafPoliStyle           : Byte;
    varBoolSalvaConfigPoli     : Boolean;
    //*********************************************
    //TEXTOS
    varBoolGrafTexto           : Array of Boolean;
    varVetGrafTexto            : Array of String;
    varVetGrafTextoFonteStyle  : Array of TFontStyles;
    varVetGrafTextoRotacao     : Array of Word;
    varVetGrafTextoPT          : Array of IMoPoint;
    varVetGrafTextoColor       : Array of TColor;
    varvetGrafTextoSize        : Array of Byte;
    varVetGrafTextoFonteNome   : Array of String;
    varGrafTextoFonteEstilo    : TFontStyles;
    varGrafTextoFonte          : String;
    varGrafTextoRotacao        : Word;
    varGrafTextoColor          : TColor;
    varGrafTextoSize           : Word;
    //*********************************************
    //LINHAS
    varGrafLinha               : array of IMoLine;
    varBoolGrafLinha           : array of Boolean;
    varVetGrafLinhaColor       : array of TColor;
    varVetGrafLinhaSize        : array of Byte;
    varVetGrafLinhaStyle       : Array of Byte;
    varGrafLinhaColor          : TColor;
    varGrafLinhaSize           : Byte;//Word;
    varGrafLinhaStyle          : Byte;
    varBoolSalvaConfigLinha    : Boolean;


    //**********************************************
    //RETANGULOS
    varGrafRetang              : array of IMoRectangle;
    varBoolGrafRetang          : array of Boolean;
    varVetGrafRetangColor      : array of TColor;
    varVetGrafRetangSize       : array of Byte;
    varVetGrafRetangUsaOutline : array of Boolean;
    varVetGrafRetangStyle      : Array of Byte;
    varVetGrafRetangOutCor     : Array of TColor;
    varGrafRetangColor         : TColor;
    varGrafRetangOutCor        : TColor;
    varGrafRetangSize          : Byte;//Word;
    varGrafRetangStyle         : Byte;
    varGrafRetangUsaOutline    : Boolean;
    varBoolSalvaConfigRetang   : Boolean;
    //*********************************************
    //CIRCULOS
    varGrafCirculo             : array of IMoEllipse;
    varBoolGrafCirculo         : array of Boolean;
    varVetGrafCirculoColor     : array of TColor;
    varVetGrafCirculoUsaOutline: array of Boolean;
    varVetGrafCirculoSize      : array of Byte;
    varVetGrafCirculoOutCor    : Array of TColor;
    varVetGrafCirculoStyle     : Array of Byte;
    varGrafCirculoColor        : TColor;
    varGrafCirculoUsaOutline   : Boolean;
    varGrafCirculoSize         : Byte;//Word;
    varGrafCirculoOutCor       : TColor;
    varGrafCirculoStyle        : Byte;
    varBoolSalvaConfigCirculo  : Boolean;
    //*********************************************
    //PONTOS
    varGrafPonto               : Array of IMoPoint;
    varBoolGrafPonto           : Array of Boolean;
    varVetGrafPontoColor       : Array of TColor;
    varVetGrafPontoUsaOutline  : Array of Boolean;
    varVetGrafPontoSize        : Array of Byte;
    varVetGrafPontoOutCor      : Array of TColor;
    varVetGrafPontoStyle       : Array of Byte;
    varGrafPontoColor          : TColor;
    varGrafPontoUsaOutline     : Boolean;
    varGrafPontoSize           : Byte;
    varGrafPontoOutCor         : TColor;
    varGrafPontoStyle          : Byte;
    varBoolSalvaConfigPonto    : Boolean;
    //**********************************************
    //PONTOS  FORM GrafInsCoordsUTM
    varGrafPontoUTM            : Array of IMoPoint;
    varBoolGrafPontoUTM        : Array of Boolean;
    varVetGrafPontoColorUTM    : Array of TColor;
    varVetGrafPontoUsaOutlineUTM  : Array of Boolean;
    varVetGrafPontoSizeUTM     : Array of Byte;
    varVetGrafPontoOutCorUTM   : Array of TColor;
    varVetGrafPontoStyleUTM    : Array of Byte;
    varGrafPontoColorUTM       : TColor;
    varGrafPontoUsaOutlineUTM  : Boolean;
    varGrafPontoSizeUTM        : Byte;
    varGrafPontoOutCorUTM      : TColor;
    varGrafPontoStyleUTM       : Byte;
    varBoolSalvaConfigPontoUTM : Boolean;
    //**********************************************
    //QUERY POR DISTANCIA
    varQueryCirculo            : Array of IMoEllipse;
    varQueryLayer              : Array of String;
    varQueryPontoOrigem        : Array of IMoPoint;
    varQuerySymbol             : Byte;// moFillSymbol;
    varQueryStyle              : Byte;//moLightGrayFill;
    varQueryColor              : TColor;//moRed;
    varQuerySymbolPonto        : Byte;
    varQueryStylePonto         : Byte;
    varQueryColorPonto         : TColor;
    varQueryColorSize          : Byte;//ponto size
    //**********************************************
    //PONTOS FORM INSERIR COORDENADAS UTM
    varGrafCoordsPontos        : IMoPoints;
    varTemCoordDesenhada       : Boolean;
    varGrafCoordsPontosCor     : TColor;
    varGrafCoordsPontosSize    : Byte;
    varGrafCoordsPontosStyle   : Byte;
    varGrafCoordsPontosUsaOutL : Boolean;
    varGrafCoordsPontosOutCor  : TColor;
    //**********************************************
    //*************   FIM GRAFICOS    **************
    //**********************************************
    //SELECT Graficos
    vetSelectPoli              : array of String[4];
    vetSelectLinha             : array of String[4];
    vetSelectRetang            : array of String[4];
    vetSelectQueryCirculo      : array of String[4];
    vetSelectQueryPonto        : array of String[4];
    vetSelectCirculo           : array of String[4];
    vetSelectPonto             : array of String[4];
    vetSelectTexto             : array of String[4];
    vetPtsEditVertexPoli       : IMoPoints;
    varBoolEditarTexto         : Boolean;
    vetPtsEditVertexlinha      : IMoPoints; //----------->vertex linha gledson
    //*********************************************

    //fotos ECW
    TemECWAdicionado           : boolean;
    FotosECW                   : array of string;
    PosNCS                     : array of Word;
    cECWpath                   : string;
    ECWView                    : array of boolean;

    //controlo se o mapa esta em utm ou lat-long
    Coord                      : boolean;

    //adicionar layer
    dc                         : IMoDataConnection;
    caminho                    : string;
    completo                   : string;
    arquivo                    : string;
    extensao                   : string;
    layer                      : IMoMapLayer;

    //Identificador
    layer_i                    : IMoMapLayer;
    //*****************************************
    ini        : TextFile;
    cab        : TextFile;
    leituraIni : TStringList;
    leituraCab : TStringList;
//***************************
//EDITAR / CRIAR CAMADAS
recs         : Recordset;
lyr          : IMoMapLayer;
lyrs         : IMoLayers;
layerativa   : integer;


procedure VerificarVersao;
procedure VerificarDataAtualizacaoSHP(Sender : TObject);
procedure LoadSkin(AFileName: String);
procedure LerArquivoIni;
procedure LerArquivoCabecalho;
function DECrypt(Action,Src: String): String;
procedure ConfigurarMenuTemas;
procedure EditarCamadas;
procedure SalvarCamadasEditadas;


end;

var
  frmMenu: TfrmMenu;

  // ECW image
  PrevWorldTLX   : Double;
  PrevWorldTLY   : Double;
  PrevWorldBRX   : Double;
  PrevWorldBRY   : Double;
  lECWOpen       : array of Boolean;
  varECW         : TNCSRenderer;

implementation

uses U_CAD, U_SDE, U_Identificador, U_LegendaLayer, U_Legenda,
  U_LegendaECW, U_ConfigProj, U_LoginProj, U_GrafPoli, U_LocalizarSimples,
  U_ProjError, U_GrafLinha, U_GrafRetangulo, U_Query, U_PropView,
  U_GrafCirculo, U_GrafInsCoordsUTM, U_GrafPonto, U_GrafTexto,
  U_Princ, U_Print, U_Sobre, U_Join, U_ConfigurarMaisInf,
  U_IdentMaisInformacoes, U_DirectConnect, U_Splash, U_DMGeo, IdFTP,
  U_Exportar, U_RelSimples, Math, U_Relimp, U_PreviewRel, U_RemoverJoin,
  U_RemoverIdent1N, U_analiseProximidade, U_TabelaSelecionados,
  U_GrafInsCoordLatLong, DateUtils, U_ConfigSistema, U_CriarCamada;

{$R *.dfm}

{Procedure TfrmMenu.ClickPointFindClosestEnd(x : Double;y : Double);
var
recs         : IMoRecordset;
lineClicked  : IMoLine;
firstPart    : IMoPoints;
lastPart     : IMoPoints;
ptClicked    : IMoPoint;
ptStart      : IMoPoint;
ptEnd        : IMoPoint;
ptClosest    : IMoPoint;
tol          : Double;
lyr          : IMoMapLayer;
lyrs         : IMoLayers;
//prts         : IMoParts;
fld          : IMoField;
flds         : IMoFields;
varTrue      : WordBool;
V            : Variant;
begin

   If twopointcoll.Count = 2 Then
      twopointcoll.Remove(1);

   ptClicked     := CoPoint.Create;
   ptClicked.x   := x;
   ptClicked.y   := y;

   tol           := Map1.ToMapDistance(3 * 2);//Screen.TwipsPerPixelX)

   lyr           := CoMapLayer.Create;
   lyrs          := map1.Layers;
   lyr           := imomaplayer(lyrs.item(0));

   recs          := lyr.SearchByDistance(ptPathFinder,tol,'');//lyr.Records; //
   lineClicked   := CoLine.Create;

   flds          := recs.Fields;
   fld           := flds.Item('SHAPE');

   lineClicked   := IMoLine(IDispatch(fld.value));
   firstPart     := CoPoints.Create;

   firstPart     := IMoPoints(IDispatch(lineClicked.Parts.Item(0)));
   lastPart      := CoPoints.Create;
   lastPart      := IMoPoints(IDispatch(lineClicked.Parts.Item(lineClicked.Parts.Count - 1)));

   ptStart       := CoPoint.Create;
   ptStart       := firstPart.Item(0);

   ptEnd         := CoPoint.Create;
   ptEnd         := lastPart.Item(lastPart.Count - 1);

   If ptClicked.DistanceTo(ptStart) < ptClicked.DistanceTo(ptEnd) Then
      begin
         ptClosest  := CoPoint.Create;
         ptClosest  := ptStart;
      end
      Else
         begin
            ptClosest   := CoPoint.Create;
            ptClosest   := ptEnd;
         End;

   twopointcoll.Add(ptClosest);

   varTrue  := true;
   Map1.TrackingLayer.Refresh(varTrue,V);

   If twopointcoll.Count = 2 Then
      frmMarcarRotas.show;

End;   }

{Procedure TfrmMenu.ClickPoint(x:Double;y:Double);
var
varTrue  : WordBool;
V        : Variant;
begin

     If twopointcoll.Count = 2 Then
        twopointcoll.Remove(1);

     twopointcoll.Add(ptPathFinder);
     varTrue  := true;
     Map1.TrackingLayer.Refresh(varTrue,V);

End;  }

//***********************************************************

procedure TfrmMenu.ZoomPosterior;
begin
  if VarCtrlPosicao = 255 then
   begin
    VarCtrlPosicao := 0;
    VarBoolPosicao[0] := true;
     if VarZoom[VarCtrlPosicao] = nil then
      begin
       exit;
      end;

   end;
   if VarCtrlPosicao <= 20 then
    if not VarBoolPosicao[VarCtrlPosicao+1] then
     if VarZoom[VarCtrlPosicao +1] <> nil then
        begin
         try
          inc(VarCtrlPosicao);
          Map1.Extent :=  VarZoom[VarCtrlPosicao];
          //ShowMessage(inttostr(varctrlposicao));
           if VarCtrlPosicao <= VarAtual then
            begin
             VarBoolPosicao[VarCtrlPosicao] := true;
            end;
         except
          exit;
         end;
        end
         else
          exit;
end;

//**************************************************************
procedure TfrmMenu.ZoomAnterior;
begin
 if VarCtrlPosicao = 255 then
   begin
    VarCtrlPosicao := 0;
    VarBoolPosicao[0] := true;
    if VarCtrlPosicao > 1 then
     begin
      exit;
     end;
   end;
   if (VarCtrlPosicao) > 0 then
    begin
     try
      dec(VarCtrlPosicao);
      Map1.Extent :=  VarZoom[VarCtrlPosicao];
      //ShowMessage(inttostr(varctrlposicao));
       if VarCtrlPosicao <= VarAtual then
        begin
         VarBoolPosicao[VarCtrlPosicao +1] := false;
        end;
     except
      exit;
     end;
    end
     else
      exit;

end;
//*******************************************************************

procedure tfrmmenu.legenda;
begin

 screen.Cursor := crHourGlass;
 //*** Atualiza a legenda ***//
 MapLegend1.LoadLegend(true);
 maplegend1.Refresh;

 screen.Cursor := crDefault;

end;

// AddEcsImage
procedure tfrmmenu.EcwSetView(numTag : integer);
var
  BandList   : oleVariant;
  i          : integer;
  ind        : integer;
  pos        : integer;
begin

 for ind := 0 to FrmMenu.ComponentCount - 1 do
  begin

      if Components[ind].classname = 'TNCSRenderer' then
        begin
            pos := TNCSRenderer(Components[ind]).tag;

            if NumTag = pos then //eh o mesmo entao processe
               begin

                    TNCSRenderer(Components[ind]).Open(FotosECW[pos],false);
                    TNCSRenderer(Components[ind]).Transparent := 1;

                    BandList := VarArrayCreate([0,TNCSRenderer(Components[ind]).NumberOfBands+1],varInteger);

                    for i:=0 to TNCSRenderer(Components[ind]).NumberOfBands-1 do
                      BandList[i]:=i;

                    try
                           TNCSRenderer(Components[ind]).SetView(TNCSRenderer(Components[ind]).NumberOfBands,BandList,Map1.width,Map1.Height,Map1.Extent.left,Map1.Extent.Top,Map1.Extent.Right,Map1.Extent.bottom);

                           if TNCSRenderer(Components[ind]).Progressive = false then
                              TNCSRenderer(Components[ind]).ReadImage(Map1.Extent.left,Map1.Extent.Top,Map1.Extent.Right,Map1.Extent.bottom,Map1.width,Map1.Height);
                    except
                       //nothing
                    end;
               end;
        end;
  end;

end;

function Tfrmmenu.DecriptaArquivoSalvo(varLinha : string):string;
begin

   result := desencript(varlinha);
//  result := varlinha;

end;

function Tfrmmenu.CryptArquivoSalvo(varLinha : string):string;
begin

   result :=  cript(varlinha);
//   result := varlinha;

end;

function Tfrmmenu.wright(wtexto:string;quant:integer):string;
begin
    result := copy(wtexto,((length(wtexto) - quant)+1),quant);
//   ex: wcopy := wright(wtexto,3); - copia as 3 ultimas
end;

procedure TFrmMenu.SetControlTo(c: TControl);
begin


end;

{procedure TForm1.SelectControl(Sender: TObject);
var
  c: TComponent;
  n: string;
  p: integer;
begin
  n := cbControls.Text;
  p := Pos(' ', n);
  if p <> 0 then
    n := Copy(n, 1, p - 1);
  c := FindComponent(n);
  if c is TControl then
    SetControlTo(TControl(c));
end;}

procedure TfrmMenu.SalvarProjeto(CaminhoProjeto : String);
var
ft                    : TFont;
tmpServidorSde        : String;
tmpBancoSde           : String;
tmpServicoSde         : String;
tmpUsuarioSde         : String;
tmpSenhaSde           : String;
tmpExtSde             : String;
tmpStrSDE             : String;
ITag                  : Smallint;
varPgCont             : Smallint;
posTexto              : Smallint;
posSdeTexto           : Smallint;
i                     : Smallint;
x                     : Smallint;
xxi                   : Smallint;
cont                  : Smallint;
igraf                 : Smallint;
xx                    : Smallint;
F                     : Textfile;
tmpString             : String;
tmp                   : string;
ext                   : String;
tmpStrDICO            : String;
varEhDICO             : Boolean;
varFonteNegrito       : Boolean;
varFonteItalico       : Boolean;
varFonteSublinhado    : Boolean;
varFonteRiscado       : Boolean;
varTemElev            : Boolean;
varPoliSelecionada    : Boolean;
varTextoSelecionado   : Boolean;
varPontoSelecionado   : Boolean;
varCirculoSelecionado : Boolean;
varLinhaSelecionada   : Boolean;
varRetangSelecionado  : Boolean;
varTemLAV             : Boolean;
varTemLPA             : Boolean;
varTemCBR             : Boolean;
varTemVMR             : Boolean;
varEhLayer            : Boolean;
varEhGrpRenderer      : Boolean;
varEhSDE              : Boolean;
varEhCAD              : Boolean;
varEhECW              : Boolean;
prts                  : IMoParts;
ptSelectGraf          : IMoPoint;
TempPontoQuery        : IMoPoint;
ptsSelectGraf         : IMoPoints;
lyrs                  : IMoLayers;
lyr                   : IMoMapLayer;
lyrTemp               : IMoMapLayer;
imgLyr                : IMoImageLayer;
grpRenderer           : IMoGroupRenderer;
vmr                   : IMoValueMapRenderer;
lr                    : IMoLabelRenderer;
cbr                   : IMoClassBreaksRenderer;
lp                    : IMoLabelPlacer;
ZRend                 : IMoZRenderer;
corSymbol             : IMoSymbol;
begin

  AssignFile(F,CaminhoProjeto);

  //********************************
  if not FileExists(CaminhoProjeto) then
     ReWrite(F)
  else
     begin
         Append(F);
         ReWrite(F);
     end;
  //********************************

  Writeln(F,CryptArquivoSalvo('[SIGGEO2.0]'));
  Writeln(F,CryptArquivoSalvo('[PROJETO]'));
  //*******************

  //*******************************************************
  //1º Passo
  //Começa pelas configurações do projeto
  Writeln(F,CryptArquivoSalvo('[CONFIGSIGGEO]'));
  //autor
  tmpString := 'AUTORPROJETO ' + varAUTORPROJETO;
  Writeln(F,CryptArquivoSalvo(tmpString));
  //contato
  tmpString := 'CONTATO ' + varCONTATO;
  Writeln(F,CryptArquivoSalvo(tmpString));
  //PAGINA
  tmpString := 'PAGINA ' + varPAGINA;
  Writeln(F,CryptArquivoSalvo(tmpString));
  //VERSAO
  tmpString := 'VERSAOSIGGEO ' + intToStr(varVERSAOPROJETOSIGGEO);
  Writeln(F,CryptArquivoSalvo(tmpString));
  //DATACRIACAO
  tmpString := 'DATACRIACAO ' + varDATACRIACAO;
  Writeln(F,CryptArquivoSalvo(tmpString));
  //SKINS
  tmpString := 'SKIN ' + TemaAtivo;   //bsCompressedStoredSkin1.CompressedFileName;
  Writeln(F,CryptArquivoSalvo(tmpString));
  //SALVARPROJETO
  if varSALVARPROJETO then tmpString := 'SALVARPROJETO SIM'
     else tmpString := 'SALVARPROJETO NAO';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //ADICIONARSDE
  if varADICIONARSDE then tmpString := 'ADICIONARSDE SIM'
     else tmpString := 'ADICIONARSDE NAO';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //IMPRIMIR
  if varIMPRIMIR then tmpString := 'IMPRIMIR SIM'
     else tmpString := 'IMPRIMIR NAO';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //LAYOUT
  if varLAYOUT then tmpString := 'LAYOUT SIM'
     else tmpString := 'LAYOUT NAO';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //ADICIONARDODISCO
  if varADICIONARDODISCO then tmpString := 'ADICIONARDODISCO SIM'
     else tmpString := 'ADICIONARDODISCO NAO';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //REMOVER GRAFICOS
  if varDELETARGRAFICOS then tmpString := 'DELETARGRAFICOS SIM'
     else tmpString := 'DELETARGRAFICOS NAO';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //REMOVERLAYERS
  if varREMOVERLAYERS then tmpString := 'REMOVERLAYERS SIM'
     else tmpString := 'REMOVERLAYERS NAO';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //SDE servidor
  tmpString := 'SDESERVIDOR ' + varSDEServidor;
  Writeln(F,CryptArquivoSalvo(tmpString));
  //SDEBANCO
  tmpString := 'SDEBANCO ' + varSDEBanco;
  Writeln(F,CryptArquivoSalvo(tmpString));
  //SDESERVICO
  tmpString := 'SDESERVICO ' + varSDEservico;
  Writeln(F,CryptArquivoSalvo(tmpString));
  //SDEUSUARIO
  tmpString := 'SDEUSUARIO ' + varSDEusuario;
  Writeln(F,CryptArquivoSalvo(tmpString));
  //SDESENHA
  tmpString := 'SDESENHA ' + varSDEsenha;
  Writeln(F,CryptArquivoSalvo(tmpString));
  //***********************
  //salvo as configuraçoes SDE
  Writeln(F,CryptArquivoSalvo('[LISTASDE]'));
  if Length(varVetSDEServidor)>0 then
     begin
        For xx:=0 to length(varVetSDEServidor)-1 do
            begin
                if trim(varVetSDEServidor[xx])<>'' then
                   begin
                      Writeln(F,CryptArquivoSalvo('[SDE]'));
                      Writeln(F,CryptArquivoSalvo('SDESERV '+varVetSDEServidor[xx]));
                      Writeln(F,CryptArquivoSalvo('SDEBANCO '+varVetSDEBanco[xx]));
                      Writeln(F,CryptArquivoSalvo('SDESERVICO '+varVetSDEServico[xx]));
                      Writeln(F,CryptArquivoSalvo('SDEUSUARIO '+varVetSDEUsuario[xx]));
                      Writeln(F,CryptArquivoSalvo('SDESENHA '+varVetSDESenha[xx]));
                      Writeln(F,CryptArquivoSalvo('[/SDE]'));
                   end;
            end;
     end;
  Writeln(F,CryptArquivoSalvo('[/LISTASDE]'));     
  //*********************************************************
  //*********************************************************


  //******************************
  //******************************
  //IDENTIFICADOR 1:N
  //******************************
  //******************************
  tmpString := '[CONFIGIDENTMAIS]';
  Writeln(F,CryptArquivoSalvo(tmpString));
  if Length(varVetIDentTagLayer)>0 then
     begin
         for ITag :=0 to Length(varVetIDentTagLayer) -1 do
              begin
                  if trim(varVetIDentTagLayer[Itag])<>'' then
                     begin
                        Writeln(F,CryptArquivoSalvo('[INICIOCONFIG]'));
                        Writeln(F,CryptArquivoSalvo('TAGLAYER '+varVetIDentTagLayer[Itag]));
                        Writeln(F,CryptArquivoSalvo('CAMPO '+varVetIDentLayerCampo[Itag]));
                        Writeln(F,CryptArquivoSalvo('SQL '+varVetIDentSQL[Itag]));
                        Writeln(F,CryptArquivoSalvo('CONEXAO '+varVetIDentOraSession[Itag].ConnectString));
                        Writeln(F,CryptArquivoSalvo('[FIMCONFIG]'));
                     end;
              end;
     end;
  //******************
  tmpString := '[FIMCONFIGIDENTMAIS]';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //*********************************************************
  //*********************************************************


  //******************************
  //******************************
  //JOIN LAYER
  //******************************
  //******************************
  tmpString := '[CONFIGJOIN]';
  Writeln(F,CryptArquivoSalvo(tmpString));
  if Length(varVetJoinTagLayer)>0 then
     begin
         for ITag :=0 to Length(varVetJoinTagLayer) -1 do
              begin
                  if trim(varVetJoinTagLayer[Itag])<>'' then
                     begin
                        Writeln(F,CryptArquivoSalvo('[INICIOCONFIGJOIN]'));
                        Writeln(F,CryptArquivoSalvo('TAGLAYER '+varVetJoinTagLayer[Itag]));
                        Writeln(F,CryptArquivoSalvo('TOFIELD '+varVetJoinTOFIELD[Itag]));
                        Writeln(F,CryptArquivoSalvo('FROMFIELD '+varVetJoinFROMFIELD[Itag]));
                        Writeln(F,CryptArquivoSalvo('TABELA '+varVetJoinTabela[Itag]));
                        Writeln(F,CryptArquivoSalvo('USUARIO '+varVetJoinUsuario[Itag]));
                        Writeln(F,CryptArquivoSalvo('SENHA '+varVetJoinSenha[Itag]));
                        Writeln(F,CryptArquivoSalvo('SERVIDOR '+varVetJoinServidor[Itag]));
                        Writeln(F,CryptArquivoSalvo('SERVICO '+varVetJoinServico[Itag]));
                        Writeln(F,CryptArquivoSalvo('BANCO '+varVetJoinBanco[Itag]));
                        Writeln(F,CryptArquivoSalvo('[FIMCONFIGJOIN]'));
                     end;
              end;
     end;
  //******************
  tmpString := '[FINALCONFIGJOIN]';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //*********************************************************
  //*********************************************************


  //***********************
  //salvo as configuraçoes DIRECT CONNECT
  Writeln(F,CryptArquivoSalvo('[LISTADICO]'));
  if Length(varVetDICOBanco)>0 then
     begin
        For xx:=0 to length(varVetDICOBanco)-1 do
            begin
                if trim(varVetDICOBanco[xx])<>'' then
                   begin
                      Writeln(F,CryptArquivoSalvo('[DICO]'));
                      Writeln(F,CryptArquivoSalvo('DICOBANCO '+varVetDICOBanco[xx]));
                      Writeln(F,CryptArquivoSalvo('DICOUSUARIO '+varVetDICOUsuario[xx]));
                      Writeln(F,CryptArquivoSalvo('DICOSENHA '+varVetDICOSenha[xx]));
                      Writeln(F,CryptArquivoSalvo('[/DICO]'));
                   end;
            end;
     end;
  Writeln(F,CryptArquivoSalvo('[/LISTADICO]'));
  //*********************************************************
  //*********************************************************

  //***********************
  //salvo as configuraçoes DA LISTA DE JOINS
  Writeln(F,CryptArquivoSalvo('[LISTAJOIN]'));
  if Length(varVetListaServidor)>0 then
     begin
        For xx:=0 to length(varVetListaServidor)-1 do
            begin
                if trim(varVetListaServidor[xx])<>'' then
                   begin
                      Writeln(F,CryptArquivoSalvo('[LISTAJ]'));
                      Writeln(F,CryptArquivoSalvo('JBANCO '+varVetListaBanco[xx]));
                      Writeln(F,CryptArquivoSalvo('JUSUARIO '+varVetListaUsuario[xx]));
                      Writeln(F,CryptArquivoSalvo('JSENHA '+varVetListaSenha[xx]));
                      Writeln(F,CryptArquivoSalvo('JSERVIDOR '+varVetListaServidor[xx]));
                      Writeln(F,CryptArquivoSalvo('JSERVICO '+varVetListaServico[xx]));
                      Writeln(F,CryptArquivoSalvo('JCAMPO '+varVetListaCampo[xx]));
                      Writeln(F,CryptArquivoSalvo('JTABELA '+varVetListaTabela[xx]));
                      Writeln(F,CryptArquivoSalvo('[/LISTAJ]'));
                   end;
            end;
     end;
  Writeln(F,CryptArquivoSalvo('[/LISTAJOIN]'));


  //*********************************************************
  //*********************************************************
  //***********************

  //***** SALVAR LISTA DE CONEXOES 1:N
  Writeln(F,CryptArquivoSalvo('[LISTA1N]'));
  if Length(varIDENTConexao)>0 then
     begin
        For xx:=0 to length(varIDENTConexao)-1 do
            begin
                if trim(varIDENTConexao[xx])<>'' then
                   begin
                      Writeln(F,CryptArquivoSalvo('[LISTAN]'));
                      Writeln(F,CryptArquivoSalvo('NCONEXAO '+varIDENTConexao[xx]));
                      Writeln(F,CryptArquivoSalvo('NSQL '+varIDENTSQL[xx]));
                      Writeln(F,CryptArquivoSalvo('NTABELA '+varIDENTTabela[xx]));
                      Writeln(F,CryptArquivoSalvo('NCAMPO '+varIDENTCampo[xx]));
                      Writeln(F,CryptArquivoSalvo('[/LISTAN]'));
                   end;
            end;
     end;
  Writeln(F,CryptArquivoSalvo('[/LISTA1N]'));
  //*********************************************************

  //*********************************************************
  //converter novo shape
  if varConvNovoSHP then tmpString := 'CONVERTNOVOSHP SIM'
     else tmpString := 'CONVERTNOVOSHP NAO';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //pegando a configuração dos panel
  tmpString := 'PNLEGENDATOP ' + intToStr(pnLegenda.Top);
  Writeln(F,CryptArquivoSalvo(tmpString));
  tmpString := 'PNLEGENDALEFT ' + intToStr(pnLegenda.left);
  Writeln(F,CryptArquivoSalvo(tmpString));
  //pegando a configuração dos panel
  tmpString := 'PNLEGENDAHEIGTH ' + intToStr(pnLegenda.Height);
  Writeln(F,CryptArquivoSalvo(tmpString));
  //*********
  //pegando a configuração dos panel
  tmpString := 'PNLEGENDAWIDTH ' + intToStr(pnLegenda.Width);
  Writeln(F,CryptArquivoSalvo(tmpString));
  //*********
  if pnlegenda.Visible then
     tmpString := 'PNLEGENDAVISIVEL SIM'
  else
     tmpString := 'PNLEGENDAVISIVEL NAO';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //***
  if pnLegenda.RollState then
     tmpString := 'PNLEGENDAROLLSTATE SIM'
  else
     tmpString := 'PNLEGENDAROLLSTATE NAO';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //***********
  tmpString := 'PNMAPATOP ' + intToStr(pnMapa2.Top);
  Writeln(F,CryptArquivoSalvo(tmpString));
  tmpString := 'PNMAPALEFT '+ intToStr(pnMapa2.left);
  Writeln(F,CryptArquivoSalvo(tmpString));
  //**
  tmpString := 'PNMAPA2HEIGTH ' + intToStr(pnMapa2.Height);
  Writeln(F,CryptArquivoSalvo(tmpString));
  tmpString := 'PNMAPA2WIDTH ' + intToStr(pnMapa2.Width);
  Writeln(F,CryptArquivoSalvo(tmpString));
  //******************  
  if pnMapa2.Visible then
     tmpString := 'PNMAPAVISIVEL SIM'
  else
     tmpString := 'PNMAPAVISIVEL NAO';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //***
  if pnMapa2.RollState then
     tmpString := 'PNMAPAROLLSTATE SIM'
  else
     tmpString := 'PNMAPAROLLSTATE NAO';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //***********
  tmpString := 'PNESCALATOP ' + intToStr(pnEscala.Top);
  Writeln(F,CryptArquivoSalvo(tmpString));
  tmpString := 'PNESCALALEFT ' + intToStr(pnEscala.left);
  Writeln(F,CryptArquivoSalvo(tmpString));
  //****
  if pnEscala.Visible then
     tmpString := 'PNESCALAVISIVEL SIM'
  else
     tmpString := 'PNESCALAVISIVEL NAO';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //***
  if pnEscala.RollState then
     tmpString := 'PNESCALAROLLSTATE SIM'
  else
     tmpString := 'PNESCALAROLLSTATE NAO';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //****************************************
  //cor de seleçao dos shapes
  tmpString := 'CORSELECAO ' + ColorToString(cor_SelectPreenchCamada);
  Writeln(F,CryptArquivoSalvo(tmpString));
  //*************************
  //cor de seleçao da linha shapes
  tmpString := 'CORSELECAOOUT ' + ColorToString(cor_OutSelectCamada);
  Writeln(F,CryptArquivoSalvo(tmpString));
  //*************************
  //cor de seleçao dos graficos
  tmpString := 'CORSELECAOGRAF ' + ColorToString(cor_SelectGraf);
  Writeln(F,CryptArquivoSalvo(tmpString));
  //*************************
  //cor de seleçao dos graficos outline
  tmpString := 'CORSELECAOGRAFOUT ' + ColorToString(cor_OutSelectGraf);
  Writeln(F,CryptArquivoSalvo(tmpString));
  //*************************
  //espessura da linha selecao
  tmpString := 'ESPSELECAOCAMADA ' + IntToStr(varEspSelecaoCamada);
  Writeln(F,CryptArquivoSalvo(tmpString));
  //*************************
  //espessura da linha grafico
  tmpString := 'ESPSELECAOGRAFICO ' + IntToStr(varEspSelecaoGrafico);
  Writeln(F,CryptArquivoSalvo(tmpString));
  //*************************
  //cor de seleçao dos shapes
  tmpString := 'PREENCHSELECAOCAMADA ' + IntToStr(varPreenchSelecaoCamada);
  Writeln(F,CryptArquivoSalvo(tmpString));
  //*************************
  //cor de seleçao dos shapes
  tmpString := 'PREENCHSELECAOGRAFICO ' + IntToStr(varPreenchSelecaoGrafico);
  Writeln(F,CryptArquivoSalvo(tmpString));
  //*************************
  //cor de seleçao dos shapes
  if varBoolDesenharOutCamada then
     tmpString := 'DESENHAROUTCAMADA SIM'
  else
     tmpString := 'DESENHAROUTCAMADA NAO';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //*************************
  //cor de seleçao dos shapes
  if varBoolDesenharOutGrafico then
     tmpString := 'DESENHAROUTGRAFICO SIM'
  else
     tmpString := 'DESENHAROUTGRAFICO NAO';
  Writeln(F,CryptArquivoSalvo(tmpString));
  //**************************************
  //**************************************  
  //PEGANDO AS DIMENSOES DO MAPA
  tmpString := 'MAPZOOMLEFT ' + FloatToStr(map1.Extent.Left);
  Writeln(F,CryptArquivoSalvo(tmpString));
  tmpString := 'MAPZOOMTOP ' + FloatToStr(map1.Extent.Top);
  Writeln(F,CryptArquivoSalvo(tmpString));
  tmpString := 'MAPZOOMBOTTOM ' + FloatToStr(map1.Extent.Bottom);
  Writeln(F,CryptArquivoSalvo(tmpString));
  tmpString := 'MAPZOOMRIGHT ' + FloatToStr(map1.Extent.Right);
  Writeln(F,CryptArquivoSalvo(tmpString));
  //nome de usuario do projeto
  tmpString := 'NOMEUSUPROJ '+ varNomeUsuproj;
  Writeln(F,CryptArquivoSalvo(tmpString));
  //senha do usu do projeto
  tmpString := 'SENHAUSUPROJ '+ varSenhaUsuproj;
  Writeln(F,CryptArquivoSalvo(tmpString));
  //*************************

  //EDITARLEGENDA
  if varEDITARLEGENDA then
     tmpString := 'EDITARLEGENDA SIM'
  else
     tmpString := 'EDITARLEGENDA NAO';

  //********************************************************
  Writeln(F,CryptArquivoSalvo(tmpString));
  //fim da configuraçao
  Writeln(F,CryptArquivoSalvo('[FIMCONFIGSIGGEO]'));
  //********************************************************


  //********************************************************
  //2º Passo
  //salvar os graficos do projeto
  //********************************************************

  Writeln(F,CryptArquivoSalvo('[GRAFICOS]'));
  Writeln(F,CryptArquivoSalvo('[REGUA]'));
  Writeln(F,CryptArquivoSalvo('REGUASTYLE '+IntToStr(varReguaEstilo)));
  Writeln(F,CryptArquivoSalvo('REGUASIZE '+IntToStr(varReguaSize)));
  Writeln(F,CryptArquivoSalvo('REGUACOR '+IntToStr(varReguaColor)));
  Writeln(F,CryptArquivoSalvo('REGUASTYLESELECT '+IntToStr(varReguaEstiloSelect)));
  Writeln(F,CryptArquivoSalvo('REGUASIZESELECT '+IntToStr(varReguaSizeSelect)));
  Writeln(F,CryptArquivoSalvo('REGUACORSELECT '+IntToStr(varReguaColorSelect)));

  if varlnRegua <> nil then
     begin
         if varlnLinhaSelecionada<> nil then
            Writeln(F,CryptArquivoSalvo('REGUASELECIONADA SIM'))
         Else
            Writeln(F,CryptArquivoSalvo('REGUASELECIONADA NAO'));
         //****
         Writeln(F,CryptArquivoSalvo('[COORDS]'));
         //*****************************************
         prts       := nil;
         prts       := varLnRegua.Parts;
         //**********************************************
          for cont:=0 to prts.Count - 1 do
              begin
                  ptsSelectGraf  := nil;
                  ptsSelectGraf  := CoPoints.Create;
                  ptsSelectGraf  := IMoPoints(prts.item(cont));

                  //agora leio vertice a vertice
                  if cont=0 then
                     begin
                          for xxi:=0 to ptsSelectGraf.Count-1 do
                              begin
                                 ptSelectGraf := nil;
                                 ptSelectGraf := CoPoint.Create;
                                 ptSelectGraf := ptsSelectGraf.Item(xxi);
                                 Writeln(F,CryptArquivoSalvo('X '+FloatToStr(ptSelectGraf.X)));
                                 Writeln(F,CryptArquivoSalvo('Y '+FloatToStr(ptSelectGraf.Y)));
                              end;
                     end
                     else
                         begin
                             if cont < prts.Count - 1 then
                                begin
                                   ptSelectGraf := nil;
                                   ptSelectGraf := CoPoint.Create;
                                   ptSelectGraf := ptsSelectGraf.Item(ptsSelectGraf.Count-1);
                                   Writeln(F,CryptArquivoSalvo('X '+FloatToStr(ptSelectGraf.X)));
                                   Writeln(F,CryptArquivoSalvo('Y '+FloatToStr(ptSelectGraf.Y)));
                                end;

                         end;
              end;
              //*****************************************}
              Writeln(F,CryptArquivoSalvo('[FIMCOORDS]'));
              //*****************************************}
              
     end;//if varlnRegua <> nil then

  Writeln(F,CryptArquivoSalvo('[FIMREGUA]'));
  //*****************************************}
  //*****************************************}


  //*****************************************
  //**********   POLIGONOS   ****************
  //*****************************************
  Writeln(F,CryptArquivoSalvo('[INICIOPOLIGONOS]'));
  Writeln(F,CryptArquivoSalvo('POLISIZEPADRAO '+IntToStr(varGrafPoliSize)));
  Writeln(F,CryptArquivoSalvo('POLIOUTCORPADRAO '+ColorToString(frmMenu.varGrafPoliOutCor)));
  Writeln(F,CryptArquivoSalvo('POLISTYLEPADRAO '+IntToStr(frmMenu.varGrafPoliStyle)));
  Writeln(F,CryptArquivoSalvo('POLICORPADRAO '+ColorToString(varGrafPoliColor)));
  //***
  if varGrafPoliUsaOutline then
     Writeln(F,CryptArquivoSalvo('POLIUSAOUTLINEPADRAO SIM'))
  ELSE Writeln(F,CryptArquivoSalvo('POLIUSAOUTLINEPADRAO NAO'));
  //***
  if Length(varGrafPoli)> 0 then
     begin
          for iGraf:=0 to Length(varGrafPoli)-1 do
              begin

                   if varGrafPoli[iGraf] <> nil then
                      begin
                           prts := nil;
                           prts := varGrafPoli[iGraf].Parts;
                           Writeln(F,CryptArquivoSalvo('[INIPOLI]'));
                           Writeln(F,CryptArquivoSalvo('[COORDS]'));
                           for cont:=0 to prts.Count - 1 do
                               begin
                                   ptsSelectGraf  := nil;
                                   ptsSelectGraf  := CoPoints.Create;
                                   ptsSelectGraf  := IMoPoints(prts.item(cont));

                                   //agora leio vertice a vertice
                                   for xxi:=0 to ptsSelectGraf.Count-1 do
                                       begin
                                          ptSelectGraf := nil;
                                          ptSelectGraf := CoPoint.Create;
                                          ptSelectGraf := ptsSelectGraf.Item(xxi);
                                          Writeln(F,CryptArquivoSalvo('X '+FloatToStr(ptSelectGraf.X)));
                                          Writeln(F,CryptArquivoSalvo('Y '+FloatToStr(ptSelectGraf.Y)));
                                       end;

                               end;

                           Writeln(F,CryptArquivoSalvo('[FIMCOORDS]'));
                           Writeln(F,CryptArquivoSalvo('POLICOR '+ColorToString(varVetGrafPoliColor[iGraf])));
                           //***
                           if varVetGrafPoliUsaOutline[iGraf] then
                              Writeln(F,CryptArquivoSalvo('POLIUSAOUTLINE SIM'))
                           ELSE Writeln(F,CryptArquivoSalvo('POLIUSAOUTLINE NAO'));
                           //***
                           Writeln(F,CryptArquivoSalvo('POLISIZE '+IntToStr(varVetGrafPoliSize[iGraf])));
                           Writeln(F,CryptArquivoSalvo('POLIOUTCOR '+ColorToString(frmMenu.varVetGrafPoliOutCor[iGraf])));
                           //****
                           varPoliSelecionada := false;
                           if length(vetSelectPoli)> 0 then
                              begin
                                  for varPgCont:=0 to length(vetSelectPoli)-1 do
                                      begin
                                          if strToInt(vetSelectPoli[varPgCont]) = iGraf then
                                             begin
                                                 varPoliSelecionada := true;
                                                 break;
                                             end;
                                      end;
                              end;

                           //*****
                           if varPoliSelecionada then
                              Writeln(F,CryptArquivoSalvo('SELECIONADO SIM'))
                           ELSE Writeln(F,CryptArquivoSalvo('SELECIONADO NAO'));
                           //***************************************************
                           Writeln(F,CryptArquivoSalvo('POLISTYLE '+IntToStr(varVetGrafPoliStyle[iGraf])));
                           Writeln(F,CryptArquivoSalvo('[FIMPOLI]'));

                      end;//if varGrafPoli[iGraf] <> nil then

              end; //for iGraf:=0 to Length(varGrafPoli)-1 do

     end;//if Length(varGrafPoli)> 0 then

  Writeln(F,CryptArquivoSalvo('[FIMPOLIGONOS]'));
  //********************************************************
  //********************************************************


  //***********************************************
  //**********   PONTOS            ****************
  //***********************************************
  Writeln(F,CryptArquivoSalvo('[INICIOPONTOS]'));
  Writeln(F,CryptArquivoSalvo('PONTOSYMBOLPADRAO '+ IntToStr(varGrafPontoStyle)));
  Writeln(F,CryptArquivoSalvo('PONTOCORPADRAO ' + ColorToString(varGrafPontoColor)));
  Writeln(F,CryptArquivoSalvo('PONTOOUTCORPADRAO ' + ColorToString(varGrafPontoOutCor)));
  If varGrafPontoUsaOutline then
  Writeln(F,CryptArquivoSalvo('PONTOUSAOUTLINEPADRAO SIM')) ELSE Writeln(F,CryptArquivoSalvo('PONTOUSAOUTLINEPADRAO NAO'));
  Writeln(F,CryptArquivoSalvo('PONTOSIZEPADRAO '+ IntToStr(varGrafPontoSize)));
  //***
  if Length(varGrafPonto)> 0 then
     begin
          for iGraf:=0 to Length(varGrafPonto)-1 do
              begin

                   if varGrafPonto[iGraf] <> nil then
                      begin
                           Writeln(F,CryptArquivoSalvo('[INICIOPONTO]'));
                           Writeln(F,CryptArquivoSalvo('[COORDS]'));
                           //**********
                           TempPontoQuery := CoPoint.Create;
                           TempPontoQuery := varGrafPonto[iGraf];
                           Writeln(F,CryptArquivoSalvo('CENTERX '+FloatToStr(TempPontoQuery.X)));
                           Writeln(F,CryptArquivoSalvo('CENTERY '+FloatToStr(TempPontoQuery.Y)));
                           Writeln(F,CryptArquivoSalvo('[FIMCOORDS]'));
                           //************
                           Writeln(F,CryptArquivoSalvo('PONTOCOR '+ColorToString(varVetGrafPontoColor[iGraf])));
                           //***
                           if varVetGrafPontoUsaOutline[iGraf] then
                              Writeln(F,CryptArquivoSalvo('PONTOUSAOUTLINE SIM'))
                           ELSE Writeln(F,CryptArquivoSalvo('PONTOUSAOUTLINE NAO'));
                           //***
                           Writeln(F,CryptArquivoSalvo('PONTOSIZE '+IntToStr(varVetGrafPontoSize[iGraf])));
                           Writeln(F,CryptArquivoSalvo('PONTOOUTCOR '+ColorToString(frmMenu.varVetGrafPontoOutCor[iGraf])));
                           //****
                           //************
                           varPontoSelecionado := false;
                           if length(vetSelectPonto)> 0 then
                              begin
                                  for varPgCont:=0 to length(vetSelectPonto)-1 do
                                      begin
                                          if strToInt(vetSelectPonto[varPgCont]) = iGraf then
                                             begin
                                                 varPontoSelecionado := true;
                                                 break;
                                             end;
                                      end;
                              end;
                           //*****
                           if varPontoSelecionado then
                              Writeln(F,CryptArquivoSalvo('SELECIONADO SIM'))
                           ELSE Writeln(F,CryptArquivoSalvo('SELECIONADO NAO'));
                           //***************************************************
                           Writeln(F,CryptArquivoSalvo('PONTOSTYLE '+IntToStr(varVetGrafPontoStyle[iGraf])));
                           //****
                           Writeln(F,CryptArquivoSalvo('[FIMPONTO]'));

                      end;//if varGrafPoli[iGraf] <> nil then

              end; //for iGraf:=0 to Length(varGrafPoli)-1 do

     end;//if Length(varGrafPoli)> 0 then
  Writeln(F,CryptArquivoSalvo('[FIMPONTOS]'));
  //********************************************************
  //********************************************************


  //********************************************************
  //********************************************************
  //LINHA
  //********************************************************
  //********************************************************
  Writeln(F,CryptArquivoSalvo('[INICIOLINHA]'));
  Writeln(F,CryptArquivoSalvo('LINHASIZEPADRAO '+IntToStr(varGrafLinhaSize)));
  Writeln(F,CryptArquivoSalvo('LINHASTYLEPADRAO '+IntToStr(varGrafLinhaStyle)));
  Writeln(F,CryptArquivoSalvo('LINHACORPADRAO '+ColorToString(varGrafLinhaColor)));
  //****
  if Length(varGrafLinha)> 0 then
     begin
          for iGraf:=0 to Length(varGrafLinha)-1 do
              begin

                   if varGrafLinha[iGraf] <> nil then
                      begin
                           prts := nil;
                           prts := varGrafLinha[iGraf].Parts;
                           Writeln(F,CryptArquivoSalvo('[INILINHA]'));
                           Writeln(F,CryptArquivoSalvo('[COORDS]'));
                           for cont:=0 to prts.Count - 1 do
                               begin
                                   ptsSelectGraf  := nil;
                                   ptsSelectGraf  := CoPoints.Create;
                                   ptsSelectGraf  := IMoPoints(prts.item(cont));

                                   //agora leio vertice a vertice
                                   for xxi:=0 to ptsSelectGraf.Count-1 do
                                       begin
                                          ptSelectGraf := nil;
                                          ptSelectGraf := CoPoint.Create;
                                          ptSelectGraf := ptsSelectGraf.Item(xxi);
                                          Writeln(F,CryptArquivoSalvo('X '+FloatToStr(ptSelectGraf.X)));
                                          Writeln(F,CryptArquivoSalvo('Y '+FloatToStr(ptSelectGraf.Y)));
                                       end;

                               end;

                           Writeln(F,CryptArquivoSalvo('[FIMCOORDS]'));
                           Writeln(F,CryptArquivoSalvo('LINHACOR '+ColorToString(varVetGrafLinhaColor[iGraf])));
                           //***
                           Writeln(F,CryptArquivoSalvo('LINHASIZE '+IntToStr(varVetGrafLinhaSize[iGraf])));
                           Writeln(F,CryptArquivoSalvo('LINHASTYLE '+IntToStr(varVetGrafLinhaStyle[iGraf])));
                           //****
                           varLinhaSelecionada := false;
                           //****
                           if length(vetSelectLinha)> 0 then
                              begin
                                  for varPgCont:=0 to length(vetSelectLinha)-1 do
                                      begin
                                          if strToInt(vetSelectLinha[varPgCont]) = iGraf then
                                             begin
                                                 varLinhaSelecionada := true;
                                                 break;
                                             end;
                                      end;
                              end;
                           //*****

                           if varLinhaSelecionada then
                              Writeln(F,CryptArquivoSalvo('SELECIONADO SIM'))
                           ELSE Writeln(F,CryptArquivoSalvo('SELECIONADO NAO'));
                           //***************************************************

                           Writeln(F,CryptArquivoSalvo('[FIMLINHA]'));

                      end;//if varGrafLinha[iGraf] <> nil then

              end;

     end;
  Writeln(F,CryptArquivoSalvo('[FIMGRAFLINHA]'));
  //********************************************************
  //********************************************************


  //********************************************************
  //********************************************************
  //**************      TEXTO           ********************
  //********************************************************
  //********************************************************
  Writeln(F,CryptArquivoSalvo('[INICIOTEXTO]'));
  Writeln(F,CryptArquivoSalvo('TEXTOSIZEPADRAO '+IntToStr(FontDialog1.Font.Size)));
  Writeln(F,CryptArquivoSalvo('TEXTOROTACAOPADRAO '+IntToStr(varGrafTextoRotacao)));
  Writeln(F,CryptArquivoSalvo('TEXTOFONTEPADRAO '+FontDialog1.Font.Name));
  //************************************
  //************************************
   if FontDialog1.Font.Style = [] then
      begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO NAO'));
      end
   else
   if FontDialog1.font.Style = [fsBold] then
      begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO NAO'));
      end
   else
   if FontDialog1.font.Style = [fsBold,fsItalic] then
      begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO NAO'));
      end
   else
   if FontDialog1.font.Style = [fsBold,fsUnderline] then
      begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO NAO'));
      end
   else
   if FontDialog1.font.Style = [fsBold,fsStrikeOut] then
      begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO SIM'));
      end
   else
   if FontDialog1.font.Style = [fsBold,fsItalic,fsUnderline] then
      begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO NAO'));
      end
   else
   if FontDialog1.font.Style = [fsBold,fsItalic,fsStrikeout] then
      begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO NAO'));
      end
   else
   if FontDialog1.font.Style = [fsBold,fsUnderline,fsStrikeout] then
      begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO NAO'));
      end
   else
   if FontDialog1.font.Style = [fsBold,fsItalic,fsUnderline,fsStrikeOut] then
      begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO SIM'));
      end
   else
   if FontDialog1.font.Style = [fsItalic] then
      begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO NAO'));
      end
   else
   if FontDialog1.font.Style = [fsItalic,fsUnderline] then
      begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO NAO'));
      end
   else
   if FontDialog1.font.Style = [fsItalic,fsStrikeOut] then
      begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO NAO'));
      end
   else
   if FontDialog1.font.Style = [fsItalic,fsUnderline,fsStrikeOut] then
      begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO SIM'));
      end
   else
   if FontDialog1.font.Style = [fsUnderline] then
      begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO NAO'));
      end
   else
   if FontDialog1.font.Style = [fsUnderline,fsStrikeOut] then
      begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO SIM'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO SIM'));
      end
   else
   if FontDialog1.font.Style = [fsStrikeOut] then
      begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO SIM'));
      end
      else
      Begin
        Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADOPADRAO NAO'));
        Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCOPADRAO NAO'));
      end;
   //******************************************
   //******************************************

   Writeln(F,CryptArquivoSalvo('TEXTOFONTECORPADRAO '+ColorToString(FontDialog1.Font.Color)));
  //***********************************
  //***********************************
  //***********************************
  if Length(varVetGrafTexto)> 0 then
     begin
          for iGraf:=0 to Length(varVetGrafTexto)-1 do
              begin
                   if varVetGrafTextoPT[iGraf] <> nil then
                      begin
                           Writeln(F,CryptArquivoSalvo('[INITEXTO]'));
                           Writeln(F,CryptArquivoSalvo('[COORDS]'));
                           Writeln(F,CryptArquivoSalvo('X '+FloatToStr(varVetGrafTextoPT[iGraf].X)));
                           Writeln(F,CryptArquivoSalvo('Y '+FloatToStr(varVetGrafTextoPT[iGraf].Y)));
                           Writeln(F,CryptArquivoSalvo('[FIMCOORDS]'));
                           //*************************************
                           Writeln(F,CryptArquivoSalvo('TEXTOSIZE '+IntToStr(varVetGrafTextoSize[iGraf])));
                           Writeln(F,CryptArquivoSalvo('TEXTOROTACAO '+IntToStr(varVetGrafTextoRotacao[iGraf])));
                           Writeln(F,CryptArquivoSalvo('TEXTOFONTE '+varVetGrafTextoFonteNome[iGraf]));
                           Writeln(F,CryptArquivoSalvo('TEXTOSTRING '+varVetGrafTexto[iGraf]));
                           //******************************************
                           //*** CARACTERISTICAS DA FONTE
                           //******************************************
                           if varVetGrafTextoFonteStyle[iGraf] = [] then
                              begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO NAO'));
                                 varFonteNegrito     := false;
                                 varFonteItalico     := false;
                                 varFonteSublinhado  := false;
                                 varFonteRiscado     := false;
                              end
                           else
                           if varVetGrafTextoFonteStyle[iGraf] = [fsBold] then
                              begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO NAO'));
                                 varFonteNegrito     := true;
                                 varFonteItalico     := false;
                                 varFonteSublinhado  := false;
                                 varFonteRiscado     := false;
                              end
                           else
                           if varVetGrafTextoFonteStyle[iGraf] = [fsBold,fsItalic] then
                              begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO NAO'));
                                 varFonteNegrito     := true;
                                 varFonteItalico     := true;
                                 varFonteSublinhado  := false;
                                 varFonteRiscado     := false;
                              end
                           else
                           if varVetGrafTextoFonteStyle[iGraf] = [fsBold,fsUnderline] then
                              begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO NAO'));
                                 varFonteNegrito     := true;
                                 varFonteItalico     := true;
                                 varFonteSublinhado  := false;
                                 varFonteRiscado     := false;
                              end
                           else
                           if varVetGrafTextoFonteStyle[iGraf] = [fsBold,fsStrikeOut] then
                              begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO NAO'));
                                 varFonteNegrito     := true;
                                 varFonteItalico     := true;
                                 varFonteSublinhado  := false;
                                 varFonteRiscado     := false;
                              end
                           else
                           if varVetGrafTextoFonteStyle[iGraf] = [fsBold,fsItalic,fsUnderline] then
                              begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO NAO'));
                                 varFonteNegrito     := true;
                                 varFonteItalico     := true;
                                 varFonteSublinhado  := true;
                                 varFonteRiscado     := false;
                              end
                           else
                           if varVetGrafTextoFonteStyle[iGraf] = [fsBold,fsUnderline,fsStrikeOut] then
                              begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO NAO'));
                                 varFonteNegrito     := true;
                                 varFonteItalico     := true;
                                 varFonteSublinhado  := true;
                                 varFonteRiscado     := false;
                              end
                           else
                           if varVetGrafTextoFonteStyle[iGraf] = [fsBold,fsItalic,fsStrikeOut] then
                              begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO NAO'));
                                 varFonteNegrito     := true;
                                 varFonteItalico     := true;
                                 varFonteSublinhado  := true;
                                 varFonteRiscado     := false;
                              end
                           else
                           if varVetGrafTextoFonteStyle[iGraf] = [fsBold,fsItalic,fsUnderline,fsStrikeOut] then
                              begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO SIM'));
                                 varFonteNegrito     := true;
                                 varFonteItalico     := true;
                                 varFonteSublinhado  := true;
                                 varFonteRiscado     := true;
                              end
                           else
                           if varVetGrafTextoFonteStyle[iGraf] = [fsItalic] then
                              begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO NAO'));
                                 varFonteNegrito     := false;
                                 varFonteItalico     := true;
                                 varFonteSublinhado  := false;
                                 varFonteRiscado     := false;
                              end
                           else
                           if varVetGrafTextoFonteStyle[iGraf] = [fsItalic,fsUnderline] then
                              begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO NAO'));
                                 varFonteNegrito     := false;
                                 varFonteItalico     := true;
                                 varFonteSublinhado  := true;
                                 varFonteRiscado     := false;
                              end
                           else
                           if varVetGrafTextoFonteStyle[iGraf] = [fsItalic,fsStrikeOut] then
                              begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO NAO'));
                                 varFonteNegrito     := false;
                                 varFonteItalico     := true;
                                 varFonteSublinhado  := true;
                                 varFonteRiscado     := false;
                              end
                           else
                           if varVetGrafTextoFonteStyle[iGraf] = [fsItalic,fsUnderline,fsStrikeOut] then
                              begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO SIM'));
                                 varFonteNegrito     := false;
                                 varFonteItalico     := true;
                                 varFonteSublinhado  := true;
                                 varFonteRiscado     := true;
                              end
                           else
                           if varVetGrafTextoFonteStyle[iGraf] = [fsUnderline] then
                              begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO NAO'));
                                 varFonteNegrito     := false;
                                 varFonteItalico     := false;
                                 varFonteSublinhado  := true;
                                 varFonteRiscado     := false;
                              end
                           else
                           if varVetGrafTextoFonteStyle[iGraf] = [fsUnderline,fsStrikeOut] then
                              begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO SIM'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO SIM'));
                                 varFonteNegrito     := false;
                                 varFonteItalico     := false;
                                 varFonteSublinhado  := true;
                                 varFonteRiscado     := true;
                              end
                           else
                           if varVetGrafTextoFonteStyle[iGraf] = [fsStrikeOut] then
                              begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO SIM'));
                                 varFonteNegrito     := false;
                                 varFonteItalico     := false;
                                 varFonteSublinhado  := false;
                                 varFonteRiscado     := true;
                              end
                            else
                               begin
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTENEGRITO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTEITALICO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTESUBLINHADO NAO'));
                                 Writeln(F,CryptArquivoSalvo('TEXTOFONTERISCO NAO'));
                                 varFonteNegrito     := false;
                                 varFonteItalico     := false;
                                 varFonteSublinhado  := false;
                                 varFonteRiscado     := false;
                               end;
                           //******************************************
                           //******************************************

                           Writeln(F,CryptArquivoSalvo('TEXTOFONTECOR '+ColorToString(varVetGrafTextoColor[iGraf])));

                           //****
                           varTextoSelecionado := false;
                           if length(vetSelectTexto)> 0 then
                              begin
                                  for varPgCont:=0 to length(vetSelectTexto)-1 do
                                      begin
                                          if strToInt(vetSelectTexto[varPgCont]) = iGraf then
                                             begin
                                                 varTextoSelecionado := true;
                                                 break;
                                             end;
                                      end;
                              end;

                           //*****
                           if varTextoSelecionado then
                              Writeln(F,CryptArquivoSalvo('SELECIONADO SIM'))
                           ELSE Writeln(F,CryptArquivoSalvo('SELECIONADO NAO'));
                           //***************************************************
                           Writeln(F,CryptArquivoSalvo('[FIMTEXTO]'));
                      end;//if varGrafLinha[iGraf] <> nil then
              end;
     end;
  Writeln(F,CryptArquivoSalvo('[FIMTEXTOS]'));
  //********************************************************
  //********************************************************


  //********************************************************
  //********************************************************
  //RETANGULO
  //********************************************************
  //********************************************************
  Writeln(F,CryptArquivoSalvo('[INICIORETANGULO]'));
  Writeln(F,CryptArquivoSalvo('RETANGSIZEPADRAO '+IntToStr(varGrafRetangSize)));
  Writeln(F,CryptArquivoSalvo('RETANGOUTCORPADRAO '+ColorToString(frmMenu.varGrafRetangOutCor)));
  Writeln(F,CryptArquivoSalvo('RETANGSTYLEPADRAO '+IntToStr(frmMenu.varGrafRetangStyle)));
  Writeln(F,CryptArquivoSalvo('RETANGCORPADRAO '+ColorToString(varGrafRetangColor)));
  //***
  if varGrafRetangUsaOutline then
     Writeln(F,CryptArquivoSalvo('RETANGUSAOUTLINEPADRAO SIM'))
  ELSE Writeln(F,CryptArquivoSalvo('RETANGUSAOUTLINEPADRAO NAO'));
  //****
  //****
  if Length(varGrafRetang)> 0 then
     begin
          for iGraf:=0 to Length(varGrafRetang)-1 do
              begin

                   if varGrafRetang[iGraf] <> nil then
                      begin
                           Writeln(F,CryptArquivoSalvo('[INIRETANG]'));
                           Writeln(F,CryptArquivoSalvo('[COORDS]'));
                           //**********
                           Writeln(F,CryptArquivoSalvo('LEFT '+FloatToStr(varGrafRetang[iGraf].Left)));
                           Writeln(F,CryptArquivoSalvo('RIGHT '+FloatToStr(varGrafRetang[iGraf].Right)));
                           Writeln(F,CryptArquivoSalvo('TOP '+FloatToStr(varGrafRetang[iGraf].Top)));
                           Writeln(F,CryptArquivoSalvo('BOTTOM '+FloatToStr(varGrafRetang[iGraf].Bottom)));

                           Writeln(F,CryptArquivoSalvo('[FIMCOORDS]'));
                           //************

                           Writeln(F,CryptArquivoSalvo('RETANGCOR '+ColorToString(varVetGrafRetangColor[iGraf])));
                           //***
                           if varVetGrafRetangUsaOutline[iGraf] then
                              Writeln(F,CryptArquivoSalvo('RETANGUSAOUTLINE SIM'))
                           ELSE Writeln(F,CryptArquivoSalvo('RETANGUSAOUTLINE NAO'));
                           //***
                           Writeln(F,CryptArquivoSalvo('RETANGSIZE '+IntToStr(varVetGrafRetangSize[iGraf])));
                           Writeln(F,CryptArquivoSalvo('RETANGOUTCOR '+ColorToString(frmMenu.varVetGrafRetangOutCor[iGraf])));
                           //****
                           varRetangSelecionado := false;
                           if length(vetSelectRetang)> 0 then
                              begin
                                  for varPgCont:=0 to length(vetSelectRetang)-1 do
                                      begin
                                          if strToInt(vetSelectRetang[varPgCont]) = iGraf then
                                             begin
                                                 varRetangSelecionado := true;
                                                 break;
                                             end;
                                      end;
                              end;

                           //*****
                           if varRetangSelecionado then
                              Writeln(F,CryptArquivoSalvo('SELECIONADO SIM'))
                           ELSE Writeln(F,CryptArquivoSalvo('SELECIONADO NAO'));
                           //****************
                           Writeln(F,CryptArquivoSalvo('[FIMRETANG]'));

                      End;
              end;
     end;
  //***
  Writeln(F,CryptArquivoSalvo('[FIMRETANGULO]'));
  //********************************************************
  //********************************************************


  //*****************************************
  //**********   CIRCULOS    ****************
  //*****************************************
  Writeln(F,CryptArquivoSalvo('[INICIOCIRCULOS]'));
  Writeln(F,CryptArquivoSalvo('CIRCULOSIZEPADRAO '+IntToStr(varGrafCirculoSize)));
  Writeln(F,CryptArquivoSalvo('CIRCULOOUTCORPADRAO '+ColorToString(frmMenu.varGrafCirculoOutCor)));
  Writeln(F,CryptArquivoSalvo('CIRCULOSTYLEPADRAO '+IntToStr(frmMenu.varGrafCirculoStyle)));
  Writeln(F,CryptArquivoSalvo('CIRCULOCORPADRAO '+ColorToString(varGrafCirculoColor)));
  //***
  if varGrafCirculoUsaOutline then
     Writeln(F,CryptArquivoSalvo('CIRCULOUSAOUTLINEPADRAO SIM'))
  ELSE Writeln(F,CryptArquivoSalvo('CIRCULOUSAOUTLINEPADRAO NAO'));
  //***
  if Length(varGrafCirculo)> 0 then
     begin
          for iGraf:=0 to Length(varGrafCirculo)-1 do
              begin

                   if varGrafCirculo[iGraf] <> nil then
                      begin
                           Writeln(F,CryptArquivoSalvo('[INICIRC]'));
                           Writeln(F,CryptArquivoSalvo('[COORDS]'));
                           //**********
                           Writeln(F,CryptArquivoSalvo('LEFT '+FloatToStr(varGrafCirculo[iGraf].Left)));
                           Writeln(F,CryptArquivoSalvo('RIGHT '+FloatToStr(varGrafCirculo[iGraf].Right)));
                           Writeln(F,CryptArquivoSalvo('TOP '+FloatToStr(varGrafCirculo[iGraf].Top)));
                           Writeln(F,CryptArquivoSalvo('BOTTOM '+FloatToStr(varGrafCirculo[iGraf].Bottom)));

                           Writeln(F,CryptArquivoSalvo('[FIMCOORDS]'));
                           //************

                           Writeln(F,CryptArquivoSalvo('CIRCULOCOR '+ColorToString(varVetGrafCirculoColor[iGraf])));
                           //***
                           if varVetGrafCirculoUsaOutline[iGraf] then
                              Writeln(F,CryptArquivoSalvo('CIRCULOUSAOUTLINE SIM'))
                           ELSE Writeln(F,CryptArquivoSalvo('CIRCULOUSAOUTLINE NAO'));
                           //***
                           Writeln(F,CryptArquivoSalvo('CIRCULOSIZE '+IntToStr(varVetGrafCirculoSize[iGraf])));
                           Writeln(F,CryptArquivoSalvo('CIRCULOOUTCOR '+ColorToString(frmMenu.varVetGrafCirculoOutCor[iGraf])));
                           //****
                           varCirculoSelecionado := false;
                           if length(vetSelectCirculo)> 0 then
                              begin
                                  for varPgCont:=0 to length(vetSelectCirculo)-1 do
                                      begin
                                          if strToInt(vetSelectCirculo[varPgCont]) = iGraf then
                                             begin
                                                 varCirculoSelecionado := true;
                                                 break;
                                             end;
                                      end;
                              end;

                           //*****
                           if varCirculoSelecionado then
                              Writeln(F,CryptArquivoSalvo('SELECIONADO SIM'))
                           ELSE Writeln(F,CryptArquivoSalvo('SELECIONADO NAO'));
                           //***************************************************
                           Writeln(F,CryptArquivoSalvo('CIRCULOSTYLE '+IntToStr(varVetGrafCirculoStyle[iGraf])));
                           Writeln(F,CryptArquivoSalvo('[FIMCIRC]'));

                      end;//if varGrafPoli[iGraf] <> nil then

              end; //for iGraf:=0 to Length(varGrafPoli)-1 do

     end;//if Length(varGrafPoli)> 0 then
  Writeln(F,CryptArquivoSalvo('[FIMCIRCULOS]'));
  //***********************************************
  //***********************************************


  //***********************************************
  //**********   CIRCULOS QUERY    ****************
  //***********************************************
  Writeln(F,CryptArquivoSalvo('[INICIOCIRCULOSQUERY]'));
  Writeln(F,CryptArquivoSalvo('CIRCULOSTYLEPADRAOQUERY '+IntToStr(varQueryStyle)));
  Writeln(F,CryptArquivoSalvo('CIRCULOSYMBOLPADRAOQUERY '+IntToStr(varQuerySymbol)));
  //**************
  Writeln(F,CryptArquivoSalvo('PONTOSYMBOLPADRAOQUERY '+IntToStr(varQueryStylePonto)));
  Writeln(F,CryptArquivoSalvo('PONTOCORPADRAOQUERY '+ColorToString(varQueryColorPonto)));
  Writeln(F,CryptArquivoSalvo('PONTOSIZEPADRAOQUERY '+ IntToStr(varQueryColorSize)));
  //****
  Writeln(F,CryptArquivoSalvo('CIRCULOCORPADRAOQUERY '+ColorToString(varQueryColor)));
  //***
  if Length(varQueryCirculo)> 0 then
     begin
          for iGraf:=0 to Length(varQueryCirculo)-1 do
              begin

                   if varQueryCirculo[iGraf] <> nil then
                      begin
                           Writeln(F,CryptArquivoSalvo('[INICIRCQUERY]'));
                           Writeln(F,CryptArquivoSalvo('[COORDS]'));
                           //**********
                           Writeln(F,CryptArquivoSalvo('LEFT '+FloatToStr(varQueryCirculo[iGraf].Left)));
                           Writeln(F,CryptArquivoSalvo('RIGHT '+FloatToStr(varQueryCirculo[iGraf].Right)));
                           Writeln(F,CryptArquivoSalvo('TOP '+FloatToStr(varQueryCirculo[iGraf].Top)));
                           TempPontoQuery := CoPoint.Create;
                           TempPontoQuery := varQueryCirculo[iGraf].Center;
                           Writeln(F,CryptArquivoSalvo('CENTERX '+FloatToStr(TempPontoQuery.X)));
                           Writeln(F,CryptArquivoSalvo('CENTERY '+FloatToStr(TempPontoQuery.Y)));
                           //************
                           Writeln(F,CryptArquivoSalvo('BOTTOM '+FloatToStr(varQueryCirculo[iGraf].Bottom)));
                           Writeln(F,CryptArquivoSalvo('[FIMCOORDS]'));
                           //************
                           Writeln(F,CryptArquivoSalvo('CIRCULOQUERYLAYER '+varQueryLayer[iGraf]));
                           //************
                           varCirculoSelecionado := false;
                           if length(vetSelectQueryCirculo)> 0 then
                              begin
                                  for varPgCont:=0 to length(vetSelectQueryCirculo)-1 do
                                      begin
                                          if strToInt(vetSelectQueryCirculo[varPgCont]) = iGraf then
                                             begin
                                                 varCirculoSelecionado := true;
                                                 break;
                                             end;
                                      end;
                              end;
                           //*****
                           if varCirculoSelecionado then
                              Writeln(F,CryptArquivoSalvo('SELECIONADO SIM'))
                           ELSE Writeln(F,CryptArquivoSalvo('SELECIONADO NAO'));
                           //***************************************************
                           Writeln(F,CryptArquivoSalvo('[FIMCIRCQUERY]'));

                      end;//if varGrafPoli[iGraf] <> nil then

              end; //for iGraf:=0 to Length(varGrafPoli)-1 do

     end;//if Length(varGrafPoli)> 0 then
  Writeln(F,CryptArquivoSalvo('[FIMCIRCULOSQUERY]'));
  //********************************************************
  //********************************************************

  Writeln(F,CryptArquivoSalvo('[FIMGRAFICOS]'));
  //********************************************************
  //********************************************************


  //********************************************************
  //3º Passo
  //salvar as camadas do mapa
  //********************************************************
  Writeln(F,CryptArquivoSalvo('[CAMADASMAPA]'));

  for i:=0 to map1.Layers.Count - 1 do
      begin
         Writeln(F,CryptArquivoSalvo('[LAYER]'));
         Writeln(F,CryptArquivoSalvo('ID '+formatfloat('00',i+1)));

         varEhDICO  := false;
         varEhSDE   := false;
         varEhLayer := false;

         lyrs       := map1.Layers;

         if IMoMapLayer(IMoLayers(lyrs).Item(i)).LayerType = moMapLayer then
            begin
                lyr        := CoMapLayer.Create;
                lyrTemp    := CoMapLayer.Create;
                lyr        := imomaplayer(lyrs.item(i));
                lyrTemp    := imomaplayer(lyrs.item(i));
                varEhLayer := true;
            end
            else
               begin
                    imgLyr     := CoImageLayer.Create;
                    imgLyr     := IMoImageLayer(lyrs.item(i));
                    varEhLayer := false;
               end;

         //é o shape
         if varEhLayer then
            begin
              //verificando se a layer é do tipo SDE
              ext         := ExtractFileExt(lyr.tag);
              tmp         := upperCase(wright(ext,3));
              tmpString   := upperCase(wright(ext,4));
              //devido ao caminho do sde ser ex: 192.168.10.41:5151:dbgeo
              //nao posso usar a função ExtractFileExt para verificar se
              //ele é SDE ou FILE
              posSdeTexto := Pos('|',lyr.tag);
              tmpStrSDE   := copy(lyr.tag,posSdeTexto+1,3);
              tmpStrDICO  := copy(lyr.tag,posSdeTexto+1,4);

              //o shape foi adicionado foi adicionado via SDE
              if (tmpStrSDE = 'SDE') then
                 begin
                   varEhSDE    := true;
                   Writeln(F,CryptArquivoSalvo('TIPOLAYER SDE'));
                   //***
                   tmpExtSde   := lyr.tag;
                   //***
                   posTexto    := Pos('?SERV?',tmpExtSde);
                   posSdeTexto := Pos('?BANCO?',tmpExtSde);
                   tmpStrSDE   := copy(tmpExtSde,posTexto+6,(posSdeTexto-posTexto)-6);
                   Writeln(F,CryptArquivoSalvo('SERVIDORSDE '+tmpStrSDE));
                   //***
                   posTexto    := Pos('?BANCO?',tmpExtSde);
                   posSdeTexto := Pos('?SERVICO?',tmpExtSde);
                   tmpStrSDE   := copy(tmpExtSde,posTexto+7,(posSdeTexto-posTexto)-7);
                   Writeln(F,CryptArquivoSalvo('BANCOSDE '+tmpStrSde));
                   //***
                   posTexto    := Pos('?SERVICO?',tmpExtSde);
                   posSdeTexto := Pos('?LOGIN?',tmpExtSde);
                   tmpStrSDE   := copy(tmpExtSde,posTexto+9,(posSdeTexto-posTexto)-9);
                   Writeln(F,CryptArquivoSalvo('SERVICOSDE '+tmpStrSDE));
                   //***
                   posTexto    := Pos('?LOGIN?',tmpExtSde);
                   posSdeTexto := Pos('?SENHA?',tmpExtSde);
                   tmpStrSDE   := copy(tmpExtSde,posTexto+7,(posSdeTexto-posTexto)-7);
                   Writeln(F,CryptArquivoSalvo('USUARIOSDE '+tmpStrSDE));
                   //***
                   posTexto    := Pos('?SENHA?',tmpExtSde);
                   posSdeTexto := length(tmpExtSde);
                   tmpStrSDE   := copy(tmpExtSde,posTexto+7,(posSdeTexto-posTexto));
                   Writeln(F,CryptArquivoSalvo('SENHASDE '+tmpStrSDE));
                   //***
                 end
                 else
                    begin
                       varEhSDE := false;
                       if (tmpStrDICO = 'DICO') then
                           begin
                             varEhDICO   := true;
                             Writeln(F,CryptArquivoSalvo('TIPOLAYER DIRECTCONNECT'));
                             //***
                             tmpExtSde   := lyr.tag;
                             //***
                             posTexto    := Pos('?BANCO?',tmpExtSde);
                             posSdeTexto := Pos('?LOGIN?',tmpExtSde);
                             tmpStrSDE   := copy(tmpExtSde,posTexto+7,(posSdeTexto-posTexto)-7);
                             Writeln(F,CryptArquivoSalvo('BANCODICO '+tmpStrSde));
                             //***
                             posTexto    := Pos('?LOGIN?',tmpExtSde);
                             posSdeTexto := Pos('?SENHA?',tmpExtSde);
                             tmpStrSDE   := copy(tmpExtSde,posTexto+7,(posSdeTexto-posTexto)-7);
                             Writeln(F,CryptArquivoSalvo('USUARIODICO '+tmpStrSDE));
                             //***
                             posTexto    := Pos('?SENHA?',tmpExtSde);
                             posSdeTexto := length(tmpExtSde);
                             tmpStrSDE   := copy(tmpExtSde,posTexto+7,(posSdeTexto-posTexto));
                             Writeln(F,CryptArquivoSalvo('SENHADICO '+tmpStrSDE));
                             //***
                           end
                           else
                              begin
                                 varEhDico := false;
                                 Writeln(F,CryptArquivoSalvo('TIPOLAYER FILE'));
                              end;   
                    end;

              //*********************************************
              //VERIFICO SE O AMIGO É CAD OU NAO
              tmp       := upperCase(wright(ext,5));
              if (tmp = 'TEXTO') or (tmp = 'POLIG') or (tmp = 'PONTO') or (tmp = 'LINHA') then
                 begin
                     varEhCAD := true;
                     Writeln(F,CryptArquivoSalvo('CAD '+tmp));
                 end
                 else
                    begin
                        varEhCAD := false;
                        Writeln(F,CryptArquivoSalvo('CAD NAO'));
                    end;
              //**********************************************
              //verifico se é ECW ou nao
              if (uppercase(copy(ext,1,length(ext)-2)) = '.ECW|ECW') then
                 begin
                    varEhECW := true;
                    Writeln(F,CryptArquivoSalvo('ECW SIM'));
                 end
                 else
                   begin
                      varEhECW := false;
                      Writeln(F,CryptArquivoSalvo('ECW NAO'));
                   end;
              //**********************************************
              //pegando o caminho;
              posTexto := Pos('|',lyr.tag);
              //*****
              if posTexto = 0 then//isso quer dizer que nao existe | na tag
                 posTexto := length(lyr.tag)+1;
              //*****
              tmp      := copy(lyr.tag,1,posTexto-1);
              Writeln(F,CryptArquivoSalvo('CAMINHO '+tmp));
              //*************
              //nome da layer
              Writeln(F,CryptArquivoSalvo('NOMELAYER '+lyr.name));
              //*************
              //pegando o ativo
              if maplegend1.Active[i] then
                 Writeln(F,CryptArquivoSalvo('ATIVO SIM'))
              Else
                 Writeln(F,CryptArquivoSalvo('ATIVO NAO'));
              //*************
              if lyr.visible then
                 Writeln(F,CryptArquivoSalvo('VISIVEL SIM'))
              else
                 Writeln(F,CryptArquivoSalvo('VISIVEL NAO'));
              //**********************************
              //PEGANDO SE A LEGENDA ESTA EXPANDIDA OU NAO
              if MapLegend1.PegarSituacaoDaLegenda(i) then
                 Writeln(F,CryptArquivoSalvo('EXPANDIDA NAO'))
              else
                 Writeln(F,CryptArquivoSalvo('EXPANDIDA SIM'));
              //***********************************
              //pegando se é grouprenderer ou nao
              if GetRendererType(lyr.Renderer) = momGroupRenderer then
                 begin
                    Writeln(F,CryptArquivoSalvo('GROUPRENDERER SIM'));
                    varEhGrpRenderer := true;
                    grpRenderer      := CoGroupRenderer.create;
                    grpRenderer      := IMoGroupRenderer(lyr.renderer);
                 end
              else
                 begin
                     Writeln(F,CryptArquivoSalvo('GROUPRENDERER NAO'));
                     varEhGrpRenderer := false;
                 end;
              //*******************************************************

              //***********************
              //**** unico simbolo
              //***********************
              if GetRendererType(lyr.Renderer) = momNoRenderer then
                 Writeln(F,CryptArquivoSalvo('USIMBOLO SIM'))
              else
                 Writeln(F,CryptArquivoSalvo('USIMBOLO NAO'));
              //*******************************************************************
              Writeln(F,CryptArquivoSalvo('USIMCOR '+ColorToString(lyr.Symbol.Color)));
              Writeln(F,CryptArquivoSalvo('USIMOUT '+ColorToString(lyr.Symbol.OutlineColor)));
              Writeln(F,CryptArquivoSalvo('USIMSIZE '+IntToSTr(lyr.symbol.Size)));
              Writeln(F,CryptArquivoSalvo('USIMTYPE '+IntToSTr(lyr.Symbol.SymbolType)));
              Writeln(F,CryptArquivoSalvo('USIMSTYLE '+IntToSTr(lyr.symbol.Style)));
              //********************************************************************

              //*********************
              //unico valor
              //*********************
              varTemVMR := false;
              if varEhGrpRenderer then
                 begin
                     for x:=grpRenderer.Count-1 downto 0 do
                         begin
                             lyrTemp.renderer := nil;
                             lyrTemp.Renderer := Idispatch(grpRenderer.Renderer[x]);
                             if GetRendererType(lyrTemp.Renderer)= momValueMapRenderer then
                                begin
                                   vmr       := CoValueMapRenderer.Create;
                                   vmr       := IMoValueMapRenderer(lyrTemp.renderer);
                                   varTemVMR := true;
                                end;
                         end;
                 end
                 else
                     begin
                        if GetRendererType(lyr.Renderer) = momValueMapRenderer then
                           begin
                               vmr       := CoValueMapRenderer.Create;
                               vmr       := IMoValueMapRenderer(lyr.renderer);
                               varTemVMR := true;
                           end;
                     end;
              //**************
              if varTemVMR then
                 begin
                    Writeln(F,CryptArquivoSalvo('UVALOR SIM'));
                    Writeln(F,CryptArquivoSalvo('UVCAMPO ' + vmr.Field));
                    //*****
                    if vmr.Symbol[0].Outline = true then
                       Writeln(F,CryptArquivoSalvo('UVOUTLINE SIM'))
                    else
                       Writeln(F,CryptArquivoSalvo('UVOUTLINE NAO'));
                    //*****
                    Writeln(F,CryptArquivoSalvo('UVESPLINE '+IntToStr(vmr.Symbol[0].Size)));
                    Writeln(F,CryptArquivoSalvo('UVCORLINE '+ColorToString(vmr.Symbol[0].OutlineColor)));
                    Writeln(F,CryptArquivoSalvo('UVTIPOPREENCH '+IntToStr(vmr.Symbol[0].Style)));
                    Writeln(F,CryptArquivoSalvo('UVVALORCOUNT '+ IntToStr(vmr.ValueCount)));
                    Writeln(F,CryptArquivoSalvo('[UVVALORESCOR]'));

                    for xxi := 0 to vmr.ValueCount-1 do
                        Writeln(F,CryptArquivoSalvo(ColorToString(vmr.Symbol[xxi].Color)));
                    Writeln(F,CryptArquivoSalvo('[FIMUVVALORESCOR]'));
                 end
                 else
                    begin //nao tem VMR
                        Writeln(F,CryptArquivoSalvo('UVALOR NAO'));
                        Writeln(F,CryptArquivoSalvo('UVCAMPO NENHUM'));
                        Writeln(F,CryptArquivoSalvo('UVOUTLINE NAO'));
                        Writeln(F,CryptArquivoSalvo('UVESPLINE NAO'));
                        Writeln(F,CryptArquivoSalvo('UVCORLINE CLBLACK'));
                        Writeln(F,CryptArquivoSalvo('UVTIPOPREENCH 0'));
                        Writeln(F,CryptArquivoSalvo('UVVALORCOUNT 0'));
                        Writeln(F,CryptArquivoSalvo('[UVVALORESCOR]'));
                        Writeln(F,CryptArquivoSalvo('[FIMUVVALORESCOR]'));
                    end;
              //*****************************************************



              //*********************
              //escala de cores
              //*********************
              varTemCBR := false;
              if varEhGrpRenderer then
                 begin
                     for x:=grpRenderer.Count-1 downto 0 do
                         begin
                             lyrTemp.renderer := nil;
                             lyrTemp.Renderer := Idispatch(grpRenderer.Renderer[x]);
                             if GetRendererType(lyrTemp.Renderer)= momClassBreaksRenderer then
                                begin
                                   cbr       := CoClassBreaksRenderer.create;
                                   cbr       := IMoClassBreaksRenderer(lyrTemp.renderer);
                                   varTemCBR := true;
                                end;
                         end;
                 end
                 else
                     begin
                        if GetRendererType(lyr.Renderer) = momClassBreaksRenderer then
                           begin
                               cbr       := CoClassBreaksRenderer.create;
                               cbr       := IMoClassBreaksRenderer(lyr.renderer);
                               varTemCbr := true;
                           end;
                     end;

              //**************
              if varTemCBR then
                 begin
                    Writeln(F,CryptArquivoSalvo('ESCALACORES SIM'));
                    Writeln(F,CryptArquivoSalvo('ECCAMPO '+ cbr.Field));
                    Writeln(F,CryptArquivoSalvo('ECNUM ' + IntToStr((cbr.BreakCount))));
                    if cbr.Symbol[0].Outline = true then
                       Writeln(F,CryptArquivoSalvo('ECUSAOUTLINE SIM'))
                    Else
                       Writeln(F,CryptArquivoSalvo('ECUSAOUTLINE NAO'));
                    Writeln(F,CryptArquivoSalvo('ECCORLINHA '+ ColorToString(cbr.Symbol[0].OutlineColor)));
                    Writeln(F,CryptArquivoSalvo('ECTIPOPREENCH '+IntToStr(cbr.Symbol[0].Style)));
                    Writeln(F,CryptArquivoSalvo('ECESPESSURALINHA '+IntToStr(cbr.Symbol[0].Size)));
                    Writeln(F,CryptArquivoSalvo('[CBRCORES]'));
                    for xxi := 0 to cbr.BreakCount-1 do
                        Writeln(F,CryptArquivoSalvo(ColorToString(cbr.Symbol[xxi].Color)));
                    //**************************
                    Writeln(F,CryptArquivoSalvo('[FIMCBRCORES]'));
                 end
                 else
                    begin //nao tem cbr
                          Writeln(F,CryptArquivoSalvo('ESCALACORES NAO'));
                          Writeln(F,CryptArquivoSalvo('ECCAMPO NAO'));
                          Writeln(F,CryptArquivoSalvo('ECNUM 0'));
                          Writeln(F,CryptArquivoSalvo('ECUSAOUTLINE NAO'));
                          Writeln(F,CryptArquivoSalvo('ECCORLINHA CLBLACK'));
                          Writeln(F,CryptArquivoSalvo('ECTIPOPREENCH 0'));
                          Writeln(F,CryptArquivoSalvo('ECESPESSURALINHA 0'));
                          Writeln(F,CryptArquivoSalvo('[CBRCORES]'));
                          Writeln(F,CryptArquivoSalvo('[FIMCBRCORES]'));
                    End;
              //*****************************************************************



              //*********************
              // Label padrao
              //*********************
              varTemLPA := false;
              if varEhGrpRenderer then
                 begin
                     for x:=grpRenderer.Count-1 downto 0 do
                         begin
                             lyrTemp.renderer := nil;
                             lyrTemp.Renderer := Idispatch(grpRenderer.Renderer[x]);
                             if GetRendererType(lyrTemp.Renderer)= momLabelRenderer then
                                begin
                                   lr        := CoLabelRenderer.Create;
                                   lr        := IMoLabelRenderer(lyrTemp.renderer);
                                   varTemLPA := true;
                                end;
                         end;
                 end
                 else
                     begin
                        if (GetRendererType(lyr.Renderer) = momLabelRenderer) and (varEhCAD=false) then
                           begin
                               lr        := CoLabelRenderer.Create;
                               lr        := IMoLabelRenderer(lyr.renderer);
                               varTemLPA := true;
                           end;
                     end;

              //**************
              if varTemLPA then
                 begin
                    Writeln(F,CryptArquivoSalvo('LPADRAO SIM'));
                    Writeln(F,CryptArquivoSalvo('LPCAMPO '+lr.Field));
                    Writeln(F,CryptArquivoSalvo('LPALINH '+IntToStr(lr.Symbol[0].HorizontalAlignment)));
                    Writeln(F,CryptArquivoSalvo('LPALINV '+IntToStr(lr.Symbol[0].VerticalAlignment)));
                    Writeln(F,CryptArquivoSalvo('LPCAMPOX '+lr.XOffsetField));
                    Writeln(F,CryptArquivoSalvo('LPCAMPOY '+lr.YOffsetField));
                    if lr.DrawBackground = true then
                       Writeln(F,CryptArquivoSalvo('LPPCARAT SIM'))
                    Else
                       Writeln(F,CryptArquivoSalvo('LPPCARAT NAO'));
                    //***
                    If lr.AllowDuplicates = true Then
                       Writeln(F,CryptArquivoSalvo('LPPDUPLI SIM'))
                    Else
                       Writeln(F,CryptArquivoSalvo('LPPDUPLI NAO'));
                    //***
                    if lr.SplinedText = true then
                       Writeln(F,CryptArquivoSalvo('LPSTEXT SIM'))
                    Else
                       Writeln(F,CryptArquivoSalvo('LPSTEXT NAO'));
                    //*****
                    if lr.Flip = true then
                       Writeln(F,CryptArquivoSalvo('LPFFLIP SIM'))
                    else
                       Writeln(F,CryptArquivoSalvo('LPFFLIP NAO'));
                    //***
                    ft := nil;
                    ft := TFont.create;
                    OleFontToFont(lr.Symbol[0].Font,ft);
                    Writeln(F,CryptArquivoSalvo('LPFCOR '+ColorToString(lr.Symbol[0].Color)));
                    Writeln(F,CryptArquivoSalvo('LPFTAM '+IntToStr(ft.Size)));
                    Writeln(F,CryptArquivoSalvo('LPFONTE '+ft.Name));
                    Writeln(F,CryptArquivoSalvo('LPROT '+FloatToStr(lr.Symbol[0].Rotation)));
                 end
                 else
                    begin  //nao tem LR
                          Writeln(F,CryptArquivoSalvo('LPADRAO NAO'));
                          Writeln(F,CryptArquivoSalvo('LPCAMPO NAO'));
                          Writeln(F,CryptArquivoSalvo('LPALINH 0'));
                          Writeln(F,CryptArquivoSalvo('LPALINV 0'));
                          Writeln(F,CryptArquivoSalvo('LPCAMPOX CAMPO'));
                          Writeln(F,CryptArquivoSalvo('LPCAMPOY CAMPO'));
                          Writeln(F,CryptArquivoSalvo('LPPCARAT SIM'));
                          Writeln(F,CryptArquivoSalvo('LPPDUPLI SIM'));
                          Writeln(F,CryptArquivoSalvo('LPSTEXT SIM'));
                          Writeln(F,CryptArquivoSalvo('LPFFLIP SIM'));
                          Writeln(F,CryptArquivoSalvo('LPFCOR CLBLACK'));
                          Writeln(F,CryptArquivoSalvo('LPFTAM 10'));
                          Writeln(F,CryptArquivoSalvo('LPFONTE ARIAL'));
                          Writeln(F,CryptArquivoSalvo('LPROT 0'));
                    End;
              //*****************************************************************



              //*********************
              // Label avançada
              //*********************
              varTemLAV := false;
              if varEhGrpRenderer then
                 begin
                     for x:=grpRenderer.Count-1 downto 0 do
                         begin
                             lyrTemp.renderer := nil;
                             lyrTemp.Renderer := Idispatch(grpRenderer.Renderer[x]);
                             if GetRendererType(lyrTemp.Renderer)= momLabelPlacer then
                                begin
                                   lp        := CoLabelPlacer.Create;
                                   lp        := IMoLabelPlacer(lyrTemp.renderer);
                                   varTemLAV := true;
                                end;
                         end;
                 end
                 else
                     begin
                        if GetRendererType(lyr.Renderer) = momLabelPlacer then
                           begin
                               lp        := CoLabelPlacer.Create;
                               lp        := IMoLabelPlacer(lyr.renderer);
                               varTemLAV := true;
                           end;
                     end;

              //**************
              if varTemLAV then
                 begin
                    Writeln(F,CryptArquivoSalvo('LAVANCADA SIM'));
                    Writeln(F,CryptArquivoSalvo('LACAMPO '+lp.Field));
                    if lp.DrawBackground = true then
                       Writeln(F,CryptArquivoSalvo('LAPCARAT SIM'))
                    Else
                       Writeln(F,CryptArquivoSalvo('LAPCARAT NAO'));
                    //****
                    if lp.AllowDuplicates = true then
                       Writeln(F,CryptArquivoSalvo('LAPDUPLI SIM'))
                    else
                       Writeln(F,CryptArquivoSalvo('LAPDUPLI NAO'));
                    //****
                    if lp.MaskLabels = true then
                       Writeln(F,CryptArquivoSalvo('LALMASC SIM'))
                    else
                       Writeln(F,CryptArquivoSalvo('LALMASC NAO'));
                    //****
                    ft := nil;
                    ft := TFont.Create;
                    OleFontToFont(lp.DefaultSymbol.Font,ft);
                    Writeln(F,CryptArquivoSalvo('LACOR '+ColorToString(lp.MaskColor)));
                    Writeln(F,CryptArquivoSalvo('LATAM '+FloatToStr(lp.DefaultSymbol.Height)));
                    Writeln(F,CryptArquivoSalvo('LAFONTE '+ ft.Name));
                    Writeln(F,CryptArquivoSalvo('LAFTCOR '+ColorToString(lp.DefaultSymbol.color)));
                    Writeln(F,CryptArquivoSalvo('LAFONTETAMAN '+IntToStr(ft.size)));
                    //**********************************************************
                    if lp.PlaceAbove = true then
                       Writeln(F,CryptArquivoSalvo('LAPOSICAOLBL 1'));
                    if lp.PlaceBelow = true then
                       Writeln(F,CryptArquivoSalvo('LAPOSICAOLBL 2'));
                    if lp.PlaceOn = true then
                       Writeln(F,CryptArquivoSalvo('LAPOSICAOLBL 3'));
                    //**********************************************************
                 end
                 else
                     begin
                          Writeln(F,CryptArquivoSalvo('LAVANCADA NAO'));
                          Writeln(F,CryptArquivoSalvo('LACAMPO CAMPO'));
                          Writeln(F,CryptArquivoSalvo('LAPCARAT NAO'));
                          Writeln(F,CryptArquivoSalvo('LAPDUPLI NAO'));
                          Writeln(F,CryptArquivoSalvo('LALMASC NAO'));
                          //****
                          Writeln(F,CryptArquivoSalvo('LACOR clBlack'));
                          Writeln(F,CryptArquivoSalvo('LATAM 10'));
                          Writeln(F,CryptArquivoSalvo('LAFONTE arial'));
                          Writeln(F,CryptArquivoSalvo('LAFTCOR clblack'));
                          Writeln(F,CryptArquivoSalvo('LAFONTETAMAN 10'));
                          Writeln(F,CryptArquivoSalvo('LAPOSICAOLBL 0'));
                     end;
              //*****************************************************************



              //*********************
              // Z RENDERER
              //*********************
              varTemElev := false;
              if varEhGrpRenderer then
                 begin
                     for x:=grpRenderer.Count-1 downto 0 do
                         begin
                             lyrTemp.renderer := nil;
                             lyrTemp.Renderer := Idispatch(grpRenderer.Renderer[x]);
                             if GetRendererType(lyrTemp.Renderer)= momZRenderer then
                                begin
                                   ZRend        := CoZRenderer.Create;
                                   ZRend        := IMoZRenderer(lyrTemp.renderer);
                                   varTemElev   := true;
                                end;
                         end;
                 end
                 else
                     begin
                        if GetRendererType(lyr.Renderer) = momZRenderer then
                           begin
                               Zrend      := CoZRenderer.Create;
                               Zrend      := IMoZRenderer(lyr.renderer);
                               varTemElev := true;
                           end;
                     end;

              //**************
              if varTemElev then
                 begin
                    Writeln(F,CryptArquivoSalvo('USAELEVACAOZ SIM'));
                    Writeln(F,CryptArquivoSalvo('ELNUMCLA '+IntToStr(ZRend.BreakCount)));
                    //***************
                    //*** inicial ***
                    //***************
                    corSymbol := CoSymbol.Create;
                    corsymbol := IMoSymbol(zrend.symbol[0]);
                    Writeln(F,CryptArquivoSalvo('ELCORINI '+colortostring(corSymbol.Color)));
                    //*************
                    //*** final ***
                    //*************
                    corsymbol := nil;
                    corsymbol := CoSymbol.create;
                    corsymbol := IMoSymbol(zrend.symbol[zRend.BreakCount - 1]);
                    Writeln(F,CryptArquivoSalvo('ELCORFINAL '+ColorToString(corsymbol.color)));
                    //*******
                    Writeln(F,CryptArquivoSalvo('ELTIPOCAL '+ IntToStr(zRend.ValueCalculation)));
                  end
                    else
                        begin
                            Writeln(F,CryptArquivoSalvo('USAELEVACAOZ NAO'));
                            Writeln(F,CryptArquivoSalvo('ELNUMCLA 0'));
                            Writeln(F,CryptArquivoSalvo('ELCORINI clblack'));
                            Writeln(F,CryptArquivoSalvo('ELCORFINAL clblack'));
                            Writeln(F,CryptArquivoSalvo('ELTIPOCAL 0'));
                        end;
              //****************************
              //fim de todos os renderers
              //****************************

            end//fim do varehlayer
            else
                begin //caso de ser uma foto Tif, faz tudo igual tirando que vai ficar tudo em branco!
                    Writeln(F,CryptArquivoSalvo('TIPOLAYER FILETIF'));
                    Writeln(F,CryptArquivoSalvo('CAD NAO'));
                    Writeln(F,CryptArquivoSalvo('ECW NAO'));
                    //pegando o caminho;
                    posTexto := Pos('|',imgLyr.file_);
                    tmp      := copy(imglyr.file_,1,length(imglyr.file_)-posTexto);
                    Writeln(F,CryptArquivoSalvo('CAMINHO '+ tmp));
                    Writeln(F,CryptArquivoSalvo('NOMELAYER '+imglyr.Name));
                    //*************
                    //pegando o ativo
                    if maplegend1.Active[i] then
                       Writeln(F,CryptArquivoSalvo('ATIVO SIM'))
                    Else
                       Writeln(F,CryptArquivoSalvo('ATIVO NAO'));
                    //*************
                    if imglyr.visible then
                       Writeln(F,CryptArquivoSalvo('VISIVEL SIM'))
                    else
                       Writeln(F,CryptArquivoSalvo('VISIVEL NAO'));
                    //**********************************
                    Writeln(F,CryptArquivoSalvo('GROUPRENDERER NAO'));
                    Writeln(F,CryptArquivoSalvo('USIMBOLO NAO'));
                    Writeln(F,CryptArquivoSalvo('USIMCOR clblack'));
                    Writeln(F,CryptArquivoSalvo('USIMOUT clblack'));
                    Writeln(F,CryptArquivoSalvo('USIMSIZE 1'));
                    Writeln(F,CryptArquivoSalvo('USIMTYPE 1'));
                    Writeln(F,CryptArquivoSalvo('USIMSTYLE 1'));
                    Writeln(F,CryptArquivoSalvo('UVALOR NAO'));
                    Writeln(F,CryptArquivoSalvo('UVCAMPO CAMPO'));
                    Writeln(F,CryptArquivoSalvo('UVOUTLINE NAO'));
                    Writeln(F,CryptArquivoSalvo('UVESPLINE 2'));
                    Writeln(F,CryptArquivoSalvo('UVCORLINE clblack'));
                    Writeln(F,CryptArquivoSalvo('UVVALORCOUNT 0'));
                    Writeln(F,CryptArquivoSalvo('[UVVALORESCOR]'));
                    Writeln(F,CryptArquivoSalvo('[FIMUVVALORESCOR]'));
                    Writeln(F,CryptArquivoSalvo('ESCALACORES NAO'));
                    Writeln(F,CryptArquivoSalvo('ECCAMPO CAMPO'));
                    Writeln(F,CryptArquivoSalvo('ECNUM 2'));
                    Writeln(F,CryptArquivoSalvo('ECUSAOUTLINE NAO'));
                    Writeln(F,CryptArquivoSalvo('ECCORLINHA clblack'));
                    Writeln(F,CryptArquivoSalvo('ECESPESSURALINHA 2'));
                    Writeln(F,CryptArquivoSalvo('[CBRCORES]'));
                    Writeln(F,CryptArquivoSalvo('[FIMCBRCORES]'));
                    Writeln(F,CryptArquivoSalvo('LPADRAO NAO'));
                    Writeln(F,CryptArquivoSalvo('LPCAMPO CAMPO'));
                    Writeln(F,CryptArquivoSalvo('LPALINH  1'));
                    Writeln(F,CryptArquivoSalvo('LPALINV  1'));
                    Writeln(F,CryptArquivoSalvo('LPCAMPOX CAMPO'));
                    Writeln(F,CryptArquivoSalvo('LPCAMPOY CAMPO'));
                    Writeln(F,CryptArquivoSalvo('LPPCARAT NAO'));
                    Writeln(F,CryptArquivoSalvo('LPPDUPLI NAO'));
                    Writeln(F,CryptArquivoSalvo('LPSTEXT NAO'));
                    Writeln(F,CryptArquivoSalvo('LPFFLIP NAO'));
                    Writeln(F,CryptArquivoSalvo('LPFCOR CLBLACK'));
                    Writeln(F,CryptArquivoSalvo('LPFTAM 12'));
                    Writeln(F,CryptArquivoSalvo('LPFONTE ARIAL'));
                    Writeln(F,CryptArquivoSalvo('LPROT 0'));
                    Writeln(F,CryptArquivoSalvo('LAVANCADA NAO'));
                    Writeln(F,CryptArquivoSalvo('LACAMPO CAMPO'));
                    Writeln(F,CryptArquivoSalvo('LAPCARAT NAO'));
                    Writeln(F,CryptArquivoSalvo('LAPDUPLI NAO'));
                    Writeln(F,CryptArquivoSalvo('LALMASC NAO'));
                    Writeln(F,CryptArquivoSalvo('LACOR clblack'));
                    Writeln(F,CryptArquivoSalvo('LATAM 10'));
                    Writeln(F,CryptArquivoSalvo('LAFONTE arial'));
                    Writeln(F,CryptArquivoSalvo('LAFTCOR clblack'));
                    Writeln(F,CryptArquivoSalvo('LAFONTETAMAN 2'));
                    Writeln(F,CryptArquivoSalvo('LAPOSICAOLBL 0'));
                    Writeln(F,CryptArquivoSalvo('USAELEVACAOZ NAO'));
                    Writeln(F,CryptArquivoSalvo('ELNUMCLA 0'));
                    Writeln(F,CryptArquivoSalvo('ELCORINI clgreen'));
                    Writeln(F,CryptArquivoSalvo('ELCORFINAL clred'));
                    Writeln(F,CryptArquivoSalvo('ELTIPOCAL 0'));
                end;//fim do imagelayer

              //fim da layer atual, fecho a tag
              Writeln(F,CryptArquivoSalvo('[FIMLAYER]'));

      end;//fim para (cada layer)

  //fecha a tag após todas as layers estarem adicionadas
  Writeln(F,CryptArquivoSalvo('[FIMCAMADASMAPA]'));

  //fecha a tag do projeto
  Writeln(F,CryptArquivoSalvo('[FIMPROJETO]'));

  //salvo o arquivo
  Closefile(F);

  varCaminhoDoProjetoJaSalvo := caminhoProjeto;

  mensagem('O Projeto Foi Salvo Com Sucesso!',mtInformation,[mbOk]);

end;

//FUNÇÃO QUE PEGA O TIPO DO RENDERER DA LAYER
function TfrmMenu.GetRendererType(const ARenderer: IDispatch): TRendererType;
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

procedure tfrmmenu.registraGeo;
var
  Reg,r: TRegistry;
begin

  r := TRegistry.Create;
  r.RootKey := HKEY_CLASSES_ROOT;
  try
  if r.keyExists('ArquivoGeo2\shell\open\command') then exit;
  except

  end;

//*****************************************
//*****************************************
  Reg := TRegistry.Create;
  try
  Reg.RootKey := HKEY_CLASSES_ROOT;
  Reg.LazyWrite := false;
  Reg.OpenKey('ArquivoGeo2', true);
  Reg.WriteString('', 'Projeto SIGGeo 2.0');
  Reg.CloseKey;
  Reg.OpenKey('ArquivoGeo2\shell\open\command', true);
  Reg.WriteString('', 'C:\SIGGeo\SIGGeo 2.0\SIGGeo.exe' + ' %1');
  Reg.CloseKey;
  Reg.OpenKey('ArquivoGeo2\DefaultIcon', true);
  Reg.WriteString('', 'C:\SIGGeo\SIGGeo 2.0\SIGGeo.exe' + ',0');
  Reg.CloseKey;
  Reg.OpenKey('.sig', true);
  Reg.WriteString('', 'ArquivoGeo2');
  Reg.CloseKey;

  finally
  Reg.Free;
  end;

end;

procedure TfrmMenu.SetMeasuresAsIndex(Line: IMoLine);
var
Points : IMoPoints;
Point  : IMoPoint;
P, I   : Integer;
begin

    for P :=0 to Line.Parts.Count - 1 do
        begin
            Points := IMoPoints(IDispatch(Line.Parts.Item(P)));
            for I := 0 to Points.Count - 1 do
                begin
                    Point := Points.Item(I);
                    Point.Measure := I;
                    Points.Set_(I, Point);
                end;
        end;

end;

procedure Tfrmmenu.CarregarProjeto(caminhoFile : String);
var
F                    : Textfile;
FTESTE               : Textfile;
i                    : Smallint;
//*********** graficos *********
TemaAtivoTag         : String;
tmpEstiloFonte       : TFontStyles;
tmpTextoFontDialog   : TFont;
varTmpQueryPontoX    : Real;
varTmpQueryPontoY    : Real;
varPontoX            : Boolean;
tmpTextoNegrito      : Boolean;
tmpTextoItalico      : Boolean;
tmpTextoSublinhado   : Boolean;
tmpTextoRiscado      : Boolean;
varPontoY            : Boolean;
tmpVetUsaOutline     : Boolean;
tmpReguaSelect       : Boolean;
TmpLinhaSelect       : Boolean;
TmpPoliSelec         : Boolean;
TmpRetangSelect      : Boolean;
TmpCirculoSelect     : Boolean;
TmpRetangUsaOutline  : Boolean;
TmpCirculoUsaOutline : Boolean;
TmpTextoSelect       : Boolean;
TmpPontoSelect       : Boolean;
tmpPontoUsaOutLine   : Boolean;
tmpTextoSize         : Smallint;
TmpCont              : Smallint;
TmpLinhaSize         : Smallint;
TmpRetangSize        : Smallint;
TmpRetangStyle       : Smallint;
TmpCirculoSize       : Smallint;
TmpCirculoStyle      : Smallint;
tmpTextoRotacao      : Smallint;
TmpLinhaStyle        : Smallint;
varGrafCirculoSymbol : Smallint;
tmpPontoSymbol       : Smallint;
tmpPontoSize         : Word;
tmpPontoEstilo       : Word;
pt                   : IMoPoint;
tmpPontoQuery        : IMoPoint;
tmpTextoPT           : IMoPoint;
pts                  : IMoPoints;
Polig                : IMoPolygon;
TmpRetang            : IMoRectangle;
TmpCirculo           : IMoEllipse;
TmpLinha             : IMoLine;
varX                 : Double;
varY                 : Double;
TmpPoliCor           : TColor;
tmpTextoColor        : TColor;
TmpLinhaCor          : TColor;
TmpPoliOutCor        : TColor;
TmpVetPoliCor        : TColor;
TmpVetPoliOutCor     : TColor;
TmpReguaCor          : TColor;
TmpRetangCor         : TColor;
TmpRetangOutCor      : TColor;
TmpCirculoCor        : TColor;
TmpCirculoOutCor     : TColor;
tmpPontoCor          : TColor;
tmpPontoOutCor       : TColor;
TmpPoliEstilo        : Smallint;
TmpVetPoliEstilo     : Smallint;
TmpVetPoliSize       : Smallint;
TmpPoliSize          : Smallint;
TmpReguaEstilo       : Smallint;
TmpReguaSize         : Smallint;
TmpTextoString       : String;
tmpTextoFonte        : String;
TmpCirculoQueryLayer : String;
//*** variaveis do adicionar shapes *****
CamadaEhTIF          : Boolean;
ITag                 : Smallint;
ListaError           : TStringList;
ListaErrorJoin       : TStringList;
range                : Double;
MinZ                 : Double;
MaxZ                 : Double;
LATAM                : Double;
cbrTipoPreench       : Smallint;
vmrTipoPreench       : Smallint;
num                  : Smallint;
cbrEspessuraLinha    : Smallint;
VmrCount             : Smallint;
numBreaks            : smallint;
symInt               : Smallint;
vmrEspLinha          : Smallint;
CbrNumClasses        : Smallint;
CbrCount             : Smallint;
LPALINH              : Smallint;
LPALINV              : Smallint;
LPROT                : Smallint;
LPFTAM               : Smallint;
LAFONTETAMAN         : Smallint;
LAPOSICAOLBL         : Smallint;
ElevNumClasses       : Smallint;
ElevTipoCalc         : Smallint;
ElevCount            : Smallint;
varT                 : Smallint;
varTempNewPos        : Smallint;
posic                : Integer;
tmpTesteJoin         : String;
tmpSdeServidor       : String;
tmpSdeBanco          : String;
tmpSdeServico        : String;
tmpSdeLogin          : String;
tmpSdeSenha          : String;
ElevCorIni           : String;
ElevCorFinal         : String;
LACAMPO              : String;
LACOR                : String;
LAFONTE              : String;
LAFTCOR              : String;
LPCAMPO              : String;
LPCAMPOX             : String;
LPCAMPOY             : String;
LPFCOR               : String;
LPFONTE              : String;
cbrCorLinha          : String;
CbrCAMPO             : String;
vmrCampo             : String;
vmrCorLinha          : String;
varStr               : String;
OptStr               : String;
ValorStr             : String;
TipoCAD              : String;
CompCAD              : String;
fotoNum              : String;
LPPCARAT             : Boolean;
LPPDUPLI             : Boolean;
LPSTEXT              : Boolean;
LPFFLIP              : Boolean;
cbrUsaOutline        : Boolean;
varFimCadeia         : Boolean;
varUsaGrpRend        : Boolean;
varUsaCAD            : Boolean;
varUsaECW            : Boolean;
vmrUsaOutline        : Boolean;
varLabelPadrao       : Boolean;
LAVANCADA            : Boolean;
LAPCARAT             : Boolean;
LAPDUPLI             : Boolean;
LALMASC              : Boolean;
varArquivoExiste     : Boolean;
Ft                   : TFont;
Gdtset               : IMoGeoDataset;
imagem               : IMoImageLayer;
ly                   : IMoMapLayer;
lyr                  : IMoMapLayer;
lyrs                 : IMolayers;
grpRend              : IMoGroupRenderer;
vmr                  : IMoValueMapRenderer;
cbr                  : IMoClassBreaksRenderer;
lr                   : IMoLabelRenderer;
oRenderer            : IMoLabelRenderer;
lp                   : IMoLabelPlacer;
zrend                : IMoZRenderer;
recs                 : IMoRecordset;
fld                  : IMoField;
flds                 : IMoFields;
strUniqueValues      : IMoStrings;
varTrue              : WordBool;
stats                : IMoStatistics;
zoom                 : IMoRectangle;
varBoolProjetoOK     : Boolean;
//************************************
isde                 : smallint;
PosicaoConexao       : Smallint;
begin

  Screen.Cursor     := crHourGlass;
  varBoolProjetoOK  := false;

  //**********************************
  setlength(varVetCamadasVisiveis,0);
  setlength(varVetCamadaExpandida,0);
  //**********************************

  if not FileExists(caminhofile) then exit;

  //testando para ver se o arquivo de projeto esta completo!!
  AssignFile(FTESTE,CaminhoFile);
  Reset(FTESTE);
  //***
  while not eof(FTESTE) do
      begin
          Readln(FTESTE,varStr);
          varStr := DecriptaArquivoSalvo(varStr);
          if varStr = '[FIMPROJETO]' then
             varBoolProjetoOK := true;
      end;

  closeFile(FTESTE);

  if not varBoolProjetoOK then
     begin
         mensagem('O Projeto '+CaminhoFile+' Possui Erros ou Está Corrompido e Não Pode Ser Aberto!',mtError,[mbOk]);
         Screen.Cursor     := crDefault;
         exit;
     end;
  //*************************************************
  //*************************************************
  //*************************************************

  AssignFile(F,CaminhoFile);
  //*************************

  //passo o caminho do arquivo aberto para a função salvar
  savedialog1.FileName := caminhoFile;
  //*************************

  zoom           := CoRectangle.Create;

  ListaError     := TStringList.Create;
  ListaErrorJoin := TStringList.Create;
  Reset(F);

  //*********
  VarPermitirDesenharLayers := false;
  //*********

  //até na ultima linha do arquivo faça...
  while not Eof(F) do
     begin
         Readln(F,varStr);
         varStr := DecriptaArquivoSalvo(varStr);

         //1º parte da configuração
         if varStr = '[CONFIGSIGGEO]' then
            begin
                 varFimCadeia := false;
                 while not varFimCadeia = true do
                      begin
                           Readln(F,varStr);
                           varStr   := DecriptaArquivoSalvo(varStr);

                           {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                           num      := pos(' ',varStr);
                           OptStr   := copy(varStr,1,num-1);
                           ValorStr := copy(varStr,num+1,length(varStr)-num);

                           //***********
                           if optStr = 'AUTORPROJETO' then
                              varAUTORPROJETO := valorStr;
                           //***********
                           if optStr = 'CONTATO' then
                              varCONTATO := valorStr;
                           //***********
                           if optStr = 'PAGINA' then
                              varPAGINA := valorStr;
                           //***********
                           if optStr = 'VERSAOSIGGEO' then
                              begin
                                  if (StrToInt(valorStr) < varVERSAOPROJETOSIGGEO) or (StrToInt(valorStr) > varVERSAOPROJETOSIGGEO) then
                                     begin
                                         mensagem('Por Questões de Compatibilidade e Estabilidade, O Projeto Não Poderá Ser '+#13+'Aberto Porque Foi Criado Por Uma Versão Anterior ou Superior a Versão '+#13+'do SIGGeo 2.0 Instalado Nesse Computador!'+#13+#13
                                         +'Versão do Projeto: '+valorStr+' - Versão de Projetos do SIGGeo: '+intToStr(varVERSAOPROJETOSIGGEO),mtError,[mbOk]);
                                         novoprojeto;
                                         VarPermitirDesenharLayers := true;
                                         exit;
                                     end;
                              end;
                           //****************************
                           //****************************
                           if optStr = 'DATACRIACAO' then
                              varDATACRIACAO := valorStr;
                           //******************************
                           if optStr = 'SALVARPROJETO' then
                              if valorStr = 'SIM' then
                                 varSALVARPROJETO := true
                              else
                                 varSALVARPROJETO := false;
                           //******************************
                           if optStr = 'ADICIONARSDE' then
                              if valorStr = 'SIM' then
                                 varADICIONARSDE := true
                              else
                                 varADICIONARSDE := false;
                           //******************************
                           if optStr = 'IMPRIMIR' then
                              if valorStr = 'SIM' then
                                 varIMPRIMIR := true
                              else
                                 varIMPRIMIR := false;
                           //******************************
                           if optStr = 'LAYOUT' then
                              if valorStr = 'SIM' then
                                 varLAYOUT := true
                              else
                                 varLAYOUT := false;
                           //******************************
                           if optStr = 'ADICIONARDODISCO' then
                              if valorStr = 'SIM' then
                                 varADICIONARDODISCO := true
                              else
                                 varADICIONARDODISCO := false;
                           //*******************************
                           //*******************************
                           if optStr = 'SKIN' then
                              LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\'+ValorStr);
                           //********************************
                           //*******************************
                           //*******************************
                           if optStr = 'DELETARGRAFICOS' then
                              if valorStr = 'SIM' then
                                 varDELETARGRAFICOS := true
                              else
                                 varDELETARGRAFICOS := false;
                           //********************************
                           if optStr = 'REMOVERLAYERS' then
                              if valorStr = 'SIM' then
                                 varREMOVERLAYERS := true
                              else
                                 varREMOVERLAYERS := false;
                           //********************************
                           if optStr = 'SDESERVIDOR' then
                              varSDEServidor := valorStr;
                           //********************************
                           if optStr = 'SDEBANCO' then
                              varSDEBanco := valorStr;
                           //******************************
                           if optStr = 'SDESERVICO' then
                              varSDEservico := valorStr;
                           //******************************
                           if optStr = 'SDEUSUARIO' then
                              varSDEusuario := valorStr;
                           //*****************************
                           if optStr = 'SDESENHA' then
                              varSDEsenha := valorStr;

                           //******************************
                           //***** CONFIGURAÇOES SDE  *****
                           //******************************
                           if varStr = '[LISTASDE]' then
                              begin
                                  VarSDEativo := true;
                                  while not (varStr = '[/LISTASDE]') do
                                      begin
                                            if varStr = '[SDE]' then
                                               begin
                                                   setLength(frmmenu.varVetSDEServidor,length(frmmenu.varVetSDEServidor)+1);
                                                   setLength(frmmenu.varVetSDEBanco,length(frmmenu.varVetSDEBanco)+1);
                                                   setLength(frmmenu.varVetSDEservico,length(frmmenu.varVetSDEservico)+1);
                                                   setLength(frmmenu.varVetSDEusuario,length(frmmenu.varVetSDEusuario)+1);
                                                   setLength(frmmenu.varVetSDEsenha,length(frmmenu.varVetSDEsenha)+1);
                                                   //********
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varVetSDEServidor[length(varVetSDEServidor)-1]  := ValorStr;
                                                   //*********
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varVetSDEBanco[length(varVetSDEBanco)-1]        := ValorStr;
                                                   //*********
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varVetSDEservico[length(varVetSDEservico)-1]    := valorStr;
                                                   //*********
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varVetSDEusuario[length(varVetSDEusuario)-1]    := valorStr;
                                                   //*********
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varVetSDEsenha[length(frmmenu.varVetSDEsenha)-1]        := ValorStr;
                                                   //**************************************************
                                                   //RECRIO A CONEXAO SDE
                                                   SetLength(SDECon,length(SDECon)+1);
                                                   //***
                                                   SDECon[length(SDECon)-1]          := CoDataConnection.Create;
                                                   SDECon[length(SDECon)-1].Server   := 'sde90:'+varVetSDEServidor[length(varVetSDEServidor)-1];//'sde81:dsg'
                                                   SDECon[length(SDECon)-1].User     := varVetSDEusuario[length(varVetSDEusuario)-1];
                                                   SDECon[length(SDECon)-1].Password := varVetSDEsenha[length(varVetSDEsenha)-1];
                                                   SDECon[length(SDECon)-1].Database := 'instance='+varVetSDEservico[length(varVetSDEservico)-1]+';database='+varVetSDEBanco[length(varVetSDEBanco)-1];
                                                   SDECon[length(SDECon)-1].Connect;
                                                   //**************************************************
                                               end;
                                            //********************
                                            Readln(F,varStr);
                                            varStr   := DecriptaArquivoSalvo(varStr);
                                            //serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;
                                            num      := pos(' ',varStr);
                                            OptStr   := copy(varStr,1,num-1);
                                            ValorStr := copy(varStr,num+1,length(varStr)-num);
                                            //********************
                                      end;
                              end;
                           //******************************
                           //******************************

                           //******************************
                           //******************************
                           //CARREGAR IDENTIFICADOR 1:N
                           //******************************
                           //******************************
                           if varStr = '[CONFIGIDENTMAIS]' then
                              begin
                                  while not (varStr = '[FIMCONFIGIDENTMAIS]') do
                                      begin
                                            //********
                                            Readln(F,varStr);
                                            varStr   := DecriptaArquivoSalvo(varStr);
                                            num      := pos(' ',varStr);
                                            OptStr   := copy(varStr,1,num-1);
                                            ValorStr := copy(varStr,num+1,length(varStr)-num);
                                            //*******************
                                            if varStr = '[INICIOCONFIG]' then
                                               begin
                                                    //********
                                                    Readln(F,varStr);
                                                    varStr   := DecriptaArquivoSalvo(varStr);
                                                    num      := pos(' ',varStr);
                                                    OptStr   := copy(varStr,1,num-1);
                                                    ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                    //*******************
                                                    //*******************
                                                    SetLength(frmmenu.varVetIDentTagLayer,length(frmmenu.varVetIDentTagLayer)+1);
                                                    frmmenu.varVetIDentTagLayer[length(frmmenu.varVetIDentTagLayer)-1]                   := ValorStr;
                                                    //********************
                                                    //********************
                                                    Readln(F,varStr);
                                                    varStr   := DecriptaArquivoSalvo(varStr);
                                                    num      := pos(' ',varStr);
                                                    OptStr   := copy(varStr,1,num-1);
                                                    ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                    //*******************
                                                    SetLength(frmmenu.varVetIDentLayerCampo,length(frmmenu.varVetIDentLayerCampo)+1);
                                                    frmmenu.varVetIDentLayerCampo[length(frmmenu.varVetIDentLayerCampo)-1]               := ValorStr;
                                                    //********************
                                                    Readln(F,varStr);
                                                    varStr   := DecriptaArquivoSalvo(varStr);
                                                    num      := pos(' ',varStr);
                                                    OptStr   := copy(varStr,1,num-1);
                                                    ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                    //*******************
                                                    //****************
                                                    SetLength(frmmenu.varVetIDentSQL,length(frmmenu.varVetIDentSQL)+1);
                                                    frmmenu.varVetIDentSQL[length(frmmenu.varVetIDentSQL)-1]                             := valorStr;
                                                    //***************************************************************************************************************
                                                    //********************
                                                    Readln(F,varStr);
                                                    varStr   := DecriptaArquivoSalvo(varStr);
                                                    num      := pos(' ',varStr);
                                                    OptStr   := copy(varStr,1,num-1);
                                                    ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                    //*******************
                                                    //*******************
                                                    SetLength(frmmenu.varVetIDentOraSession,length(varVetIDentOraSession)+1);
                                                    varVetIDentOraSession[length(varVetIDentOraSession)-1]               := TOraSession.Create(application);
                                                    varVetIDentOraSession[length(varVetIDentOraSession)-1].ConnectPrompt := false;
                                                    //frmmenu.varVetIDentOraSession[length(frmmenu.varVetIDentOraSession)-1].Name          := 'OraISession'+formatFloat('00',length(frmmenu.varVetIDentOraSession));
                                                    varVetIDentOraSession[length(varVetIDentOraSession)-1].ConnectString := valorStr;
                                                    varVetIDentOraSession[length(varVetIDentOraSession)-1].Connect;
                                                    //********************
                                                    SetLength(frmmenu.varVetIDentOraQuery,length(varVetIDentOraQuery)+1);
                                                    varVetIDentOraQuery[length(varVetIDentOraQuery)-1]                   := TOraQuery.Create(application);
                                                    varVetIDentOraQuery[length(varVetIDentOraQuery)-1].Close;
                                                    varVetIDentOraQuery[length(varVetIDentOraQuery)-1].Session           := frmmenu.varVetIDentOraSession[length(frmmenu.varVetIDentOraSession)-1];
                                                    //****************
                                               end;
                                      end;
                              end;
                           //******************************
                           //******************************
                           //******************************

                           //******************************
                           //******************************
                           //CARREGAR JOIN
                           //******************************
                           //******************************
                           if varStr = '[CONFIGJOIN]' then
                              begin
                                  while not (varStr = '[FINALCONFIGJOIN]') do
                                      begin
                                            //********
                                            Readln(F,varStr);
                                            varStr   := DecriptaArquivoSalvo(varStr);
                                            num      := pos(' ',varStr);
                                            OptStr   := copy(varStr,1,num-1);
                                            ValorStr := copy(varStr,num+1,length(varStr)-num);
                                            //*******************
                                            if varStr = '[INICIOCONFIGJOIN]' then
                                               begin
                                                    //********
                                                    Readln(F,varStr);
                                                    varStr   := DecriptaArquivoSalvo(varStr);
                                                    num      := pos(' ',varStr);
                                                    OptStr   := copy(varStr,1,num-1);
                                                    ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                    //*******************
                                                    //*******************
                                                    SetLength(varVetJoinTagLayer,length(varVetJoinTagLayer)+1);
                                                    varVetJoinTagLayer[length(varVetJoinTagLayer)-1]              := ValorStr;
                                                    //********************
                                                    //********************
                                                    Readln(F,varStr);
                                                    varStr   := DecriptaArquivoSalvo(varStr);
                                                    num      := pos(' ',varStr);
                                                    OptStr   := copy(varStr,1,num-1);
                                                    ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                    //*******************
                                                    SetLength(varVetJoinTOFIELD,length(varVetJoinTOFIELD)+1);
                                                    varVetJoinTOFIELD[length(varVetJoinTOFIELD)-1]               := ValorStr;
                                                    //********************
                                                    Readln(F,varStr);
                                                    varStr   := DecriptaArquivoSalvo(varStr);
                                                    num      := pos(' ',varStr);
                                                    OptStr   := copy(varStr,1,num-1);
                                                    ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                    //*******************
                                                    //****************
                                                    SetLength(varVetJoinFROMFIELD,length(varVetJoinFROMFIELD)+1);
                                                    varVetJoinFROMFIELD[length(varVetJoinFROMFIELD)-1]          := valorStr;
                                                    //***************************************************************************************************************
                                                    //********************
                                                    Readln(F,varStr);
                                                    varStr   := DecriptaArquivoSalvo(varStr);
                                                    num      := pos(' ',varStr);
                                                    OptStr   := copy(varStr,1,num-1);
                                                    ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                    //*******************
                                                    //*******************
                                                    SetLength(varVetJoinTabela,length(varVetJoinTabela)+1);
                                                    varVetJoinTabela[length(varVetJoinTabela)-1]                := valorStr;
                                                    //***************************************************************************************************************
                                                    //********************
                                                    Readln(F,varStr);
                                                    varStr   := DecriptaArquivoSalvo(varStr);
                                                    num      := pos(' ',varStr);
                                                    OptStr   := copy(varStr,1,num-1);
                                                    ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                    //*******************
                                                    //*******************
                                                    SetLength(varVetJoinUsuario,length(varVetJoinUsuario)+1);
                                                    varVetJoinUsuario[length(varVetJoinUsuario)-1]             := valorStr;
                                                    //***************************************************************************************************************
                                                    //********************
                                                    Readln(F,varStr);
                                                    varStr   := DecriptaArquivoSalvo(varStr);
                                                    num      := pos(' ',varStr);
                                                    OptStr   := copy(varStr,1,num-1);
                                                    ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                    //*******************
                                                    //*******************
                                                    SetLength(varVetJoinSenha,length(varVetJoinSenha)+1);
                                                    varVetJoinSenha[length(varVetJoinSenha)-1]               := valorStr;
                                                    //***************************************************************************************************************
                                                    //********************
                                                    Readln(F,varStr);
                                                    varStr   := DecriptaArquivoSalvo(varStr);
                                                    num      := pos(' ',varStr);
                                                    OptStr   := copy(varStr,1,num-1);
                                                    ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                    //*******************
                                                    //*******************
                                                    SetLength(varVetJoinServidor,length(varVetJoinServidor)+1);
                                                    varVetJoinServidor[length(varVetJoinServidor)-1]         := valorStr;
                                                    //***************************************************************************************************************
                                                    //********************
                                                    Readln(F,varStr);
                                                    varStr   := DecriptaArquivoSalvo(varStr);
                                                    num      := pos(' ',varStr);
                                                    OptStr   := copy(varStr,1,num-1);
                                                    ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                    //*******************
                                                    //*******************
                                                    SetLength(varVetJoinServico,length(varVetJoinServico)+1);
                                                    varVetJoinServico[length(varVetJoinServico)-1]         := valorStr;
                                                    SetLength(varVetJoinJaEfetuado,length(varVetJoinJaEfetuado)+1);
                                                    varVetJoinJaEfetuado[length(varVetJoinJaEfetuado)-1]   := false;
                                                    //***************************************************************************************************************
                                                    //********************
                                                    Readln(F,varStr);
                                                    varStr   := DecriptaArquivoSalvo(varStr);
                                                    num      := pos(' ',varStr);
                                                    OptStr   := copy(varStr,1,num-1);
                                                    ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                    //*******************
                                                    //*******************
                                                    SetLength(varVetJoinBanco,length(varVetJoinBanco)+1);
                                                    varVetJoinBanco[length(varVetJoinBanco)-1]             := valorStr;
                                                    //*******************
                                                    //*******************

                                               end;
                                      end;
                              end;
                           //******************************
                           //******************************
                           //******************************


                           //*****************************************
                           //***** CONFIGURAÇOES DIRECT CONNECT  *****
                           //*****************************************
                           if varStr = '[LISTADICO]' then
                              begin
                                  VarDICOativo := true;
                                  while not (varStr = '[/LISTADICO]') do
                                      begin
                                            if varStr = '[DICO]' then
                                               begin
                                                   VarDICOativo := true;
                                                   setLength(varVetDICOBanco,length(varVetDICOBanco)+1);
                                                   setLength(varVetDICOusuario,length(varVetDICOusuario)+1);
                                                   setLength(varVetDICOsenha,length(varVetDICOsenha)+1);
                                                   //********
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varVetDICOBanco[length(varVetDICOBanco)-1]      := ValorStr;
                                                   //*********
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varVetDICOusuario[length(varVetDICOusuario)-1]  := valorStr;
                                                   //*********
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varVetDICOsenha[length(varVetDICOsenha)-1]      := ValorStr;
                                                   //**************************************************
                                                   //recrio as conexões diretas
                                                   SetLength(DicoCon,length(DicoCon)+1);
                                                   //***
                                                   DicoCon[length(DicoCon)-1]          := CoDataConnection.Create;
                                                   DicoCon[length(DicoCon)-1].Server   := 'sde90:directconnect';
                                                   DicoCon[length(DicoCon)-1].User     := varVetDICOUsuario[length(varVetDICOUsuario)-1];
                                                   DicoCon[length(DicoCon)-1].Password := varVetDICOSenha[length(varVetDICOSenha)-1]+'@'+varVetDICOBanco[length(varVetDICOBanco)-1];
                                                   DicoCon[length(DicoCon)-1].Database := 'instance=sde:oracle';
                                                   DicoCon[length(DicoCon)-1].Connect;
                                                   //**************************************************
                                               end;
                                            //********************
                                            Readln(F,varStr);
                                            varStr   := DecriptaArquivoSalvo(varStr);
                                            //serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;
                                            num      := pos(' ',varStr);
                                            OptStr   := copy(varStr,1,num-1);
                                            ValorStr := copy(varStr,num+1,length(varStr)-num);
                                            //********************
                                      end;
                              end;
                           //*****************************************
                           //*****************************************

                           //*****************************************
                           //***** CONFIGURAÇOES DA LISTA JOIN   *****
                           //*****************************************
                           if varStr = '[LISTAJOIN]' then
                              begin
                                  VarDICOativo := true;
                                  while not (varStr = '[/LISTAJOIN]') do
                                      begin
                                            if varStr = '[LISTAJ]' then
                                               begin
                                                   SetLength(varVetListaCampo,length(varVetListaCampo)+1);
                                                   SetLength(varVetListaTabela,length(varVetListaTabela)+1);
                                                   SetLength(varVetListaUsuario,Length(varVetListaUsuario)+1);
                                                   SetLength(varVetListaSenha,Length(varVetListaSenha)+1);
                                                   SetLength(varVetListaServidor,Length(varVetListaServidor)+1);
                                                   SetLength(varVetListaServico,Length(varVetListaServico)+1);
                                                   SetLength(varVetListaBanco,Length(varVetListaBanco)+1);
                                                   //********
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varVetListaBanco[length(varVetListaBanco)-1]      := ValorStr;
                                                   //*********
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varVetListaUsuario[length(varVetListaUsuario)-1]  := valorStr;
                                                   //*********
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varVetListaSenha[length(varVetListaSenha)-1]      := ValorStr;
                                                   //**************************************************
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varVetListaServidor[length(varVetListaServidor)-1]:= ValorStr;
                                                   //**************************************************
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varVetListaServico[length(varVetListaServico)-1] := ValorStr;
                                                   //**************************************************
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varVetListaCampo[length(varVetListaCampo)-1]     := ValorStr;
                                                   //**************************************************
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varVetListaTabela[length(varVetListaTabela)-1]   := ValorStr;
                                               end;
                                            //********************
                                            Readln(F,varStr);
                                            varStr   := DecriptaArquivoSalvo(varStr);
                                            //serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;
                                            num      := pos(' ',varStr);
                                            OptStr   := copy(varStr,1,num-1);
                                            ValorStr := copy(varStr,num+1,length(varStr)-num);
                                            //********************
                                      end;
                              end;
                           //******************************
                           //******************************

                           //*****************************************
                           //***** CONFIGURAÇOES DA LISTA 1:N    *****
                           //*****************************************
                           if varStr = '[LISTA1N]' then
                              begin
                                  VarDICOativo := true;
                                  while not (varStr = '[/LISTA1N]') do
                                      begin
                                            if varStr = '[LISTAN]' then
                                               begin
                                                   SetLength(varIDENTConexao,Length(varIDENTConexao)+1);
                                                   SetLength(varIDENTSQL,Length(varIDENTSQL)+1);
                                                   SetLength(varIDENTTabela,Length(varIDENTTabela)+1);
                                                   SetLength(varIDENTCampo,Length(varIDENTCampo)+1);
                                                   //********
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varIDENTConexao[length(varIDENTConexao)-1]      := ValorStr;
                                                   //*********
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varIDENTSQL[length(varIDENTSQL)-1]  := valorStr;
                                                   //*********
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varIDENTTabela[length(varIDENTTabela)-1]      := ValorStr;
                                                   //**************************************************
                                                   Readln(F,varStr);
                                                   varStr   := DecriptaArquivoSalvo(varStr);
                                                   num      := pos(' ',varStr);
                                                   OptStr   := copy(varStr,1,num-1);
                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                   //*********
                                                   varIDENTCampo[length(varIDENTCampo)-1]:= ValorStr;
                                                   //**************************************************
                                               end;
                                            //********************
                                            Readln(F,varStr);
                                            varStr   := DecriptaArquivoSalvo(varStr);
                                            //serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;
                                            num      := pos(' ',varStr);
                                            OptStr   := copy(varStr,1,num-1);
                                            ValorStr := copy(varStr,num+1,length(varStr)-num);
                                            //********************
                                      end;
                              end;
                           //******************************
                           //******************************



                           //******************************
                           if optStr = 'CONVERTNOVOSHP' then
                              if valorStr = 'SIM' then
                                 varConvNovoSHP := true
                              else
                                 varConvNovoSHP := false;
                           //*******************************
                           if optStr = 'PNLEGENDATOP' then
                              pnLegenda.Top := StrToInt(valorStr);
                           if optStr = 'PNLEGENDALEFT' then
                              pnLegenda.Left := StrToInt(valorStr);
                           //********************************
                           if optStr = 'PNLEGENDAVISIVEL' then
                              if valorStr = 'SIM' then
                                 pnLegenda.visible := true
                              else
                                 pnLegenda.Visible := false;
                           //************************************
                           //************************************
                           if optStr = 'PNLEGENDAHEIGTH' then
                              pnLegenda.Height := StrToInt(valorStr);
                           if optStr = 'PNLEGENDAWIDTH' then
                              pnLegenda.Width := StrToInt(valorStr);
                           //*********
                           if optStr = 'PNLEGENDAROLLSTATE' then
                              if valorStr = 'SIM' then
                                 pnLegenda.RollState := true
                              else
                                 pnLegenda.RollState := false;
                           //*************************************
                           if optStr = 'PNMAPATOP' then
                              pnMapa2.Top := StrToInt(valorStr);
                           if optStr = 'PNMAPALEFT' then
                              pnMapa2.Left := StrToInt(valorStr);
                           //*****************
                           if optStr = 'PNMAPAVISIVEL' then
                              if valorStr = 'SIM' then
                                 pnMapa2.visible := true
                              else
                                 pnMapa2.Visible := false;
                           //****
                           if optStr = 'PNMAPAROLLSTATE' then
                              if valorStr = 'SIM' then
                                 pnMapa2.RollState := true
                              else
                                 pnMapa2.RollState := false;
                           //*************************************
                           if optStr = 'PNESCALATOP' then
                              pnEscala.Top := StrToInt(valorStr);
                           if optStr = 'PNESCALALEFT' then
                              pnEscala.Left := StrToInt(valorStr);
                           //************************************
                           if optStr = 'PNMAPA2HEIGTH' then
                              pnMapa2.Height := StrToInt(valorStr);
                           if optStr = 'PNMAPA2WIDTH' then
                              pnMapa2.Width := StrToInt(valorStr);
                           //*********
                           if optStr = 'PNESCALAVISIVEL' then
                              if valorStr = 'SIM' then
                                 pnEscala.visible := true
                              else
                                 pnEscala.Visible := false;
                           //****
                           if optStr = 'PNESCALAROLLSTATE' then
                              if valorStr = 'SIM' then
                                 pnEscala.RollState := true
                              else
                                 pnEscala.RollState := false;
                           //*************************************
                           //cor de seleçao
                           if optStr = 'CORSELECAO' then
                              cor_SelectPreenchCamada := StringToColor(valorStr);
                           //*************************************
                           if optStr = 'CORSELECAOOUT' then
                              cor_OutSelectCamada := StringToColor(valorStr);
                           //*************************************
                           if optStr = 'CORSELECAOGRAF' then
                              cor_SelectGraf := StringToColor(valorStr);
                           //*************************************
                           if optStr = 'CORSELECAOGRAFOUT' then
                              cor_OutSelectGraf := StringToColor(valorStr);
                           //*************************************
                           if optStr = 'ESPSELECAOCAMADA' then
                              varEspSelecaoCamada := StrToInt(valorStr);
                           //*************************************
                           if optStr = 'ESPSELECAOGRAFICO' then
                              varEspSelecaoGrafico := StrToInt(valorStr);
                           //*************************************
                           if optStr = 'PREENCHSELECAOCAMADA' then
                              varPreenchSelecaoCamada := StrToInt(valorStr);
                           //*************************************
                           if optStr = 'PREENCHSELECAOGRAFICO' then
                              varPreenchSelecaoGrafico := StrToInt(valorStr);
                           //*************************************
                           if optStr = 'DESENHAROUTCAMADA' then
                              if valorStr = 'SIM' then
                                  varBoolDesenharOutCamada := true
                              else
                                  varBoolDesenharOutCamada := false;
                           //*************************************
                           if optStr = 'DESENHAROUTGRAFICO' then
                              if valorStr = 'SIM' then
                                  varBoolDesenharOutGrafico := true
                              else
                                  varBoolDesenharOutGrafico := false;
                           //*************************************
                           //*************************************
                           //dimensoes do mapa
                           //*************************************
                           if optStr = 'MAPZOOMLEFT' then
                              zoom.Left   := StrToFloat(valorStr);
                           if optStr = 'MAPZOOMTOP' then
                              zoom.Top    := StrToFloat(valorStr);
                           if optStr = 'MAPZOOMBOTTOM' then
                              zoom.Bottom := StrToFloat(valorStr);
                           if optStr = 'MAPZOOMRIGHT' then
                              zoom.Right  := StrToFloat(valorStr);
                           //*************************************
                           if optStr = 'NOMEUSUPROJ' then
                              varNomeUsuproj := valorStr;
                           //*************************************
                           if optStr = 'SENHAUSUPROJ' then
                              varSenhaUsuproj := valorStr;
                           //*************************************
                           if optStr = 'EDITARLEGENDA' then
                              if valorStr = 'SIM' then
                                 varEDITARLEGENDA := true
                              else
                                 varEDITARLEGENDA := false;

                           //*************************************
                           //verifico se é o fim das opções do primeiro texto
                           If varStr = '[FIMCONFIGSIGGEO]' then
                              varFimCadeia := true;

                      end;
            end;
         //***********************


         //2° Carrego os graficos do mapa
         if varStr = '[GRAFICOS]' then
            begin
                 varFimCadeia := false;
                 while not varFimCadeia = true do
                      begin
                           Readln(F,varStr);
                           varStr   := DecriptaArquivoSalvo(varStr);
                           {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                           num      := pos(' ',varStr);
                           OptStr   := copy(varStr,1,num-1);
                           ValorStr := copy(varStr,num+1,length(varStr)-num);

                           //***********
                           if varStr = '[REGUA]' then
                              begin
                                  while not (varStr = '[FIMREGUA]') do
                                        begin
                                            Readln(F,varStr);
                                            varStr   := DecriptaArquivoSalvo(varStr);
                                            //serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;
                                            num      := pos(' ',varStr);
                                            OptStr   := copy(varStr,1,num-1);
                                            ValorStr := copy(varStr,num+1,length(varStr)-num);
                                            //************************************
                                            if optStr ='REGUASTYLE' then
                                               TmpReguaEstilo := StrToInt(valorStr);
                                            //************************************
                                            if optStr = 'REGUASIZE' then
                                               TmpReguaSize := StrToInt(valorStr);
                                            //************************************
                                            if optStr = 'REGUACOR' then
                                               TmpReguaCor := StringToColor(valorStr);
                                            //************************************
                                            if optStr = 'REGUASTYLESELECT' then
                                               varReguaEstiloSelect := StrToInt(valorStr);
                                            //************************************
                                            if optStr = 'REGUASIZESELECT' then
                                               varReguaSizeSelect := StrToInt(valorStr);
                                            //************************************
                                            if optStr = 'REGUACORSELECT' then
                                               varReguaColorSelect := StringToColor(valorStr);
                                            //************************************
                                            if optStr = 'REGUASELECIONADA' then
                                               if valorStr = 'SIM' then
                                                  tmpReguaSelect := true
                                               else tmpReguaSelect := false;
                                            //************************************

                                            //************************************
                                            if varStr = '[COORDS]' then
                                               begin
                                                    varPontoX  := false;
                                                    varPontoY  := false;
                                                    pts        := CoPoints.Create;

                                                    while not (varStr = '[FIMCOORDS]') do
                                                        begin
                                                            if optStr = 'X' then
                                                               begin
                                                                  varX      := strToFloat(valorStr);
                                                                  varPontoX := true;
                                                               end;
                                                            //*********
                                                            if optStr = 'Y' then
                                                               begin
                                                                  varY      := strToFloat(valorStr);
                                                                  varPontoY := true;
                                                               end;
                                                            //*********
                                                            if varPontoX and varPontoY then
                                                               begin
                                                                  pt        := CoPoint.create;
                                                                  pt.X      := varX;
                                                                  pt.Y      := varY;
                                                                  varPontoX := false;
                                                                  varPontoY := false;
                                                                  pts.Add(pt);
                                                                  //****
                                                               end;

                                                            //***********
                                                            Readln(F,varStr);
                                                            varStr    := DecriptaArquivoSalvo(varStr);
                                                            //serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;
                                                            num       := pos(' ',varStr);
                                                            OptStr    := copy(varStr,1,num-1);
                                                            ValorStr  := copy(varStr,num+1,length(varStr)-num);
                                                            //*************

                                                        end;//while not (varStr = '[FIMCOORDS]')

                                                    //**********************
                                                    varReguaEstilo         := TmpReguaEstilo;
                                                    varReguaSize           := TmpReguaSize;
                                                    varReguaColor          := TmpReguaCor;
                                                    varLnRegua             := CoLine.Create;
                                                    varLnRegua.Parts.Add(pts);
                                                    varLnTemLinhaDesenhada := true;
                                                    //**********************

                                               end;//if varStr = '[COORDS]' then

                                        end;//while not (varStr = '[FIMREGUA]')

                                  //***********************
                                  if tmpReguaSelect then
                                     begin
                                        varlnLinhaSelecionada := CoLine.Create;
                                        varlnLinhaSelecionada := varLnRegua;
                                     end;
                                  //***********************

                              end;//if varStr = '[REGUA]'
                           //************************************************ }


  //**********************************************************************
  //**********************************************************************
  //INICIO TEXTOS
  //**********************************************************************
  //**********************************************************************  

                           //************************************************
                           //************************************************
                           if varStr = '[INICIOTEXTO]' then
                              begin
                                   while not (varStr = '[FIMTEXTOS]') do
                                        begin
                                            Readln(F,varStr);
                                            varStr   := DecriptaArquivoSalvo(varStr);
                                            {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                            num      := pos(' ',varStr);
                                            OptStr   := copy(varStr,1,num-1);
                                            ValorStr := copy(varStr,num+1,length(varStr)-num);

                                            if optStr ='TEXTOSIZEPADRAO' then
                                               begin
                                                   while not (optStr = 'TEXTOFONTECORPADRAO') do
                                                        begin
                                                             if optStr = 'TEXTOSIZEPADRAO' then
                                                                tmpTextoSize   := StrToInt(valorStr);
                                                             if optStr = 'TEXTOFONTEPADRAO' then
                                                                tmpTextoFonte := valorStr;
                                                             //*****
                                                             if optStr = 'TEXTOROTACAOPADRAO' then
                                                                varGrafTextoRotacao := StrToInt(valorStr);
                                                             //*****
                                                             if optStr = 'TEXTOFONTENEGRITOPADRAO' then
                                                                if valorStr = 'SIM' then
                                                                   tmpTextoNegrito  := true else tmpTextoNegrito := false;
                                                             if optStr = 'TEXTOFONTEITALICOPADRAO' then
                                                                if valorStr = 'SIM' then
                                                                   tmpTextoItalico := true else tmpTextoItalico := false;
                                                             if optStr = 'TEXTOFONTESUBLINHADOPADRAO' then
                                                                if valorStr = 'SIM' then
                                                                   tmpTextoSublinhado := true else tmpTextoSublinhado := false;
                                                             if optStr = 'TEXTOFONTERISCOPADRAO' then
                                                                if valorStr = 'SIM' then
                                                                   tmpTextoRiscado := true else tmpTextoRiscado := false;
                                                             //*********
                                                             if optStr = 'TEXTOFONTECORPADRAO' then
                                                               tmpTextoColor := StringToColor(valorStr);
                                                             //*********
                                                             //*****
                                                             Readln(F,varStr);
                                                             varStr   := DecriptaArquivoSalvo(varStr);
                                                             {serve para ler as opçoes; OptStr = opçao ; Valortr = valor ;}
                                                             num      := pos(' ',varStr);
                                                             OptStr   := copy(varStr,1,num-1);
                                                             ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                             //***********
                                                        end;
                                                   //configurar a fonte;
                                                   tmpEstiloFonte := [];
                                                   if tmpTextoNegrito then
                                                      tmpEstiloFonte := tmpEstiloFonte + [fsbold];
                                                   if tmpTextoItalico then
                                                      tmpEstiloFonte := tmpEstiloFonte + [fsItalic];
                                                   if tmpTextoSublinhado then
                                                      tmpEstiloFonte := tmpEstiloFonte + [fsUnderline];
                                                   if tmpTextoRiscado then
                                                      tmpEstiloFonte := tmpEstiloFonte + [fsStrikeOut];
                                                   //***
                                                   varGrafTextoFonteEstilo := tmpEstiloFonte;
                                                   varGrafTextoFonte       := tmpTextoFonte;
                                                   varGrafTextoColor       := tmpTextoColor;
                                                   varGrafTextoSize        := tmpTextoSize;
                                                   //***
                                               end;

                                            if varStr = '[INITEXTO]' then
                                               begin

                                                     while not (varStr = '[FIMTEXTO]') do
                                                         begin
                                                             Readln(F,varStr);
                                                             varStr   := DecriptaArquivoSalvo(varStr);
                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                             num      := pos(' ',varStr);
                                                             OptStr   := copy(varStr,1,num-1);
                                                             ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                             //****
                                                             if varStr = '[COORDS]' then
                                                                begin
                                                                     varPontoX := false;
                                                                     varPontoY := false;

                                                                     while not (varStr = '[FIMCOORDS]') do
                                                                         begin
                                                                             Readln(F,varStr);
                                                                             varStr    := DecriptaArquivoSalvo(varStr);
                                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                                             num       := pos(' ',varStr);
                                                                             OptStr    := copy(varStr,1,num-1);
                                                                             ValorStr  := copy(varStr,num+1,length(varStr)-num);

                                                                             if optStr = 'X' then
                                                                                begin
                                                                                    varX      := strToFloat(valorStr);
                                                                                    varPontoX := true;
                                                                                end;
                                                                             //*********
                                                                             if optStr = 'Y' then
                                                                                begin
                                                                                    varY      := strToFloat(valorStr);
                                                                                    varPontoY := true;
                                                                                end;
                                                                             //*********

                                                                             if varPontoX and varPontoY then
                                                                                begin
                                                                                    tmpTextoPT    := CoPoint.create;
                                                                                    tmpTextoPT.X  := varX;
                                                                                    tmpTextoPT.Y  := varY;
                                                                                    varPontoX     := false;
                                                                                    varPontoY     := false;
                                                                                end;

                                                                         end;//while not (varStr = '[FIMCOORDS]')

                                                                end;//if varStr = '[COORDS]'

                                                             //***************************
                                                             if optStr = 'TEXTOSIZE' then
                                                                tmpTextoSize := StrToInt(valorStr);
                                                             //***********
                                                             if optStr = 'TEXTOROTACAO' then
                                                                tmpTextoRotacao := StrToInt(valorStr);
                                                             //***********
                                                             if optStr = 'TEXTOFONTE' then
                                                                tmpTextoFonte := valorStr;
                                                             //***********
                                                             if optStr = 'TEXTOSTRING' then
                                                                TmpTextoString := valorStr;
                                                             //***********
                                                             if optStr = 'TEXTOFONTENEGRITO' then
                                                                if valorStr = 'SIM' then
                                                                   tmpTextoNegrito := true else tmpTextoNegrito := false;
                                                             //*****
                                                             if optStr = 'TEXTOFONTEITALICO' then
                                                                if valorStr = 'SIM' then
                                                                   tmpTextoItalico := true else tmpTextoItalico := false;
                                                             //*****
                                                             if optStr = 'TEXTOFONTESUBLINHADO' then
                                                                if valorStr = 'SIM' then
                                                                   tmpTextoSublinhado := true else tmpTextoSublinhado := false;
                                                             //*****
                                                             if optStr = 'TEXTOFONTERISCO' then
                                                                if valorStr = 'SIM' then
                                                                tmpTextoRiscado := true else tmpTextoRiscado := false;
                                                             //*****
                                                             if optStr = 'TEXTOFONTECOR' then
                                                                tmpTextoColor := StringToColor(valorStr);
                                                             //*****
                                                             if optStr = 'SELECIONADO' then
                                                                if valorStr = 'SIM' then
                                                                   TmpTextoSelect := true
                                                                else
                                                                   TmpTextoSelect := false;
                                                             //*****************************

                                                         end;//while not (varStr = '[FIMPOLI]')

                                                     //**********************
                                                     //*** agora adiciono ***
                                                     //**********************
                                                     //configurar a fonte;
                                                     tmpEstiloFonte := [];
                                                     if tmpTextoNegrito then
                                                        tmpEstiloFonte := tmpEstiloFonte + [fsbold];
                                                     if tmpTextoItalico then
                                                        tmpEstiloFonte := tmpEstiloFonte + [fsItalic];
                                                     if tmpTextoSublinhado then
                                                        tmpEstiloFonte := tmpEstiloFonte + [fsUnderline];
                                                     if tmpTextoRiscado then
                                                        tmpEstiloFonte := tmpEstiloFonte + [fsStrikeOut];
                                                     //*********
                                                     SetLength(varBoolGrafTexto,length(varBoolGrafTexto)+1);
                                                     SetLength(varVetGrafTexto,length(varVetGrafTexto)+1);
                                                     SetLength(varVetGrafTextoPT,length(varVetGrafTextoPT)+1);
                                                     SetLength(varvetGrafTextoSize,length(varvetGrafTextoSize)+1);
                                                     SetLength(varVetGrafTextoRotacao,length(varVetGrafTextoRotacao)+1);
                                                     SetLength(varVetGrafTextoFonteStyle,length(varVetGrafTextoFonteStyle)+1);
                                                     SetLength(varVetGrafTextoColor,length(varVetGrafTextoColor)+1);
                                                     SetLength(varVetGrafTextoFonteNome,length(varVetGrafTextoFonteNome)+1);

                                                     varBoolGrafTexto[length(frmMenu.varBoolGrafTexto)-1]                 := true;
                                                     varVetGrafTextoFonteNome[length(frmMenu.varVetGrafTextoFonteNome)-1] := TmpTextoFonte;
                                                     varVetGrafTexto[length(frmMenu.varVetGrafTexto)-1]                   := TmpTextoString;
                                                     varvetGrafTextoSize[length(frmMenu.varvetGrafTextoSize)-1]           := tmpTextoSize;
                                                     varVetGrafTextoColor[length(frmMenu.varVetGrafTextoColor)-1]         := tmpTextoColor;
                                                     varVetGrafTextoPT[length(frmMenu.varVetGrafTextoPT)-1]               := CoPoint.Create;
                                                     varVetGrafTextoPT[length(frmMenu.varVetGrafTextoPT)-1]               := tmpTextoPT;
                                                     //*********
                                                     varVetGrafTextoFonteStyle[length(varVetGrafTextoFonteStyle)-1]       := tmpEstiloFonte;//FontDialog1.Font.Style;//;
                                                     //*******
                                                     varVetGrafTextoRotacao[length(frmMenu.varVetGrafTextoRotacao)-1]     := tmpTextoRotacao;
                                                     //****************************************************************************

                                                     //verifico se foi selecionado, se foi adiciono na seleção;
                                                     if TmpTextoSelect then
                                                        begin
                                                            SetLength(vetSelectTexto,length(vetSelectTexto)+1);
                                                            vetSelectTexto[Length(vetSelectTexto)-1] := IntToStr(length(varvetGrafTexto)-1);
                                                        end;
                                                     //**************************************

                                               end;//if varStr = '[INITEXTO]';

                                        end;//while not (varStr = '[FIMTEXTOS]')

                              end;//if varStr = '[INICIOTEXTOS]'
         //**********************************************************************

  //***********************************************************************************
  //***********************************************************************************
  //INICIO PONTOS
  //***********************************************************************************
  //***********************************************************************************
                           //************************************************
                           //************************************************
                           if varStr = '[INICIOPONTOS]' then
                              begin
                                   while not (varStr = '[FIMPONTOS]') do
                                        begin
                                            Readln(F,varStr);
                                            varStr   := DecriptaArquivoSalvo(varStr);
                                            {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                            num      := pos(' ',varStr);
                                            OptStr   := copy(varStr,1,num-1);
                                            ValorStr := copy(varStr,num+1,length(varStr)-num);

                                            if optStr ='PONTOSYMBOLPADRAO' then
                                               begin
                                                   while not (optStr = 'PONTOSIZEPADRAO') do
                                                        begin
                                                             if optStr = 'PONTOSYMBOLPADRAO' then
                                                                varGrafPontoStyle := StrToInt(valorStr);
                                                             //*********
                                                             if optStr = 'PONTOCORPADRAO' then
                                                                varGrafPontoColor  := StringToColor(valorStr);
                                                             //*********
                                                             if optStr = 'PONTOOUTCORPADRAO' then
                                                                varGrafPontoOutCor  := StringToColor(valorStr);
                                                             //*********
                                                             if optStr = 'PONTOUSAOUTLINEPADRAO' then
                                                                if valorStr = 'SIM' then
                                                                varGrafPontoUsaOutline  := true else varGrafPontoUsaOutline := false;
                                                             //*********
                                                             if optStr = 'PONTOSIZEPADRAO' then
                                                               varGrafPontoSize := StrToInt(valorStr);
                                                             //*****
                                                             Readln(F,varStr);
                                                             varStr   := DecriptaArquivoSalvo(varStr);
                                                             {serve para ler as opçoes; OptStr = opçao ; Valortr = valor ;}
                                                             num      := pos(' ',varStr);
                                                             OptStr   := copy(varStr,1,num-1);
                                                             ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                             //***********
                                                        end;
                                                    //***
                                               end;

                                            if varStr = '[INICIOPONTO]' then
                                               begin

                                                     while not (varStr = '[FIMPONTO]') do
                                                         begin
                                                             Readln(F,varStr);
                                                             varStr   := DecriptaArquivoSalvo(varStr);
                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                             num      := pos(' ',varStr);
                                                             OptStr   := copy(varStr,1,num-1);
                                                             ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                             //****
                                                             if varStr = '[COORDS]' then
                                                                begin
                                                                     varPontoX := false;
                                                                     varPontoY := false;

                                                                     while not (varStr = '[FIMCOORDS]') do
                                                                         begin
                                                                             Readln(F,varStr);
                                                                             varStr    := DecriptaArquivoSalvo(varStr);
                                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                                             num       := pos(' ',varStr);
                                                                             OptStr    := copy(varStr,1,num-1);
                                                                             ValorStr  := copy(varStr,num+1,length(varStr)-num);

                                                                             if optStr = 'CENTERX' then
                                                                                begin
                                                                                    varX      := strToFloat(valorStr);
                                                                                    varPontoX := true;
                                                                                end;
                                                                             //*********
                                                                             if optStr = 'CENTERY' then
                                                                                begin
                                                                                    varY      := strToFloat(valorStr);
                                                                                    varPontoY := true;
                                                                                end;
                                                                             //*********

                                                                             if varPontoX and varPontoY then
                                                                                begin
                                                                                    tmpTextoPT    := CoPoint.create;
                                                                                    tmpTextoPT.X  := varX;
                                                                                    tmpTextoPT.Y  := varY;
                                                                                    varPontoX     := false;
                                                                                    varPontoY     := false;
                                                                                end;

                                                                         end;//while not (varStr = '[FIMCOORDS]')

                                                                end;//if varStr = '[COORDS]'

                                                             //***************************
                                                             if optStr = 'PONTOCOR' then
                                                                tmpPontoCor := StringToColor(valorStr);
                                                             //***********
                                                             if optStr = 'PONTOUSAOUTLINE' then
                                                                if valorStr = 'SIM' then
                                                                   tmpPontoUsaOutLine := true else tmpPontoUsaOutline := false;
                                                             //***********
                                                             if optStr = 'PONTOSIZE' then
                                                                tmpPontoSize := StrToInt(valorStr);
                                                             //***********
                                                             if optStr = 'PONTOOUTCOR' then
                                                                TmpPontoOutCor := StringToColor(valorStr);
                                                             //***********
                                                             if optStr = 'SELECIONADO' then
                                                                if valorStr = 'SIM' then
                                                               tmpPontoSelect := true else tmpPontoSelect := false;
                                                             //*****
                                                             if optStr = 'PONTOSTYLE' then
                                                                tmpPontoEstilo := strToInt(valorStr);
                                                             //*****
                                                         end;//while not (varStr = '[FIMPOLI]')

                                                     //**********************
                                                     //*** agora adiciono ***
                                                     //**********************
                                                     SetLength(varBoolGrafPonto,length(varBoolGrafPonto)+1);
                                                     SetLength(varGrafPonto,length(varGrafPonto)+1);
                                                     SetLength(varVetGrafPontoColor,length(varVetGrafPontoColor)+1);
                                                     SetLength(varVetGrafPontoUsaOutline,length(varVetGrafPontoUsaOutline)+1);
                                                     SetLength(varVetGrafPontoSize,length(varVetGrafPontoSize)+1);
                                                     SetLength(varVetGrafPontoOutCor,length(varVetGrafPontoOutCor)+1);
                                                     SetLength(varVetGrafPontoStyle,length(varVetGrafPontoStyle)+1);
                                                     //**********

                                                     varGrafPonto[length(varGrafPonto)-1]                            := CoPoint.Create;
                                                     varGrafPonto[length(varGrafPonto)-1]                            := tmpTextoPT;
                                                     //***********
                                                     varBoolGrafPonto[length(varBoolGrafPonto)-1]                    := true;
                                                     varVetGrafPontoColor[length(varVetGrafPontoColor)-1]            := tmpPontoCor;
                                                     varVetGrafPontoUsaOutline[length(varVetGrafPontoUsaOutline)-1]  := tmpPontoUsaOutLine;
                                                     varVetGrafPontoSize[length(varVetGrafPontoSize)-1]              := tmpPontoSize;
                                                     varVetGrafPontoOutCor[length(varVetGrafPontoOutCor)-1]          := TmpPontoOutCor;
                                                     varVetGrafPontoStyle[length(varVetGrafPontoStyle)-1]            := tmpPontoEstilo;

                                                     //verifico se foi selecionado, se foi adiciono na seleção;
                                                     if TmpPontoSelect then
                                                        begin
                                                            SetLength(vetSelectPonto,length(vetSelectPonto)+1);
                                                            vetSelectPonto[Length(vetSelectPonto)-1] := IntToStr(length(varGrafPonto)-1);
                                                        end;
                                                     //**************************************

                                               end;//if varStr = '[INIPONTO]';

                                        end;//while not (varStr = '[FIMPONTOS]')

                              end;//if varStr = '[INICIOPONTOS]'


         //**********************************************************************


         //**********************************************************************
         //**********************************************************************
         //************ POLIGONOS
         //**********************************************************************
         //**********************************************************************                  

                           //************************************************
                           //************************************************
                           if varStr = '[INICIOPOLIGONOS]' then
                              begin
                                   while not (varStr = '[FIMPOLIGONOS]') do
                                        begin
                                            Readln(F,varStr);
                                            varStr   := DecriptaArquivoSalvo(varStr);
                                            {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                            num      := pos(' ',varStr);
                                            OptStr   := copy(varStr,1,num-1);
                                            ValorStr := copy(varStr,num+1,length(varStr)-num);

                                            if optStr ='POLISIZEPADRAO' then
                                               begin
                                                   while not (optStr = 'POLIUSAOUTLINEPADRAO') do
                                                        begin
                                                             if optStr = 'POLISIZEPADRAO' then
                                                                varGrafPoliSize   := StrToInt(valorStr);
                                                             if optStr = 'POLIOUTCORPADRAO' then
                                                                varGrafPoliOutCor := StringToColor(valorStr);
                                                             if optStr = 'POLISTYLEPADRAO' then
                                                                varGrafPoliStyle  := StrToInt(valorStr);
                                                             if optStr = 'POLICORPADRAO' then
                                                                varGrafPoliColor  := StringToColor(valorStr);
                                                             //*********
                                                             if optStr = 'POLIUSAOUTLINEPADRAO' then
                                                                if valorStr = 'SIM' then varGrafPoliUsaOutline := true
                                                                else varGrafPoliUsaOutline := false;
                                                             //*********
                                                             Readln(F,varStr);
                                                             varStr   := DecriptaArquivoSalvo(varStr);
                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                             num      := pos(' ',varStr);
                                                             OptStr   := copy(varStr,1,num-1);
                                                             ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                             //***********
                                                        end;
                                               end;


                                            if varStr = '[INIPOLI]' then
                                               begin

                                                     while not (varStr = '[FIMPOLI]') do
                                                         begin
                                                             Readln(F,varStr);
                                                             varStr   := DecriptaArquivoSalvo(varStr);
                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                             num      := pos(' ',varStr);
                                                             OptStr   := copy(varStr,1,num-1);
                                                             ValorStr := copy(varStr,num+1,length(varStr)-num);

                                                             if varStr = '[COORDS]' then
                                                                begin
                                                                     varPontoX := false;
                                                                     varPontoY := false;
                                                                     Polig     := CoPolygon.create;
                                                                     pts       := CoPoints.Create;

                                                                     while not (varStr = '[FIMCOORDS]') do
                                                                         begin
                                                                             Readln(F,varStr);
                                                                             varStr    := DecriptaArquivoSalvo(varStr);
                                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                                             num       := pos(' ',varStr);
                                                                             OptStr    := copy(varStr,1,num-1);
                                                                             ValorStr  := copy(varStr,num+1,length(varStr)-num);

                                                                             if optStr = 'X' then
                                                                                begin
                                                                                    varX      := strToFloat(valorStr);
                                                                                    varPontoX := true;
                                                                                end;
                                                                             //*********
                                                                             if optStr = 'Y' then
                                                                                begin
                                                                                    varY      := strToFloat(valorStr);
                                                                                    varPontoY := true;
                                                                                end;
                                                                             //*********

                                                                             if varPontoX and varPontoY then
                                                                                begin
                                                                                    pt        := CoPoint.create;
                                                                                    pt.X      := varX;
                                                                                    pt.Y      := varY;
                                                                                    varPontoX := false;
                                                                                    varPontoY := false;
                                                                                    pts.Add(pt);
                                                                                end;

                                                                         end;//while not (varStr = '[FIMCOORDS]')

                                                                end;//if varStr = '[COORDS]'

                                                             //***************************
                                                             if optStr = 'POLICOR' then
                                                                TmpVetPoliCor := StringToColor(valorStr);
                                                             //***********
                                                             if optStr = 'POLIUSAOUTLINE' then
                                                                if valorStr = 'SIM' then tmpVetUsaOutline := true
                                                                else tmpVetUsaOutline := false;
                                                             //***********
                                                             if optStr = 'POLISIZE' then
                                                                TmpVetPoliSize := strToInt(valorStr);
                                                             //***********
                                                             if optStr = 'POLIOUTCOR' then
                                                                TmpVetPoliOutCor := StringToColor(valorStr);
                                                             //*****
                                                             if optStr = 'SELECIONADO' then
                                                                if valorStr = 'SIM' then
                                                                   TmpPoliSelec := true
                                                                else
                                                                   TmpPoliSelec := false;
                                                             //*****
                                                             if optStr = 'POLISTYLE' then
                                                                TmpVetPoliEstilo := StrToInt(valorStr);
                                                             //*****************************

                                                         end;//while not (varStr = '[FIMPOLI]')

                                                     //**********************
                                                     //*** agora adiciono ***
                                                     //**********************
                                                     Polig.Parts.add(pts);

                                                     //******************
                                                     SetLength(varBoolGrafPoli,length(varBoolGrafPoli)+1);
                                                     SetLength(varGrafPoli,length(varGrafPoli)+1);
                                                     SetLength(varVetGrafPoliColor,length(varVetGrafPoliColor)+1);
                                                     SetLength(varVetGrafPoliUsaOutline,length(varVetGrafPoliUsaOutline)+1);
                                                     SetLength(varVetGrafPoliSize,length(varVetGrafPoliSize)+1);
                                                     SetLength(varVetGrafPoliOutCor,length(varVetGrafPoliOutCor)+1);
                                                     SetLength(varVetGrafPoliStyle,length(varVetGrafPoliStyle)+1);
                                                     //*****
                                                     varGrafPoli[length(varGrafPoli)-1]                            := Polig;
                                                     varBoolGrafPoli[length(varBoolGrafPoli)-1]                    := true;
                                                     varVetGrafPoliColor[length(varVetGrafPoliColor)-1]            := TmpVetPoliCor;
                                                     varVetGrafPoliUsaOutline[length(varVetGrafPoliUsaOutline)-1]  := tmpVetUsaOutline;
                                                     varVetGrafPoliSize[length(varVetGrafPoliSize)-1]              := TmpVetPoliSize;
                                                     varVetGrafPoliOutCor[length(varVetGrafPoliOutCor)-1]          := TmpVetPoliOutCor;
                                                     varVetGrafPoliStyle[length(varVetGrafPoliStyle)-1]            := TmpVetPoliEstilo;
                                                     //****************************************************************************

                                                     //verifico se foi selecionado, se foi adiciono na seleção;
                                                     if TmpPoliSelec then
                                                        begin
                                                            SetLength(vetSelectPoli,length(vetSelectPoli)+1);
                                                            vetSelectPoli[Length(vetSelectPoli)-1] := IntToStr(length(varGrafPoli)-1);
                                                        end;
                                                     //**************************************

                                               end;//if varStr = '[INIPOLI]';

                                        end;//while not (varStr = '[FIMPOLIGONOS]')

                              end;//if varStr = '[INICIOPOLIGONOS]'

         //**********************************************************************
         //**********************************************************************
         //********** LINHAS GRAFICOS
         //**********************************************************************
         //**********************************************************************


         //**********************************************************************
                      if varStr = '[INICIOLINHA]' then
                              begin
                                   while not (varStr = '[FIMGRAFLINHA]') do
                                        begin
                                            Readln(F,varStr);
                                            varStr   := DecriptaArquivoSalvo(varStr);
                                            {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                            num      := pos(' ',varStr);
                                            OptStr   := copy(varStr,1,num-1);
                                            ValorStr := copy(varStr,num+1,length(varStr)-num);

                                            if optStr ='LINHASIZEPADRAO' then
                                               begin
                                                   while not (optStr = 'LINHACORPADRAO') do
                                                        begin
                                                             if optStr = 'LINHASIZEPADRAO' then
                                                                varGrafLinhaSize   := StrToInt(valorStr);
                                                             if optStr = 'LINHASTYLEPADRAO' then
                                                                varGrafLinhaStyle  := StringToColor(valorStr);
                                                             if optStr = 'LINHACORPADRAO' then
                                                                varGrafLinhaColor  := StrToInt(valorStr);
                                                             //*********
                                                             Readln(F,varStr);
                                                             varStr   := DecriptaArquivoSalvo(varStr);
                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                             num      := pos(' ',varStr);
                                                             OptStr   := copy(varStr,1,num-1);
                                                             ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                             //***********
                                                        end;
                                               end;


                                            if varStr = '[INILINHA]' then
                                               begin

                                                     while not (varStr = '[FIMLINHA]') do
                                                         begin
                                                             Readln(F,varStr);
                                                             varStr   := DecriptaArquivoSalvo(varStr);
                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                             num      := pos(' ',varStr);
                                                             OptStr   := copy(varStr,1,num-1);
                                                             ValorStr := copy(varStr,num+1,length(varStr)-num);

                                                             if varStr = '[COORDS]' then
                                                                begin
                                                                     varPontoX := false;
                                                                     varPontoY := false;
                                                                     TmpLinha  := CoLine.Create;
                                                                     pts       := CoPoints.Create;

                                                                     while not (varStr = '[FIMCOORDS]') do
                                                                         begin
                                                                             Readln(F,varStr);
                                                                             varStr    := DecriptaArquivoSalvo(varStr);
                                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                                             num       := pos(' ',varStr);
                                                                             OptStr    := copy(varStr,1,num-1);
                                                                             ValorStr  := copy(varStr,num+1,length(varStr)-num);

                                                                             if optStr = 'X' then
                                                                                begin
                                                                                    varX      := strToFloat(valorStr);
                                                                                    varPontoX := true;
                                                                                end;
                                                                             //*********
                                                                             if optStr = 'Y' then
                                                                                begin
                                                                                    varY      := strToFloat(valorStr);
                                                                                    varPontoY := true;
                                                                                end;
                                                                             //*********

                                                                             if varPontoX and varPontoY then
                                                                                begin
                                                                                    pt        := CoPoint.create;
                                                                                    pt.X      := varX;
                                                                                    pt.Y      := varY;
                                                                                    varPontoX := false;
                                                                                    varPontoY := false;
                                                                                    pts.Add(pt);
                                                                                end;

                                                                         end;//while not (varStr = '[FIMCOORDS]')

                                                                end;//if varStr = '[COORDS]'

                                                             //***************************
                                                             if optStr = 'LINHACOR' then
                                                                TmpLinhaCor := StringToColor(valorStr);
                                                             //***********
                                                             if optStr = 'LINHASIZE' then
                                                                TmpLinhaSize := strToInt(valorStr);
                                                             //***********
                                                             if optStr = 'LINHASTYLE' then
                                                                TmpLinhaStyle := StringToColor(valorStr);
                                                             //*****
                                                             if optStr = 'SELECIONADO' then
                                                                if valorStr = 'SIM' then
                                                                   TmpLinhaSelect := true
                                                                else
                                                                   TmpLinhaSelect := false;
                                                             //*****************************

                                                         end;//while not (varStr = '[FIMPOLI]')

                                                     //**********************
                                                     //*** agora adiciono ***
                                                     //**********************
                                                     TmpLinha.Parts.add(pts);

                                                     //******************
                                                     SetLength(varBoolGrafLinha,length(varBoolGrafLinha)+1);
                                                     SetLength(varGrafLinha,length(varGrafLinha)+1);
                                                     SetLength(varVetGrafLinhaColor,length(varVetGrafLinhaColor)+1);
                                                     SetLength(varVetGrafLinhaSize,length(varVetGrafLinhaSize)+1);
                                                     SetLength(varVetGrafLinhaStyle,length(varVetGrafLinhaStyle)+1);
                                                     //**********
                                                     varGrafLinha[length(varGrafLinha)-1]                            := CoLine.Create;
                                                     varGrafLinha[length(varGrafLinha)-1]                            := TmpLinha;
                                                     //***********
                                                     varBoolGrafLinha[length(varBoolGrafLinha)-1]                    := true;
                                                     varVetGrafLinhaColor[length(varVetGrafLinhaColor)-1]            := TmpLinhaCor;
                                                     varVetGrafLinhaSize[length(varVetGrafLinhaSize)-1]              := TmpLinhaSize;
                                                     varVetGrafLinhaStyle[length(varVetGrafLinhaStyle)-1]            := TmpLinhaStyle;

                                                     //****************************************************************************

                                                     //verifico se foi selecionado, se foi adiciono na seleção;
                                                     if TmpLinhaSelect then
                                                        begin
                                                            SetLength(vetSelectLinha,length(vetSelectLinha)+1);
                                                            vetSelectLinha[Length(vetSelectLinha)-1] := IntToStr(length(varGrafLinha)-1);
                                                        end;
                                                     //**************************************

                                               end;//if varStr = '[INILINHA]';

                                        end;//while not (varStr = '[FIMLINHA]')

                              end;//if varStr = '[INICIOLINHA]'

                //*******************************************************************
                //*******************************************************************


         //**********************************************************************
         //**********************************************************************
         //***********  RETANGULOS
         //**********************************************************************
         //**********************************************************************
                      if varStr = '[INICIORETANGULO]' then
                              begin
                                   while not (varStr = '[FIMRETANGULO]') do
                                        begin
                                            Readln(F,varStr);
                                            varStr   := DecriptaArquivoSalvo(varStr);
                                            {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                            num      := pos(' ',varStr);
                                            OptStr   := copy(varStr,1,num-1);
                                            ValorStr := copy(varStr,num+1,length(varStr)-num);

                                            if optStr ='RETANGSIZEPADRAO' then
                                               begin
                                                   while not (optStr = 'RETANGUSAOUTLINEPADRAO') do
                                                        begin
                                                             if optStr = 'RETANGSIZEPADRAO' then
                                                                varGrafRetangSize   := StrToInt(valorStr);
                                                             if optStr = 'RETANGOUTCORPADRAO' then
                                                                varGrafRetangOutCor := StringToColor(ValorStr);
                                                             if optStr = 'RETANGSTYLEPADRAO' then
                                                                varGrafRetangStyle  := StringToColor(valorStr);
                                                             if optStr = 'LINHACORPADRAO' then
                                                                varGrafRetangColor  := StrToInt(valorStr);
                                                             if optStr = 'RETANGUSAOUTLINEPADRAO' then
                                                                if valorStr = 'SIM' then
                                                                   varGrafRetangUsaOutline := true
                                                                else
                                                                   varGrafRetangUsaOutline := false;
                                                             //*********
                                                             Readln(F,varStr);
                                                             varStr   := DecriptaArquivoSalvo(varStr);
                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                             num      := pos(' ',varStr);
                                                             OptStr   := copy(varStr,1,num-1);
                                                             ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                             //***********
                                                        end;
                                               end;


                                            if varStr = '[INIRETANG]' then
                                               begin

                                                     while not (varStr = '[FIMRETANG]') do
                                                         begin
                                                             Readln(F,varStr);
                                                             varStr   := DecriptaArquivoSalvo(varStr);
                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                             num      := pos(' ',varStr);
                                                             OptStr   := copy(varStr,1,num-1);
                                                             ValorStr := copy(varStr,num+1,length(varStr)-num);

                                                             if varStr = '[COORDS]' then
                                                                begin
                                                                    TmpRetang := CoRectangle.Create;

                                                                     while not (varStr = '[FIMCOORDS]') do
                                                                         begin
                                                                             Readln(F,varStr);
                                                                             varStr    := DecriptaArquivoSalvo(varStr);
                                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                                             num       := pos(' ',varStr);
                                                                             OptStr    := copy(varStr,1,num-1);
                                                                             ValorStr  := copy(varStr,num+1,length(varStr)-num);

                                                                             if optStr = 'LEFT' then
                                                                                begin
                                                                                    TmpRetang.Left := StrToFloat(valorStr);
                                                                                end;
                                                                             //*********
                                                                             if optStr = 'RIGHT' then
                                                                                begin
                                                                                   TmpRetang.Right := StrToFloat(ValorStr);
                                                                                end;
                                                                             //*********
                                                                             if optStr = 'TOP' then
                                                                                begin
                                                                                   TmpRetang.Top := StrToFloat(ValorStr);
                                                                                end;
                                                                             //*********
                                                                             if optStr = 'BOTTOM' then
                                                                                begin
                                                                                   TmpRetang.Bottom := StrToFloat(ValorStr);
                                                                                end;
                                                                             //*********

                                                                         end;//while not (varStr = '[FIMCOORDS]')

                                                                end;//if varStr = '[COORDS]'

                                                             //***************************
                                                             if optStr = 'RETANGCOR' then
                                                                TmpRetangCor := StringToColor(valorStr);
                                                             //***********
                                                             if optStr = 'RETANGUSAOUTLINE' then
                                                                if valorStr = 'SIM' then
                                                                   TmpRetangUsaOutline := True
                                                                else TmpRetangUsaOutline := false;
                                                             //***********
                                                             if optStr = 'RETANGSIZE' then
                                                                TmpRetangSize := StrToInt(valorStr);
                                                             //*****
                                                             if optStr = 'RETANGOUTCOR' then
                                                                TmpRetangOutCor := StringToColor(valorStr);
                                                             //*****
                                                             if optStr = 'SELECIONADO' then
                                                                if valorStr = 'SIM' then
                                                                   TmpRetangSelect := true
                                                                else
                                                                   TmpRetangSelect := false;
                                                             //*****************************

                                                         end;//while not (varStr = '[FIMPOLI]')

                                                     //**********************
                                                     //*** agora adiciono ***
                                                     //**********************

                                                     //******************
                                                     SetLength(varBoolGrafRetang,length(varBoolGrafRetang)+1);
                                                     SetLength(varGrafRetang,length(varGrafRetang)+1);
                                                     SetLength(varVetGrafRetangColor,length(varVetGrafRetangColor)+1);
                                                     SetLength(varVetGrafRetangUsaOutline,length(varVetGrafRetangUsaOutline)+1);
                                                     SetLength(varVetGrafRetangSize,length(varVetGrafRetangSize)+1);
                                                     SetLength(varVetGrafRetangOutCor,length(varVetGrafRetangOutCor)+1);
                                                     SetLength(varVetGrafRetangStyle,length(varVetGrafRetangStyle)+1);
                                                     //**********

                                                     varGrafRetang[length(varGrafRetang)-1]                           := CoRectangle.Create;
                                                     varGrafRetang[length(varGrafRetang)-1]                           := TmpRetang;
                                                     //***********
                                                     varBoolGrafRetang[length(varBoolGrafRetang)-1]                   := true;
                                                     varVetGrafRetangColor[length(varVetGrafRetangColor)-1]           := TmpRetangCor;
                                                     varVetGrafRetangUsaOutline[length(varVetGrafRetangUsaOutline)-1] := TmpRetangUsaOutline;
                                                     varVetGrafRetangSize[length(varVetGrafRetangSize)-1]             := TmpRetangSize;
                                                     varVetGrafRetangOutCor[length(varVetGrafRetangOutCor)-1]         := TmpRetangOutCor;
                                                     varVetGrafRetangStyle[length(varVetGrafRetangStyle)-1]           := TmpRetangStyle;

                                                     //****************************************************************************

                                                     //verifico se foi selecionado, se foi adiciono na seleção;
                                                     if TmpRetangSelect then
                                                        begin
                                                            SetLength(vetSelectRetang,length(vetSelectRetang)+1);
                                                            vetSelectRetang[Length(vetSelectRetang)-1] := IntToStr(length(varGrafRetang)-1);
                                                        end;
                                                     //**************************************

                                               end;//if varStr = '[INILINHA]';

                                        end;//while not (varStr = '[FIMLINHA]')

                              end;//if varStr = '[INICIOLINHA]'

//*********************************************************************************************************
//*********************************************************************************************************


         //**********************************************************************
         //**********************************************************************
         //******** INICIO CIRCULOS
         //**********************************************************************
         //**********************************************************************

                //*******************************************************************
                //*******************************************************************
                      if varStr = '[INICIOCIRCULOS]' then
                              begin
                                   while not (varStr = '[FIMCIRCULOS]') do
                                        begin
                                            Readln(F,varStr);
                                            varStr   := DecriptaArquivoSalvo(varStr);
                                            {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                            num      := pos(' ',varStr);
                                            OptStr   := copy(varStr,1,num-1);
                                            ValorStr := copy(varStr,num+1,length(varStr)-num);

                                            if optStr ='CIRCULOSIZEPADRAO' then
                                               begin
                                                   while not (optStr = 'CIRCULOUSAOUTLINEPADRAO') do
                                                        begin
                                                             if optStr = 'CIRCULOSIZEPADRAO' then
                                                                varGrafCirculoSize   := StrToInt(valorStr);
                                                             if optStr = 'CIRCULOOUTCORPADRAO' then
                                                                varGrafCirculoOutCor := StringToColor(ValorStr);
                                                             if optStr = 'CIRCULOSTYLEPADRAO' then
                                                                varGrafCirculoStyle  := StrToInt(valorStr);
                                                             if optStr = 'CIRCULOCORPADRAO' then
                                                                varGrafCirculoColor  := StringToColor(valorStr);
                                                             if optStr = 'CIRCULOUSAOUTLINEPADRAO' then
                                                                if valorStr = 'SIM' then
                                                                   varGrafCirculoUsaOutline := true
                                                                else
                                                                   varGrafCirculoUsaOutline := false;
                                                             //*********
                                                             Readln(F,varStr);
                                                             varStr   := DecriptaArquivoSalvo(varStr);
                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                             num      := pos(' ',varStr);
                                                             OptStr   := copy(varStr,1,num-1);
                                                             ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                             //***********
                                                        end;
                                               end;


                                            if varStr = '[INICIRC]' then
                                               begin

                                                     while not (varStr = '[FIMCIRC]') do
                                                         begin
                                                             Readln(F,varStr);
                                                             varStr   := DecriptaArquivoSalvo(varStr);
                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                             num      := pos(' ',varStr);
                                                             OptStr   := copy(varStr,1,num-1);
                                                             ValorStr := copy(varStr,num+1,length(varStr)-num);

                                                             if varStr = '[COORDS]' then
                                                                begin
                                                                    TmpCirculo := CoEllipse.Create;

                                                                     while not (varStr = '[FIMCOORDS]') do
                                                                         begin
                                                                             Readln(F,varStr);
                                                                             varStr    := DecriptaArquivoSalvo(varStr);
                                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                                             num       := pos(' ',varStr);
                                                                             OptStr    := copy(varStr,1,num-1);
                                                                             ValorStr  := copy(varStr,num+1,length(varStr)-num);

                                                                             if optStr = 'LEFT' then
                                                                                begin
                                                                                    TmpCirculo.Left := StrToFloat(valorStr);
                                                                                end;
                                                                             //*********
                                                                             if optStr = 'RIGHT' then
                                                                                begin
                                                                                   TmpCirculo.Right := StrToFloat(ValorStr);
                                                                                end;
                                                                             //*********
                                                                             if optStr = 'TOP' then
                                                                                begin
                                                                                   TmpCirculo.Top := StrToFloat(ValorStr);
                                                                                end;
                                                                             //*********
                                                                             if optStr = 'BOTTOM' then
                                                                                begin
                                                                                   TmpCirculo.Bottom := StrToFloat(ValorStr);
                                                                                end;
                                                                             //*********

                                                                         end;//while not (varStr = '[FIMCOORDS]')

                                                                end;//if varStr = '[COORDS]'

                                                             //***************************
                                                             if optStr = 'CIRCULOCOR' then
                                                                TmpCirculoCor := StringToColor(valorStr);
                                                             //***********
                                                             if optStr = 'CIRCULOUSAOUTLINE' then
                                                                if valorStr = 'SIM' then
                                                                   TmpCirculoUsaOutline := True
                                                                else TmpCirculoUsaOutline := false;
                                                             //***********
                                                             if optStr = 'CIRCULOSIZE' then
                                                                TmpCirculoSize := StrToInt(valorStr);
                                                             //*****
                                                             if optStr = 'CIRCULOOUTCOR' then
                                                                TmpCirculoOutCor := StringToColor(valorStr);
                                                             //*****
                                                             if optStr = 'SELECIONADO' then
                                                                if valorStr = 'SIM' then
                                                                   TmpCirculoSelect := true
                                                                else
                                                                   TmpCirculoSelect := false;
                                                             //*****************************

                                                         end;//while not (varStr = '[FIMPOLI]')

                                                     //**********************
                                                     //*** agora adiciono ***
                                                     //**********************

                                                     //******************
                                                     SetLength(varBoolGrafCirculo,length(varBoolGrafCirculo)+1);
                                                     SetLength(varGrafCirculo,length(varGrafCirculo)+1);
                                                     SetLength(varVetGrafCirculoColor,length(varVetGrafCirculoColor)+1);
                                                     SetLength(varVetGrafCirculoUsaOutline,length(varVetGrafCirculoUsaOutline)+1);
                                                     SetLength(varVetGrafCirculoSize,length(varVetGrafCirculoSize)+1);
                                                     SetLength(varVetGrafCirculoOutCor,length(varVetGrafCirculoOutCor)+1);
                                                     SetLength(varVetGrafCirculoStyle,length(varVetGrafCirculoStyle)+1);
                                                     //**********

                                                     varGrafCirculo[length(varGrafCirculo)-1]                           := CoEllipse.Create;
                                                     varGrafCirculo[length(varGrafCirculo)-1]                           := TmpCirculo;
                                                     //***********
                                                     varBoolGrafCirculo[length(varBoolGrafCirculo)-1]                   := true;
                                                     varVetGrafCirculoColor[length(varVetGrafCirculoColor)-1]           := TmpCirculoCor;
                                                     varVetGrafCirculoUsaOutline[length(varVetGrafCirculoUsaOutline)-1] := TmpCirculoUsaOutline;
                                                     varVetGrafCirculoSize[length(varVetGrafCirculoSize)-1]             := TmpCirculoSize;
                                                     varVetGrafCirculoOutCor[length(varVetGrafCirculoOutCor)-1]         := TmpCirculoOutCor;
                                                     varVetGrafCirculoStyle[length(varVetGrafCirculoStyle)-1]           := TmpCirculoStyle;

                                                     //****************************************************************************

                                                     //verifico se foi selecionado, se foi adiciono na seleção;
                                                     if TmpCirculoSelect then
                                                        begin
                                                            SetLength(vetSelectCirculo,length(vetSelectCirculo)+1);
                                                            vetSelectCirculo[Length(vetSelectCirculo)-1] := IntToStr(length(varGrafCirculo)-1);
                                                        end;
                                                     //**************************************

                                               end;//if varStr = '[INILINHA]';

                                        end;//while not (varStr = '[FIMLINHA]')

                              end;//if varStr = '[INICIOLINHA]'

     //*************************************************************************************************
     //*************************************************************************************************
     //*************************************************************************************************

                //**********************************************************************
                //**********************************************************************
                // CIRCULOS QUERY
                //*******************************************************************
                //*******************************************************************
                      if varStr = '[INICIOCIRCULOSQUERY]' then
                              begin
                                   while not (varStr = '[FIMCIRCULOSQUERY]') do
                                        begin
                                            Readln(F,varStr);
                                            varStr   := DecriptaArquivoSalvo(varStr);
                                            {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                            num      := pos(' ',varStr);
                                            OptStr   := copy(varStr,1,num-1);
                                            ValorStr := copy(varStr,num+1,length(varStr)-num);
                                            //***
                                            if optStr ='CIRCULOSTYLEPADRAOQUERY' then
                                               begin
                                                   while not (optStr = 'CIRCULOCORPADRAOQUERY') do
                                                        begin
                                                             if optStr = 'CIRCULOSTYLEPADRAOQUERY' then
                                                                varQueryStyle  := StrToInt(valorStr);
                                                             if optStr = 'CIRCULOSYMBOLPADRAOQUERY' then
                                                                varQuerySymbol := StrToInt(ValorStr);
                                                             //***
                                                             if optStr = 'PONTOSYMBOLPADRAOQUERY' then
                                                                varQuerySymbolPonto := StrToInt(ValorStr);
                                                             if optStr = 'PONTOCORPADRAOQUERY' then
                                                                varQueryColorPonto  := StringToColor(valorStr);
                                                             if optStr = 'PONTOSIZEPADRAOQUERY' then
                                                                varQueryColorSize   := StrToInt(valorStr);
                                                             //****
                                                             if optStr = 'CIRCULOCORPADRAOQUERY' then
                                                                varQueryColor  := StringToColor(valorStr);
                                                             //****
                                                             Readln(F,varStr);
                                                             varStr   := DecriptaArquivoSalvo(varStr);
                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                             num      := pos(' ',varStr);
                                                             OptStr   := copy(varStr,1,num-1);
                                                             ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                             //****
                                                        end;
                                               end;


                                            if varStr = '[INICIRCQUERY]' then
                                               begin
                                                    //****
                                                     while not (varStr = '[FIMCIRCQUERY]') do
                                                         begin
                                                             Readln(F,varStr);
                                                             varStr   := DecriptaArquivoSalvo(varStr);
                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                             num      := pos(' ',varStr);
                                                             OptStr   := copy(varStr,1,num-1);
                                                             ValorStr := copy(varStr,num+1,length(varStr)-num);

                                                             if varStr = '[COORDS]' then
                                                                begin
                                                                    TmpCirculo := CoEllipse.Create;

                                                                     while not (varStr = '[FIMCOORDS]') do
                                                                         begin
                                                                             Readln(F,varStr);
                                                                             varStr    := DecriptaArquivoSalvo(varStr);
                                                                             {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                                             num       := pos(' ',varStr);
                                                                             OptStr    := copy(varStr,1,num-1);
                                                                             ValorStr  := copy(varStr,num+1,length(varStr)-num);

                                                                             if optStr = 'LEFT' then
                                                                                begin
                                                                                    TmpCirculo.Left := StrToFloat(valorStr);
                                                                                end;
                                                                             //*********
                                                                             if optStr = 'RIGHT' then
                                                                                begin
                                                                                   TmpCirculo.Right := StrToFloat(ValorStr);
                                                                                end;
                                                                             //*********
                                                                             if optStr = 'CENTERX' then
                                                                                begin
                                                                                  varTmpQueryPontoX := StrToFloat(valorStr);
                                                                                end;
                                                                             //*********
                                                                             if optStr = 'CENTERY' then
                                                                                begin
                                                                                  varTmpQueryPontoY := StrToFloat(valorStr);
                                                                                end;
                                                                             //*********
                                                                             if optStr = 'TOP' then
                                                                                begin
                                                                                   TmpCirculo.Top := StrToFloat(ValorStr);
                                                                                end;
                                                                             //*********
                                                                             if optStr = 'BOTTOM' then
                                                                                begin
                                                                                   TmpCirculo.Bottom := StrToFloat(ValorStr);
                                                                                end;
                                                                             //*********

                                                                         end;//while not (varStr = '[FIMCOORDS]')

                                                                end;//if varStr = '[COORDS]'

                                                             //***************************
                                                             if optStr = 'CIRCULOQUERYLAYER' then
                                                                TmpCirculoQueryLayer := valorStr;
                                                             //***********
                                                             if optStr = 'SELECIONADO' then
                                                                if valorStr = 'SIM' then
                                                                   TmpCirculoSelect := true
                                                                else
                                                                   TmpCirculoSelect := false;
                                                             //*****************************

                                                         end;//while not (varStr = '[FIMPOLI]')

                                                     //**********************
                                                     //*** agora adiciono ***
                                                     //**********************

                                                     //******************
                                                     SetLength(varQueryCirculo,length(varQueryCirculo)+1);
                                                     SetLength(varQueryLayer,length(varQueryLayer)+1);
                                                     SetLength(varQueryPontoOrigem,length(varQueryPontoOrigem)+1);
                                                     //**********
                                                     varQueryCirculo[length(varQueryCirculo)-1]                           := CoEllipse.Create;
                                                     varQueryPontoOrigem[length(varQueryPontoOrigem)-1]                   := CoPoint.create;
                                                     varQueryCirculo[length(varQueryCirculo)-1]                           := TmpCirculo;
                                                     varQueryLayer[length(varQueryLayer)-1]                               := TmpCirculoQueryLayer;
                                                     tmpPontoQuery                                                        := CoPoint.Create;
                                                     tmpPontoQuery.X                                                      := varTmpQueryPontoX;
                                                     tmpPontoQuery.Y                                                      := varTmpQueryPontoY;
                                                     varQueryPontoOrigem[length(varQueryPontoOrigem)-1]                   := tmpPontoQuery;
                                                     //****************************************************************************

                                                     //verifico se foi selecionado, se foi adiciono na seleção;
                                                     if TmpCirculoSelect then
                                                        begin
                                                            SetLength(vetSelectQueryCirculo,length(vetSelectQueryCirculo)+1);
                                                            vetSelectQueryCirculo[Length(vetSelectQueryCirculo)-1] := IntToStr(length(vetSelectQueryCirculo)-1);
                                                        end;
                                                     //**************************************

                                               end;//if varStr = '[INILINHA]';

                                        end;//while not (varStr = '[FIMLINHA]')

                              end;//if varStr = '[INICIOLINHA]'

     //*************************************************************************************************
     //*************************************************************************************************
     //*************************************************************************************************


                           //*********************************************
                           //verifico se é o fim das opções do primeiro texto
                           If varStr = '[FIMGRAFICOS]' then
                              varFimCadeia := true;
                           //***********

                      //*********************************************
                      end;//while not varFimCadeia = true
          //**********************************************************************
            end;//if varStr = '[GRAFICOS]'
         //***********************************************************************


         //**********************************************************************
         //**********************************************************************
         //***          FIM GRAFICOS!!!!!!!!!!!!
         //**********************************************************************
         //**********************************************************************

         //3º carrego as camadas
         if varStr = '[CAMADASMAPA]' then
            begin
                 varFimCadeia := false;
                 while not varFimCadeia = true do
                      begin
                           Readln(F,varStr);
                           varStr   := DecriptaArquivoSalvo(varStr);
                           {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                           num      := pos(' ',varStr);
                           OptStr   := copy(varStr,1,num-1);
                           ValorStr := copy(varStr,num+1,length(varStr)-num);
                           //********************************

                           if varStr = '[LAYER]' Then
                              begin
                                   grpRend := nil;
                                   grpRend := CoGroupRenderer.Create;
                                   //********************************

                                   while not (varStr = '[FIMLAYER]') do
                                         begin
                                                 Readln(F,varStr);
                                                 varStr   := DecriptaArquivoSalvo(varStr);
                                                 {serve para ler as opçoes; OptStr = opçao ; ValorStr = valor ;}
                                                 num      := pos(' ',varStr);
                                                 OptStr   := copy(varStr,1,num-1);
                                                 ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                 //********************************

                                                 //********************************
                                                 if optStr = 'TIPOLAYER' then
                                                      begin
                                                          if ValorStr = 'SDE' then
                                                             begin
                                                                //determino ao sistema que o sde esta sendo usado
                                                                VarSDEativo := true;

                                                                while not (optStr = 'CAMINHO') do
                                                                    begin
                                                                        Readln(F,varStr);
                                                                        varStr := DecriptaArquivoSalvo(varStr);
                                                                        //***********
                                                                        num      := pos(' ',varStr);
                                                                        OptStr   := copy(varStr,1,num-1);
                                                                        ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                                        //!***********
                                                                        if optStr = 'SERVIDORSDE' then
                                                                           tmpSdeServidor := valorStr;
                                                                        if optStr = 'BANCOSDE' then
                                                                           tmpSdeBanco := valorStr;
                                                                        if optStr = 'SERVICOSDE' then
                                                                           tmpSdeServico := valorStr;
                                                                        if optStr = 'USUARIOSDE' then
                                                                           tmpSdeLogin := valorStr;
                                                                        if optStr = 'SENHASDE' then
                                                                           tmpSdeSenha := valorStr;
                                                                        //**************************
                                                                        //**************************
                                                                        //descobrindo qual é a conexao SDE usada
                                                                        for isde:=0 to length(varSDEusuario)-1 do
                                                                            begin
                                                                                if uppercase(Trim(varSDEusuario[isde])) = upperCase(Trim(tmpSdeLogin)) then
                                                                                   begin
                                                                                       posicaoConexao := isde;
                                                                                       break;
                                                                                   end;
                                                                            end;

                                                                        //***********************************
                                                                        IF optStr = 'CAMINHO' then
                                                                           begin
                                                                               try
                                                                                  varArquivoExiste := true;
                                                                                  //********
                                                                                  CamadaEhTIF      := false;
                                                                                  //******
                                                                                  lyr            := CoMapLayer.Create;
                                                                                  Gdtset         := SDECon[posicaoConexao].FindGeoDataSet(ValorStr);
                                                                                  lyr.GeoDataSet := SDECon[posicaoConexao].FindGeoDataSet(ValorStr);
                                                                                  //verificando se é um arquivo Z
                                                                                  if Gdtset.HasZ then
                                                                                     lyr.Tag := ValorStr+ '|SDEZ' +'?SERV?'+tmpSdeServidor+'?BANCO?'+tmpSdeBanco+'?SERVICO?'+tmpSdeServico+'?LOGIN?'+tmpSdeLogin+'?SENHA?'+tmpSdeSenha
                                                                                  else
                                                                                     lyr.Tag := ValorStr+'|SDE' + '?SERV?'+tmpSdeServidor+'?BANCO?'+tmpSdeBanco+'?SERVICO?'+tmpSdeServico+'?LOGIN?'+tmpSdeLogin+'?SENHA?'+tmpSdeSenha;

                                                                                   //adiciono a criança no vetor!
                                                                                   setLength(vet_taglayer,length(vet_taglayer)+1);
                                                                                   setLength(vet_SelectedFeatures,length(vet_SelectedFeatures)+2);
                                                                                   setLength(AltSelect,length(AltSelect)+2);
                                                                                   //*****
                                                                                   vet_taglayer[length(vet_taglayer)-1] := lyr.tag;
                                                                                   //***************************
                                                                                   Map1.Layers.Add(lyr); //adicionado layer
                                                                                   //legenda;}
                                                                                   //adicionarSDE(valorStr,posicaoConexao);
                                                                                   //****************
                                                                                   AdicionarMeiofioMap2;
                                                                               except
                                                                                   ListaError.Add('***O Tema SDE: '+valorStr+' Não Pode Ser Adicionado. Não Foi Encontrado o Tema Com o Nome Especificado Ou O Servidor Se Encontra Indisponível No Momento, Tente Novamente Mais Tarde. Caso o Problema Persista, Verifique Sua Conexão de Rede '+'Ou Entre Em Contato Com o Administrador do Projeto.');
                                                                                   ListaError.Add('     ');
                                                                                   varArquivoExiste := false;
                                                                               end;
                                                                              //***********
                                                                           end;
                                                                        //********
                                                                    end;
                                                                 //********
                                                             end
                                                             else
                                                                 begin
                                                                    if ValorStr = 'DIRECTCONNECT' then
                                                                       begin
                                                                          //determino ao sistema que o sde esta sendo usado
                                                                          VarDICOativo := true;

                                                                          while not (optStr = 'CAMINHO') do
                                                                               begin
                                                                                    Readln(F,varStr);
                                                                                    varStr := DecriptaArquivoSalvo(varStr);
                                                                                    //***********
                                                                                    num      := pos(' ',varStr);
                                                                                    OptStr   := copy(varStr,1,num-1);
                                                                                    ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                                                    //!***********
                                                                                    if optStr = 'BANCODICO' then
                                                                                       tmpSdeBanco := valorStr;
                                                                                    if optStr = 'USUARIODICO' then
                                                                                       tmpSdeLogin := valorStr;
                                                                                    if optStr = 'SENHADICO' then
                                                                                       tmpSdeSenha := valorStr;
                                                                                    //**************************
                                                                                    //**************************
                                                                                    //**************************
                                                                                    //descobrindo qual é a conexao SDE usada
                                                                                    for isde:=0 to length(varSDEusuario)-1 do
                                                                                         begin
                                                                                            if uppercase(Trim(varSDEusuario[isde])) = upperCase(Trim(tmpSdeLogin)) then
                                                                                               begin
                                                                                                   posicaoConexao := isde;
                                                                                                   break;
                                                                                               end;
                                                                                         end;
                                                                                    //***********************************************
                                                                                    IF optStr = 'CAMINHO' then
                                                                                       begin
                                                                                           try
                                                                                              varArquivoExiste := true;
                                                                                              //********
                                                                                              CamadaEhTIF      := false;
                                                                                              //********
                                                                                              lyr            := CoMapLayer.Create;
                                                                                              Gdtset         := DicoCon[posicaoconexao].FindGeoDataSet(ValorStr);
                                                                                              lyr.GeoDataSet := DicoCon[posicaoconexao].FindGeoDataSet(ValorStr);
                                                                                              //verificando se é um arquivo Z
                                                                                              if Gdtset.HasZ then
                                                                                                 lyr.Tag := ValorStr+ '|DICOZ' + '?BANCO?'+ tmpSDEBanco + '?LOGIN?'+tmpSDELogin+'?SENHA?'+tmpSDEsenha
                                                                                              else
                                                                                                 lyr.Tag := ValorStr+'|DICO' + '?BANCO?'+ tmpSDEBanco + '?LOGIN?'+tmpSDELogin+'?SENHA?'+tmpSDEsenha;
                                                                                              //***********************************************
                                                                                              setLength(vet_taglayer,length(vet_taglayer)+1);
                                                                                              setLength(vet_SelectedFeatures,length(vet_SelectedFeatures)+1);
                                                                                              setLength(AltSelect,length(AltSelect)+1);
                                                                                              vet_taglayer[length(vet_taglayer)-1] := lyr.tag;
                                                                                              //***********************************************
                                                                                              Map1.Layers.Add(lyr); //adicionado layer
                                                                                              //legenda;
                                                                                              AdicionarMeiofioMap2;
                                                                                           except
                                                                                              ListaError.Add('***O Tema Direct Connect: '+valorStr+' Não Pode Ser Adicionado. Não Foi Encontrado o Tema Com o Nome Especificado Ou O Servidor Se Encontra Indisponível No Momento, Tente Novamente Mais Tarde. Caso o Problema Persista, Verifique Sua Conexão de Rede '+'Ou Entre Em Contato Com o Administrador do Projeto.');
                                                                                              ListaError.Add('     ');
                                                                                              varArquivoExiste := false;
                                                                                           end;
                                                                                       end;
                                                                               end;
                                                                          //************************************
                                                                       end
                                                                          else
                                                                             begin
                                                                                 if (ValorStr = 'FILE') or (ValorStr = 'FILETIF')  then
                                                                                    begin
                                                                                        //*********************************
                                                                                        if valorStr = 'FILETIF' Then
                                                                                           CamadaEhTIF := true
                                                                                        else
                                                                                           CamadaEhTIF := false;
                                                                                        //*********************************

                                                                                        while not (optStr = 'CAMINHO') do
                                                                                              begin
                                                                                                    Readln(F,varStr);
                                                                                                    varStr := DecriptaArquivoSalvo(varStr);
                                                                                                    //************************
                                                                                                    num      := pos(' ',varStr);
                                                                                                    OptStr   := copy(varStr,1,num-1);
                                                                                                    ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                                                                    //************************

                                                                                                    if optStr = 'CAD' then
                                                                                                       begin
                                                                                                           if valorStr = 'NAO' then
                                                                                                              varUsaCAD := false;
                                                                                                           if valorStr = 'TEXTO' then
                                                                                                              begin
                                                                                                                 varUsaCad := true;
                                                                                                                 TipoCAD   := '[CadText]';
                                                                                                                 CompCAD   := 'TEXTO';
                                                                                                              end;
                                                                                                           if valorStr = 'LINHA' then
                                                                                                              begin
                                                                                                                 varUsaCad := true;
                                                                                                                 TipoCAD   := '[CadLine]';
                                                                                                                 CompCAD   := 'LINHA';
                                                                                                              end;
                                                                                                           if valorStr = 'POLI' then
                                                                                                              begin
                                                                                                                 varUsaCad := true;
                                                                                                                 TipoCAD   := '[CadArea]';
                                                                                                                 CompCAD   := 'POLI';
                                                                                                              end;
                                                                                                           if valorStr = 'PONTO' then
                                                                                                              begin
                                                                                                                 varUsaCad := true;
                                                                                                                 TipoCAD   := '[CadPoint]';
                                                                                                                 CompCAD   := 'PONTO';
                                                                                                              end;
                                                                                                       end;
                                                                                                    //*************************

                                                                                                    If optStr = 'ECW' then
                                                                                                       if valorStr = 'SIM' then
                                                                                                          varUsaECW := true
                                                                                                       else
                                                                                                          varUsaECW := false;
                                                                                                    //*************************

                                                                                                    If optStr = 'CAMINHO' then
                                                                                                       begin

                                                                                                           if FileExists(valorStr) then
                                                                                                               begin
                                                                                                                     varArquivoExiste  := true;
                                                                                                                     //criando conexão
                                                                                                                     dc := nil;
                                                                                                                     dc := CoDataConnection.Create;
                                                                                                                     //Pegando caminho e nome do arquivo
                                                                                                                     caminho  := ExtractFilePath(ValorStr);
                                                                                                                     arquivo  := ExtractFileName(ValorStr);
                                                                                                                     extensao := ExtractFileExt(ValorStr);
                                                                                                                     //gambiarra para separar a extensao e o nome corretamente para
                                                                                                                     //o mapobjects
                                                                                                                     extensao := copy(extensao,2,length(extensao)-1);
                                                                                                                     arquivo  := copy(arquivo,1,(length(arquivo)-length(extensao))-1);

                                                                                                                     //Adicionando arquivos do tipo shape *******************************************
                                                                                                                     If UpperCase(extensao) = 'SHP' then
                                                                                                                        begin
                                                                                                                            //Screen.Cursor := crHourGlass;
                                                                                                                            //dando o caminho p/ o database
                                                                                                                            dc.Database := caminho;
                                                                                                                            // conectando
                                                                                                                            dc.connect;
                                                                                                                            //se nao conectar...sai
                                                                                                                            if not dc.Connect then exit;
                                                                                                                            lyr            := CoMapLayer.create;
                                                                                                                            lyr.GeoDataset := dc.FindGeoDataSet(arquivo); //pegando no nome do arquivo
                                                                                                                            Gdtset           := dc.FindGeoDataSet(arquivo);
                                                                                                                            //verificando se é um arquivo Z
                                                                                                                            if Gdtset.HasZ then
                                                                                                                                lyr.Tag := valorStr + '|Z'
                                                                                                                            else
                                                                                                                                lyr.Tag := ValorStr;
                                                                                                                            //configurar o array de seleçao de shapes
                                                                                                                            ConfigurarVetorNovoTema(lyr.tag);
                                                                                                                            //***
                                                                                                                            Map1.Layers.Add(Lyr); //adicionado layer
                                                                                                                            //legenda;
                                                                                                                            AdicionarMeiofioMap2;
                                                                                                                        end;

                                                                                                                     //Adicionando arquivos do tipo CAD *********************************************
                                                                                                                     If (uppercase(extensao) = 'DWG') or (uppercase(extensao) = 'DXF') or (uppercase(extensao) = 'DGN') then
                                                                                                                        begin
                                                                                                                            dc.Database := TipoCAD + caminho; //dando o caminho p/ o database
                                                                                                                            dc.connect;// conectando

                                                                                                                            If not dc.connect then exit;
                                                                                                                            lyr     := CoMapLayer.create;
                                                                                                                            lyr.GeoDataset := dc.FindGeoDataSet(arquivo + '.' + extensao);
                                                                                                                            lyr.Tag := ValorStr + '|' + CompCAD;

                                                                                                                            //configurar o array de seleçao de shapes
                                                                                                                            ConfigurarVetorNovoTema(lyr.tag);

                                                                                                                            Map1.Layers.Add(Lyr);

                                                                                                                            AdicionarMeiofioMap2;

                                                                                                                            if CompCAD = 'TEXTO' then
                                                                                                                               begin
                                                                                                                                   //tranformando as linhas em textos de verdade
                                                                                                                                   orenderer := CoLabelRenderer.Create;
                                                                            
                                                                                                                                   lyr.Renderer := oRenderer;

                                                                                                                                   //****************
                                                                                                                                   Ft      := TFont.Create;
                                                                                                                                   Ft.Name := 'Arial';
                                                                                                                                   //*****************

                                                                                                                                   With oRenderer do
                                                                                                                                     begin
                                                                                                                                       SymbolCount      := 2;
                                                                                                                                       AllowDuplicates  := true;
                                                                                                                                       DrawBackground   := false;
                                                                                                                                       SplinedText      := true;
                                                                                                                                       Symbol[0].Font   := IFontDisp(IDispatch(FontToOleFont(Ft)));
                                                                                                                                       Symbol[0].color  := moBlack;
                                                                                                                                       //aki define o tamanho da label
                                                                                                                                       Symbol[0].Height := 6;
                                                                                                                                       Field := 'text';
                                                                                                                                       ft.Free;
                                                                                                                                     end;

                                                                                                                               end;
                                                                                                                        end;

                                                                                                                     //******* Adicionando arquivos do tipo imagem ******************************************
                                                                                                                     If (Uppercase(extensao) = 'TIF') then
                                                                                                                        begin
                                                                                                                             //Screen.Cursor := crHourGlass;
                                                                                                                             imagem        := CoImageLayer.create;
                                                                                                                             imagem.file_  := valorStr;
                                                                                                                             imagem.Name   := Arquivo;
                                                                                                                             imagem.Tag    := ValorStr;
                                                                                                                             //configurar o array de seleçao de shapes
                                                                                                                             //ConfigurarVetorNovoTema(imagem.tag);
                                                                                                                             map1.Layers.Add(imagem);
                                                                                                                             //legenda;
                                                                                                                             AdicionarMeiofioMap2;
                                                                                                                             //screen.Cursor := crDefault;
                                                                                                                        end;

                                                                                                                     //******* Adicionando arquivos do tipo ECW ******************************************
                                                                                                                     If (uppercase(extensao) = 'ECW') then
                                                                                                                        begin
                                                                                                                             posic := length(fotosECW);
                                                                                                                             if posic = 0 then num := 1 else num := posic;
                                                                                                                             varECW := TNCSRenderer.Create(self);
                                                                                                                             SetLength(FotosECW,posic+2); //caminho das fotos
                                                                                                                             SetLength(lECWOpen,posic+2);
                                                                                                                             SetLength(ECWView,posic+2);

                                                                                                                             with varECW do
                                                                                                                                begin
                                                                                                                                   Name            := 'NCSECW'+inttostr(num);
                                                                                                                                   lECWOpen[num]   := true;
                                                                                                                                   tag             := num; //tag fica com a possição do vetor
                                                                                                                                   cECWpath        := ValorStr;
                                                                                                                                   ECWView[num]    := true;
                                                                                                                                   fotosECW[num]   := cECWpath;
                                                                                                                                end;

                                                                                                                             //shape da farsa
                                                                                                                             dc.Database        := ExtractFilePath(application.ExeName)+'profiles\mf\'; //dando o caminho p/ o database
                                                                                                                             dc.connect;// conectando
                                                                                                                             if not dc.Connect then exit;//se nao conectar...sai
                                                                                                                             lyr                := CoMapLayer.create;
                                                                                                                             lyr.GeoDataset     := dc.FindGeoDataSet('tmp'); //pegando no nome do arquivo
                                                                                                                             Gdtset             := dc.FindGeoDataSet(arquivo);
                                                                                                                             Map1.Layers.Add(Lyr); //adicionado layer
                                                                                                                             lyr.Name           := arquivo;
                                                                                                                             lyr.Symbol.Color   := moGray;
                                                                                                                             FotoNum            := FormatFloat('00',num);
                                                                                                                             lyr.Tag            := cECWpath + '|ECW'+ fotoNum;
                                                                                                                             //legenda;
                                                                                                                             AdicionarMeiofioMap2;
                                                                                                                             TemECWAdicionado := true;
                                                                                                                        end;

                                                                                                               end//if FileExists(valorStr) then
                                                                                                               else
                                                                                                                   begin
                                                                                                                        varArquivoExiste := false;
                                                                                                                        ListaError.Add('***O Tema '+ValorStr+' Não Pode Ser Adicionado. Arquivo Não Encontrado');
                                                                                                                        ListaError.Add('     ');
                                                                                                                   end;

                                                                                                       end;//fim if optStr = caminho

                                                                                              end;//fim while not (optstr = caminho)

                                                                                    end;//fim file

                                                                             end;//fim else do if tipolayer=sde
                                                                     //****************
                                                                 end;
                                                          //*************
                                                      end;//fim if TIPOLAYER

                                                  //************************************
                                                 //agora a layer esta adicionada no mapa
                                                 //*************************************

                                                 //***** tento efetuar o join! *********
                                                 try
                                                    tmpTesteJoin := RecriarJoins;
                                                 except

                                                 end;
                                                 //*************************************
                                                 if tmpTesteJoin <> '' then
                                                    begin
                                                       ListaErrorJoin.Add(' ');
                                                       ListaErrorJoin.add(tmpTesteJoin);
                                                    end;
                                                 //*************************************

                                                 if (varArquivoExiste) and (CamadaEhTIF = false) then
                                                    begin
                                                         //******************************
                                                         if optStr = 'NOMELAYER' then
                                                            lyr.Name := ValorStr;

                                                         //******************************
                                                         if optStr = 'ATIVO' then
                                                            if valorStr = 'SIM' then
                                                               begin
                                                                   TemaAtivoTag :=lyr.tag;
                                                               end;

                                                         //******************************
                                                         if optStr = 'VISIVEL' then
                                                            if valorStr = 'SIM' then
                                                               begin
                                                                   SetLength(varVetCamadasVisiveis,Length(varVetCamadasVisiveis)+1);
                                                                   varVetCamadasVisiveis[Length(varVetCamadasVisiveis)-1] := True;
                                                               end
                                                            else
                                                               begin
                                                                   SetLength(varVetCamadasVisiveis,Length(varVetCamadasVisiveis)+1);
                                                                   varVetCamadasVisiveis[Length(varVetCamadasVisiveis)-1] := false;
                                                               end;

                                                         //******************************
                                                         if optStr = 'EXPANDIDA' then
                                                            if valorStr = 'SIM' then
                                                               begin
                                                                   SetLength(varVetCamadaExpandida,Length(varVetCamadaExpandida)+1);
                                                                   varVetCamadaExpandida[Length(varVetCamadaExpandida)-1] := True;
                                                               end
                                                            else
                                                               begin
                                                                   SetLength(varVetCamadaExpandida,Length(varVetCamadaExpandida)+1);
                                                                   varVetCamadaExpandida[Length(varVetCamadaExpandida)-1] := false;
                                                               end;
                                                         //**************************

                                                         //******************************
                                                         if optStr = 'GROUPRENDERER' then
                                                            if valorStr = 'SIM' then
                                                               varUsaGrpRend := true
                                                            else
                                                               varUsaGrpRend := false;

                                                         //******************************
                                                         if optStr = 'USIMBOLO' then  //single symbol;
                                                            if valorStr = 'SIM' then
                                                               begin
                                                                  while not (optStr = 'USIMSTYLE') do
                                                                      begin
                                                                          Readln(F,varStr);
                                                                          varStr := DecriptaArquivoSalvo(varStr);
                                                                          //***********
                                                                          num      := pos(' ',varStr);
                                                                          OptStr   := copy(varStr,1,num-1);
                                                                          ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                                          //***********
                                                                          if optStr = 'USIMCOR' then
                                                                             lyr.Symbol.Color := StringToColor(valorStr);
                                                                          //***********
                                                                          if optStr = 'USIMOUT' then
                                                                             begin
                                                                                if lyr.shapeType <> 22 then
                                                                                   lyr.Symbol.OutlineColor := StringToColor(valorStr);
                                                                             end;
                                                                          //***********
                                                                          if optStr = 'USIMSIZE' then
                                                                             lyr.Symbol.Size := StrToInt(valorStr);
                                                                          //***********
                                                                          if optStr = 'USIMTYPE' then
                                                                             lyr.Symbol.SymbolType := strToInt(valorStr);
                                                                          //***********
                                                                          if optStr = 'USIMSTYLE' then
                                                                             lyr.Symbol.Style := StrToInt(valorStr);
                                                                          //***********
                                                                      end;
                                                               end;

                                                         //*****************************************************
                                                         if optStr = 'UVALOR' then   //unique values
                                                            if valorStr = 'SIM' then
                                                               begin

                                                                   while not (optStr = 'UVVALORCOUNT') do
                                                                         begin
                                                                             Readln(F,varStr);
                                                                             varStr := DecriptaArquivoSalvo(varStr);
                                                                             //*************************
                                                                             num      := pos(' ',varStr);
                                                                             OptStr   := copy(varStr,1,num-1);
                                                                             ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                                             //*************************
                                                                             if optStr = 'UVCAMPO' then
                                                                                vmrCampo := valorStr;
                                                                             //*************************
                                                                             if optStr = 'UVOUTLINE' then
                                                                                if valorStr = 'SIM' then
                                                                                   vmrUsaOutline := true
                                                                                else
                                                                                   vmrUsaOutline := false;
                                                                             //*************************
                                                                             if optStr = 'UVESPLINE' then
                                                                                vmrEspLinha := StrToInt(valorStr);
                                                                             //*************************
                                                                             if optStr = 'UVCORLINE' then
                                                                                vmrCorLinha := ValorStr;
                                                                             //*************************
                                                                             if optStr = 'UVTIPOPREENCH' then
                                                                                vmrTipoPreench := strToInt(ValorStr);
                                                                             //*************************
                                                                             if optStr = 'UVVALORCOUNT' then
                                                                                VmrCount := StrToInt(valorStr);
                                                                             //*************************
                                                                         end;

                                                                   vmr             := CoValueMapRenderer.Create;
                                                                   recs            := lyr.Records;
                                                                   flds            := recs.Fields;
                                                                   fld             := flds.Item(vmrCampo);

                                                                   strUniqueValues := CoStrings.create;
                                                                   recs.MoveFirst;

                                                                   While Not recs.EOF do
                                                                        begin
                                                                           strUniqueValues.Add(fld.value);
                                                                           recs.MoveNext;
                                                                         end;

                                                                   strUniqueValues.Sort(2);

                                                                   //verifica o tipo do shape,para carregar o simbolo correto do maprenderer;
                                                                   If (lyr.shapeType = moShapeTypeMultipoint) or (lyr.shapeType = moShapeTypePoint) then
                                                                       symInt := 0
                                                                   Else
                                                                       symInt := lyr.shapeType - 21;
                                                                   //***********************************

                                                                   vmr.SymbolType          := symInt;
                                                                   vmr.Field               := vmrCampo;
                                                                   varTrue                 := true;
                                                                   vmr.UseDefault          := varTrue;
                                                                   vmr.ValueCount          := strUniqueValues.Count;
                                                                   vmr.DefaultSymbol.Size  := 1;
                                                                   vmr.DefaultSymbol.Style := lyr.Symbol.style;

                                                                   //************
                                                                   Readln(F,varStr);
                                                                   varStr := DecriptaArquivoSalvo(varStr);
                                                                   //***********

                                                                   if varStr = '[UVVALORESCOR]' then
                                                                      begin
                                                                           vmrCount := 0;
                                                                           while not (varStr = '[FIMUVVALORESCOR]') do
                                                                                 begin
                                                                                     Readln(F,varStr);
                                                                                     varStr := DecriptaArquivoSalvo(varStr);
                                                                                     //*************************
                                                                                     if (varStr <> '[FIMUVVALORESCOR]') and (varStr <> '[UVVALORESCOR]') then
                                                                                        begin
                                                                                             if vmrUsaOutline = true then
                                                                                                 begin
                                                                                                     vmr.value[vmrCount]               := strUniqueValues.Item(vmrCount);
                                                                                                     vmr.Symbol[vmrCount].Color        := StringToColor(varStr);
                                                                                                     vmr.Symbol[vmrCount].Outline      := True;
                                                                                                     vmr.Symbol[vmrCount].Size         := vmrEspLinha;
                                                                                                     vmr.Symbol[VmrCount].Style        := vmrTipoPreench;
                                                                                                     vmr.Symbol[vmrCount].OutlineColor := StringToColor(vmrCorLinha);
                                                                                                 end
                                                                                                    else
                                                                                                       begin
                                                                                                           vmr.Symbol[VmrCount].Style   := vmrTipoPreench;
                                                                                                           vmr.value[vmrCount]          := strUniqueValues.Item(vmrCount);
                                                                                                           vmr.Symbol[vmrCount].Color   := StringToColor(varStr);
                                                                                                           vmr.Symbol[vmrCount].Outline := false;
                                                                                                       end;
                                                                                             inc(vmrCount);
                                                                                        end;
                                                                                 end;
                                                                      end;
                                                                   //*******
                                                                   if varUsaGrpRend then
                                                                      grpRend.Add(vmr)
                                                                   else
                                                                      lyr.Renderer := vmr;
                                                               end;
                                                         //*************** FIM UNIQUE VALUES ***************

                                                         //************** ESCALA DE CORES  *****************
                                                         if optStr = 'ESCALACORES' Then
                                                            begin
                                                                if valorStr = 'SIM' then
                                                                    begin
                                                                         cbr       := CoClassBreaksRenderer.Create;
                                                                         flds      := nil;
                                                                         recs      := nil;
                                                                         recs      := lyr.Records;

                                                                         while not (optStr = 'ECESPESSURALINHA') do
                                                                               begin
                                                                                   Readln(F,varStr);
                                                                                   varStr := DecriptaArquivoSalvo(varStr);
                                                                                   //***********
                                                                                   num      := pos(' ',varStr);
                                                                                   OptStr   := copy(varStr,1,num-1);
                                                                                   ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                                                   //***********
                                                                                   if optStr = 'ECCAMPO' then
                                                                                      CbrCAMPO := valorStr;
                                                                                   //***********
                                                                                   if optStr = 'ECNUM' then
                                                                                      CbrNumClasses := strToInt(valorStr);
                                                                                   //***********
                                                                                   if optStr = 'ECUSAOUTLINE' then
                                                                                      if valorStr = 'SIM' then
                                                                                         cbrUsaOutline := true
                                                                                      else
                                                                                         cbrUsaOutline := false;
                                                                                   //***************************
                                                                                   if optStr = 'ECCORLINHA' then
                                                                                      cbrCorLinha := valorStr;
                                                                                   //***************************
                                                                                   if optStr = 'ECTIPOPREENCH' then
                                                                                      cbrTipoPreench := StrToInt(valorStr);
                                                                                   //****************************
                                                                                   if optStr = 'ECESPESSURALINHA' then
                                                                                      cbrEspessuraLinha := strToInt(valorStr);
                                                                                   //***************************
                                                                               end;

                                                                         stats          := recs.CalculateStatistics(CbrCAMPO);
                                                                         cbr.Field      := CbrCAMPO;
                                                                         numBreaks      := CbrNumClasses;
                                                                         cbr.BreakCount := numBreaks;
                                                                         range          := stats.Max - stats.Min;

                                                                         //************************
                                                                         If lyr.shapeType = moShapeTypeMultipoint Then
                                                                            symInt := 0
                                                                         Else
                                                                            symInt := lyr.shapeType - 21;
                                                                         //******
                                                                         cbr.SymbolType := symInt;
                                                                         //************************

                                                                         Readln(F,varStr);
                                                                         varStr := DecriptaArquivoSalvo(varStr);

                                                                         if varStr = '[CBRCORES]' Then
                                                                            begin
                                                                               CbrCount := 0;
                                                                               while not (varStr = '[FIMCBRCORES]') do
                                                                                  begin
                                                                                      Readln(F,varStr);
                                                                                      varStr := DecriptaArquivoSalvo(varStr);
                                                                                      //***********
                                                                                      if (varStr <> '[FIMCBRCORES]') and (varStr <> '[CBRCORES]') then
                                                                                         begin
                                                                                                 If cbr.SymbolType = moFillSymbol Then
                                                                                                      begin
                                                                                                           cbr.Break[cbrCount] := stats.Min + ((range / (CbrNumClasses)) * (CbrCount + 1));
                                                                                                           if cbrUsaOutline then
                                                                                                              begin
                                                                                                                  cbr.Symbol[cbrCount].OutlineColor := stringtocolor(cbrCorLinha);
                                                                                                                  cbr.Symbol[cbrCount].Size         := cbrEspessuraLinha;
                                                                                                                  cbr.Symbol[cbrCount].Outline      := True;
                                                                                                                  cbr.Symbol[cbrCount].Style        := cbrTipoPreench;
                                                                                                                  cbr.Symbol[cbrCount].Color        := stringtocolor(varStr);
                                                                                                              end
                                                                                                              else
                                                                                                                 begin
                                                                                                                     cbr.Symbol[cbrCount].Style     := cbrTipoPreench;
                                                                                                                     cbr.Symbol[cbrCount].Color     := stringtocolor(varStr);
                                                                                                                     cbr.Symbol[cbrCount].Outline   := false;
                                                                                                                 end;
                                                                                                           inc(cbrCount);
                                                                                                      end;
                                                                                         end;
                                                                                  end;//fim [cbrcores]
                                                                            end;
                                                                         //*******************
                                                                         if varUsaGrpRend then
                                                                            grpRend.Add(cbr)
                                                                         else
                                                                            lyr.Renderer := cbr;
                                                                         //*******************
                                                                    end;
                                                            end;
                                                         //************** FIM ESCALA DE CORES  *****************

                                                         //************** LABEL PADRAO         *****************
                                                         if optStr = 'LPADRAO' Then
                                                            if valorStr = 'SIM' then
                                                               begin
                                                                   while not (optStr = 'LPROT') do
                                                                       begin
                                                                           Readln(F,varStr);
                                                                           varStr := DecriptaArquivoSalvo(varStr);
                                                                           //***********
                                                                           num      := pos(' ',varStr);
                                                                           OptStr   := copy(varStr,1,num-1);
                                                                           ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                                           //***********
                                                                           if optStr = 'LPCAMPO' then
                                                                              LPCAMPO := valorStr;
                                                                           //***********
                                                                           if optStr = 'LPALINH' then
                                                                              LPALINH := strToInt(valorStr);
                                                                           //***********
                                                                           if optStr = 'LPALINV' then
                                                                              LPALINV := strToInt(valorStr);
                                                                           //***********
                                                                           if optStr = 'LPCAMPOX' then
                                                                              LPCAMPOX := valorStr;
                                                                           //***********
                                                                           if optStr = 'LPCAMPOY' then
                                                                              LPCAMPOY := valorStr;
                                                                           //***********
                                                                           if optStr = 'LPPCARAT' then
                                                                              if valorStr = 'SIM' then
                                                                                 LPPCARAT := true
                                                                              else
                                                                                 LPPCARAT := false;
                                                                           //**********************
                                                                           if optStr = 'LPPDUPLI' then
                                                                              if valorStr = 'SIM' then
                                                                                 LPPDUPLI := true
                                                                              else
                                                                                 LPPDUPLI := false;
                                                                           //**********************
                                                                           if optStr = 'LPSTEXT' then
                                                                              if valorStr = 'SIM' then
                                                                                 LPSTEXT := true
                                                                              else
                                                                                 LPSTEXT := false;
                                                                           //**********************
                                                                           if optStr = 'LPFFLIP' then
                                                                              if valorStr = 'SIM' then
                                                                                 LPFFLIP := true
                                                                              else
                                                                                 LPFFLIP := false;
                                                                           //**********************
                                                                           if optStr = 'LPFCOR' then
                                                                              LPFCOR := valorStr;
                                                                           //**********************
                                                                           if optStr = 'LPFTAM' then
                                                                              LPFTAM := strToInt(valorStr);
                                                                           //**********************
                                                                           if optStr = 'LPFONTE' then
                                                                              LPFONTE := valorStr;
                                                                           //**********************
                                                                           if optStr = 'LPROT' then
                                                                              LPROT  := strToInt(valorStr);
                                                                           //**********************
                                                                       end;

                                                                   lr       := CoLabelRenderer.Create;
                                                                   lr.Field := LPCAMPO;

                                                                   With lr.Symbol[0] do
                                                                        begin
                                                                            //combo horizontal
                                                                            if LPAlinH = 0 then //esquerda
                                                                               HorizontalAlignment := moAlignLeft;
                                                                            if LPAlinH = 1 then //centro
                                                                               HorizontalAlignment := moAlignCenter;
                                                                            if LPAlinH = 2 then //direita
                                                                               HorizontalAlignment := moAlignRight;
                                                                            //combo vertical
                                                                            if LPAlinV = 0 then //topo
                                                                               VerticalAlignment := moAlignTop;
                                                                            if LPAlinV = 1 then //Centro
                                                                               VerticalAlignment := moAlignCenter;
                                                                            if LPAlinV = 2 then //fundo
                                                                               VerticalAlignment := moAlignBottom;
                                                                        end;

                                                                   //CARACTERISTICAS
                                                                   if LPPcarat then
                                                                      lr.DrawBackground := true
                                                                   else
                                                                      lr.DrawBackground  := false;
                                                                   //****
                                                                   if LPPdupli then
                                                                      lr.AllowDuplicates := true
                                                                   else
                                                                      lr.AllowDuplicates := false;
                                                                   //****
                                                                   if LPStext then
                                                                      lr.SplinedText := true
                                                                   else
                                                                      lr.SplinedText := false;
                                                                   //****
                                                                   if LPFFLIP then
                                                                      lr.Flip := true
                                                                   else
                                                                      lr.Flip := false;
                                                                   //****
                                                                   lr.Symbol[0].Rotation := LPRot;
                                                                   //******fonte
                                                                   ft       := nil;
                                                                   ft       := TFont.create;
                                                                   ft.Size  := LPFTAM;
                                                                   ft.Name  := LPFONTE;
                                                                   ft.Color := StringToColor(LPFCOR);
                                                                   lr.Symbol[0].Color := StringToColor(LPFCOR);
                                                                   lr.Symbol[0].Font  := IFontDisp(IDispatch(FontToOleFont(ft)));

                                                                   if  varUsaGrpRend = false then
                                                                      lyr.Renderer := lr;
                                                                   //************************

                                                               end;
                                                         //************** FIM LABEL PADRAO     *****************

                                                         //************** ADV LABEL            *****************
                                                         if optStr = 'LAVANCADA' Then
                                                            if valorStr = 'SIM' then
                                                               begin
                                                                   while not (optStr = 'LAPOSICAOLBL') do
                                                                       begin
                                                                           Readln(F,varStr);
                                                                           varStr := DecriptaArquivoSalvo(varStr);
                                                                           //***********
                                                                           num      := pos(' ',varStr);
                                                                           OptStr   := copy(varStr,1,num-1);
                                                                           ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                                           //***********
                                                                           if optStr = 'LACAMPO' then
                                                                              LACAMPO := valorStr;
                                                                           //***********
                                                                           if optStr = 'LAPCARAT' then
                                                                              if valorStr = 'SIM' then
                                                                                 LAPCARAT := true
                                                                              else
                                                                                 LAPCARAT := false;
                                                                           //***********
                                                                           if optStr = 'LAPDUPLI' then
                                                                              if valorStr = 'SIM' then
                                                                                 LAPDUPLI := true
                                                                              else
                                                                                 LAPDUPLI := false;
                                                                           //************
                                                                           if optStr = 'LALMASC' then
                                                                              if valorStr = 'SIM' then
                                                                                 LALMASC := true
                                                                              else
                                                                                 LALMASC := false;
                                                                           //************
                                                                           if optStr = 'LACOR' then
                                                                              LACOR := valorStr;
                                                                           //************
                                                                           if optStr = 'LATAM' then
                                                                              LATAM := StrToFloat(valorStr);
                                                                           //************
                                                                           if optStr = 'LAFONTE' then
                                                                              LAFONTE := valorStr;
                                                                           //************
                                                                           if optStr = 'LAFTCOR' then
                                                                              LAFTCOR := valorStr;
                                                                           //************
                                                                           if optStr = 'LAFONTETAMAN' then
                                                                              LAFONTETAMAN := StrToInt(valorStr);
                                                                           //************
                                                                           if optStr = 'LAPOSICAOLBL' then
                                                                              LAPOSICAOLBL := strToInt(valorStr);
                                                                       end;

                                                                   lp         := coLabelPlacer.create;
                                                                   lp.Field   := LACAMPO;
                                                                   lp.DefaultSymbol.Height := LATam;//scaleHeightUnit * (504 - table2.FieldValues['LATam']);
                                                                   lp.DefaultSymbol.color  := StringToColor(LACor);
                                                                   //***************
                                                                   ft := nil;
                                                                   ft := TFont.create;
                                                                   ft.Name  := LAFonte;
                                                                   ft.size  := LAFONTETAMAN;
                                                                   ft.Color := StringToColor(LAFTCor);
                                                                   lp.DefaultSymbol.Font  := IFontDisp(IDispatch(FontToOleFont(ft)));
                                                                   lp.DefaultSymbol.Color := StringToColor(LAFTCor);
                                                                   //***************
                                                                   if LAPOSICAOLBL = 1 then
                                                                      begin
                                                                         lp.PlaceOn    := false;
                                                                         lp.PlaceBelow := false;
                                                                         lp.PlaceAbove := true;
                                                                      end;
                                                                   if LAPOSICAOLBL = 2 then
                                                                      begin
                                                                         lp.PlaceOn    := false;
                                                                         lp.PlaceAbove := false;
                                                                         lp.PlaceBelow := true;
                                                                      end;
                                                                   if LAPOSICAOLBL = 3 then
                                                                      begin
                                                                         lp.PlaceAbove := false;
                                                                         lp.PlaceBelow := false;
                                                                         lp.PlaceOn    := true;
                                                                      end;
                                                                   //*************
                                                                   if LAPcarat then
                                                                      lp.DrawBackground := true
                                                                   else
                                                                      lp.DrawBackground := false;
                                                                   //************
                                                                   if LAPdupli then
                                                                      lp.AllowDuplicates := true
                                                                   else
                                                                      lp.AllowDuplicates := false;
                                                                   //**********
                                                                   if LALmasc then
                                                                      begin
                                                                         lp.MaskLabels := true;
                                                                         lp.MaskColor  := StringToColor(LACor);
                                                                      end
                                                                   else
                                                                      lp.MaskLabels := false;
                                                                   //**************************

                                                                   if varUsaGrpRend = false then
                                                                      lyr.Renderer := lp
                                                                   Else
                                                                      grpRend.Add(lp);

                                                               end;
                                                         //************** FIM ADV LABEL        *****************

                                                         //************** Z REND               *****************
                                                         if optStr = 'USAELEVACAOZ' Then
                                                            if valorStr = 'SIM' then
                                                               begin
                                                                  while not (optStr = 'ELTIPOCAL') do
                                                                       begin
                                                                           Readln(F,varStr);
                                                                           varStr := DecriptaArquivoSalvo(varStr);
                                                                           //***********
                                                                           num      := pos(' ',varStr);
                                                                           OptStr   := copy(varStr,1,num-1);
                                                                           ValorStr := copy(varStr,num+1,length(varStr)-num);
                                                                           //************
                                                                           if optStr = 'ELNUMCLA' then
                                                                              ElevNumClasses := StrToInt(valorStr);
                                                                           //************
                                                                           if optStr = 'ELCORINI' then
                                                                              ElevCorIni := valorStr;
                                                                           //************
                                                                           if optStr = 'ELCORFINAL' then
                                                                              ElevCorFinal := valorStr;
                                                                           //************
                                                                           if optStr = 'ELTIPOCAL' then
                                                                              ElevTipoCalc   := StrToInt(valorStr);
                                                                           //*************
                                                                       end;
                                                                  //*******************************************************
                                                                  ZRend                  := CoZRenderer.create;
                                                                  MinZ                   := lyr.Extent.Floor;
                                                                  MaxZ                   := lyr.Extent.Ceiling;
                                                                  range                  := MaxZ - MinZ;
                                                                  zRend.BreakCount       := ElevNumClasses;
                                                                  zRend.ValueCalculation := ElevTipoCalc;
                                                                  //*******************************************************
                                                                  For ElevCount:=1 To zRend.BreakCount do
                                                                      zRend.Break[ElevCount-1] := MinZ + ((range / zRend.BreakCount + 1) * (ElevCount));
                                                                  //***********
                                                                  zRend.RampColors(StringToColor(ElevCorIni),StringToColor(ElevCorFinal));
                                                                  //***********
                                                                  If lyr.shapeType = moShapeTypeMultipoint Then
                                                                     symInt := 0
                                                                  Else
                                                                     symInt := lyr.shapeType - 21;
                                                                  zRend.SymbolType := symInt;
                                                                  //*****************************

                                                                  //*******************
                                                                  if varUsaGrpRend then
                                                                     grpRend.Add(Zrend)
                                                                  else
                                                                     lyr.Renderer := Zrend;
                                                                  //*******************
                                                               end;
                                                         //************** FIM Z REND *****************


                                                         //*****fim da layer *********
                                                         if varStr = '[FIMLAYER]' then
                                                            begin
                                                                if varUsaGrpRend then
                                                                   lyr.Renderer := grpRend;
                                                                legenda;
                                                            end;
                                                         //******************

                                                    end;//if varArquivoExiste

                                         end;//fim while not [fimlayer]

                              end;//if varStr = '[LAYER]'

                           //verifico se é o fim das opções do primeiro texto
                           If varStr = '[FIMCAMADASMAPA]' then
                              varFimCadeia := true;

                      end;

            end;//fim camadas mapa
         //***********************

     end;//fim while not Eof(F)

  varProjetoJaConfig         := true;
  varCaminhoDoProjetoJaSalvo := caminhoFile;
  CloseFile(F);

  screen.Cursor      := crHourGlass;

  //************************************************************
  for varT:=0 to Length(varVetCamadasVisiveis)-1 do
      begin
         MapLegend1.LayerVisible[varT] := varVetCamadasVisiveis[varT];
         //*************************************
         if not varVetCamadaExpandida[varT] then
            MapLegend1.OcultarItem(varT)
         else
            MapLegend1.ExpandirItem(VarT);
      end;
  //************************************************************

  //************************************************************
  //reordenando as layers, para ficar na mesma ordem do original
  //************************************************************
  varTempNewPos := 0;
  for varT:=map1.Layers.Count-1 downto 1 do
      begin
         Map1.Layers.MoveTo(map1.Layers.Count-1,varTempNewPos);
         inc(varTempNewPos);
      end;

  screen.Cursor      := crHourGlass;

  //**********************************
  //CASO EXISTA ALGUM "JOIN", REALIZO AS LIGAÇÕES AGORA
  //**********************************
  //ListaErrorJoin := RecriarTodosOsJoins;
  //**********************************

  VarPermitirDesenharLayers := true;

  legenda;

  Caption := varStrCaptionSistema + ' - '+ ExtractFileName(caminhoFile);

  //definir o extent do mapa
  zoom.ScaleRectangle(1);
  map1.Extent        := zoom;
  varProjetoJaConfig := true;

  //**********
  screen.Cursor      := crDefault;
  //**********

  //*******************definir o tema ativo padrao
  lyrs := map1.Layers;
  for i:=0 to map1.Layers.Count-1 do
     begin
        lyr := CoMapLayer.Create;
        lyr := IMoMapLayer(lyrs.Item(i));
        if uppercase(lyr.tag) = uppercase(temaAtivoTag) then
           MapLegend1.Active[i] := true;
     end;
  //**********************************************************
  //**********************************************************

  if (ListaError.Count > 0) or (ListaErrorJoin.Count > 0) Then
     begin
        if frmProjError = nil then
           frmProjError := TfrmProjError.create(application);
        for i:=0 to ListaError.Count - 1 do
            begin
               frmProjError.memo1.Lines.Add(ListaError.Strings[i]);
            end;
        //**********
        for i:=0 to ListaErrorJoin.Count - 1 do
            begin
               frmProjError.memo1.Lines.Add(ListaErrorJoin.Strings[i]);
            end;
        frmProjError.show;
     end;

end;

function TfrmMenu.RecriarTodosOsJoins:TStringList;
var
i             : smallint;
xy            : Smallint;
lyrs          : imolayers;
lyr           : imomaplayer;
tmpStr        : String;
relTable      : IMoTable;
vartrue       : WordBool;
retorno       : TstringList;
begin

   retorno := TStringList.Create;

   //**********************
   for i:=0 to length(varVetJoinTagLayer)-1 do
       begin
           tmpStr := varVetJoinTagLayer[i];
           //******
           for xy:=0 to map1.Layers.Count-1 do
               begin
                  lyr  := CoMapLayer.Create;
                  lyrs := map1.Layers;
                  lyr  := imomaplayer(lyrs.item(xy));
                  //***
                  if upperCase(tmpStr) = upperCase(lyr.tag) then
                     break;
               end;

           //*******
              relTable := CoTable.create;
              With relTable do
                   begin
                  		Server   := 'sde90:'+varVetJoinServidor[i];
              		    Database := 'instance='+varVetJoinServico[i]+';database='+varVetJoinBanco[i];
              		    User     := varVetJoinUsuario[i];
                	    Password := varVetJoinSenha[i];
               		    Name     := varVetJoinTabela[i];
                   End;

              //*************
              varTrue := true;
              //*************

              if not lyr.AddRelate(varVetJoinTOFIELD[i],relTable,varVetJoinFROMFIELD[i],vartrue) then
                 begin
                    Retorno.Add(' ');
                    retorno.add('**Não Foi Possível Recriar o Join da Tabela '+varVetJoinTabela[i]+' Na Camada '+lyr.name+'. Tente Novamente Mais Tarde ou Entre Em Contato Com o Administrador do Projeto');
                    lyr.RemoveRelates;
                 end;

       end;

      Result := retorno;

end;

function TfrmMenu.RecriarJoins:String;
var
i             : smallint;
xy            : Smallint;
lyrs          : imolayers;
lyr           : imomaplayer;
tmpStr        : String;
relTable      : IMoTable;
vartrue       : WordBool;
retornoNovo   : String;
achou         : boolean;
begin

   retornoNovo := '';
   achou       := false;

   if map1.Layers.Count = 0 then exit;
   
   //**********************
   for i:=0 to length(varVetJoinTagLayer)-1 do
       begin

           if varVetJoinJaEfetuado[i]=false then
              begin

                   tmpStr := varVetJoinTagLayer[i];
                   //******

                   if map1.Layers.Count <> 0 then
                      begin
                           for xy:=0 to map1.Layers.Count-1 do
                               begin
                                  lyr  := CoMapLayer.Create;
                                  lyrs := map1.Layers;
                                  lyr  := imomaplayer(lyrs.item(xy));
                                  //***
                                  if upperCase(tmpStr) = upperCase(lyr.tag) then
                                     begin
                                        achou := true;
                                        break;
                                     end;

                               end;

                              if achou then
                                 begin
                                   //*******
                                      relTable := CoTable.create;
                                      With relTable do
                                           begin
                                              Server   := 'sde90:'+varVetJoinServidor[i];
                                              Database := 'instance='+varVetJoinServico[i]+';database='+varVetJoinBanco[i];
                                              User     := varVetJoinUsuario[i];
                                              Password := varVetJoinSenha[i];
                                              Name     := varVetJoinTabela[i];
                                           End;

                                      //*************
                                      varTrue := true;
                                      //*************

                                      if not lyr.AddRelate(varVetJoinTOFIELD[i],relTable,varVetJoinFROMFIELD[i],vartrue) then
                                         begin
                                            retornoNovo := '**Não Foi Possível Recriar o Join da Tabela '+varVetJoinTabela[i]+' Na Camada '+lyr.name+'. Tente Novamente Mais Tarde ou Entre Em Contato Com o Administrador do Projeto';
                                            lyr.RemoveRelates;
                                         end;

                                      varVetJoinJaEfetuado[i] := true;
                                      break;
                                      
                                 end;
                      end;
              end;

       end;

       result := retornoNovo;

end;


procedure TfrmMenu.LoadSkin(AFileName: String);
var
  Dir: String;
  Ext: String;
begin

  Ext := ExtractFileExt(AFileName);
  if LowerCase(Ext) = '.ini'
  then
    bsSkinData1.LoadFromFile(AFileName)
  else
  if LowerCase(Ext) = '.skn'
  then
    bsSkinData1.LoadFromCompressedFile(AFileName);
    Dir := ExtractFilePath(AFileName);

end;

//********************************************************
//******* adicionar o meio fio do map 2 ******************
//********************************************************
procedure Tfrmmenu.AdicionarMeiofioMap2;
var
lyr       : imomaplayer;
ss        : smallint;
lyrs      : IMoLayers;
Gdtset    : IMoGeoDataset;
begin

   try

       If (Map1.Layers.Count = 1) and (map2.Layers.count = 0) Then
          begin
                ss   := 0;
                lyr  := CoMapLayer.create;
                lyrs := map1.Layers;
                lyr  := imomaplayer(lyrs.item(ss));

                //****************
                try
                   lblCoord.caption := lyr.CoordinateSystem.Name;
                   if trim(lblCoord.caption)='' then
                      lblCoord.caption := 'Universal Transversal de Mercator';

                except
                      lblCoord.caption := 'Universal Transversal de Mercator';
                end;
                //*****************

                If lyr.CoordinateSystem.Name = 'GCS_South_American_1969' Then //latlong
                      begin
                          Coord                    := true;
                          dc                       := nil;
                          dc                       := CoDataConnection.create;
                          dc.Database              := ExtractFilePath(Application.ExeName)+'profiles\mf\latlong'; //dando o caminho p/ o database
                          dc.connect;// conectando

                          lyr                      := CoMapLayer.create;
                          lyr.GeoDataset           := dc.FindGeoDataSet('mf-lat'); //pegando no nome do arquivo
                          Gdtset                   := dc.FindGeoDataSet('mf-lat');
                          lblUnidadeMapa.Caption  := 'GRAU DECIMAL';
                          Map2.Layers.Add(Lyr); //adicionado layer
                          lyr.Symbol.color         := moGray;

                      End
                      else
                        If lyr.CoordinateSystem.Name <> 'GCS_South_American_1969' Then
                           begin
                               Coord               := False;
                               dc                  := nil;
                               dc                  := CoDataConnection.create;
                               dc.Database         := ExtractFilePath(Application.ExeName) + 'profiles\mf\utm'; //dando o caminho p/ o database
                               dc.connect;// conectando

                               lyr                     := CoMapLayer.create;
                               lyr.GeoDataset          := dc.FindGeoDataSet('mf-utm'); //pegando no nome do arquivo
                               Gdtset                  := dc.FindGeoDataSet('mf-utm');
                               lblUnidadeMapa.Caption  := 'METROS';
                               Map2.Layers.Add(Lyr); //adicionado layer
                               lyr.Symbol.color        := moGray;
                           End;
          end;

   except
       //SE ENTRAR NESSE EXCEPT É PORQUE O ARQUIVO ADICIONADO NAO POSSUI
       //COORDENADAS DEFINIDAS, ENTAO SERÁ ADOTADA A COORDENADA UTM POR PADRAO.

       //Adicionando o Meio fio do MAP2
       Coord              := False;
       dc                 := nil;
       dc                 := CoDataConnection.create;
       dc.Database        := ExtractFilePath(Application.ExeName) + 'profiles\mf\utm'; //dando o caminho p/ o database

       // conectando
       dc.connect;
       lyr                := CoMapLayer.create;
       lyr.GeoDataset     := dc.FindGeoDataSet('mf-utm'); //pegando no nome do arquivo
       Gdtset := dc.FindGeoDataSet('mf-utm');
       lblUnidadeMapa.Caption  := 'METROS';
       Map2.Layers.Add(Lyr); //adicionado layer
       lyr.Symbol.color   := moGray;

       //************
       //Screen.Cursor      := crDefault;
       //************
   end;

end;

function Tfrmmenu.TiraPontoNomeDaCamadaSDE(nome : string):string;
var
varPos01     : integer;
varTam       : integer;
varTempSTR01 : string;
begin

   varPos01       := Pos('.',nome);
   varTam         := length(nome);

   varTempSTR01   := copy(nome,varpos01+1,vartam);

   varPos01       := Pos('.',varTempSTR01);
   varTempSTR01   := copy(varTempSTR01,1,varPos01-1);

   result         := varTempSTR01;

end;

procedure TfrmMenu.adicionarDirectConnect(layer: String;posicaovetor:smallint);
var
lyr          : imomaplayer;
Gdtset       : IMoGeoDataset;
begin

   Screen.Cursor  := crHourGlass;
   //the values for server, user, database and password will
   // need to be updated for your particular sde connection
  { dc          := nil;
   dc          := CoDataConnection.Create;
   dc.Server   := 'sde90:directconnect';
   dc.User     := usuario;
   dc.Password := senha+'@'+banco;
   dc.Database := 'instance=sde:oracle';}

   if not DicoCon[posicaovetor].Connect then
      mensagem('Ocorreu um Erro Desconhecido ao Realizar a Conexão Direta',mtInformation,[mbok]);
   //********************************

   lyr            := CoMapLayer.Create;
   Gdtset         := DicoCon[posicaovetor].FindGeoDataSet(layer);
   lyr.GeoDataSet := DicoCon[posicaovetor].FindGeoDataSet(layer);
   lyr.Name       := TiraPontoNomeDaCamadaSDE(layer);


   //verificando se é um arquivo Z
   if Gdtset.HasZ then
      lyr.Tag := layer+ '|DICOZ' +'?BANCO?'+varVetDICOBanco[posicaovetor]+'?LOGIN?'+varVetDICOusuario[posicaovetor]+'?SENHA?'+varVetDICOsenha[posicaovetor]
   else
      lyr.Tag := layer+'|DICO' +'?BANCO?'+varVetDICOBanco[posicaovetor]+'?LOGIN?'+varVetDICOusuario[posicaovetor]+'?SENHA?'+varVetDICOsenha[posicaovetor];

   //adiciono a criança no vetor!
   setLength(vet_taglayer,length(vet_taglayer)+1);
   setLength(vet_SelectedFeatures,length(vet_SelectedFeatures)+1);
   setLength(AltSelect,length(AltSelect)+1);
   vet_taglayer[length(vet_taglayer)-1] := lyr.tag;
   //***********************************************

   Map1.Layers.Add(lyr); //adicionado layer

   legenda;

   AdicionarMeiofioMap2;

   Screen.Cursor := crDefault;

end;


procedure TfrmMenu.adicionarSDE(layer: String;numeroconexao:integer);
var
lyr          : imomaplayer;
Gdtset       : IMoGeoDataset;
begin

   Screen.Cursor  := crHourGlass;
   //the values for server, user, database and password will
   // need to be updated for your particular sde connection
   {dc          := nil;
   dc          := CoDataConnection.Create;
   dc.Server   := 'sde90:'+varSDEServidor;
   dc.User     := varSDEusuario;
   dc.Password := varSDEsenha;
   dc.Database := 'instance='+varSDEservico+';database='+varSDEBanco;}


   if not sdecon[numeroconexao].Connect then
      mensagem('Ocorreu um Erro Desconhecido ao Conectar ao Serviço SDE',mtInformation,[mbok]);
   //********************************

   lyr            := CoMapLayer.Create;

   Gdtset         := sdecon[numeroconexao].FindGeoDataSet(layer);
   lyr.GeoDataSet := sdecon[numeroconexao].FindGeoDataSet(layer);
   lyr.Name       := TiraPontoNomeDaCamadaSDE(layer);

   //verificando se é um arquivo Z
   if Gdtset.HasZ then
      lyr.Tag := layer+ '|SDEZ' +'?SERV?'+varVetSDEServidor[numeroconexao]+'?BANCO?'+varVetSDEBanco[numeroconexao]+'?SERVICO?'+varVetSDEservico[numeroconexao]+'?LOGIN?'+varVetSDEusuario[numeroconexao]+'?SENHA?'+varVetSDESenha[numeroconexao]
   else
      lyr.Tag := layer+'|SDE' +'?SERV?'+varVetSDEServidor[numeroconexao]+'?BANCO?'+varVetSDEBanco[numeroconexao]+'?SERVICO?'+varVetSDEservico[numeroconexao]+'?LOGIN?'+varVetSDEusuario[numeroconexao]+'?SENHA?'+varVetSDESenha[numeroconexao];

   //adiciono a criança no vetor   !!!
   setLength(vet_taglayer,length(vet_taglayer)+1);
   setLength(vet_SelectedFeatures,length(vet_SelectedFeatures)+2);
   setLength(AltSelect,length(AltSelect)+2);
   vet_taglayer[length(vet_taglayer)-1] := lyr.tag;
   //***********************************************

   Map1.Layers.Add(lyr); //adicionado layer

   legenda;

   AdicionarMeiofioMap2;

   Screen.Cursor := crDefault;

end;

procedure tfrmMenu.AdicionarCamada;
var
i         : integer;
imagem    : IMoImageLayer;
Gdtset    : IMoGeoDataset;
layer     : IMomapLayer;
posic     : integer;
num       : integer;
fotoNum   : string;
//lyrs      : IMoLayers;
begin

  try
      //************************************
      dlgShapes.Files.Clear;
      dlgShapes.InitialDir := varDirInicial;
      dlgShapes.FileName   := '';
      dlgShapes.InitialDir := varStrDirPadraoShapes;
      dlgShapes.Execute;
      Screen.Cursor := crHourGlass;
      varDirInicial := ExtractFilePath(dlgShapes.FileName);
      //************************************

      for i:=0 to dlgShapes.Files.Count-1 do
         begin
              completo := dlgShapes.Files.Strings[i];

              if trim(completo)=EmptyStr then exit;

              //criando conexão
              dc := CoDataConnection.Create;

              //Pegando caminho e nome do arquivo
              caminho               := ExtractFilePath(completo);
              varStrDirPadraoShapes := caminho;
              arquivo               := ExtractFileName(completo);
              extensao              := ExtractFileExt(completo);


              //gambiarra para separar a extensao e o nome corretamente para
              //o mapobjects
              extensao := copy(extensao,2,length(extensao)-1);
              arquivo  := copy(arquivo,1,(length(arquivo)-length(extensao))-1);

              //**********************
              EvitarBugDaLegenda;
              //**********************              

              //Adicionando arquivos do tipo shape *******************************************
              If UpperCase(extensao) = 'SHP' then
                 begin
                     Screen.Cursor := crHourGlass;
                     //dando o caminho p/ o database
                     dc.Database := caminho;
                     // conectando
                     dc.connect;

                     //se nao conectar...sai
                     if not dc.Connect then exit;

                     layer            := CoMapLayer.create;
                     layer.GeoDataset := dc.FindGeoDataSet(arquivo); //pegando no nome do arquivo
                     Gdtset           := dc.FindGeoDataSet(arquivo);

                     //verificando se é um arquivo Z
                     if Gdtset.HasZ then
                        layer.Tag := completo + '|Z'
                     else
                        layer.Tag := completo;

                     //configurar o array de seleçao de shapes
                     ConfigurarVetorNovoTema(layer.tag);

                     Map1.Layers.Add(Layer); //adicionado layer

                     //legenda;

                 end;


              //Adicionando arquivos do tipo CAD *********************************************
              If (uppercase(extensao) = 'DWG') or (uppercase(extensao) = 'DXF') or (uppercase(extensao) = 'DGN') then
                  begin
                     frmcad := TfrmCad.create(application);
                     frmCad.showmodal;
                  end;

              //******* Adicionando arquivos do tipo imagem ******************************************
              If (Uppercase(extensao) = 'TIF') or (Uppercase(extensao) = 'JP2') then
                  begin
                     Screen.Cursor := crHourGlass;

                     imagem       := CoImageLayer.create;
                     imagem.file_ := completo;
                     imagem.Name  := Arquivo;
                     imagem.Tag   := completo;

                     //configurar o array de seleçao de shapes
                    // ConfigurarVetorNovoTema(layer.tag);

                     map1.Layers.Add(imagem);

                     //legenda;

                     screen.Cursor := crDefault;
                  end;


              //******* Adicionando arquivos do tipo ECW ******************************************
              If (uppercase(extensao) = 'ECW') then
                  begin

                        if map1.Layers.Count = 0 then
                           begin
                             mensagem('Deve Existir Pelo Menos Um Tema Adicionado Para Adicionar Arquivos ECW!',mtInformation,[mbOK]);
                             Screen.Cursor := crDefault;
                             exit;
                           end;

                        posic := length(fotosECW);

                        if posic = 0 then num := 1 else num := posic;

                        varECW := TNCSRenderer.Create(self);

                        SetLength(FotosECW,posic+2); //caminho das fotos
                        SetLength(lECWOpen,posic+2);
                        SetLength(ECWView,posic+2);

                        with varECW do
                            begin
                               Name            := 'NCSECW'+inttostr(num);
                               lECWOpen[num]   := true;
                               tag             := num; //tag fica com a possição do vetor
                               cECWpath        := completo;
                               ECWView[num]    := true;
                               fotosECW[num]   := cECWpath;
                            end;

                        //shape da farsa
                        dc.Database := ExtractFilePath(application.ExeName)+'profiles\mf\'; //dando o caminho p/ o database
                        dc.connect;// conectando

                        if not dc.Connect then exit;//se nao conectar...sai

                        layer            := CoMapLayer.create;
                        layer.GeoDataset := dc.FindGeoDataSet('tmp'); //pegando no nome do arquivo
                        Gdtset           := dc.FindGeoDataSet(arquivo);
                        Map1.Layers.Add(Layer); //adicionado layer

                        layer.Name         := arquivo;
                        layer.Symbol.Color := moGray;
                        FotoNum            := FormatFloat('00',num);

                        layer.Tag          := cECWpath + '|ECW'+ fotoNum;

                        //legenda;

                        TemECWAdicionado := true;
                  end;

                  //********************************************************
                  //******* adicionar o meio fio do map 2 ******************
                  //********************************************************
                  AdicionarMeiofioMap2;
                  //********************
                  if frmcad<> nil then frmCad.close;

                  legenda;
                  //********************************
                  AtualizarSituacaoLegenda;
                  //********************************


         end;

  except
     Screen.Cursor := crDefault;
     if frmcad<> nil then frmCad.close;
     //*************
  end;

  Screen.Cursor := crDefault;

end;

procedure TfrmMenu.Sair1Click(Sender: TObject);
begin

  application.terminate;

end;

procedure tfrmmenu.zoommaior(button : TMouseButton);
begin

  if button = mbleft then
     Map1.Extent := Map1.TrackRectangle;
     

end;

procedure Tfrmmenu.ConfigurarVetorNovoTema(taglayer : string);
var
i            : smallint;
posicaovazia : smallint;
begin

   //primeiro verifico se existe alguma posiçao do vetor sobrando
   posicaovazia := -1;
   for i:=0 to length(vet_taglayer)-1 do
       begin
           if trim(vet_taglayer[i])='' then
              begin
                  posicaovazia := i;
                  break;
              end;
       end;

   //se posicao vazia for maior que -1, sinal que existe posicao vazia do vetor
   //senao, crio uma nova posicao
   if posicaovazia >= 0 then
      begin
          vet_taglayer[posicaovazia]         := taglayer;
          vet_SelectedFeatures[posicaovazia] := nil;
      end
      else
         begin
            //adiciono a criança no vetor!
            setLength(vet_taglayer,length(vet_taglayer)+1);
            setLength(vet_SelectedFeatures,length(vet_SelectedFeatures)+1);
            setLength(AltSelect,length(AltSelect)+1);
            vet_taglayer[length(vet_taglayer)-1] := taglayer;
            //*******************************
         end;

end;

procedure TfrmMenu.AtualizarSituacaoLegenda;
var
i       : smallint;
count   : smallint;
begin

  count := Length(vetSitLayers);

 // if Length(vetSitLayers)>1 then
 //    begin
          for i:=1 to map1.layers.count-1 do
              begin
                 if MapLegend1.StatusDoCheckBoxDaLegenda(i) <> vetSitLayers[i-1] then
                    begin
                        maplegend1.DefinirStatusDoCheckBoxDaLegenda(i,vetSitLayers[i-1]);
                        //showmessage('tive que mudar o '+inttostr(i));
                    end;
              end;
//     end;

  if maplegend1.StatusDoCheckBoxDaLegenda(0) = false then
     begin
        maplegend1.DefinirStatusDoCheckBoxDaLegenda(0,true);
        //showmessage('mudei o padrao');
     end;

end;

procedure TfrmMenu.EvitarBugDaLegenda;
var
count        : smallint;
i            : smallint;
lyrs         : imolayers;
lyr          : imomaplayer;
begin
   setLength(vetSitLayers,0);

   //if map1.layers.count = 0 then exit;
   count := map1.layers.count;
   setLength(vetSitLayers,count);

   for i:=0 to map1.Layers.count-1 do
       begin
           vetSitLayers[i] := maplegend1.StatusDoCheckBoxDaLegenda(i);
           //showmessage(inttostr(i)+' '+vartostr(maplegend1.StatusDoCheckBoxDaLegenda(i)));
       end;

end;

procedure TfrmMenu.btAddClick(Sender: TObject);
begin
btGrafico.Tag := 0;

  if varADICIONARDODISCO then
     begin
        VarPermitirDesenharLayers := false;
        //***
        AdicionarCamada;
        //***
        VarPermitirDesenharLayers := true;
        //**************************************
        if map1.layers.count > 0 then
           begin
              if maplegend1.GetActiveLayer = -1 then
                 maplegend1.Active[0] := true;
           end;
        //**************************************
        map1.refresh;
     end
  else
     mensagem('A Função Adicionar Camadas Foi Desabilitada Pelo Administrador do Projeto!',mtInformation,[mbok]);   


end;

procedure TfrmMenu.pnLegendaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
{
sc_DragMove = $f012;
sc_Leftsize = $f001;
sc_Rightsize = $f002;
sc_Upsize = $f003;
sc_UpLeftsize = $f004;
sc_UpRightsize = $f005;
sc_Dnsize = $f006;
sc_DnLeftsize = $f007;
sc_DnRightsize = $f008;

if not ((X>=195) and (x<=223)) then
     begin
         ReleaseCapture;
         TWinControl(Sender).perform(WM_SYSCOMMAND, $f012, 0);
    end;
}

end;

procedure TfrmMenu.legend1AfterSetLayerVisible(ASender: TObject;
  var Index: Smallint; var isVisible: WordBool);
begin

   map1.refresh;

end;

procedure TfrmMenu.DeletarArquivosTemporarios;
var
  SR: TSearchRec;
  I: integer;
begin

   I := FindFirst('C:\SIGGeo\SIGGeo 2.0\profiles\tempfile*.*', faAnyFile, SR);
   while I = 0 do
      begin
         if (SR.Attr and faDirectory) <> faDirectory then
            DeleteFile('C:\SIGGeo\SIGGeo 2.0\profiles\' + SR.Name);
         //   ShowMessage('Não consegui excluir c:\' + SR.Name);
         I := FindNext(SR);
      end;

end;



procedure TfrmMenu.FormCreate(Sender: TObject);
var
F        : TextFile;
varStr   : String;
i : integer;
itemMenuIni : integer;
begin

  LerArquivoIni;

  LerArquivoCabecalho;

  varStrCaptionSistema   := ' SIGGeo 2.0 BETA - EPD/VR - Equipe Geoprocessamento ';

  frmmenu.caption        := varStrCaptionSistema;

  frmMenu.VarPermitirDesenharLayers := true;

  //versao do siggeo
  varVERSAOSIGGEO        := 20007;

  //usado para controle de versao de projetos)
  varVERSAOPROJETOSIGGEO := 20002;

  //*************************


  VarBoolSistemaAbrindo := true;

  //***
  DeletarArquivosTemporarios;

  //Registra Geo
  registraGeo;

  //captura da query
  VarFrmQueryCapture  := false;
  varQuerySymbol      := moFillSymbol;
  varQueryStyle       := moLightGrayFill;
  varQueryColor       := moRed;
  varQuerySymbolPonto := moPointSymbol;
  varQueryStylePonto  := moCircleMarker;
  varQueryColorPonto  := moBlue;
  varQueryColorSize   := 8;

  //variaveis de projeto padrao;
  varAUTORPROJETO     := '';
  varCONTATO          := '';
  varPAGINA           := '';
  varDATACRIACAO      := FormatDateTime('dd/mm/yyyy',now);
  varSALVARPROJETO    := true;
  varDELETARGRAFICOS  := true;
  varADICIONARSDE     := true;
  varIMPRIMIR         := true;
  varLAYOUT           := true;
  varADICIONARDODISCO := true;
  varREMOVERLAYERS    := true;
  varEDITARLEGENDA    := true;
  varConvNovoSHP      := true;
  varDELETARGRAFICOS  := true;
  varNomeUsuproj      := '';
  varSenhaUsuproj     := '';
  varProjetoJaConfig  := false;

  //diretorio padrao
  varStrDirPadraoProjeto := ExtractFileDrive(application.exename)+'\SIGGeo\Projetos';
  varStrDirPadraoShapes  := ExtractFileDrive(application.exename)+'\SIGGeo\Camadas';
  //*******************************************

  //***************** CARREGANDO A CONFIGURAÇAO DO SDE PADRAO **************

  //PROCURO A CHAVE [SDE]
    for i:=0 to leituraIni.Count -1 do
     if leituraIni.Strings[i] = '[SDE]' then
      begin
       varSDEServidor := leituraIni.Strings[i+1];
       varSDEBanco := leituraIni.Strings[i+2];
       varSDEservico := leituraIni.Strings[i+3];
      end;
       i := i + 1;

          //PROCURO A CHAVE [TEMA]
            for i:=0 to leituraIni.Count -1 do
             if leituraIni.Strings[i] = '[TEMA]' then
              begin
               vartema := StrToInt(leituraIni.Strings[i+1]);
              end;
               i := i + 1;

         case vartema of

       0 : begin
           frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\ExOS.skn');
           frmMenu.emas1.Items[vartema].Checked := true;
           end;
       1 : begin
           frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\Autumn.skn');
           frmMenu.emas1.Items[vartema].Checked := true;
           end;
       2 : begin
           frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\Clouds.skn');
           frmMenu.emas1.Items[vartema].Checked := true;
           end;
       3 : begin
           frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\Express.skn');
           frmMenu.emas1.Items[vartema].Checked := true;
           end;
       4 : begin
           frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\Win9X.skn');
           frmMenu.emas1.Items[vartema].Checked := true;
           end;
       5 : begin
           frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\WinXPBlue.skn');
           frmMenu.emas1.Items[vartema].Checked := true;
           end;


         end;


  //************************************************************************
  //cor de seleção de shapes;
  cor_SelectPreenchCamada    := clYellow;
  cor_OutSelectCamada        := clRed;
  cor_SelectGraf             := clYellow;
  cor_OutSelectGraf          := clRed;
  varEspSelecaoCamada        := 2;
  varEspSelecaoGrafico       := 2;
  varPreenchSelecaoCamada    := 1;
  varPreenchSelecaoGrafico   := 1;
  varBoolDesenharOutCamada   := true;
  varBoolDesenharOutGrafico  := true;
  //************************
  varReguaEstilo             := mosolidline;
  varReguaSize               := 3;
  varReguaColor              := moRed;
  varReguaEstiloSelect       := mosolidline;
  varReguaSizeSelect         := 3;
  varReguaColorSelect        := moYellow;
  //************************

  //ECW
  TemECWAdicionado     := false;
  VarSDEativo          := false;
  varDirInicial        := ExtractFileDrive(application.exename)+'\SIGGeo\Shapes';

  //ligando a legenda ao mapa;
  MapLegend1.SetMapSource(map1);

  //caso o programa tenha sido aberto via parametro
  varTmpParamWin           := ParamStr(1);

  //inicializar variavel de editar texto
  varBoolEditarTexto       := false;
  varBoolPermitirMudarPos  := false;

  //*****************************************
  //inicializa as variaveis dos graficos
  //****
  //poligono
  varGrafPoliColor           := clGray;
  varGrafPoliUsaOutline      := true;
  varGrafPoliSize            := 1;
  varGrafPoliOutCor          := clBlack;
  varGrafPoliStyle           := moSolidFill;
  varBoolSalvaConfigPoli     := false;
  //****
  //linha
  varGrafLinhaColor          := ClBlack;
  varGrafLinhaSize           := 1;
  varGrafLinhaStyle          := 0;
  varBoolSalvaConfigLinha    := false;
  //****
  //Circulo
  varGrafCirculoColor        := clGray;
  varGrafCirculoUsaOutline   := true;
  varGrafCirculoSize         := 1;
  varGrafCirculoOutCor       := clBlack;
  varGrafCirculoStyle        := moSolidFill;
  varBoolSalvaConfigPoli     := false;
  //***
  //retangulo
  varGrafRetangColor         := clGray;
  varGrafRetangOutCor        := clBlack;
  varGrafRetangUsaOutline    := true;
  varGrafRetangSize          := 1;//Word;
  varGrafRetangStyle         := 0;
  varBoolSalvaConfigRetang   := false;
  //**********
  //ponto
  varGrafPontoColor          := moRed;
  varGrafPontoUsaOutline     := true;
  varGrafPontoSize           := 8;
  varGrafPontoOutCor         := clBlack;
  varGrafPontoStyle          := 0;
  varBoolSalvaConfigPonto    := false;
  //**TEXTO
  varBoolEditarTexto         := false;
  varGrafTextoFonteEstilo    := [];
  varGrafTextoFonte          := 'Times New Roman';
  varGrafTextoRotacao        := 0;
  varGrafTextoColor          := clBlack;
  varGrafTextoSize           := 10;
  //************************************

  //************************************
  //sistema aberto
  TimerPosEscala.Enabled     := true;
  //************************************

  //************************************
  //***** trackinglayer do vertex ******
  //************************************
  tl                      := map1.trackinglayer;
  bVertexMoving           := false;
  tl.SymbolCount          := 6;
  //***PATHFINDER
  tl.Symbol[0].SymbolType := moPointSymbol;
  tl.Symbol[0].Style      := moSquareMarker;
  tl.Symbol[0].Size       := 4;
  tl.Symbol[0].Color      := moBlack;
  //***PATHFINDER
  tl.Symbol[1].SymbolType := moLineSymbol;
  tl.Symbol[1].Style      := moSolidLine;
  tl.Symbol[1].Size       := 1;
  tl.Symbol[1].Color      := moBlack;
  //************************************
  //************************************

  //unidades do mapa
  varMapUnits := 2; //metros
  //****************

  //*********************
  //formulario de inserir coordenadas
  varTemCoordDesenhada := false;
  //*********************

  varProjetoJaConfig   := false;

  VerificarAtualizacao.Enabled := true;
  
end;
{
moSolidFill	            0	Solid
moTransparentFill	      1	Transparent
moHorizontalFill	      2	Horizontal
moVerticalFill	        3	Vertical
moUpwardDiagonalFill  	4	Upward Diagonal
moDownwardDiagonalFill	5	Downward Diagonal
moCrossFill	            6	Cross
moDiagonalCrossFill	    7	Diagonal Cross
moLightGrayFill	        8	Light Gray Fill
moGrayFill	            9	Gray Fill
moDarkGrayFill	       10	DarkGray Fill
}

function TFrmMenu.Mensagem(wmsg:string;wicon:TMsgDlgType;botao:TMsgDlgButtons):word;
begin

  result := bsSkinMessage1.MessageDlg(Pchar(wmsg),mtInformation,botao,0);
{TMsgDlgType = (mtWarning, mtError, mtInformation, mtConfirmation, mtCustom);
  TMsgDlgBtn = (mbYes, mbNo, mbOK, mbCancel, mbAbort, mbRetry, mbIgnore,
    mbAll, mbNoToAll, mbYesToAll, mbHelp);
  TMsgDlgButtons = set of TMsgDlgBtn;}
end;

procedure TfrmMenu.Identificador(x,y : Double;camada : smallint);
var
// identify ************
records   : IMoRecordset;
fields    : IMoFields;
field     : IMoField;
t_Desc    : IMoTableDesc;
//*********
temp_Desc : IMoTableDesc;
tempfields: IMoFields;
tempfield : IMoField;
//*********
SELDIST   : Integer;
rectPrism : IMoRectangle;
ponto     : IMoPoint;
cont      : smallint;
numcam    : smallint;
//*********
lyrs      : imolayers;
imgLyr    : IMoImageLayer;
lyr       : imomaplayer;
i         : smallint;
//*******
ITag      : Smallint;
testeInf  : Boolean;
begin

  try
      //pega a layer ativa
      if map1.Layers.Count = 0 then exit;

      if frmIdentMais <> nil then frmIdentMais.close;

      //**********************
      if camada = -1 then
         numcam := 0
      else
         numcam := camada;
      //**********************

      if (IMoMapLayer(IMoLayers(Map1.layers).Item(numcam)).LayerType = moImageLayer) and (frmIdentificador<>nil) then
         begin
            for i:=0 to frmIdentificador.lstIdentificador.RowCount-1 do
                begin
                    frmIdentificador.lstIdentificador.Cells[1,i+1] := '';
                    frmIdentificador.lstIdentificador.Cells[0,i+1] := '';
                end;
         end;

      if IMoMapLayer(IMoLayers(Map1.layers).Item(numcam)).LayerType <> moMapLayer then
         exit;

      layer_i := IMoMapLayer(Map1.layers.item(numcam));

      //criando ponto
      ponto := CoPoint.Create;
      ponto := Map1.ToMapPoint(x,y); //records recebe as coordenadas encontradas

      // se o shape nao for do tipo poligono, efetua a busca por distancia
      If (layer_i.shapeType = 21) Or (layer_i.shapeType = 22) Or (layer_i.shapeType = 24) Then
            begin
              //efetua a busca
              records :=layer_i.SearchByDistance(ponto,5,'');

              //caso seja um shape do Tipo Z, a busca acima nao irá encontrar nada,
              //entao nesse caso, efetuamos uma busca espacial utilizando o Prisma;
              If Records.Count = 0 Then
                 begin
                    SELDIST           := 1;
                    rectPrism         := CoRectangle.create;
                    rectPrism.Top     := Ponto.Y + SELDIST;
                    rectPrism.Bottom  := Ponto.Y - SELDIST;
                    rectPrism.Left    := Ponto.X - SELDIST;
                    rectPrism.Right   := Ponto.X + SELDIST;
                    rectPrism.Floor   := 0;
                    rectPrism.Ceiling := 50000; //raio de busca do prisma
                    Map1.FlashShape(rectPrism,1);
                    records           := layer_i.SearchShape(rectPrism, moEdgeTouchOrAreaIntersect, '');
                 end;
            End
               else//busca por poligono
                  records     := layer_i.SearchShape(ponto,12,'');

      //*********
      if (records.EOF) and (frmIdentificador=nil) then
         begin
            exit;
         end;
      //*********

      //*************************************************
      //J0GAR NO LISTBOX O NOME DOS CAMPOS DO SHAPE SELECIONADO
      //*************************************************
      temp_Desc    := CoTableDesc.Create;
      temp_Desc    := records.TableDesc;
      tempfields   := records.Fields;

      //************************************************************
      if frmIdentificador = nil then
         frmIdentificador := TfrmIdentificador.create(application);
         frmIdentificador.varPosVetorMaisInf := -1;
      frmIdentificador.lstIdentificador.RowCount := tempfields.Count - 1;
      //*************************************************************

      frmIdentificador.btInf.Visible  := false;

      //*********************************************************
      //Verifico Se o cara tem a opção "mais informações"
      testeInf := false;
      if Length(varVetIDentTagLayer)>0 then
         begin
             for ITag := 0 to Length(varVetIDentTagLayer) -1 do
                 begin
                     if varVetIDentTagLayer[ITag] = layer_i.Tag then
                        begin
                            testeInf := true;
                            frmIdentificador.varPosVetorMaisInf := ITag;
                            frmIdentificador.btInf.Visible      := true;
                            break;
                        end;
                 end;
         end;
      //*********************************************************

      if testeInf = false then
         frmIdentificador.btInf.Visible := false;

      frmIdentificador.Caption := '  Atributos de ' + layer_i.Name + '  ';
      frmidentificador.pontoX  := x;
      frmidentificador.pontoY  := Y;

      for cont := 0 to temp_Desc.FieldCount-1 do
          begin
             tempfield := tempfields.Item(temp_Desc.FieldName[cont]);
             //*********************************************
             if testeInf then
                begin
                    if Length(varVetIDentTagLayer)>0 then
                       if tempfield.Name = frmmenu.varVetIDentLayerCampo[frmIdentificador.varPosVetorMaisInf] then
                          frmIdentificador.tempValor := tempfield.ValueAsString;
                end;
             //*********************************************
             frmIdentificador.lstIdentificador.Cells[0,cont+1] := tempfield.name;
             //*********************************************
          end;
      //*************************************************

      //Carrego os dados encontrados
      If not records.EOF then
         begin
             t_Desc := CoTableDesc.Create;
             t_Desc := records.TableDesc;
             fields := records.Fields;
             field  := fields.Item('shape');
             map1.FlashShape(field.value,2);

             //CARREGA OS CAMPOS DOS SHAPES
             for cont := 0 to t_desc.FieldCount-1 do
                 begin
                    field := fields.Item(t_desc.FieldName[cont]);
                    frmIdentificador.lstIdentificador.Cells[1,cont+1] := field.valueasstring;
                 end;
         end
         else
            begin
               //**** caso nao tenha nenhum dado para ser mostrado, limpo o listbox
               for cont := 0 to frmidentificador.lstIdentificador.RowCount-1 do
                   begin
                      frmIdentificador.lstIdentificador.Cells[1,cont+1] := '';
                   end;
               //**********************************************************
            end;

      //********************************************
      //configurando a combo do form do identificador
      frmidentificador.lstIdentificador.Cells[0,0] := ' CAMPOS ';
      frmidentificador.lstIdentificador.Cells[1,0] := '     ATRIBUTOS ';

      frmidentificador.dbLista.Items.Clear;
      frmidentificador.varMuda  := false;

      for i:=0 to Map1.Layers.Count - 1 do
          begin
             //***********
             lyrs    := map1.Layers;
             if IMoMapLayer(IMoLayers(Map1.layers).Item(i)).LayerType = moMapLayer then
                begin
                   lyr     := CoMapLayer.Create;
                   lyr     := imomaplayer(lyrs.item(i));
                   frmidentificador.dbLista.Items.Add(lyr.name);
                end
                else
                   begin
                     imgLyr := CoImageLayer.Create;
                     imgLyr := IMoImagelayer(lyrs.item(i));
                     frmidentificador.dbLista.Items.Add(imglyr.name);
                   end;
             //***********
          end;

      //variavel pra evitar que o shape pisque 4 vezes ao
      //abrir o frmidentificador pela primeira vez
      frmidentificador.dbLista.ItemIndex := numcam;
      frmidentificador.varMuda           := true;
      //**************************************
      frmIdentificador.show;

 except
     if frmIdentificador <> nil then
         frmIdentificador.close;
  end;

end;

procedure TfrmMenu.btFullClick(Sender: TObject);
begin
btGrafico.Tag := 0;

   map1.Extent := map1.FullExtent;

end;

procedure TfrmMenu.ZoomExtentTema;
var
//ly_ativo : IMoMapLayer ;
ly_image : ImageLayer ;
lyrs     : imolayers;
//ext      : string;
lyr      : IMoMapLayer;
begin

  If maplegend1.getActiveLayer <> -1 then
     begin
        try
          lyrs        := map1.Layers;
          if IMoMapLayer(IMoLayers(lyrs).Item(maplegend1.getActiveLayer)).LayerType = moMapLayer then
              begin
                  lyr         := CoMapLayer.create;
                  lyr         := IMoMapLayer(lyrs.item(maplegend1.getActiveLayer));
                  map1.Extent := lyr.Extent;
              end
                else
                   begin
                       ly_image    := CoImageLayer.Create;
                       ly_image    := IMoImageLayer(Map1.Layers.item(maplegend1.getActiveLayer));
                       map1.Extent := ly_image.Extent;
                   end;
        except
           //*************
        end;
     end
       else
          begin
             mensagem('Não Há Tema Ativo!',mtInformation,[mbok]);
          end;

end;

procedure tfrmMenu.zoomMenor;
var
varRect : IMoRectangle;
begin
   varRect     := Map1.Extent;
   varRect.ScaleRectangle(variant(1.5));
   Map1.Extent := varRect;

end;

procedure TfrmMenu.btAtivoClick(Sender: TObject);
begin
btGrafico.Tag := 0;

  ZoomExtentTema;


end;

procedure TfrmMenu.btMaiorClick(Sender: TObject);
begin
btGrafico.Tag := 0;

   DesabilitaGrafico;
   Map1.MousePointer := moZoomIn ;

end;

procedure Tfrmmenu.selecionarShape(varShift,varCtrl : boolean);
var
r  : IMoRectangle;
begin

   If maplegend1.getActiveLayer = -1 Then
      begin
         if map1.Layers.Count >0 then
            MapLegend1.Active[0] := true
         else
            begin
               mensagem('Não Há Tema Ativo!',mtInformation,[mbok]);
               Exit;
            end;
      end;

   //se ambos estiverem apertados, cancelar!
   if (varShift) and (varCtrl) then
      begin
        mensagem('Aperte Somente Ctrl ou Shift!',mtInformation,[mbok]);
        exit;
      end;

   //******************
   //criando retangulo
   r              := CoRectangle.Create;
   r              := Map1.TrackRectangle;
   g_searchShape  := r;
   //****************

   try
     //agora tento fazer a seleção
     ExecuteSearch(varShift,varCtrl);
   except
     Map1.MousePointer  := 0;
     //g_SelectedFeatures := nil;
   end;

end;

//******************************************************************************
procedure TfrmMenu.ExecuteSearch(varShift,varCtrl : boolean);
var
 shapes         : IDispatch;
 lyr            : IMoMapLayer;
 lyrs           : IMoLayers;
 i,posicaolayer : smallint;
begin


    if g_searchShape <> nil then shapes := g_searchShape;
    if shapes = nil then exit;

    Map1.MousePointer := 11;
    lyr               := CoMapLayer.Create;
    lyrs              := map1.Layers;
    lyr               := imomaplayer(lyrs.item(maplegend1.getActiveLayer));

    TipoShape         := lyr.shapeType;

    //pegando a posição da layer atual no vetor
    for i:=0 to length(vet_taglayer) do
       begin
           if uppercase(trim(lyr.Tag)) = uppercase(trim(vet_taglayer[i])) then
              begin
                 posicaolayer := i;
                 break;
              end;
       end;

    if (varShift = true) or (varCtrl = true) then
       begin
          if vet_SelectedFeatures[posicaolayer] = nil then
             vet_SelectedFeatures[posicaolayer] := IMoRecordset(lyr.SearchShape(shapes,6,''))
          else
            begin
               AltSelect[posicaolayer] := IMoRecordset(lyr.SearchShape(shapes,6,''));
               AlterarSelecao(varShift,varCtrl,posicaolayer,shapes);
            end;
       end
       else
          begin
              vet_selectedFeatures[posicaolayer] := IMoRecordset(lyr.SearchShape(shapes,6,''));
          end;


    map1.RefreshLayer(MapLegend1.GetActiveLayer);

    Map1.MousePointer :=0;

end;

procedure tfrmmenu.ZerarZooms;
var
x : byte;
begin
 for x := 1 to 20 do
  begin
   VarZoom[x] := nil;
   VarBoolPosicao[x] := false;
  end;

end;

procedure TfrmMenu.ControlarZoom;
var
x, n   : byte;
begin

 if VarZoom[0] = nil then
  begin
   VarZoom[0] := Map1.FullExtent;
   VarBoolPosicao[0] := true;
  end;


   if VarCtrlPosicao < 20 then   //se for menor q 20, limpa as posições posteriores
    begin
      if (VarZoom[VarCtrlPosicao + 1]) <> nil then
         begin
          for  n := (VarCtrlPosicao + 1) to 20 do
           begin
            VarZoom[n] := nil;
            VarBoolPosicao[n] := false;
           end;
         end;
 //****************

      for x := 0 to 20 do     //controlar posições dos zooms
       begin
        if not (VarBoolPosicao[x]) or (x > VarCtrlPosicao)  then
         begin
          VarZoom[x]          := Map1.Extent;
          VarBoolPosicao[x]   := true;
          VarCtrlPosicao      := x;
          VarAtual            := x;
          break;
         end;
       end;
 //****************
    end
     else
        if VarCtrlPosicao >= 20 then   //se for maior q 20, reposiciono os vetores
           begin
              for x:=0 to VarCtrlPosicao-1 do
                 begin
                    VarZoom[x]        := VarZoom[x+1];
                    VarBoolPosicao[x] := VarBoolPosicao[x+1];
                 end;
           end;

     //   if VarCtrlPosicao < x then
         VarZoom[x] := Map1.Extent;
         //ShowMessage(inttostr(varctrlposicao));

end;

//************************************************************

//******************************************************************************
//*************** ALTERAR A SELEÇÃO    *****************************************
//******************************************************************************
procedure tfrmmenu.AlterarSelecao(ShiftDown,CtrlDown : Boolean;posicaovetor : smallint;shapes:IDispatch);
var
i            : integer;
t_desc       : IMoTableDesc;
campo        : IMoField;
campos       : IMoFields;
camDel1      : string;
oDataset     : IMoGeoDataset;
dc           : IMoDataConnection;
recs         : IMoRecordset;
oTable       : IMoTableDesc;
oTableTemp   : IMoTableDesc;
oConnection  : IMoDataConnection;
lyr          : IMoMapLayer;
lyrs         : IMoLayers;
file1        : boolean;
delfile1     : boolean;
delfile2     : boolean;
ShapeFind    : boolean;
varCampoFID  : boolean;
begin

//CAMINHO PADRAO PARA SALVAR O TEMPSHAPE
  camdel1 :=   'C:\SIGGeo\SIGGeo 2.0\profiles\';

//TENTO DELETAR O SHAPE TEMPORARIO, SE ELE JA EXISTIR
  file1    := false;
//  file2    := false;
  delfile1 := false;
  delfile2 := false;

//PRIMEIRO VERIFICO SE O TEMP1 JA EXISTE
  if FileExists(camdel1+'tempfile1'+intToStr(posicaovetor)+'.shp') then
     begin
        //SE ELE EXISTIR, TENTO DELETAR
        delfile1 := deletefile(camdel1+'tempfile1'+intToStr(posicaovetor)+'.shp');
        file1    := true;
        //SE NAO CONSEGUIR DELETAR ELE, QUER DIZER
        //QUE O ARQUIVO ESTÁ EM USO, OU SEJA, TEREI
        //QUE USAR O TEMP2;
        if delfile1 = true then
           begin
              DeleteFile(camdel1+'tempfile1'+intToStr(posicaovetor)+'.shx');
              DeleteFile(camdel1+'tempfile1'+intToStr(posicaovetor)+'.dbf');
              //FILE2 := FileExists(camdel1+'tempfile2.shp');
           end
           else
              begin
                  //SE O TEMP2 JA EXISTIR, TENTO DELETAR ELE
                  if FileExists(camdel1+'tempfile2'+intToStr(posicaovetor)+'.shp') then
                     begin
                       //file2     := true;
                       delfile2  := DeleteFile(camdel1+'tempfile2'+intToStr(posicaovetor)+'.shp');
                       //SE CONSEGUIR DELETAR O PRIMEIRO,
                       //DELETO OS OUTROS
                       if delfile2 = true then
                          begin
                             DeleteFile(camdel1+'tempfile2'+intToStr(posicaovetor)+'.shx');
                             DeleteFile(camdel1+'tempfile2'+intToStr(posicaovetor)+'.dbf');
                          end;
                     end;
              end;
     end;

//************************************************************************
//********* RESUMO DA ROTINA *********************************************
//************************************************************************
// VARIAVEIS *************************************************************
//************************************************************************
// FILE1    = FALSE  <<< ARQUIVO NAO EXISTE LOGO PODE SER CRIADO      ****
//************************************************************************
// FILE1    = TRUE                                                      **
// DELFILE1 = TRUE  <<<--ARQUIVO 1 EXISTE MAS NAO ESTÁ MAIS SENDO USADO **
//************************************************************************
// FILE1    = TRUE                                                      **
// DELFILE1 = FALSE  <<<--ARQUIVO 1 EXISTE MAS ESTÁ SENDO USADO         **
// FILE2    = TRUE                                                      **
// DELFILE2 = TRUE  <<<--ARQUIVO 2 EXISTE MAS NÃO ESTÁ MAIS SENDO USADO **
//************************************************************************
//************************************************************************
// FILE1    = TRUE                                                      **
// DELFILE1 = FALSE  <<<--ARQUIVO 1 EXISTE MAS ESTÁ SENDO USADO         **
// FILE2    = FALSE  <<<--ARQUIVO 2 NAO EXISTE entao pode ser criado    **
//************************************************************************
//************************************************************************
// FILE1    = TRUE                                                      **
// DELFILE1 = FALSE  <<<--ARQUIVO 1 EXISTE MAS ESTÁ SENDO USADO         **
// FILE2    = TRUE                                                      **
// DELFILE2 = FALSE  <<<--ARQUIVO 2 EXISTE MAS ESTÁ SENDO USADO         **
//************************************************************************
//***************************      ERRO!!!!!!   **************************
//*************************** NAO SERÁ POSSIVEL **************************
//***************************    ADICIONAR      **************************
//************************************************************************
//************************************************************************

//PREPARO AS VARIAVEIS PARA CRIAR UM NOVO SHAPE TEMPORARIO
 oConnection := CoDataConnection.create;
 oConnection.Database := camdel1;

//SERÁ USADO PARA SABER O TIPO DO SHAPE, NA HORA DE CRIAR
//O TEMPSHAPE
 lyr  := CoMapLayer.Create; //imomaplayer(CreateOleObject('mapobjects2.maplayer'));
 lyrs := map1.Layers;
 lyr  := imomaplayer(lyrs.item(maplegend1.getActiveLayer));

 //PEGO A ESTRUTURA DE CAMPOS DOS SHAPES JA SELECIONADOS, PARAR
 //CRIAR O TEMPSHAPES COM A MESMA ESTRUTURA DE CAMPOS

 //*********************************************
 //eliminando os campos de Join(caso existirem)
 //*********************************************
 oTableTemp := lyr.Records.TableDesc;
 oTable     := CoTableDesc.Create;
 //****
 for i:=0 to oTableTemp.FieldCount-1 do
    begin
       if Pos('.',oTableTemp.FieldName[i])=0 then
          begin
             otable.FieldCount := otable.FieldCount + 1;
             otable.FieldName[otable.FieldCount-1] := otableTemp.FieldName[i];
             otable.FieldType[otable.FieldCount-1] := otableTemp.FieldType[i];
             //********
             if oTableTemp.FieldType[i] = moDouble then
                oTable.FieldPrecision[otable.FieldCount-1] := oTableTemp.FieldPrecision[i];
             //***
             if (oTableTemp.FieldType[i] = moDouble) or (oTableTemp.FieldType[i] = moLong) then
                 oTable.FieldScale[otable.FieldCount-1]    := oTableTemp.FieldScale[i];
             //*****************
          end;
    end;

 //CRIO O SHAPE TEMPORARIO E JA INICIALIZO UM NOVO DATACONNECTION
 //PARA CONECTAR NO TEMPSHAPE
 If oConnection.Connect Then
    begin
       //adiciono o campo temporario ao shape temporario
       oTable.FieldCount := oTable.FieldCount+1;
       oTable.FieldName[oTable.FieldCount-1]   := 'fID';
       oTable.FieldType[oTable.FieldCount-1]   := moLong;
       oTable.FieldLength[oTable.FieldCount-1] := 16;

       if (file1 = true) and (delfile1=false) then
          oDataset    := oConnection.AddGeoDataset('tempfile2'+intToStr(posicaovetor),lyr.shapetype,oTable,false,true) //'NOME DO SHAPE TEMPORARIO + O TIPO DO POLIGONO
       else
          oDataset    := oConnection.AddGeoDataset('tempfile1'+intToStr(posicaovetor),lyr.shapetype,oTable,false,true); //'NOME DO SHAPE TEMPORARIO + O TIPO DO POLIGONO
       //*************************************
       dc          := CoDataConnection.create;
       dc.Database := camdel1;
    end;

//ADICIONO O TEMPSHAPE A UMA LAYER TEMPORARIA,QUE NAO SERÁ
//ADICIONADA AO MAPA, SERVE APENAS PARA CONTROLAR OS DADOS
//QUE SERAO ADICIONADOS
 If Not dc.Connect Then exit
 else
    begin
       layer := coMapLayer.Create;
       if (file1 = true) and (delfile1 = false) then
          layer.GeoDataset := dc.FindGeoDataset('tempfile2'+intToStr(posicaovetor))
       else
          layer.GeoDataset := dc.FindGeoDataset('tempfile1'+intToStr(posicaovetor));
    End;

   //PEGO OS DADOS DA LAYER TEMPORARIA
   recs           := layer.Records;
   recs.AutoFlush := false;

 if (ShiftDown = true) and (CtrlDown = false) then
    begin
        //AGORA DO PRIMEIRO AO ULTIMO REGISTRO EXISTENTE
        //NO G_SELECTEDFEATURES E ALTSELECT, ADICIONE NA LAYER
        AltSelect[posicaovetor].MoveFirst;
        campo       := nil;
        campos      := nil;
        t_desc      := nil;
        campos      := vet_SelectedFeatures[posicaovetor].Fields;
        t_desc      := vet_SelectedFeatures[posicaovetor].TableDesc;

        //*******************************************
        //verifico se o campo fID ja existe dentro dos shapes
        varCampoFID := false;

        for i:=0 to t_desc.FieldCount-1 do
            begin
               campo := campos.Item(t_desc.FieldName[i]);
               if campo.Name = 'fID' then
                  varCampoFID := True; //significa que o campo fID existe
            end;

        //*******************************
        vet_SelectedFeatures[posicaovetor].MoveFirst;

        //*********************************
        while not vet_SelectedFeatures[posicaovetor].eof do
            begin
               Recs.AddNew;
               Recs.Fields.Item('Shape').value  := vet_SelectedFeatures[posicaovetor].Fields.Item('Shape').value;
               //showmessage(vet_SelectedFeatures[posicaovetor].Fields.Item('GEOSETOR_1.OBJECTID').ValueAsString);
               //********************************
               if varCampoFID = false then
                  Recs.Fields.Item('fID').value  := vet_SelectedFeatures[posicaovetor].Fields.Item('FeatureID').value   //Fields.Item('FeatureId').value
               else
                  Recs.Fields.Item('fID').value  := vet_SelectedFeatures[posicaovetor].Fields.Item('fID').value;
               //********************************
               for i:=0 to t_desc.FieldCount-1 do
                   begin
                      campo := campos.Item(t_desc.FieldName[i]);
                      if campo.Name <> 'fID' then
                         if pos('.',campo.Name)=0 then
                            Recs.Fields.Item(campo.Name).Value := Campo.Value;
                   end;

               Recs.Update;
               vet_SelectedFeatures[posicaovetor].movenext;
            end;

            //*****************
            campo     := nil;
            campos    := nil;
            t_desc    := nil;
            campos    := AltSelect[posicaovetor].Fields;
            t_desc    := AltSelect[posicaovetor].TableDesc;
            //*****************

            while not AltSelect[posicaovetor].eof do
                begin
                   Recs.AddNew;
                   Recs.Fields.Item('Shape').value     := AltSelect[posicaovetor].Fields.Item('Shape').value;
                   Recs.Fields.Item('fID').value       := AltSelect[posicaovetor].Fields.Item('FeatureID').value;
                   for i:=0 to t_desc.FieldCount-1 do
                      begin
                          campo := campos.Item(t_desc.FieldName[i]);
                          if campo.name <> 'fID' then
                             if pos('.',campo.Name)=0 then
                                Recs.Fields.Item(campo.Name).Value := Campo.Value;
                      end;
                   Recs.Update;
                   AltSelect[posicaovetor].movenext;
                end;

               //********************************************
               //** TERMINANDO DE CARREGAR TODOS OS DADOS  **
               //** ATIVA NOVAMENTE O AUTOFLUSH;           **
               //********************************************
               recs.AutoFlush := true;
               //LIMPO OS DOIS RECORDSET E AS VARIAVEIS USADAS
               vet_SelectedFeatures[posicaovetor] := nil;
               AltSelect[posicaovetor] := nil;
               campo              := nil;
               campos             := nil;
               t_desc             := nil;
               oDataset           := nil;
               dc                 := nil;
               oTable             := nil;
               oConnection        := nil;
               lyr                := nil;
               lyrs               := nil;
               //AGORA OS SHAPES SELECIONADOS QUE ESTAO
               //ARMAZENADOS NO TEMPSHAPE VAO PARA O G_sELETECTEDFEATURES
               vet_SelectedFeatures[posicaovetor] := recs;
               recs               := nil;
               layer              := nil;
    End;

//**********************************
//**********************************
//*** PARA REMOVER DA SELEÇÃO... ***
//**********************************
//**********************************
 if (ShiftDown = false) and (CtrlDown = true) then
   begin
       //********************************************************
       //** AGORA DO PRIMEIRO AO ULTIMO REGISTRO EXISTENTE     **
       //** NO G_SELECTEDFEATURES E ALTSELECT, delete da LAYER **
       //********************************************************
        AltSelect[posicaovetor].MoveFirst;
       //*****************
        campo     := nil;
        campos    := nil;
        t_desc    := nil;
        campos    := vet_SelectedFeatures[posicaovetor].Fields;
        t_desc    := vet_SelectedFeatures[posicaovetor].TableDesc;
        //*******************************************
        //verifico se o campo fID ja existe dentro dos shapes
        varCampoFID := false;
        for i:=0 to t_desc.FieldCount-1 do
            begin
               campo := campos.Item(t_desc.FieldName[i]);
               if campo.Name = 'fID' then
                  varCampoFID := True; //significa que o campo fID existe
            end;

        //*****************************
        vet_SelectedFeatures[posicaovetor].MoveFirst;
        Recs.AutoFlush := false;
        //*****************************

        while not vet_SelectedFeatures[posicaovetor].eof do
           begin
                AltSelect[posicaovetor].MoveFirst;
                shapeFind := false;
                while not AltSelect[posicaovetor].eof do
                    begin
                        //********************
                        if varCampoFID = true then
                           begin
                              if vet_SelectedFeatures[posicaovetor].Fields.Item('fID').value = AltSelect[posicaovetor].Fields.Item('FeatureID').value then
                                 ShapeFind := true;
                           end
                           else
                               if vet_SelectedFeatures[posicaovetor].Fields.Item('FeatureID').value = AltSelect[posicaovetor].Fields.Item('FeatureID').value then
                                  ShapeFind := true;
                         //***************
                         AltSelect[posicaovetor].MoveNext;
                    end;
                if ShapeFind = false then
                   begin
                        recs.AddNew;
                        Recs.Fields.Item('Shape').value  := vet_SelectedFeatures[posicaovetor].Fields.Item('Shape').value;
                        //************
                        if varCampoFID = false then
                           Recs.Fields.Item('fID').value := vet_SelectedFeatures[posicaovetor].Fields.Item('FeatureID').value
                        else
                           Recs.Fields.Item('fID').value := vet_SelectedFeatures[posicaovetor].Fields.Item('fID').value;
                        //*************
                        for i:=0 to t_desc.FieldCount-1 do
                            begin
                               campo := campos.Item(t_desc.FieldName[i]);
                               if campo.Name <> 'fID' then
                                  if pos('.',campo.Name)=0 then
                                     Recs.Fields.Item(campo.Name).Value := Campo.Value;
                            end;
                        recs.Update;
                   end;
                vet_SelectedFeatures[posicaovetor].MoveNext;
           end;

            recs.AutoFlush := true;
            recs.MoveFirst;

            //TERMINANDO DE CARREGAR TODOS OS DADOS
            //ATIVA NOVAMENTE O AUTOFLUSH;
            //LIMPO OS DOIS RECORDSET E AS VARIAVEIS USADAS

            vet_SelectedFeatures[posicaovetor] := nil;
            AltSelect[posicaovetor]            := nil;
            oDataset           := nil;
            dc                 := nil;
            oTable             := nil;
            oConnection        := nil;
            lyr                := nil;
            lyrs               := nil;
            //AGORA OS SHAPES SELECIONADOS QUE ESTAO
            //ARMAZENADOS NO TEMPSHAPE VAO PARA O G_SELETECTEDFEATURES
            vet_SelectedFeatures[posicaovetor] := recs;
            recs               := nil;
            layer              := nil;
   End;

End;
//******************************************************************************

procedure TfrmMenu.SelecionarGraficos(ctrl : boolean);
var
RectSelectGraf   : IMoRectangle;
ptSelectGraf     : IMoPoint;
ptsSelectGraf    : IMoPoints;
xxi,i,cont       : Integer;
posVetGrafPoli   : Smallint;
prts             : IMoParts;
atualiza         : WordBool;
v                : Variant;
teste            : boolean;
PermitirMudarPos : Boolean;
begin

   lblInfo.text := '';

   //****************************************
   //EVENTOS QUE CONTROLAM A FUNÇAO DE MOVER POLIGONOS
   //****************************************
   //poligono
   tl.Symbol[2].SymbolType   := mofillsymbol;
   tl.Symbol[2].Color        := cor_SelectGraf;
   tl.symbol[2].OutlineColor := clBlack;
   tl.Symbol[2].Size         := 1;
   tl.Symbol[2].Style        := moSolidFill;
   //Retangulo
   tl.Symbol[3].SymbolType   := mofillsymbol;
   tl.Symbol[3].Color        := cor_SelectGraf;
   tl.symbol[3].OutlineColor := clBlack;
   tl.Symbol[3].Size         := 1;
   tl.Symbol[3].Style        := moSolidFill;
   //Linha
   tl.Symbol[4].SymbolType   := moLineSymbol;
   tl.Symbol[4].Color        := cor_SelectGraf;
   tl.Symbol[4].Size         := 2;
   tl.Symbol[4].Style        := moSolidLine;
   //*****
   //circulo
   tl.Symbol[5].SymbolType   := mofillsymbol;
   tl.Symbol[5].Color        := cor_SelectGraf;
   tl.symbol[5].OutlineColor := clBlack;
   tl.Symbol[5].Size         := 1;
   tl.Symbol[5].Style        := moSolidFill;
   //****************************************
   //****************************************}

   if Ctrl then
      begin
          teste             := false;
          PermitirMudarPos  := false;

          if Length(vetSelectTexto) >= 1 then
             teste := true;
          //********************
          if (length(vetSelectPonto) >= 1) then
             if teste = false then
                teste := true
             else
                teste := false;
          //**************************
          if (length(vetSelectLinha) >= 1) then
             if teste = false then
                teste := true
             else
                teste := false;
          //**************************
          if (length(vetSelectCirculo) >= 1) then
             if teste = false then
                teste := true
             else
                teste := false;
          //*************************
          if (length(vetSelectRetang) >= 1) then
             if teste = false then
                teste := true
             else
                teste := false;
          //******************************
          if (length(vetSelectPoli) >= 1) then
             if teste = false then
                teste := true
             else
                teste := false;
          //******************************
          //******************************

          if teste then
             begin
                //se entrar aqui quer dizer que apenas um tipo de grafico esta selecionado
                if Length(vetSelectTexto)=1 then
                   PermitirMudarPos := true;
                if Length(vetSelectPonto)=1 then
                   PermitirMudarPos := true;
                if Length(vetSelectLinha)=1 then
                   PermitirMudarPos := true;
                if Length(vetSelectCirculo)=1 then
                   PermitirMudarPos := true;
                if Length(vetSelectRetang)=1 then
                   PermitirMudarPos := true;
                if Length(vetSelectPoli)=1 then
                   PermitirMudarPos := true;
             end;

          //**********
          If (PermitirMudarPos) and (teste) then
             varBoolPermitirMudarPos := true
          else
             varBoolPermitirMudarPos := false;
          //**********
      end
   else
      begin
         //zero todos os vetores de seleção;
         SetLength(vetSelectPoli,0);
         SetLength(vetSelectLinha,0);
         SetLength(vetSelectRetang,0);
         SetLength(vetSelectQueryCirculo,0);
         SetLength(vetSelectQueryPonto,0);
         SetLength(vetSelectCirculo,0);
         SetLength(vetSelectPonto,0);
         SetLength(vetSelectTexto,0);

         //***********
         IF vetPtsEditVertexPoli <> nil then
            vetPtsEditVertexPoli := nil;

            IF vetPtsEditVertexlinha <> nil then
            vetPtsEditVertexlinha := nil;
         //***********

         varlnLinhaSelecionada := nil;

         RectSelectGraf   := CoRectangle.Create;
         RectSelectGraf   := Map1.TrackRectangle;//retangulo de seleção;

         if RectSelectGraf = nil then exit;

         //*************************************************************
         //**************  selecionar graficos poligono   **************
         //*************************************************************
         if Length(varGrafPoli)> 0 then
            begin
                 for i:=0 to Length(varGrafPoli)-1 do
                     begin
                          posVetGrafPoli := i;
                          prts           := nil;
                          //********************************************
                          if varGrafPoli[i] <> nil then
                             begin
                                  prts           := varGrafPoli[i].Parts;
                                  for cont:=0 to prts.Count - 1 do
                                      begin
                                          ptsSelectGraf  := nil;
                                          ptsSelectGraf  := CoPoints.Create;
                                          ptsSelectGraf  := IMoPoints(prts.item(cont));

                                          //agora tento localizar
                                          for xxi:=0 to ptsSelectGraf.Count-1 do
                                              begin
                                                  ptSelectGraf := nil;
                                                  ptSelectGraf := CoPoint.Create;
                                                  ptSelectGraf := ptsSelectGraf.Item(xxi);

                                                  if RectSelectGraf.IsPointIn(ptSelectGraf) then
                                                     begin
                                                        SetLength(vetSelectPoli,length(vetSelectPoli)+1);
                                                        vetSelectPoli[Length(vetSelectPoli)-1] := IntToStr(posVetGrafPoli);
                                                        break;
                                                     end;
                                              end;
                                      end;
                             end;
                     end;
            end;
         //******************************************************************************



         //*************************************************************
         //**************  selecionar graficos RETANGULO   **************
         //*************************************************************
         if Length(varGrafRetang)> 0 then
            begin
                 for i:=0 to Length(varGrafRetang)-1 do
                     begin
                          posVetGrafPoli := i;
                          //********************************************
                          if varGrafRetang[i] <> nil then
                             begin
                                  ptSelectGraf := nil;
                                  ptSelectGraf := CoPoint.Create;
                                  ptSelectGraf := varGrafRetang[i].Center;

                                  if RectSelectGraf.IsPointIn(ptSelectGraf) then
                                     begin
                                        SetLength(vetSelectRetang,length(vetSelectRetang)+1);
                                        vetSelectRetang[Length(vetSelectRetang)-1] := IntToStr(posVetGrafPoli);
                                        //break;
                                     end;
                             end;
                     end;
            end;
         //******************************************************************************



         //****************************************
         //SELEÇÃO DE CIRCULO
         //****************************************
         if Length(varGrafCirculo)> 0 then
            begin
                 for i:=0 to Length(varGrafCirculo)-1 do
                     begin
                          posVetGrafPoli := i;
                          prts           := nil;
                          //********************************************
                          if varGrafCirculo[i] <> nil then
                             begin
                                if RectSelectGraf.IsPointIn(varGrafCirculo[i].Center) then
                                   begin
                                      SetLength(vetSelectCirculo,length(vetSelectCirculo)+1);
                                      vetSelectCirculo[Length(vetSelectCirculo)-1] := IntToStr(posVetGrafPoli);
                                   end;
                             end;
                          //********************************************
                     end;
            end;
         //***************************************************************



         //*************************************************************
         //**************  selecionar graficos LINHA      **************
         //*************************************************************
         if Length(varGrafLinha)> 0 then
            begin
                 for i:=0 to Length(varGrafLinha)-1 do
                     begin
                          posVetGrafPoli := i;
                          prts           := nil;
                          //********************************************
                          if varGrafLinha[i] <> nil then
                             begin
                                  prts           := varGrafLinha[i].Parts;
                                  for cont:=0 to prts.Count - 1 do
                                      begin
                                          ptsSelectGraf  := nil;
                                          ptsSelectGraf  := CoPoints.Create;
                                          ptsSelectGraf  := IMoPoints(prts.item(cont));

                                          //agora tento localizar
                                          for xxi:=0 to ptsSelectGraf.Count-1 do
                                              begin
                                                  ptSelectGraf := nil;
                                                  ptSelectGraf := CoPoint.Create;
                                                  ptSelectGraf := ptsSelectGraf.Item(xxi);

                                                  if RectSelectGraf.IsPointIn(ptSelectGraf) then
                                                     begin
                                                        SetLength(vetSelectLinha,length(vetSelectLinha)+1);
                                                        vetSelectLinha[Length(vetSelectLinha)-1] := IntToStr(posVetGrafPoli);
                                                        break;
                                                     end;
                                              end;
                                      end;
                             end;
                     end;
            end;
         //******************************************************************************



         //***********************************
         //SELEÇAO DO PONTO
         //***********************************
         //****************
         if Length(varGrafPonto)> 0 then
            begin
                 for i:=0 to Length(varGrafPonto)-1 do
                     begin
                          posVetGrafPoli := i;
                          //********************************************
                          if varGrafPonto[i] <> nil then
                             begin
                                if RectSelectGraf.IsPointIn(varGrafPonto[i]) then
                                   begin
                                      SetLength(vetSelectPonto,length(vetSelectPonto)+1);
                                      vetSelectPonto[Length(vetSelectPonto)-1] := IntToStr(posVetGrafPoli);
                                   end;
                             end;
                          //********************************************
                     end;
            end;
         //*******************************************************************
         //*******************************************************************




         //***********************************
         //SELEÇAO DA REGUA
         //***********************************
         if varLnTemLinhaDesenhada then
            begin
               prts           := nil;
               prts           := varLnRegua.Parts;
               for cont:=0 to prts.Count - 1 do
                   begin
                      ptsSelectGraf  := nil;
                      ptsSelectGraf  := CoPoints.Create;
                      ptsSelectGraf  := IMoPoints(prts.item(cont));

                      //agora tento localizar
                      for xxi:=0 to ptsSelectGraf.Count-1 do
                          begin
                              ptSelectGraf := nil;
                              ptSelectGraf := CoPoint.Create;
                              ptSelectGraf := ptsSelectGraf.Item(xxi);

                              if RectSelectGraf.IsPointIn(ptSelectGraf) then
                                 begin
                                    varlnLinhaSelecionada := CoLine.Create;
                                    varlnLinhaSelecionada := varLnRegua;
                                 end;
                          end;
                      //*****
                   end;
            end;
         //****************************************


         //****************************************
         //SELEÇÃO DA QUERY BUFFER
         //****************************************
         if Length(varQueryCirculo)> 0 then
            begin
                 for i:=0 to Length(varQueryCirculo)-1 do
                     begin
                          posVetGrafPoli := i;
                          prts           := nil;
                          //********************************************
                          if varQueryCirculo[i] <> nil then
                             begin
                                if RectSelectGraf.IsPointIn(varQueryCirculo[i].Center) then
                                   begin
                                      SetLength(vetSelectQueryCirculo,length(vetSelectQueryCirculo)+1);
                                      vetSelectQueryCirculo[Length(vetSelectQueryCirculo)-1] := IntToStr(posVetGrafPoli);
                                   end;
                             end;
                          //********************************************
                     end;
            end;
         //****************
         if Length(varQueryPontoOrigem)> 0 then
            begin
                 for i:=0 to Length(varQueryPontoOrigem)-1 do
                     begin
                          posVetGrafPoli := i;
                          prts           := nil;
                          //********************************************
                          if varQueryPontoOrigem[i] <> nil then
                             begin
                                if RectSelectGraf.IsPointIn(varQueryPontoOrigem[i]) then
                                   begin
                                      SetLength(vetSelectQueryPonto,length(vetSelectQueryPonto)+1);
                                      vetSelectQueryPonto[Length(vetSelectQueryPonto)-1] := IntToStr(posVetGrafPoli);
                                   end;
                             end;
                          //********************************************
                     end;
            end;
         //****************************************
         //****************************************



         //***********************************
         //SELEÇAO DE TEXTO
         //***********************************
         if Length(varVetGrafTexto)> 0 then
            begin
                 for i:=0 to Length(varVetGrafTextoPT)-1 do
                     begin
                          posVetGrafPoli := i;
                          //********************************************
                          if varVetGrafTextoPT[i] <> nil then
                             begin
                                if RectSelectGraf.IsPointIn(varVetGrafTextoPT[i]) then
                                   begin
                                      SetLength(vetSelectTexto,length(vetSelectTexto)+1);
                                      vetSelectTexto[Length(vetSelectTexto)-1] := IntToStr(posVetGrafPoli);
                                   end;
                             end;
                          //********************************************
                     end;
            end;
         //*******************************************************************
         //*******************************************************************

         //*********************************************
         //verificando quantos estao selecionados
         //*********************************************
          teste             := false;
          if Length(vetSelectTexto) >= 1 then
             teste := true;
          //********************
          if (length(vetSelectPonto) >= 1) then
             if teste = false then
                teste := true
             else
                teste := false;
          //**************************
          if (length(vetSelectLinha) >= 1) then
             if teste = false then
                teste := true
             else
                teste := false;
          //**************************
          if (length(vetSelectCirculo) >= 1) then
             if teste = false then
                teste := true
             else
                teste := false;
          //******************************
          if (length(vetSelectRetang) >= 1) then
             if teste = false then
                teste := true
             else
                teste := false;
          //******************************
          if (length(vetSelectPoli) >= 1) then
             if teste = false then
                teste := true
             else
                teste := false;
          //******************************
          if teste then
             begin
                //se entrar aqui quer dizer que apenas um tipo de grafico esta selecionado
                if Length(vetSelectLinha)=1 then
                   lblInfo.text := 'Linha - Comprimento: '+formatFloat('0.000',varGrafLinha[strToInt(vetSelectLinha[0])].Length);
                if Length(vetSelectPoli)=1 then
                   lblInfo.text := 'Poligono - Area: '+FormatFloat('0.000',varGrafPoli[strToInt(vetSelectPoli[0])].Area)+' Perimetro: '+formatFloat('0.000',varGrafPoli[strToInt(vetSelectPoli[0])].Perimeter);
             end;
         //******************************

         //********************
         atualiza := true;
         map1.TrackingLayer.Refresh(atualiza,v);
         //********************

   end;

end;

procedure TfrmMenu.Map1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
varcursoratual   : word;
varCtrlss        : Boolean;
varShiftss       : Boolean;
ptQuery          : IMoPoint;
begin

//********************************************
//CAPTURA DO PONTO FRMQUERY  *****************
//********************************************
 if VarFrmQueryCapture then
    begin
       ptQuery := CoPoint.Create;
       ptQuery := map1.ToMapPoint(x,y);
       frmQuery.Show;
       frmQuery.edtX.text := FloatToStr(ptQuery.X);
       frmQuery.edtY.text := FloatToStr(ptQuery.Y);
       VarFrmQueryCapture := false;
       exit;
    end;
//********************************************


//********************************************
//Zoom Maior *********************************
//********************************************
   If btMaior.Down = true then
      Begin
         ZoomMaior(button);
         ControlarZoom;
      end;
//********************************************


//***********************************************
//Zoom Menor ************************************
//***********************************************
   If (btMenor.Down = true) and (button=mbLeft) then
      begin
         zoommenor;
         ControlarZoom;
      end;
//***********************************************


//***********************************************
//Identificador *********************************
//***********************************************
   If (btIdentify.Down = true) and (button=mbLeft) then
      Identificador(x,y,MapLegend1.GetActiveLayer);
//***********************************************


//***********************************************
//Select Shapes *********************************
//***********************************************
   If (btSelectSh.Down = true) and (button=mbLeft) then
      begin
         //pegar se o shift ou o ctrl estao pressionados
         if ssShift in shift then
            varShiftss := true
         else
            varShiftss := false;
         //************
         if ssctrl in shift then
            varCtrlss := true
         else
            varCtrlss := false;
         //************
         //agora faço a seleção
         SelecionarShape(varShiftss,varCtrlss);
      end;
//***********************************************


//***********************************************
//REGUA *****************************************
//***********************************************
   if (btRegua.Down = true) and (button=mbLeft) then
      begin
           varlnPt1               := Map1.ToMapPoint(X,Y);
           varLnBoolUsaRegua      := true;
           varlnBoolNovoSeg       := true;
           varLnTemLinhaDesenhada := true;
           //*****
           if varlnPriClick then
              begin
                  varLnRegua        := CoLine.Create;
                  varlnPriClick     := false;
              end;
           //****
      end;
//***********************************************


//***********************************************
//SELEÇÃO DE GRAFICOS****************************
//***********************************************
   if (btSelect.Down = true) and (button=mbLeft) then
      begin
        //PARA MUDANÇA DE POSIÇAO DE GRAFICOS
         if ssCtrl in shift then
            SelecionarGraficos(true)
         else
            SelecionarGraficos(false);
      end;
//***********************************************


//***********************************************
//***  GRAFICOS : POLIGONO  *********************
//***********************************************
   if (btGrafico.Tag = 6) and (button=mbLeft) then
       begin
          DesenharGrafPoli;
       end;
//***********************************************
//***********************************************
//***  GRAFICOS : TEXTO     *********************
//***********************************************
   if (btGrafico.Tag = 1) and (button=mbLeft) then
       begin
          DesenharGrafTexto(x,y);
       end;
//***********************************************


//***********************************************
//***  GRAFICOS : CIRCULO  *********************
//***********************************************
   if (btGrafico.Tag = 4) and (button=mbLeft) then
       begin
          DesenharGrafCirculo;
       end;
//***********************************************


//***********************************************
//***  GRAFICOS : LINHA     *********************
//***********************************************
   if (btGrafico.Tag = 3) and (button=mbLeft) then
       begin
          DesenharGrafLinha;
       end;
//***********************************************


//***********************************************
//***  GRAFICOS : RETANGULO    ******************
//***********************************************
   if (btGrafico.Tag = 5) and (button=mbLeft) then
       begin
          DesenharGrafRetang;
       end;
//***********************************************


//***********************************************
//***  GRAFICOS : Ponto        ******************
//***********************************************
   if (btGrafico.Tag = 2) and (button=mbLeft) then
       begin
          DesenharGrafPonto(x,y);
       end;
//***********************************************


//***********************************************
//***  VERTICE                 ******************
//***********************************************
   if (btVertex.Down = true) and (button=mbLeft) then
       begin
          varPosVerticeX := x;
          varPosVerticeY := y;
          //********
          if not bVertexMoving then
          FindVertex(x,y);
          bVertexMoving := True;
          //********
       end;
//***********************************************


//*********************************************
// TEM QUE SER O ULTIMO CODIGO A SER PROCESSADO
// PARA FAZER O EFEITO DE ARRASTAR O MOUSE COM
// O BOTAO DIREITO DO MOUSE
//*********************************************
//**********  Pan    **************************
//*********************************************
   If (btpan.down = true) or (button=mbRight) then
      begin
         varCursorAtual := Map1.MousePointer;
         //****
         Map1.MousePointer := moPanning;//54
         Map1.Pan;
         Map1.MousePointer := moPan; //53
         //****
         if button=mbRight then
            Map1.MousePointer := varCursorAtual;
      end;
//********************************************

end;

procedure TfrmMenu.DesenharGrafTexto(x,y : Double);
var
//atualiza          : WordBool;
//v                 : Variant;
pt                : IMoPoint;
begin

   if frmGrafTexto = nil then
      frmGrafTexto := TfrmGrafTexto.create(application);
   pt := CoPoint.Create;
   pt := map1.ToMapPoint(x,y);

   varBoolEditarTexto := false;
   
   frmGrafTexto.ponto := CoPoint.Create;
   frmGrafTexto.ponto := pt;
   frmGrafTexto.showmodal;

end;

procedure TfrmMenu.DesenharGrafPonto(x,y : Double);
var
atualiza          : WordBool;
v                 : Variant;
tempPonto         : IMoPoint;
begin

     tempPonto    := CoPoint.Create;
     tempPonto    := map1.ToMapPoint(x,y);

     if tempPonto = nil then exit;

     //**********
     SetLength(varBoolGrafPonto,length(varBoolGrafPonto)+1);
     SetLength(varGrafPonto,length(varGrafPonto)+1);
     SetLength(varVetGrafPontoColor,length(varVetGrafPontoColor)+1);
     SetLength(varVetGrafPontoUsaOutline,length(varVetGrafPontoUsaOutline)+1);
     SetLength(varVetGrafPontoSize,length(varVetGrafPontoSize)+1);
     SetLength(varVetGrafPontoOutCor,length(varVetGrafPontoOutCor)+1);
     SetLength(varVetGrafPontoStyle,length(varVetGrafPontoStyle)+1);
     //**********

     varGrafPonto[length(varGrafPonto)-1]                            := CoPoint.Create;
     varGrafPonto[length(varGrafPonto)-1]                            := tempPonto;
     //***********
     varBoolGrafPonto[length(varBoolGrafPonto)-1]                    := true;
     varVetGrafPontoColor[length(varVetGrafPontoColor)-1]            := varGrafPontoColor;
     varVetGrafPontoUsaOutline[length(varVetGrafPontoUsaOutline)-1]  := varGrafPontoUsaOutline;
     varVetGrafPontoSize[length(varVetGrafPontoSize)-1]              := varGrafPontoSize;
     varVetGrafPontoOutCor[length(varVetGrafPontoOutCor)-1]          := varGrafPontoOutCor;
     varVetGrafPontoStyle[length(varVetGrafPontoStyle)-1]            := varGrafPontoStyle;

     //**** atualizo o trackinglayer
     atualiza  := true;
     Map1.TrackingLayer.Refresh(atualiza,v);

end;

procedure TfrmMenu.DesenharGrafPoli;
var
atualiza         : WordBool;
v                : Variant;
tempPoli         : IMoPolygon;
begin

     tempPoli    := CoPolygon.Create;
     tempPoli    := map1.TrackPolygon;

     if tempPoli = nil then exit;

     //**********
     SetLength(varBoolGrafPoli,length(varBoolGrafPoli)+1);
     SetLength(varGrafPoli,length(varGrafPoli)+1);
     SetLength(varVetGrafPoliColor,length(varVetGrafPoliColor)+1);
     SetLength(varVetGrafPoliUsaOutline,length(varVetGrafPoliUsaOutline)+1);
     SetLength(varVetGrafPoliSize,length(varVetGrafPoliSize)+1);
     SetLength(varVetGrafPoliOutCor,length(varVetGrafPoliOutCor)+1);
     SetLength(varVetGrafPoliStyle,length(varVetGrafPoliStyle)+1);
     //**********

     varGrafPoli[length(varGrafPoli)-1]                            := CoPolygon.Create;
     varGrafPoli[length(varGrafPoli)-1]                            := tempPoli;
     //***********
     varBoolGrafPoli[length(varBoolGrafPoli)-1]                    := true;
     varVetGrafPoliColor[length(varVetGrafPoliColor)-1]            := varGrafPoliColor;
     varVetGrafPoliUsaOutline[length(varVetGrafPoliUsaOutline)-1]  := varGrafPoliUsaOutline;
     varVetGrafPoliSize[length(varVetGrafPoliSize)-1]              := varGrafPoliSize;
     varVetGrafPoliOutCor[length(varVetGrafPoliOutCor)-1]          := varGrafPoliOutCor;
     varVetGrafPoliStyle[length(varVetGrafPoliStyle)-1]            := varGrafPoliStyle;

     //**** atualizo o trackinglayer
     atualiza  := true;
     Map1.TrackingLayer.Refresh(atualiza,v);

end;

procedure TfrmMenu.DesenharGrafCirculo;
var
atualiza         : WordBool;
v                : Variant;
tempPoli         : IMoEllipse;
begin

     tempPoli    := CoEllipse.Create;
     tempPoli    := Map1.TrackCircle;

     if tempPoli = nil then exit;

     //**********
     SetLength(varBoolGrafCirculo,length(varBoolGrafCirculo)+1);
     SetLength(varGrafCirculo,length(varGrafCirculo)+1);
     SetLength(varVetGrafCirculoColor,length(varVetGrafCirculoColor)+1);
     SetLength(varVetGrafCirculoUsaOutline,length(varVetGrafCirculoUsaOutline)+1);
     SetLength(varVetGrafCirculoSize,length(varVetGrafCirculoSize)+1);
     SetLength(varVetGrafCirculoOutCor,length(varVetGrafCirculoOutCor)+1);
     SetLength(varVetGrafCirculoStyle,length(varVetGrafCirculoStyle)+1);
     //**********

     varGrafCirculo[length(varGrafCirculo)-1]                            := CoEllipse.Create;
     varGrafCirculo[length(varGrafCirculo)-1]                            := tempPoli;
     //***********
     varBoolGrafCirculo[length(varBoolGrafCirculo)-1]                    := true;
     varVetGrafCirculoColor[length(varVetGrafCirculoColor)-1]            := varGrafCirculoColor;
     varVetGrafCirculoUsaOutline[length(varVetGrafCirculoUsaOutline)-1]  := varGrafCirculoUsaOutline;
     varVetGrafCirculoSize[length(varVetGrafCirculoSize)-1]              := varGrafCirculoSize;
     varVetGrafCirculoOutCor[length(varVetGrafCirculoOutCor)-1]          := varGrafCirculoOutCor;
     varVetGrafCirculoStyle[length(varVetGrafCirculoStyle)-1]            := varGrafCirculoStyle;

     //**** atualizo o trackinglayer
     atualiza  := true;
     Map1.TrackingLayer.Refresh(atualiza,v);

end;

procedure TfrmMenu.DesenharGrafRetang;
var
atualiza         : WordBool;
v                : Variant;
tempRetang       : IMoRectangle;
begin

     tempRetang    := CoRectangle.Create;
     tempRetang    := map1.TrackRectangle;

     if tempRetang = nil then exit;

     //**********
     SetLength(varBoolGrafRetang,length(varBoolGrafRetang)+1);
     SetLength(varGrafRetang,length(varGrafRetang)+1);
     SetLength(varVetGrafRetangColor,length(varVetGrafRetangColor)+1);
     SetLength(varVetGrafRetangUsaOutline,length(varVetGrafRetangUsaOutline)+1);
     SetLength(varVetGrafRetangSize,length(varVetGrafRetangSize)+1);
     SetLength(varVetGrafRetangOutCor,length(varVetGrafRetangOutCor)+1);
     SetLength(varVetGrafRetangStyle,length(varVetGrafRetangStyle)+1);
     //**********

     varGrafRetang[length(varGrafRetang)-1]                           := CoRectangle.Create;
     varGrafRetang[length(varGrafRetang)-1]                           := tempRetang;
     //***********
     varBoolGrafRetang[length(varBoolGrafRetang)-1]                   := true;
     varVetGrafRetangColor[length(varVetGrafRetangColor)-1]           := varGrafRetangColor;
     varVetGrafRetangUsaOutline[length(varVetGrafRetangUsaOutline)-1] := varGrafRetangUsaOutline;
     varVetGrafRetangSize[length(varVetGrafRetangSize)-1]             := varGrafRetangSize;
     varVetGrafRetangOutCor[length(varVetGrafRetangOutCor)-1]         := varGrafRetangOutCor;
     varVetGrafRetangStyle[length(varVetGrafRetangStyle)-1]           := varGrafRetangStyle;

     //**** atualizo o trackinglayer
     atualiza  := true;
     Map1.TrackingLayer.Refresh(atualiza,v);

end;

procedure TfrmMenu.DesenharGrafLinha;
var
atualiza         : WordBool;
v                : Variant;
tempLine         : IMoLine;
begin

     tempLine    := CoLine.Create;
     tempLine    := map1.TrackLine;

     if tempLine = nil then exit;

     //**********
     SetLength(varBoolGrafLinha,length(varBoolGrafLinha)+1);
     SetLength(varGrafLinha,length(varGrafLinha)+1);
     SetLength(varVetGrafLinhaColor,length(varVetGrafLinhaColor)+1);
     SetLength(varVetGrafLinhaSize,length(varVetGrafLinhaSize)+1);
     SetLength(varVetGrafLinhaStyle,length(varVetGrafLinhaStyle)+1);
     //**********
     varGrafLinha[length(varGrafLinha)-1]                            := CoLine.Create;
     varGrafLinha[length(varGrafLinha)-1]                            := tempLine;
     //***********
     varBoolGrafLinha[length(varBoolGrafLinha)-1]                    := true;
     varVetGrafLinhaColor[length(varVetGrafLinhaColor)-1]            := varGrafLinhaColor;
     varVetGrafLinhaSize[length(varVetGrafLinhaSize)-1]              := varGrafLinhaSize;
     varVetGrafLinhaStyle[length(varVetGrafLinhaStyle)-1]            := varGrafLinhaStyle;

     //**** atualizo o trackinglayer
     atualiza  := true;
     Map1.TrackingLayer.Refresh(atualiza,v);

end;


procedure TfrmMenu.Map1AfterLayerDraw(ASender: TObject; index: Smallint;
  canceled: WordBool; hDC: Cardinal);
var
i      : integer;
lyr    : IMoMapLayer;
lyrs   : IMoLayers;
retang : IMoRectangle;
V      : Variant;
begin



   //*********************************
   //atualizo o mapa 2 uma unica vez a cada refresh das layers
   if index = 0 then
      begin
        IF VarPermitirDesenharLayers then
           begin
              retang := Map1.Extent;
              retang.ScaleRectangle(variant(1.5));
              Map2.Extent := retang;
              Map2.TrackingLayer.Refresh(True,v);
              //map2.refresh;
           end;
      end;
  //*********************************


  //*********************************
  //DESENHA OS SHAPES SELECIONADOS!!!
  if length(vet_taglayer)>0 then
     begin
        lyr  := CoMapLayer.create;
        lyrs := map1.Layers;
        lyr  := imomaplayer(lyrs.item(index));

        for i:=0 to length(vet_taglayer)-1 do
           begin
              If lyr.tag = vet_taglayer[i] Then
                begin
                   if lyr.Visible then
                      DrawRecordset(vet_SelectedFeatures[i],cor_SelectPreenchCamada,varPreenchSelecaoCamada);
                end;
           end;
     end;
  //*********************************


end;

procedure TFrmMenu.DrawRecordset(recs:IMoRecordset;varcor:Tcolor;style:integer);
var
 sym  : IMoSymbol;
begin

   if recs<>nil then
      begin
          sym       := CoSymbol.create;
          sym.color := varcor;

          //************
          if varBoolDesenharOutCamada then
             begin
                sym.Outline      := true;
                sym.OutlineColor := cor_OutSelectCamada;
                sym.Size         := varEspSelecaoCamada;
             end
          else
             sym.Outline := false;
          //***********
          sym.style := style;
          //*****
          Map1.DrawShape(recs,sym);
      end;

end;

procedure TfrmMenu.Map2AfterLayerDraw(ASender: TObject; index: Smallint;
  canceled: WordBool; hDC: Cardinal);
var
sym     : IMoSymbol;
retang  : IMoRectangle;
begin

   if VarPermitirDesenharLayers then
      begin
         retang           := Map1.Extent;
         retang.ScaleRectangle(variant(1.0));  //errado
         sym              := CoSymbol.create;
         sym.OutlineColor := moRed;
         sym.style        := moLightGrayFill;
         sym.SymbolType   := moFillSymbol;
         sym.color        := moRed;
         Map2.DrawShape(retang, sym);
      end;

end;

procedure TfrmMenu.Map2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
pt : imopoint;
begin

  pt := CoPoint.create;
  Pt := Map2.ToMapPoint(x,y);

  map1.CenterAt(pt.X,pt.Y);

end;

procedure TfrmMenu.btMenorClick(Sender: TObject);
begin
btGrafico.Tag := 0;

   DesabilitaGrafico;
   Map1.MousePointer := moZoomOut;

end;

procedure TfrmMenu.btPanClick(Sender: TObject);
begin
btGrafico.Tag := 0;

   DesabilitaGrafico;
   Map1.MousePointer := mopan;

end;

procedure TfrmMenu.btRotMapaClick(Sender: TObject);
begin

  map1.MousePointer := 6;

end;

Procedure TfrmMenu.AtualizarCoordenadasXY(x,y : integer);
var
pmapa   : point;
LDegree : string;
LMin    : string;
lsec    : string;
begin

  if Coord = false then
     begin
         //lblCoord.caption := 'UTM';
         pmapa := Map1.ToMapPoint(X, Y);
         lblX.caption := formatfloat('0.0000',pmapa.X); // label recebe coordenada X
         lblY.caption := formatfloat('0.0000',pmapa.Y); // label recebe coordenada Y
     end
     else
        //lat long
        begin
           //'convertendo a coordenada para graus minutos e segundos
           //'EIXO X'
           //lblCoord.caption := 'LatLong';
           pmapa   := Map1.ToMapPoint(X, Y);
           LDegree := formatfloat('0.0000',pmapa.X);
           LMin    := vartostr(Frac(strtofloat(LDegree)));
           //*******
           LDegree := vartostr(int(pmapa.X));
           //******
           LMin    := formatfloat('0.0000',(strtofloat(LMin) * 60)* -1);
           lsec    := vartostr(Frac(strtofloat(LMin)));

           LMin    := vartostr(int(strtofloat(LMin)));
           lsec    := formatfloat('0.0000',strtofloat(lsec) * 60);
           Lsec    := vartostr(int(strtofloat(Lsec)));

           lblX.Caption := LDegree + 'º ' + LMin + '''' +' '+ lsec + '''''';

           //EIXO Y

           LDegree := formatfloat('0.0000',pmapa.Y);
           LMin    := vartostr(Frac(strtofloat(LDegree)));
           //*******
           LDegree := vartostr(int(pmapa.Y));
           //******
           LMin    := formatfloat('0.0000',(strtofloat(LMin) * 60)*-1);
           lsec    := vartostr(Frac(strtofloat(LMin)));

           LMin    := vartostr(int(strtofloat(LMin)));
           lsec    := formatfloat('0.0000',strtofloat(lsec) * 60);
           Lsec    := vartostr(int(strtofloat(Lsec)));

           lblY.Caption := LDegree + 'º ' + LMin + '''' +' '+ lsec + '''''';
        end;
//**************************************************************************
//**************************************************************************

end;

procedure TfrmMenu.ReguaMouseMove(x,y:double);
var
varlnPt2      : IMoPoint;
varlnPts      : IMoPoints;
varLnTmpLinha : IMoLine;
varTrue       : WordBool;
v             : Variant;
begin

    if varLnBoolUsaRegua then
       begin
           varlnPts := CoPoints.Create;
           varlnpt2 := map1.ToMapPoint(x,y);

           varlnPts.Add(varlnPt1);
           varlnPts.Add(varlnPt2);

           varLnTmpLinha := CoLine.Create;
           varLnTmpLinha.Parts.Add(varlnPts);
           //******
           if varlnBoolNovoSeg then
              begin
                  varlnBoolNovoSeg := false;
                  varLnRegua.Parts.Add(varlnPts);
              end;
           //******
           varLnRegua.Parts.Set_(varLnRegua.Parts.Count-1,varlnPts);
           lblSegRegua.Caption := formatfloat('0.000',varLnTmpLinha.Length);
           lblRegua.caption    := formatfloat('0.000',varLnRegua.Length);
           varTrue             := true;

           if varLnTmpLinha.Length > 0 then
              varlnTmpSegTam      := formatfloat('0.000',varLnTmpLinha.Length);

           map1.TrackingLayer.Refresh(varTrue,v);
       end;

end;

procedure TfrmMenu.Map1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

    //**************************************************
    // Rotina para mostrar coordenadas
    AtualizarCoordenadasXY(x,y);
    //**************************************************

    //**************************************************
    //***** ferramenta regua
    //**************************************************
    ReguaMouseMove(x,y);
    //**************************************************

    //**************************************************
    //***** MOVER GRAFICOS
    //**************************************************
    if varBoolPermitirMudarPos then
       begin
          MoverGraficos(x,y);
       end;
    //**************************************************


    //**************************************************
    //***** VERTEX MOVE
    //**************************************************
    If bVertexMoving Then
       begin
         if Length(vetSelectPoli)=1 then
           MoverVertex(x,y)
          else
           MoverVertexLinha(x,y);
       End;
    //***************************************************      
    varPosVerticeX := x;
    varPosVerticeY := y;

end;

procedure TfrmMenu.MoverVertex(x,y : Double);
var
tmpPoli : IMoPolygon;
ptstmp  : IMoPoints;
prts    : IMoParts;
pt      : IMoPoint;
varTrue : WordBool;
V       : Variant;
begin

       varPosVerticeX := x;
       varPosVerticeY := y;
       pt       := CoPoint.Create;
       pt       := Map1.ToMapPoint(X,Y);
       tmpPoli  := varGrafPoli[strToInt(vetSelectPoli[0])];
       prts     := tmpPoli.Parts;
       ptstmp   := CoPoints.Create;
       ptstmp   := IMoPoints(prts.item(0));
       //*******
       ptstmp.Set_(VarIntIndexVertice,pt);
       //*******
       tmpPoli.Parts.Set_(0,ptstmp);
       //*******
       varGrafPoli[strToInt(vetSelectPoli[0])] := tmpPoli;
       //*******
       lblInfo.text := 'Poligono - Area: '+FormatFloat('0.000',varGrafPoli[strToInt(vetSelectPoli[0])].Area)+' Perimetro: '+formatFloat('0.000',varGrafPoli[strToInt(vetSelectPoli[0])].Perimeter);
       varTrue := true;
       Map1.TrackingLayer.Refresh(varTrue,V);

end;

procedure TfrmMenu.MoverGraficos(x,y:double);
var
pt      : IMoPoint;
varTrue : WordBool;
V       : Variant;
begin

       //mover Texto
       if Length(vetSelectTexto)=1 then
          begin
              varVetGrafTextoPT[StrToInt(vetSelectTexto[0])] := map1.ToMapPoint(x,y);
              varTrue := true;
              map1.TrackingLayer.Refresh(varTrue,V);
          end;
       //****mover ponto
       if Length(vetSelectPonto)=1 then
          begin
               varGrafPonto[StrToInt(vetSelectPonto[0])] := map1.ToMapPoint(x,y);
               varTrue := true;
               map1.TrackingLayer.Refresh(varTrue,V);
          end;

       //**************************
       //****mover linha
       if Length(vetSelectLinha)=1 then
          begin
               if varBoolGrafLinha[StrToInt(vetSelectLinha[0])] then
                  begin
                      //******
                      tl.AddEvent(varGrafLinha[StrToInt(vetSelectLinha[0])],4);
                      varPosTlMovGraf := tl.EventCount-1;
                      varBoolGrafLinha[StrToInt(vetSelectLinha[0])] := false;
                  end;
               pt := CoPoint.Create;
               pt := map1.ToMapPoint(x,y);
               tl.Event[varPosTlMovGraf].MoveTo(pt.x,pt.y);

               varTrue := true;
               map1.TrackingLayer.Refresh(varTrue,V);
          end;
       //****poligono
       if Length(vetSelectPoli)=1 then
          begin
               if varBoolGrafPoli[StrToInt(vetSelectPoli[0])] then
                  begin
                      //******
                      tl.AddEvent(varGrafPoli[StrToInt(vetSelectPoli[0])],2);
                      varPosTlMovGraf := tl.EventCount-1;
                      varBoolGrafPoli[StrToInt(vetSelectPoli[0])] := false;
                  end;
               pt := CoPoint.Create;
               pt := map1.ToMapPoint(x,y);
               tl.Event[varPosTlMovGraf].MoveTo(pt.x,pt.y);

               varTrue := true;
               map1.TrackingLayer.Refresh(varTrue,V);
          end;
       //*********
       //****retangulo
       if Length(vetSelectRetang)=1 then
          begin
               if varBoolGrafRetang[StrToInt(vetSelectRetang[0])] then
                  begin
                      //******
                      tl.AddEvent(varGrafRetang[StrToInt(vetSelectRetang[0])],3);
                      varPosTlMovGraf := tl.EventCount-1;
                      varBoolGrafRetang[StrToInt(vetSelectRetang[0])] := false;
                  end;
               pt := CoPoint.Create;
               pt := map1.ToMapPoint(x,y);
               tl.Event[varPosTlMovGraf].MoveTo(pt.x,pt.y);

               varTrue := true;
               map1.TrackingLayer.Refresh(varTrue,V);
          end;
       //*********
       //****Circulo
       if Length(vetSelectCirculo)=1 then
          begin
               if varBoolGrafCirculo[StrToInt(vetSelectCirculo[0])] then
                  begin
                      //******
                      tl.AddEvent(varGrafCirculo[StrToInt(vetSelectCirculo[0])],5);
                      varPosTlMovGraf := tl.EventCount-1;
                      varBoolGrafCirculo[StrToInt(vetSelectCirculo[0])] := false;
                  end;
               pt := CoPoint.Create;
               pt := map1.ToMapPoint(x,y);
               tl.Event[varPosTlMovGraf].MoveTo(pt.x,pt.y);

               varTrue := true;
               map1.TrackingLayer.Refresh(varTrue,V);
          end;

end;

procedure TfrmMenu.MapLegend1AfterSetLayerVisible(Sender: TObject;
  index: Integer; isVisible: Boolean);
var
texto           : string;
lyrs            : imolayers;
lyr             : imomaplayer;
camfoto,caminho : string;
posfoto,i,vetor : integer;
begin

   //CASO SEJA UMA FOTO ECW HABILITO/DESABILITO CONFORME A AÇÃO
   try
       if (IMoMapLayer(IMoLayers(Map1.layers).Item(index)).LayerType = moMapLayer) then
          begin
               lyr     := CoMapLayer.create;
               lyrs    := map1.Layers;
               lyr     := imomaplayer(lyrs.item(index));

               texto   := ExtractFileExt(lyr.tag);
               texto   := copy(texto,1,length(texto)-6);

               if UpperCase(texto) = '.ECW' then //eh ECW
                  begin
                     //VarPermitirDesenharLayers := false;
                     lyr.Visible := isVisible;
                     //***********************
                     caminho := copy(lyr.Tag,1,length(lyr.tag)-6);
                     //agora pegando qual eh a posiçao do vetor responsavel pelo cara;
                     vetor := length(fotosECW);

                     //************************
                     for i:=1 to vetor do
                         begin
                             camFoto := fotosECW[i];
                             //*********************
                             if uppercase(camfoto) = uppercase(caminho) then
                                begin
                                  posfoto := i;
                                  break;
                                end;
                             //*********************
                         end;
                     //fazendo a inversao

                     //ECWView[posfoto] := isVisible;
                     ECWView[posfoto] := MapLegend1.StatusDoCheckBoxDaLegenda(index);
                     EcwSetView(posfoto);
                     //VarPermitirDesenharLayers := true;
                     //*****************
                  end;
              //*************
          end;
   except
       //nothing;
   end;

end;

procedure TfrmMenu.MostrarMapaGuia1Click(Sender: TObject);
begin

  ControlSizer1.Control    := nil;
  //***********************
  pnMapa2.RollState        := false;
  pnMapa2.Width            := 235;
  pnMapa2.Height           := 137;
  pnMapa2.Top              := 4;
  pnMapa2.Left             := map1.Width - pnMapa2.Width - 5;
  pnMapa2.Visible          := true;

end;

procedure TfrmMenu.MostrarLegenda1Click(Sender: TObject);
begin

  ControlSizer1.Control    := nil;
  pnLegenda.RollState      := false;
  pnLegenda.Height         := map1.Height - 30;
  pnLegenda.Left           := 6;
  pnLegenda.Width          := 227;
  pnLegenda.top            := 8;
  pnlegenda.Visible        := true;

end;

procedure TfrmMenu.btIdentifyClick(Sender: TObject);
begin
 btGrafico.Tag := 0;

  DesabilitaGrafico;
  map1.MousePointer := moIdentify;

end;

procedure TfrmMenu.btSDEClick(Sender: TObject);
begin

  if varADICIONARSDE then
     begin
          if frmSDE = nil then
             frmSDE := TfrmSDE.create(application);
          frmSDE.Showmodal;
     end
     else
        begin
             mensagem('A Função Adicionar Camadas SDE foi Desabilitada Pelo Administrador do Projeto!',mtInformation,[mbOk]);
        end;

end;

procedure TfrmMenu.MapLegend1LayerDblClick(Sender: TObject;
  index: Integer);
var
lyrs : imolayers;
ext  : string;
lyr  : IMoMapLayer;
begin


    if varEDITARLEGENDA then
       begin

          try

           if (IMoMapLayer(IMoLayers(Map1.layers).Item(index)).LayerType = moMapLayer) then
              begin
                   //copiando o nome da layer
                   lyr  := CoMapLayer.Create;
                   lyrs := map1.Layers;
                   lyr  := imomaplayer(lyrs.item(index));

                   //***************************************
                   //verificando se a layer é do ECW
                   ext := copy(ExtractFileExt(lyr.tag),1,length(ExtractFileExt(lyr.tag))-2);

                   If (UpperCase(ext) = '.ECW|ECW') then
                      begin
                          if frmLegendaECW <> nil then frmLegendaecw.close;
                          frmLegendaECW := tfrmlegendaecw.create(application);
                          frmLegendaECW.showmodal;
                          exit;
                      end;
                   //***************************************

                   //verficando se o tema tem um formato valido
                   ext := UpperCase(ExtractFileExt(lyr.tag));

                   If frmLegenda = nil then
                     begin
                      ItemDaLegendaSelecionado     := index;
                      frmLegenda                   := TfrmLegenda.create(application);
                      frmLegenda.show;
                    end
                   else
                      begin
                          ItemDaLegendaSelecionado := index;
                          frmLegenda.Show;
                      end;

              end
              else
                  begin
                      if frmLegendaECW <> nil then frmLegendaecw.close;
                         frmLegendaECW := tfrmlegendaecw.create(application);
                      frmLegendaECW.showmodal;
                  end;

          except
               Mensagem('Não Há Tema Ativo!',mtError,[mbok]);
          end;
          //******************

       end
         else
             mensagem('O Administrador do Projeto Desabilitou a Edição da Legenda!',mtInformation,[mbok]);

end;

procedure TfrmMenu.AtualizarScaleBar;
begin

  With ScaleBar1.MapExtent do
    begin
      MinX := Map1.Extent.Left;
      MinY := Map1.Extent.Bottom;
      MaxX := Map1.Extent.Right;
      MaxY := Map1.Extent.Top;
    End;

// Jogo a Extensão de Página do ScaleBar
  With ScaleBar1.PageExtent do
    begin
      MinX := Map1.Left;
      MinY := Map1.Top;
      MaxX := (Map1.Left + Map1.Width);
      MaxY := (Map1.Top + Map1.Height);
    End;

    ScaleBar1.ScaleBarUnits := suMeters;
    ScaleBar1.Refresh;

end;

procedure TfrmMenu.DesenharGraficos;
var
   sym       : IMoSymbol;
   i         : Integer;
   sym1      : IMoTextSymbol;
   ft        : tfont;
   oleFt     : variant;
   xxi       : Smallint;
DesenharPoli : boolean;
begin

   // poligonos
   //************************************
   if Length(varBoolGrafPoli)>0 then
      begin
          for i:=0 to Length(varBoolGrafPoli)-1 do
              begin
                  if varBoolGrafPoli[i] then
                     begin
                         sym              := CoSymbol.Create;
                         sym.Color        := varVetGrafPoliColor[i];
                         sym.Outline      := varVetGrafPoliUsaOutline[i];

                         DesenharPoli     := true;
                         //************************************
                         if btVertex.Down then
                            begin
                               for xxi:=0 to length(vetSelectPoli)-1 do
                                   begin
                                      if trim(vetSelectPoli[xxi])<>'' then
                                         if StrToInt(vetSelectPoli[xxi])= i then
                                            begin
                                               DesenharPoli := false;
                                               break;
                                            end;
                                   end;
                            end;
                         //************************************
                         if varVetGrafPoliUsaOutline[i] then
                            begin
                               sym.Size         := varVetGrafPoliSize[i];
                               sym.OutlineColor := varVetGrafPoliOutCor[i];
                            end;

                         sym.Style        := varVetGrafPoliStyle[i];
                         //***
                         if DesenharPoli then
                            Map1.DrawShape(varGrafPoli[i],sym);
                         //***   
                     end;
              end;
      end;
   //****************************************


   // Retangulos
   //************************************
   if Length(varBoolGrafRetang)>0 then
      begin
          for i:=0 to Length(varBoolGrafRetang)-1 do
              begin
                  if varBoolGrafRetang[i] then
                     begin
                         sym              := CoSymbol.Create;
                         sym.Color        := varVetGrafRetangColor[i];
                         sym.Outline      := varVetGrafRetangUsaOutline[i];

                         if varVetGrafRetangUsaOutline[i] then
                            begin
                               sym.Size         := varVetGrafRetangSize[i];
                               sym.OutlineColor := varVetGrafRetangOutCor[i];
                            end;

                         sym.Style        := varVetGrafRetangStyle[i];
                         Map1.DrawShape(varGrafRetang[i],sym);
                     end;
              end;
      end;
   //****************************************


   // Ponto
   //************************************
   if Length(varBoolGrafPonto)>0 then
      begin
          for i:=0 to Length(varBoolGrafPonto)-1 do
              begin
                  if varBoolGrafPonto[i] then
                     begin
                         sym              := CoSymbol.Create;
                         sym.SymbolType   := moPointSymbol;
                         sym.Color        := varVetGrafPontoColor[i];
                         sym.Outline      := varVetGrafPontoUsaOutline[i];
                         sym.Size         := varVetGrafPontoSize[i];

                         if varVetGrafPontoUsaOutline[i] then
                            begin
                               sym.OutlineColor := varVetGrafPontoOutCor[i];
                            end;

                         sym.Style        := varVetGrafPontoStyle[i];
                         Map1.DrawShape(varGrafPonto[i],sym);
                     end;
              end;
      end;
   //****************************************


   //****************************************
   if Length(varBoolGrafPontoUTM)>0 then
      begin
          for i:=0 to Length(varBoolGrafPontoUTM)-1 do
              begin
                  if varBoolGrafPontoUTM[i] then
                     begin
                         sym              := CoSymbol.Create;
                         sym.SymbolType   := moPointSymbol;
                         sym.Color        := varVetGrafPontoColorUTM[i];
                         sym.Outline      := varVetGrafPontoUsaOutlineUTM[i];
                         sym.Size         := varVetGrafPontoSizeUTM[i];

                         if varVetGrafPontoUsaOutlineUTM[i] then
                            begin
                               sym.OutlineColor := varVetGrafPontoOutCorUTM[i];
                            end;

                         sym.Style        := varVetGrafPontoStyleUTM[i];
                         Map1.DrawShape(varGrafPontoUTM[i],sym);
                     end;
              end;
      end;

   // Linhas
   //************************************
   if Length(varBoolGrafLinha)>0 then
      begin
          for i:=0 to Length(varBoolGrafLinha)-1 do
              begin
                  if varBoolGrafLinha[i] then
                     begin
                         sym              := CoSymbol.Create;
                         sym.SymbolType   := moLineSymbol;
                         sym.Color        := varVetGrafLinhaColor[i];
                         sym.Style        := varVetGrafLinhaStyle[i];
                         sym.Size         := varVetGrafLinhaSize[i];
                         Map1.DrawShape(varGrafLinha[i],sym);
                     end;
              end;
      end;
   //****************************************


   // CIRCULOS
   //************************************
   if Length(varBoolGrafCirculo)>0 then
      begin
          for i:=0 to Length(varBoolGrafCirculo)-1 do
              begin
                  if varBoolGrafCirculo[i] then
                     begin
                         sym              := CoSymbol.Create;
                         sym.Color        := varVetGrafCirculoColor[i];
                         sym.Outline      := varVetGrafCirculoUsaOutline[i];

                         if varVetGrafCirculoUsaOutline[i] then
                            begin
                               sym.Size         := varVetGrafCirculoSize[i];
                               sym.OutlineColor := varVetGrafCirculoOutCor[i];
                            end;

                         sym.Style        := varVetGrafCirculoStyle[i];
                         Map1.DrawShape(varGrafCirculo[i],sym);
                     end;
              end;
      end;
   //****************************************


   //****************************************
   // TEXTOS
   //************************************
   if Length(varBoolGrafTexto)>0 then
      begin
          for i:=0 to Length(varBoolGrafTexto)-1 do
              begin
                  if varBoolGrafTexto[i] then
                     begin
                         ft                       := nil;
                         ft                       := TFont.Create;
                         ft.name                  := varVetGrafTextoFonteNome[i];
                         ft.Size                  := varvetGrafTextoSize[i];
                         ft.Style                 := varvetGrafTextoFonteStyle[i];
                         //***
                         sym1                     := CoTextSymbol.Create;
                         sym1.Fitted              := true;
                         oleFt                    := FontToOleFont(ft);
                         sym1.Font                := IFontDisp(IDispatch(oleFt));
                         sym1.Rotation            := varVetGrafTextoRotacao[i];
                         sym1.Color               := varVetGrafTextoColor[i];
                         sym1.HorizontalAlignment := moAlignLeft;
                         sym1.VerticalAlignment   := moAlignLeft;
                         //*********
                         Map1.DrawText(varVetGrafTexto[i],varVetGrafTextoPT[i],sym1);
                     end;
              end;
      end;
   //****************************************


   //QUERY COM BUFFER
   //************************************
   if Length(varQueryCirculo)>0 then
      begin
          for i:=0 to Length(varQueryCirculo)-1 do
              begin
                  sym            := CoSymbol.Create;
                  sym.SymbolType := varQuerySymbol;//moFillSymbol;
                  sym.style      := varQueryStyle;//moLightGrayFill;
                  sym.color      := varQueryColor;//moRed;
                  if varQueryCirculo[i] <> nil then
                     Map1.DrawShape(varQueryCirculo[i],sym);
                  //**************************
                  sym            := CoSymbol.Create;
                  sym.SymbolType := varQuerySymbolPonto;
                  sym.style      := varQueryStylePonto;
                  sym.color      := varQueryColorPonto;
                  sym.Size       := varQueryColorSize;
                  if varQueryPontoOrigem[i] <> nil then
                     Map1.DrawShape(varQueryPontoOrigem[i],sym);
              end;
      end;
   //****************************************

end;

procedure TfrmMenu.DesenharGraficosSelecionados;
var
   sym   : IMoSymbol;
   i     : Integer;
   sym1  : IMoTextSymbol;
   oleFt : variant;
   ft    : TFont;
begin

   //*******************************************
   //DESENHAR GRAFICOS  SELECIONADOS: POLIGONO
   //*******************************************
   if Length(vetSelectPoli)>0 then
      begin
          for i:=0 to Length(vetSelectPoli)-1 do
              begin
                   if trim(vetSelectPoli[i])<> '' then
                      begin
                           //if varBoolGrafPoli[i] then  //pq só funciona assim?
                              begin
                                  sym            := CoSymbol.Create;
                                  sym.SymbolType := moFillSymbol;
                                  sym.Color      := cor_SelectGraf;
                                  //*******************************
                                  if not btVertex.Down then
                                     sym.Style      := moSolidFill
                                  else
                                     sym.Style      := 8;
                                  //*******************************
                                  Map1.DrawShape(varGrafPoli[StrToInt(vetSelectPoli[i])],sym);
                              end;
                      end;
              end;
      end;
   //*******************************************


   //*******************************************
   //DESENHAR GRAFICOS  SELECIONADOS: RETANGULO
   //*******************************************
   if Length(vetSelectRetang)>0 then
      begin
          for i:=0 to Length(vetSelectRetang)-1 do
              begin
                   if trim(vetSelectRetang[i])<> '' then
                      begin
                           //if varBoolGrafRetang[i] then
                              begin
                                  sym            := CoSymbol.Create;
                                  sym.SymbolType := moFillSymbol;
                                  sym.Color      := cor_SelectGraf;
                                  sym.Style      := moSolidFill;
                                  Map1.DrawShape(varGrafRetang[StrToInt(vetSelectRetang[i])],sym);
                              end;
                      end;
              end;
      end;
   //*******************************************


   //*******************************************
   //DESENHAR GRAFICOS  SELECIONADOS: LINHA
   //*******************************************
   if Length(vetSelectLinha)>0 then
      begin
          for i:=0 to Length(vetSelectLinha)-1 do
              begin
                   if trim(vetSelectLinha[i])<> '' then
                      begin
                         //  if varBoolGrafLinha[i] then
                              begin
                                 sym            := CoSymbol.Create;
                                 sym.SymbolType := moLineSymbol;
                                 sym.Color      := cor_SelectGraf;
                                 sym.Style      := moSolidLine;

                                  if not btVertex.Down then
                                     sym.Style      := moSolidLine
                                  else
                                     sym.Style      := 0;
                                 Map1.DrawShape(varGrafLinha[StrToInt(vetSelectLinha[i])],sym);
                              end;
                      end;
              end;
      end;
   //*******************************************


   //*******************************************
   //DESENHAR GRAFICOS  SELECIONADOS: PONTO
   //*******************************************
   if Length(vetSelectPonto)>0 then
      begin
          for i:=0 to Length(vetSelectPonto)-1 do
              begin
                   if trim(vetSelectPonto[i])<> '' then
                      begin
                         sym            := CoSymbol.Create;
                           sym.SymbolType := moPointSymbol;
                           sym.Color      := cor_SelectGraf;
                           sym.Style      := varVetGrafPontoStyle[StrToInt(vetSelectPonto[i])];
                           sym.Outline    := varVetGrafPontoUsaOutline[StrToInt(vetSelectPonto[i])];
                           sym.Size       := varVetGrafPontoSize[StrToInt(vetSelectPonto[i])];
                           Map1.DrawShape(varGrafPonto[StrToInt(vetSelectPonto[i])],sym);
                      end;
              end;
      end;
//*******************************************



   //*******************************************
   //DESENHAR GRAFICOS  SELECIONADOS: QUERY CIRCULO
   //*******************************************
   if Length(vetSelectQueryCirculo)>0 then
      begin
          for i:=0 to Length(vetSelectQueryCirculo)-1 do
              begin
                   if trim(vetSelectQueryCirculo[i])<> '' then
                      begin
                           sym            := CoSymbol.create;
                           sym.SymbolType := varQuerySymbol;//moFillSymbol;
                           sym.style      := varQueryStyle;//moLightGrayFill;
                           sym.color      := cor_SelectGraf;
                           Map1.DrawShape(varQueryCirculo[StrToInt(vetSelectQueryCirculo[i])],sym);
                      end;
              end;
      end;
   //DESENHAR GRAFICOS  SELECIONADOS: QUERY PONTO
   if Length(vetSelectQueryPonto)>0 then
      begin
          for i:=0 to Length(vetSelectQueryPonto)-1 do
              begin
                   if trim(vetSelectQueryCirculo[i])<> '' then
                      begin
                           sym            := CoSymbol.create;
                           sym.SymbolType := varQuerySymbolPonto;//moFillSymbol;
                           sym.style      := varQueryStylePonto;//moLightGrayFill;
                           sym.color      := cor_SelectGraf;
                           Map1.DrawShape(varQueryCirculo[StrToInt(vetSelectQueryCirculo[i])],sym);
                      end;
              end;
      end;
   //*******************************************



   //***** regua selecionada ****************
   if varlnLinhaSelecionada <> nil then
      begin
         sym            := CoSymbol.create;
         sym.SymbolType := moLineSymbol;
         sym.Style      := varReguaEstiloSelect;
         sym.Size       := varReguaSizeSelect;
         sym.Color      := varReguaColorSelect;
         Map1.DrawShape(varlnLinhaSelecionada,sym);
      end;
   //****************************************



   //*******************************************
   //DESENHAR GRAFICOS  SELECIONADOS: CIRCULOS
   //*******************************************
   if Length(vetSelectCirculo)>0 then
      begin
          for i:=0 to Length(vetSelectCirculo)-1 do
              begin
                   if trim(vetSelectCirculo[i])<> '' then
                      begin
                         //  if varBoolGrafCirculo[i] then
                              begin
                                 sym            := CoSymbol.Create;
                                 sym.SymbolType := moFillSymbol;
                                 sym.Color      := cor_SelectGraf;
                                 sym.Style      := moSolidFill;
                                 Map1.DrawShape(varGrafCirculo[StrToInt(vetSelectCirculo[i])],sym);
                              end;
                      end;
              end;
      end;
   //*******************************************



   //*******************************************
   //DESENHAR GRAFICOS SELECIONADOS: TEXTO
   //*******************************************
   if Length(vetSelectTexto)>0 then
      begin
          for i:=0 to Length(vetSelectTexto)-1 do
              begin
                   if trim(vetSelectTexto[i])<> '' then
                      begin
                          ft                       := TFont.Create;
                          ft.name                  := varVetGrafTextoFonteNome[StrToInt(vetSelectTexto[i])];
                          ft.Style                 := varVetGrafTextoFonteStyle[StrToInt(vetSelectTexto[i])];
                          ft.Size                  := varVetGrafTextoSize[StrToInt(vetSelectTexto[i])];
                          sym1                     := CoTextSymbol.Create;
                          oleFt                    := FontToOleFont(ft);
                          sym1.Font                := IFontDisp(IDispatch(oleFt));
                          sym1.Rotation            := varVetGrafTextoRotacao[StrToInt(vetSelectTexto[i])];
                          sym1.Color               := cor_SelectGraf;//varVetGrafTextoColor[StrToInt(vetSelectTexto[i])];
                          sym1.HorizontalAlignment := moAlignLeft;
                          sym1.VerticalAlignment   := moAlignLeft;
                          //****
                          Map1.DrawText(varVetGrafTexto[StrToInt(vetSelectTexto[i])],varVetGrafTextoPT[StrToInt(vetSelectTexto[i])],sym1);
                      end;
              end;
      end;
   //*******************************************

end;

procedure TfrmMenu.Map1AfterTrackingLayerDraw(ASender: TObject;
  hDC: Cardinal);
var
i    : smallint;
pt   : IMoPoint;
sym  : IMoSymbol;
begin

   //********************************
   //Atualizar Scalebar
   //********************************
   AtualizarScaleBar;
   //********************************


   //********************************
   //DESENHAR GRAFICOS
   //********************************
   DesenharGraficos;
   //********************************


   //********************************
   //DESENHAR REGUA
   //********************************
   DesenharRegua;
   //********************************


   //******************************************
   //********* DEVE VIR POR ULTIMO  ***********
   //*********  SELEÇÃO DE GRAFICOS ***********
   //******************************************
   DesenharGraficosSelecionados;
   //******************************************


   //******************************************
   //******************************************
   //desenhar vertices (editar vertices poligono)
   //******************************************
   if vetPtsEditVertexPoli <> nil then
      begin
          sym            := CoSymbol.Create;
          sym.SymbolType := moPointSymbol;
          sym.Style      := moSquareMarker;
          sym.Color      := moRed;
          sym.Size       := 6;

           for i:=0 to vetPtsEditVertexPoli.Count-1 do
              begin
                  pt := CoPoint.Create;
                  pt := IMoPoint(vetPtsEditVertexPoli.Item(i));
                  Map1.DrawShape(pt,sym);
              end;
      end;
   //*****************************************
   //desenhar vertices (editar vertices linha)
   //******************************************
   if vetPtsEditVertexlinha <> nil then
      begin
          sym            := CoSymbol.Create;
          sym.SymbolType := moPointSymbol;
          sym.Style      := moSquareMarker;
          sym.Color      := moRed;
          sym.Size       := 6;

           for i:=0 to vetPtsEditVertexlinha.Count-1 do
              begin
                  pt := CoPoint.Create;
                  pt := IMoPoint(vetPtsEditVertexLinha.Item(i));
                  Map1.DrawShape(pt,sym);
              end;
      end;

   //******************************************


end;

Procedure TfrmMenu.DesenharRegua;
var
   sym   : IMoSymbol;
begin

   if varLnTemLinhaDesenhada then
      begin
         sym := CoSymbol.create;
         sym.SymbolType := moLineSymbol;
         sym.Style      := varReguaEstilo;
         sym.Size       := varReguaSize;
         sym.Color      := varReguaColor;
         if varLnRegua <> nil then
            Map1.DrawShape(varLnRegua,sym);
      end;

end;

procedure TfrmMenu.btReguaClick(Sender: TObject);
begin
btGrafico.Tag := 0;

  DesabilitaGrafico;
  Map1.MousePointer := 58;
  btRegua.down      := true;
  varlnPriClick     := true;

end;

procedure TfrmMenu.btSelectShClick(Sender: TObject);
begin
btGrafico.Tag := 0;

 DesabilitaGrafico;
 Map1.MousePointer := moCross;

end;

procedure Tfrmmenu.ApagarTodosTemasAdicionados;
var
varfechar   : WordBool;
//i           : integer;
ind        : integer;
//varLeg      : TMapLegend;
begin


  VarPermitirDesenharLayers := false;
  //**********************
  //**** REMOVER ECW  ****
  //**********************
  for ind :=FrmMenu.ComponentCount-1 downto 0 do
      begin
          if Components[ind].classname = 'TNCSRenderer' then
             begin
                 varfechar := true;
                 TNCSRenderer(Components[ind]).Close(varFechar);
                 TNCSRenderer(Components[ind]).free;
             end;
      end;

  //********************
  SetLength(ECWView,0);
  SetLength(lECWOpen,0);
  SetLength(FotosECW,0);
  //********************

  maplegend1.RemoverTodosItemsLegenda;

  map1.Layers.Clear;
  map2.Layers.Clear;
  map1.Refresh;
  map2.refresh;
  legenda;

  DeletarArquivosTemporarios;

  VarPermitirDesenharLayers := true;

end;

procedure TfrmMenu.ApagarTodos1Click(Sender: TObject);
begin

  if mensagem('Deseja Remover Todas as Camadas do Mapa?',mtConfirmation,[mbyes,mbno])=idyes then
     ApagarTodosTemasAdicionados;

end;

function Tfrmmenu.PegaNomeDaLayer(item : smallint):string;
var
lyrs   : IMoLayers;
lyr    : IMoMapLayer;
lyrimg : IMoImageLayer;
begin

     //primeiro eu tento como se fosse uma maplayer
     try
        if (IMoMapLayer(IMoLayers(Map1.layers).Item(item)).LayerType = moMapLayer) then
           begin
              lyr    := CoMapLayer.Create;
              lyrs   := map1.Layers;
              lyr    := imomaplayer(lyrs.item(item));
              result := lyr.name;
           end
           else
              begin
                //agora tento como imagelayer
                lyrimg := CoImageLayer.Create;
                lyrs   := map1.Layers;
                lyrimg := IMoImageLayer(lyrs.item(item));
                result := lyrimg.name;
              end;
     except

     end;
  //*********************

end;

procedure TfrmMenu.ApagarTemaAtivo1Click(Sender: TObject);
var
item : smallint;
begin

   if MapLegend1.GetActiveLayer=-1 then exit;

   if mensagem(pchar('Deseja Excluir o Tema '+PegaNomeDaLayer(maplegend1.GetActiveLayer)+'? '),mtConfirmation,[mbyes,mbno])=idyes then
      begin
        item := maplegend1.GetActiveLayer;
        MapLegend1.RemoveLayer(item);
      end;

end;

procedure TfrmMenu.zoomselecionados(posicaoSelecionada : Smallint);
var
contador       : Integer;
fld            : IMoField;
flds           : IMoFields;
TempBounds     : IMoRectangle;
shapebounds    : IMoRectangle;
shp35          : IMoPolygon;
teste          : boolean;
p              : IMoPolygon;
mpoint,mpoint2 : IMoPoint;
pts            : IMoPoints;
conta          : integer;
posVetorSelect : smallint;
lyr            : IMoMapLayer;
lyrs           : IMoLayers;
i              : smallint;
begin

   if length(vet_taglayer)=0 then exit;

   posVetorSelect := posicaoSelecionada;
   conta          := 0;
   //zoom nos selecionados

   //(PARA EVITAR BUG DO ZOOM TO SELECT)
   if posVetorSelect <> -1 then
      begin
         try
             lyr  := CoMapLayer.create;
             lyrs := map1.Layers;
             lyr  := imomaplayer(lyrs.item(MapLegend1.GetActiveLayer));

             for i:=0 to length(vet_taglayer)-1 do
                 begin
                     If lyr.tag = vet_taglayer[i] Then
                         posVetorSelect := i;
                 end;
         except
           //***
         end;
      end;


   if vet_SelectedFeatures[posVetorSelect] = nil then
      begin
          //quer dizer que nao tem ninguem selecionado na legenda
          //entao vou tentar achar uma posição do vetor que tenha alguem selecionado!
          posVetorSelect := -1;
          for i:=0 to length(vet_SelectedFeatures)-1 do
              begin
                  if  vet_SelectedFeatures[i] <> nil then
                      begin
                          posVetorSelect := i;
                          break;
                      end;
              end;
      end;

   //se entrar aki pq nao existe nada nada selecionado, entao sai!
   if posVetorSelect = -1 then
      exit;

//*********************************************************************

 If vet_selectedFeatures[posVetorSelect] <> nil Then //isso aki é só pra saber se realmente
   begin//tem algo selecionado
      if vet_selectedfeatures[posVetorSelect].eof then exit;
      If Not vet_selectedfeatures[posVetorSelect].EOF Then
         begin
            contador :=0;
            vet_selectedfeatures[posVetorSelect].MoveFirst;
            If Not vet_selectedfeatures[posVetorSelect].EOF Then
               contador := 1;
             if contador = 0 Then
             vet_selectedfeatures[posVetorSelect] := Nil;
         End;
   End;

// ***************************************************
//AGORA O ZOOM NOS SELECIONADOS
 ShapeBounds := CoRectangle.Create;
 teste       := true;

 If vet_selectedfeatures[posVetorSelect] <> Nil Then
    begin
         teste   := false;
         vet_selectedfeatures[posVetorSelect].MoveFirst;
         flds    := vet_selectedfeatures[posVetorSelect].Fields;
         fld     := flds.Item('SHAPE');

        if TipoShape <> moShapeTypePoint  then //quando for poligono ou o que ele kiser...
            begin
                 While Not vet_selectedfeatures[posVetorSelect].EOF do
                      begin
                          try
                             p  := Copolygon.create;
                             p  := IMoPolygon(IDispatch(fld.value));
                             shapeBounds := p.Extent;
                             //***
                             if teste = false then
                                 begin
                                    TempBounds := shapebounds;
                                    teste      := true;
                                 end;
                             //*********
                             If shapeBounds.Left < tempBounds.Left Then
                                tempBounds.left := shapeBounds.Left;
                             If shapeBounds.Right > TempBounds.Right Then
                                tempBounds.Right := shapeBounds.Right;
                             If shapeBounds.Bottom < TempBounds.Bottom Then
                                tempBounds.Bottom := shapeBounds.Bottom;
                             If shapeBounds.Top > TempBounds.Top Then
                                tempBounds.Top := shapeBounds.Top;
                          except
                             continue;
                          end;
                          vet_selectedfeatures[posVetorSelect].MoveNext;
                 end;
                 TempBounds.ScaleRectangle(variant(1));
                 map1.extent := TempBounds;
            end;

            //***********************************************************
            if TipoShape = moShapeTypePoint then // quando for um ponto!!
                begin
                    pts   := CoPoints.create;
                    shp35 := CoPolygon.create;
                    //*********** PONTOS!!!!!
                    vet_selectedfeatures[posVetorSelect].MoveFirst;
                    While Not vet_selectedfeatures[posVetorSelect].EOF do
                         begin
                             MPOINT := IMoPoint(IDispatch(fld.value));
                             inc(conta);
                             pts.Add(mpoint);
                             vet_selectedfeatures[posVetorSelect].MoveNext;
                         end;
                    //fin while
                    if conta>1 then
                       shp35.Parts.Add(pts)
                    else
                       begin
                            mpoint2    := mpoint;
                            mpoint2.X  := mpoint.X+100;
                            mpoint2.y  := mpoint.y+100;
                            pts.Add(mpoint2);
                            //shp35.Parts.Add(pts)
                            mpoint2.X  := mpoint.X+150;
                            mpoint2.y  := mpoint.y+150;
                            pts.Add(mpoint2);
                            shp35.Parts.Add(pts)
                     end;
                     //fim while
                     TempBounds  := shp35.Extent;
                     TempBounds.ScaleRectangle(variant(2.0));
                     map1.Extent := TempBounds;
                end;

    end;

end;

procedure TfrmMenu.btSelecionadoClick(Sender: TObject);
begin
btGrafico.Tag := 0;

  zoomselecionados(MapLegend1.GetActiveLayer);

end;

procedure TfrmMenu.FullExtent1Click(Sender: TObject);
begin

   map1.Extent := map1.FullExtent;

end;

procedure TfrmMenu.LimparSelecaoShapes;
begin

  //********************
  SetLength(vet_taglayer,0);
  SetLength(vet_SelectedFeatures,0);
  SetLength(vetSelectPoli,0);
  SetLength(vetSelectLinha,0);
  //********************

  IF vetPtsEditVertexPoli <> nil then
     vetPtsEditVertexPoli := nil;

     IF vetPtsEditVertexlinha <> nil then
     vetPtsEditVertexlinha := nil;

end;

procedure TfrmMenu.btLimparClick(Sender: TObject);
begin
btGrafico.Tag := 0;

  limparSelecaoShapes;
  map1.Refresh;

end;

procedure TfrmMenu.BotaoSalvarProjeto;
label
inicio;
var
arquivoparasalvar : string;
nomeproj          : String;
begin

  if map1.Layers.Count = 0 then
     begin
         mensagem('Não Existe Um Projeto Para Ser Salvo!',mtError,[mbok]);
         exit;
     end;


  if not varProjetoJaConfig then
     begin
          if varSALVARPROJETO then
             begin
                  frmConfigProj := TfrmConfigProj.Create(application);
                  frmConfigProj.ShowModal;
                  if varConfigOk then
                     begin
                          inicio:Savedialog1.FileName := '';
                          savedialog1.InitialDir := varStrDirPadraoProjeto;
                          Savedialog1.Execute;
                          if trim(Savedialog1.FileName)<>'' then
                             begin
                                if FileExists(Savedialog1.FileName) then
                                   begin
                                      if mensagem('O Arquivo Selecionado Já Existe! Deseja Substituir?',mtConfirmation,[mbyes,mbno])=idYes then
                                         begin
                                            arquivoParaSalvar := Savedialog1.FileName;
                                            SalvarProjeto(arquivoparasalvar);
                                            nomeProj := ExtractFileName(arquivoparasalvar);
                                            Caption  := 'SIGGeo 2.0 - Equipe Geoprocessamento - EPD/VR - ' +nomeproj;
                                            varProjetoJaConfig := true;
                                         end
                                         else
                                            goto inicio;
                                   end
                                   else
                                      begin
                                            arquivoParaSalvar := Savedialog1.FileName;
                                            SalvarProjeto(arquivoparasalvar);
                                            nomeProj := ExtractFileName(arquivoparasalvar);
                                            Caption  := 'SIGGeo 2.0 - Equipe Geoprocessamento - EPD/VR - ' +nomeproj;
                                            varProjetoJaConfig  := true;
                                      end;
                             end;
                     end;
             end
             else
                begin
                    mensagem('O Administrador do Projeto Desabilitou a Opção de Salvar Projeto!',mtInformation,[mbOk]);
                end;
     end
     else
         begin
            if varSALVARPROJETO then
               begin
                    if trim(varCaminhoDoProjetoJaSalvo)<>'' then
                       SalvarProjeto(varCaminhoDoProjetoJaSalvo)
                    else
                       begin
                           Savedialog1.FileName := '';
                           Savedialog1.Execute;
                           if trim(Savedialog1.FileName)<>'' then
                              begin
                                  arquivoParaSalvar := Savedialog1.FileName;
                                  SalvarProjeto(arquivoparasalvar);
                              end;
                       end;
               end
               else
                   begin
                      mensagem('O Administrador do Projeto Desabilitou a Opção de Salvar Projeto!',mtInformation,[mbOk]);
                   end;
         end;

end;

procedure TfrmMenu.Salvar1Click(Sender: TObject);
begin

  BotaoSalvarProjeto;

end;

procedure TfrmMenu.Abrir1Click(Sender: TObject);
var
ArquivoProjeto : String;
begin

   openProjeto.FileName   := '';
   openProjeto.InitialDir := varStrDirPadraoProjeto;
   openProjeto.Execute;

   if trim(openProjeto.FileName)<>'' then
      begin
          NovoProjeto;
          arquivoProjeto := openProjeto.FileName;
          CarregarProjeto(arquivoProjeto);
      end;

end;

procedure TfrmMenu.FormActivate(Sender: TObject);
begin

    screen.cursor := crHourGlass;

    //****************************************
    //*** ABRINDO O PROJETO VIA EXPLORER!! ***
    //****************************************
     if varTmpParamWin <> '' then
        begin
           timerAbreProjeto.enabled := true;
        end
        else
           begin
               if VarBoolSistemaAbrindo then
                  begin
                      //Sleep(3000);
                      if frmSplash <> nil then frmSplash.close;
                      VarBoolSistemaAbrindo := true;
                  end;
           end;
    //****************************************

    screen.Cursor := crDefault;
    


end;

procedure TfrmMenu.TimerAbreProjetoTimer(Sender: TObject);
var
caminhoproj : string;
begin

  TimerAbreProjeto.enabled := false;

  caminhoProj   := LongPathFromShort(varTmpParamWin);
  
  if FileExists(caminhoProj) then
     begin
        CarregarProjeto(caminhoProj);
     end;

  varTmpParamWin := '';

  VarBoolSistemaAbrindo := false;
  if frmSplash <> nil then frmSplash.close;  

end;

procedure TfrmMenu.bsSkinSpeedButton1Click(Sender: TObject);
begin
  btGrafico.Tag := 0;

  BotaoSalvarProjeto;

end;

procedure TfrmMenu.SalvarComo1Click(Sender: TObject);
label
inicio;
var
arquivoparasalvar : string;
nomeproj          : String;
begin

  if varSALVARPROJETO then
     begin
         mensagem('O Administrador do Projeto Desabilitou a Opção de Salvar Projeto!',mtInformation,[mbOk]);
         exit;
     end;

  if map1.Layers.Count = 0 then
     begin
         mensagem('Não Existe Um Projeto Para Ser Salvo!',mtError,[mbok]);
         exit;
     end;

  frmConfigProj := TfrmConfigProj.Create(application);
  frmConfigProj.ShowModal;

  inicio:Savedialog1.FileName := '';
  savedialog1.InitialDir := varStrDirPadraoProjeto;
  Savedialog1.Execute;

  if trim(Savedialog1.FileName)<>'' then
     begin
         if FileExists(Savedialog1.FileName) then
            begin
                if mensagem('O Arquivo Selecionado Já Existe! Deseja Substituir?',mtConfirmation,[mbok])=idYes then
                   begin
                      arquivoParaSalvar := Savedialog1.FileName;
                      SalvarProjeto(arquivoparasalvar);
                      nomeProj := ExtractFileName(arquivoparasalvar);
                      Caption  := 'SIGGeo 2.0 - Equipe Geoprocessamento - EPD/VR - ' +nomeproj;
                   end
                   else
                      goto inicio;
            end
            else
                begin
                      arquivoParaSalvar := Savedialog1.FileName;
                      SalvarProjeto(arquivoparasalvar);
                      nomeProj := ExtractFileName(arquivoparasalvar);
                      Caption  := 'SIGGeo 2.0 - Equipe Geoprocessamento - EPD/VR - ' +nomeproj;
                end;
     end;

end;

procedure TfrmMenu.PropriedadesdoProjeto1Click(Sender: TObject);
begin

   if trim(varNomeUsuproj)<> '' then
      begin
          frmLoginProj :=tFrmLoginProj.create(application);
          frmLoginProj.FormStyle := fsStayOnTop;
          frmLoginProj.Show;
      end
      else
         begin
             frmConfigProj := TfrmConfigProj.create(application);
             frmConfigProj.ShowModal;
         end;

end;

procedure TfrmMenu.MostrarEscala1Click(Sender: TObject);
begin

  ControlSizer1.Control    := nil;
  //posicionar a escala
  pnescala.RollState       := false;
  pnEscala.Width           := 258;
  pnEscala.Height          := 73;
  pnEscala.Top             := map1.Height - pnEscala.Height - 6;
  pnEscala.left            := map1.Width - pnEscala.Width - 5;
  pnEscala.visible         := true;

end;

procedure TfrmMenu.TimerPosEscalaTimer(Sender: TObject);
begin

  TimerPosEscala.Enabled   := false;

  ResetarPanels;

  map1.SetFocus;

end;

procedure TfrmMenu.HabilitaGrafico;
begin

   Map1.MousePointer    := 58;
   
   btConfigGraf.Enabled := true;

end;

procedure TfrmMenu.DesabilitaGrafico;
begin

   btConfigGraf.Enabled := false;

end;

procedure TfrmMenu.btSelectClick(Sender: TObject);
begin
btGrafico.Tag := 0;

  DesabilitaGrafico;
  Map1.MousePointer    := moCross;
  btConfigGraf.Enabled := True;
  

end;

procedure TfrmMenu.btGrafico1Click(Sender: TObject);
begin

   HabilitaGrafico;


end;

Procedure TfrmMenu.DeletaGraficos;
var
i        : Smallint;
v        : Variant;
atualiza : WordBool;
begin
   //*****************************************
   //****** deleta poligonos selecionados
   //*****************************************
   if not btSelect.Down then exit;
   if Length(vetSelectPoli)>0 then
      begin
          for i:=0 to Length(vetSelectPoli)-1 do
              begin
                    if trim(vetSelectPoli[i])<> '' then
                      begin
                          varBoolGrafPoli[StrToInt(vetSelectPoli[i])] := false;
                          varGrafPoli[StrToInt(vetSelectPoli[i])]     := nil;
                      end;
              end;

          SetLength(vetSelectPoli,0);
          if vetPtsEditVertexPoli <> nil then
             vetPtsEditVertexPoli := nil;

      end;

   //******************************************
   //****** deleta RETANGULOs selecionados  ***
   //******************************************
   if Length(vetSelectRetang)>0 then
      begin
          for i:=0 to Length(vetSelectRetang)-1 do
              begin
                    if trim(vetSelectRetang[i])<> '' then
                      begin
                          varBoolGrafRetang[StrToInt(vetSelectRetang[i])] := false;
                          varGrafRetang[StrToInt(vetSelectRetang[i])]     := nil;
                      end;
              end;
          SetLength(vetSelectRetang,0);
      end;
   //****************************************
   //****************************************


   //****************************************
   //****** deleta PONTOS
   //****************************************
   if Length(vetSelectPonto)>0 then
      begin
          for i:=0 to Length(vetSelectPonto)-1 do
              begin
                    if trim(vetSelectPonto[i])<> '' then
                      begin
                          varGrafPonto[StrToInt(vetSelectPonto[i])]     := nil;
                          varBoolGrafPonto[StrToInt(vetSelectPonto[i])] := false;
                      end;
              end;
          SetLength(vetSelectPonto,0);
      end;
   //************************************
   //************************************



   //******************************************
   //****** deleta Circulos selecionados  ***
   //******************************************
   if Length(vetSelectCirculo)>0 then
      begin
          for i:=0 to Length(vetSelectCirculo)-1 do
              begin
                    if trim(vetSelectCirculo[i])<> '' then
                      begin
                          varBoolGrafCirculo[StrToInt(vetSelectCirculo[i])] := false;
                          varGrafCirculo[StrToInt(vetSelectCirculo[i])]     := nil;
                      end;
              end;
          SetLength(vetSelectCirculo,0);
      end;
   //****************************************
   //****************************************
   //****************************************
   //****** deleta LINHAS selecionados ******
   //****************************************
   if Length(vetSelectLinha)>0 then
      begin
          for i:=0 to Length(vetSelectLinha)-1 do
              begin
                    if trim(vetSelectLinha[i])<> '' then
                      begin
                          varBoolGrafLinha[StrToInt(vetSelectLinha[i])] := false;
                          varGrafLinha[StrToInt(vetSelectLinha[i])]     := nil;
                      end;
              end;
          SetLength(vetSelectLinha,0);
          if vetPtsEditVertexlinha <> nil then
             vetPtsEditVertexlinha := nil;
      end;
   //************************************
   //************************************



   //****************************************
   //****** deleta CIRCULO DA QUERY SELECINADO
   //****************************************
   if Length(vetSelectQueryCirculo)>0 then
      begin
          for i:=0 to Length(vetSelectQueryCirculo)-1 do
              begin
                    if trim(vetSelectQueryCirculo[i])<> '' then
                      begin
                          varQueryCirculo[StrToInt(vetSelectQueryCirculo[i])] := nil;
                      end;
              end;
          SetLength(vetSelectQueryCirculo,0);
      end;
   //************************************
   //************************************



   //****************************************
   //****** deleta PONTOS DA QUERY SELECINADO
   //****************************************
   if Length(vetSelectQueryPonto)>0 then
      begin
          for i:=0 to Length(vetSelectQueryPonto)-1 do
              begin
                    if trim(vetSelectQueryPonto[i])<> '' then
                      begin
                          varQueryPontoOrigem[StrToInt(vetSelectQueryPonto[i])] := nil;
                      end;
              end;
          SetLength(vetSelectQueryPonto,0);
      end;
   //************************************
   //************************************



   //******************************************
   //****** deleta TEXTOS selecionados    *****
   //******************************************
   if Length(vetSelectTexto)>0 then
      begin
          for i:=0 to Length(vetSelectTexto)-1 do
              begin
                    if trim(vetSelectTexto[i])<> '' then
                      begin
                          varBoolGrafTexto[StrToInt(vetSelectTexto[i])]            := false;
                          varVetGrafTextoFonteNome[StrToInt(vetSelectTexto[i])]    := '';
                          //varVetGrafTextoFonteStyle[StrToInt(vetSelectTexto[i])]   := nil;
                          varVetGrafTextoPT[StrToInt(vetSelectTexto[i])]           := nil;
                          varVetGrafTexto[StrToInt(vetSelectTexto[i])]             := '';
                          //****
                      end;
              end;
          SetLength(vetSelectTexto,0);
      end;
   //****************************************
   //****************************************



   //************************************
   //****  deleta regua selecionada  ****
   //************************************
   if varlnLinhaSelecionada <> nil then
      begin
          varLnRegua             := nil;
          varLnTemLinhaDesenhada := false;
          varlnLinhaSelecionada  := nil;
          varLnBoolUsaRegua      := false;
          varlnPriClick          := true;
          lblSegRegua.caption    := '';
          lblRegua.caption       := '';
      end;


   //***************
   atualiza := true;
   map1.TrackingLayer.Refresh(atualiza,v);
   lblInfo.Text := '';
   //***************

end;

procedure TfrmMenu.DeletarVertices;
var
i             : Integer;
pt            : IMoPoint;
thisDist      : Double;
shortDist     : Double;
prts          : IMoParts;
ptstmp        : IMoPoints;
tempImoPoints : IMoPoints;
tmpPoli       : IMoPolygon;
varTrue       : Boolean;
V             : Variant;
tmpLinha      : ImoLine;
begin
if Length(vetSelectPoli)=1 then
begin
 //Find the closest vertex to the mouse click.
 If varGrafPoli[StrToInt(VetSelectPoli[0])].Parts.Count <> 0 Then

     begin
         ptstmp       := CoPoints.Create;
         prts         := varGrafPoli[StrToInt(VetSelectPoli[0])].Parts;
         ptstmp       := IMoPoints(prts.Item(0));
         shortDist    := 99999999;
         pt           := CoPoint.Create;
         pt           := Map1.ToMapPoint(varPosVerticeX,varPosVerticeY);


         if ptstmp.Count <=3 then
            exit;

         //****************************
         For i:= 0 To ptstmp.Count - 1 do
             begin
               thisDist := pt.DistanceTo(ptstmp.Item(i));
                 If thisDist < shortDist Then
                    begin
                        shortDist          := thisDist;
                        VarIntIndexVertice := i;
                    End;
             end;
         //****************************
         tempImoPoints := CoPoints.Create;

         for i:=0 to ptstmp.Count -1 do
            begin
               if VarIntIndexVertice <> i then
                  begin
                      tempImoPoints.Add(IMoPoint(ptstmp.Item(i)));
                  end;
            end;

         tmpPoli := CoPolygon.Create;
         tmpPoli.Parts.Add(tempImoPoints);
         //****************************
         vetPtsEditVertexPoli   := CoPoints.Create;
         vetPtsEditVertexPoli   := tempImoPoints;
         //****************************
         varGrafPoli[strToInt(vetSelectPoli[0])] := tmpPoli;
         //****************************
         //lblInfo.text := 'Poligono - Area: '+FormatFloat('0.000',varGrafPoli[strToInt(vetSelectPoli[0])].Area)+' Perimetro: '+formatFloat('0.000',varGrafPoli[strToInt(vetSelectPoli[0])].Perimeter);
         varTrue      := true;
         Map1.TrackingLayer.Refresh(varTrue,V);

     end;
   end
    else
    //*************
      If varGrafLinha[StrToInt(VetSelectLinha[0])].Parts.Count <> 0 Then

     begin
         ptstmp       := CoPoints.Create;
         prts         := varGrafLinha[StrToInt(VetSelectLinha[0])].Parts;
         ptstmp       := IMoPoints(prts.Item(0));
         shortDist    := 99999999;
         pt           := CoPoint.Create;
         pt           := Map1.ToMapPoint(varPosVerticeX,varPosVerticeY);


         if ptstmp.Count <=2 then
            exit;

         //****************************
         For i:= 0 To ptstmp.Count - 1 do
             begin
               thisDist := pt.DistanceTo(ptstmp.Item(i));
                 If thisDist < shortDist Then
                    begin
                        shortDist          := thisDist;
                        VarIntIndexVertice := i;
                    End;
             end;
         //****************************
         tempImoPoints := CoPoints.Create;

         for i:=0 to ptstmp.Count -1 do
            begin
               if VarIntIndexVertice <> i then
                  begin
                      tempImoPoints.Add(IMoPoint(ptstmp.Item(i)));
                  end;
            end;

         tmpLinha := CoLine.Create;
         tmpLinha.Parts.Add(tempImoPoints);
         //****************************
         vetPtsEditVertexLinha   := CoPoints.Create;
         vetPtsEditVertexLinha   := tempImoPoints;
         //****************************
         varGrafLinha[strToInt(vetSelectLinha[0])] := tmpLinha;
         //****************************
         lblInfo.text := 'Linha - Comprimento: '+formatFloat('0.000',varGrafLinha[strToInt(vetSelectLinha[0])].Length);
         //lblInfo.text := 'Poligono - Area: '+FormatFloat('0.000',varGrafPoli[strToInt(vetSelectPoli[0])].Area)+' Perimetro: '+formatFloat('0.000',varGrafPoli[strToInt(vetSelectPoli[0])].Perimeter);
         varTrue      := true;
         Map1.TrackingLayer.Refresh(varTrue,V);

     end;

end;

procedure TfrmMenu.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
v        : variant;
VarTrue  : WordBool;
begin

  //*************************
  if key = VK_DELETE then
     begin
        if varDELETARGRAFICOS then
           DeletaGraficos;

        if btVertex.Down then
           DeletarVertices;

     end;

  //*************************
  if key = VK_ESCAPE then
     begin
         if varLnTemLinhaDesenhada then
            begin
                varLnRegua             := nil;
                varLnTemLinhaDesenhada := false;
                varlnLinhaSelecionada  := nil;
                varLnBoolUsaRegua      := false;
                varlnPriClick          := true;
                lblSegRegua.caption    := '';
                lblRegua.caption       := '';
                varTrue                := true;
                map1.TrackingLayer.Refresh(varTrue,v);
            end;
     end;
  //*************************


end;

procedure TfrmMenu.btPoligClick(Sender: TObject);
begin

   if not varBoolSalvaConfigPoli then
      begin
          if frmGrafPoli = nil then
             frmGrafPoli := TfrmGrafPoli.create(application);
          frmGrafPoli.show;
      end;

end;

procedure TfrmMenu.ConfiguraodePoligonos1Click(Sender: TObject);
begin

   if frmGrafPoli = nil then
      frmGrafPoli := TfrmGrafPoli.create(application);
   frmGrafPoli.show;


end;

procedure TfrmMenu.Map1DblClick(Sender: TObject);
begin

   //**************************************
   //*** Controle Para Finalizar ou Não a Ferramenta Regua
   //**************************************
   if varLnTemLinhaDesenhada then
      begin
         varlnPriClick       := true;
         varLnBoolUsaRegua   := false;
         lblSegRegua.caption := varlnTmpSegTam;
      end;


   //**************************************
   //*** ADICIONAR VERTEX NO POLIGONO
   //**************************************
   if btVertex.Down then
      begin
       if Length(vetSelectPoli)=1 then
          AdicionarVertexNoPoligono
         else
           AdicionarVertexLinha;
      end;
   //**************************************

end;

procedure TfrmMenu.AdicionarVertexNoPoligono;
Var
pt                  : IMoPoint;
ptstmp              : IMoPoints;
tmpPoli             : IMoPolygon;
prts                : IMoParts;
varTrue             : WordBool;
V                   : Variant;
tempImoPoints       : IMoPoints;
i                   : smallint;
shortDistPtIndex    : Integer;
thisDist, shortDist : Single;
begin

         pt       := CoPoint.Create;
         pt       := Map1.ToMapPoint(varPosVerticeX,varPosVerticeY);
         //*****
         tmpPoli  := varGrafPoli[strToInt(vetSelectPoli[0])];
         prts     := tmpPoli.Parts;
         ptstmp   := CoPoints.Create;
         ptstmp   := IMoPoints(prts.item(0));
         //*******
         tempImoPoints := CoPoints.Create;
         //**********************************************
         If tmpPoli.Parts.Count <> 0 Then
         shortDist := 999999999;
         pt := Map1.ToMapPoint(varPosVerticeX,varPosVerticeY);
         //**********************************************
         for i:=0 to ptstmp.Count - 2 do
            begin
               thisDist := pt.DistanceToSegment(ptstmp.Item(i), ptstmp.Item(i + 1));
                If thisDist < shortDist Then
                 begin
                  shortDist        := thisDist;
                  shortDistPtIndex := i + 1;
                 end;
            end;

         thisDist := pt.DistanceToSegment(ptstmp.Item(ptstmp.Count - 1), ptstmp.Item(0));
         If thisDist < shortDist Then
            ptstmp.Add(pt)
         else
            ptstmp.Insert(shortDistPtIndex, pt);
         //*******************************************************
         lblInfo.text := 'Poligono - Area: '+FormatFloat('0.000',varGrafPoli[strToInt(vetSelectPoli[0])].Area)+' Perimetro: '+formatFloat('0.000',varGrafPoli[strToInt(vetSelectPoli[0])].Perimeter);
         varTrue      := true;
         //*******************************************************
         Map1.TrackingLayer.Refresh(varTrue,V);

end;

procedure TfrmMenu.btLocalizarClick(Sender: TObject);
begin
btGrafico.Tag := 0;

 if map1.Layers.Count=0 then
    begin
        mensagem('É Necessário Adicionar Camadas Para Efetuar a Busca!',mtError,[mbok]);
        exit;
    end;

   if frmLocalizarSimples = nil then
      frmLocalizarSimples := TfrmLocalizarSimples.create(application);
      frmLocalizarSimples.Show;

end;

procedure TfrmMenu.ConfiguraodeLinhas1Click(Sender: TObject);
begin

   if frmGrafLinha = nil then
      frmGrafLinha := TfrmGrafLinha.create(application);
      frmGrafLinha.show;

end;

procedure TfrmMenu.btLinhaClick(Sender: TObject);
begin

   if not varBoolSalvaConfigLinha then
      begin
          if frmGrafLinha = nil then
             frmGrafLinha := TfrmGrafLinha.create(application);
          frmGrafLinha.show;
      end;

end;

procedure TfrmMenu.btRetangClick(Sender: TObject);
begin

   if not varBoolSalvaConfigRetang then
      begin
          if frmGrafRetangulo = nil then
             frmGrafRetangulo := TfrmGrafRetangulo.create(application);
          frmGrafRetangulo.show;
      end;

end;

procedure TfrmMenu.ConfiguraodeRetngulos1Click(Sender: TObject);
begin

   if frmGrafRetangulo = nil then
      frmGrafRetangulo := TfrmGrafRetangulo.create(application);
   frmGrafRetangulo.show;

end;

procedure TfrmMenu.FindVertex(X,Y : Double);
var
i          : Integer;
pt         : IMoPoint;
thisDist   : Double;
shortDist  : Double;
prts       : IMoParts;
begin
if Length(vetSelectPoli)=1 then
 begin
 //Find the closest vertex to the mouse click.
 If varGrafPoli[StrToInt(VetSelectPoli[0])].Parts.Count <> 0 Then
     begin
         vetPtsEditVertexPoli   := CoPoints.Create;
         prts := varGrafPoli[StrToInt(VetSelectPoli[0])].Parts;
         vetPtsEditVertexPoli   := IMoPoints(prts.Item(0));
         //******
         shortDist    := 999999999;
         pt           := CoPoint.Create;
         pt           := Map1.ToMapPoint(X,Y);
         //*****
         For i:= 0 To vetPtsEditVertexPoli.Count - 1 do
             begin
                 thisDist := pt.DistanceTo(vetPtsEditVertexPoli.Item(i));
                 If thisDist < shortDist Then
                    begin
                        shortDist          := thisDist;
                        VarIntIndexVertice := i;
                    End;
             end;
     end;
   end
      else
//*****************   LINHA
       If varGrafLinha[StrToInt(VetSelectLinha[0])].Parts.Count <> 0 Then
     begin
         vetPtsEditVertexLinha   := CoPoints.Create;
         prts := varGrafLinha[StrToInt(VetSelectLinha[0])].Parts;
         vetPtsEditVertexLinha   := IMoPoints(prts.Item(0));
         //******
         shortDist    := 999999999;
         pt           := CoPoint.Create;
         pt           := Map1.ToMapPoint(X,Y);
         //*****
         For i:= 0 To vetPtsEditVertexLinha.Count - 1 do
             begin
                 thisDist := pt.DistanceTo(vetPtsEditVertexLinha.Item(i));
                 If thisDist < shortDist Then
                    begin
                        shortDist          := thisDist;
                        VarIntIndexVertice := i;
                    End;
             end;
     end;


end;

procedure TfrmMenu.btVertexClick(Sender: TObject);
var
//i                : Smallint;
prts             : IMoParts;
varTrue          : WordBool;
v                : Variant;
teste            : Boolean;
PermitirMudarPos : Boolean;
begin
btGrafico.Tag := 0;

  if (Length(vetSelectPoli) <> 1) and (Length(vetSelectLinha) <> 1) then
   begin
    Mensagem('Selecione UM gráfico...',mtWarning,[mbOK]);
    btVertex.Down := false;
    exit;
   end;      

    DesabilitaGrafico;

    Map1.MousePointer    := moCross;

    teste             := false;
    PermitirMudarPos  := false;

    if Length(vetSelectTexto) >= 1 then
       teste := true;
    //********************
    if (length(vetSelectPonto) >= 1) then
       if teste = false then
          teste := true
       else
          teste := false;
    //**************************
    if (length(vetSelectLinha) >= 1) then
       if teste = false then
          teste := true
       else
          teste := false;
    //**************************
    if (length(vetSelectCirculo) >= 1) then
       if teste = false then
          teste := true
       else
          teste := false;
    //*************************
    if (length(vetSelectRetang) >= 1) then
       if teste = false then
          teste := true
       else
          teste := false;
    //******************************
    if (length(vetSelectPoli) >= 1) then
       if teste = false then
          teste := true
       else
          teste := false;
    //******************************
    //******************************

    if teste then
       begin
          //se entrar aqui quer dizer que apenas um tipo de grafico esta selecionado
          if Length(vetSelectTexto)=1 then
             PermitirMudarPos := true;
          if Length(vetSelectPonto)=1 then
             PermitirMudarPos := true;
          if Length(vetSelectLinha)=1 then
             PermitirMudarPos := true;
          if Length(vetSelectCirculo)=1 then
             PermitirMudarPos := true;
          if Length(vetSelectRetang)=1 then
             PermitirMudarPos := true;
          if Length(vetSelectPoli)=1 then
             PermitirMudarPos := true;
       end;
  if Length(vetSelectPoli)=1 then
   begin
    if PermitirMudarPos then
       begin
          vetPtsEditVertexPoli   := CoPoints.Create;
          prts := varGrafPoli[StrToInt(VetSelectPoli[0])].Parts;
          vetPtsEditVertexPoli   := IMoPoints(prts.Item(0));
          varTrue := true;
          map1.TrackingLayer.Refresh(VarTrue,V);
       end;
   end
    else
     if Length(vetSelectLinha)=1 then
      begin
       if PermitirMudarPos then
       begin
          vetPtsEditVertexlinha   := CoPoints.Create;
          prts := varGrafLinha[StrToInt(VetSelectLinha[0])].Parts;
          vetPtsEditVertexlinha   := IMoPoints(prts.Item(0));
          varTrue := true;
          map1.TrackingLayer.Refresh(VarTrue,V);
       end;
      end;
end;

procedure TfrmMenu.Map1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
//pt   : IMoPoint;
V    : variant;
vartrue : WordBool;
begin

  //**** REDIMENSIONAR GRAFICOS
   If bVertexMoving Then
      begin
          varTrue := true;
          bVertexMoving := false;
          Map1.TrackingLayer.Refresh(vartrue,v);
      End;
   //****************************

   //*****************************
   if varBoolPermitirMudarPos then
      begin
           varBoolPermitirMudarPos := false;
           //*******
           //Circulo
           if Length(vetSelectCirculo)=1 then
              begin
                  varGrafCirculo[strToInt(vetSelectCirculo[0])]     := IMoEllipse(tl.Event[varPosTlMovGraf].shape);
                  varBoolGrafCirculo[strToInt(vetSelectCirculo[0])] := true;
                  tl.RemoveEvent(varPosTlMovGraf);
                  varPosTlMovGraf := 0;
              end;
           //*****

           //*******
           //Linha
           if Length(vetSelectLinha)=1 then
              begin
                  varGrafLinha[strToInt(vetSelectLinha[0])]     := IMoLine(tl.Event[varPosTlMovGraf].shape);
                  varBoolGrafLinha[strToInt(vetSelectLinha[0])] := true;
                  tl.RemoveEvent(varPosTlMovGraf);
                  varPosTlMovGraf := 0;
              end;
           //*******

           //*******
           //Retangulo
           if Length(vetSelectRetang)=1 then
              begin
                  varGrafRetang[strToInt(vetSelectRetang[0])]     := IMoRectangle(tl.Event[varPosTlMovGraf].shape);
                  varBoolGrafRetang[strToInt(vetSelectRetang[0])] := true;
                  tl.RemoveEvent(varPosTlMovGraf);
                  varPosTlMovGraf := 0;
              end;
           //*****

           //*******
           //poligono
           if Length(vetSelectPoli)=1 then
              begin
                  varGrafPoli[strToInt(vetSelectPoli[0])]     := IMoPolygon(tl.Event[varPosTlMovGraf].shape);
                  varBoolGrafPoli[strToInt(vetSelectPoli[0])] := true;
                  tl.RemoveEvent(varPosTlMovGraf);
                  varPosTlMovGraf := 0;
              end;
           //*****
      end;
 //***************************************************
 //***************************************************

end;

procedure TfrmMenu.btQueryClick(Sender: TObject);
begin
btGrafico.Tag := 0;

   if frmQuery = nil then
      frmQuery := TfrmQuery.create(application);
   frmQuery.show;

end;

procedure TfrmMenu.RestoreItemClick(Sender: TObject);
begin

   if frmPropView = nil then
      frmPropView := TfrmPropView.create(application);
   frmPropView.show;

end;

procedure TfrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  DeletarArquivosTemporarios;

  action  := cafree;
  frmMenu := nil;

end;

procedure TfrmMenu.btCirculoClick(Sender: TObject);
begin

   if not varBoolSalvaConfigCirculo then
      begin
          if frmGrafCirculo = nil then
             frmGrafCirculo := TfrmGrafCirculo.create(application);
          frmGrafCirculo.show;
      end;

end;

procedure TfrmMenu.ConfiguraodeCirculos1Click(Sender: TObject);
begin

   if frmGrafCirculo = nil then
      frmGrafCirculo := TfrmGrafCirculo.create(application);
   frmGrafCirculo.show;

end;

procedure TfrmMenu.CoordenadasemUTM1Click(Sender: TObject);
begin

   if frmGrafInsCoordUTM = nil then
      frmGrafInsCoordUTM := TfrmGrafInsCoordUTM.create(application);
   frmGrafInsCoordUTM.show;

end;

procedure TfrmMenu.btPontoClick(Sender: TObject);
begin

   if not varBoolSalvaConfigPonto then
      begin
          if frmGrafPonto = nil then
             frmGrafPonto := TfrmGrafPonto.create(application);
          frmGrafPonto.show;
      end;

end;

procedure TfrmMenu.ConfiguraodePontos1Click(Sender: TObject);
begin

    if frmGrafPonto = nil then
       frmGrafPonto := TfrmGrafPonto.create(application);
    frmGrafPonto.show;

end;

procedure TfrmMenu.ConversordeCoordenadas1Click(Sender: TObject);
begin

  RzLauncher1.FileName := ExtractFilePath(application.ExeName) + '\profiles\Projecao.exe';
  RzLauncher1.Execute;

end;

procedure TfrmMenu.EditarTextoSelecionado1Click(Sender: TObject);
begin

   if length(vetSelectTexto)=0 then
      begin
          Mensagem('Não Existe Nenhum Texto Selecionado!',mtInformation,[mbok]);
          exit;
      end;

   if length(vetSelectTexto)>1 then
      begin
          Mensagem('Selecione Somente um Texto Para Editar!',mtInformation,[mbok]);
          exit;
      end;

  varBoolEditarTexto := true;
  if frmGrafTexto <> nil then frmGrafTexto.close;
  frmGrafTexto := TfrmGrafTexto.create(application);

  frmGrafTexto.memo1.text          := varVetGrafTexto[StrToInt(vetSelectTexto[0])];
  frmGrafTexto.edtColor.Color      := varVetGrafTextoColor[StrToInt(vetSelectTexto[0])];
  varGrafTextoColor                := varVetGrafTextoColor[StrToInt(vetSelectTexto[0])];
  frmGrafTexto.rzLabel1.caption    := varVetGrafTexto[StrToInt(vetSelectTexto[0])];
  frmGrafTexto.rzlabel1.Font.color := varVetGrafTextoColor[StrToInt(vetSelectTexto[0])];
  frmGrafTexto.rzlabel1.Font.Style := varVetGrafTextoFonteStyle[StrToInt(vetSelectTexto[0])];
  varGrafTextoFonteEstilo          := varVetGrafTextoFonteStyle[StrToInt(vetSelectTexto[0])];
  frmGrafTexto.rzlabel1.Font.name  := varVetGrafTextoFonteNome[StrToInt(vetSelectTexto[0])];
  varGrafTextoFonte                := varVetGrafTextoFonteNome[StrToInt(vetSelectTexto[0])];
  frmGrafTexto.rzlabel1.Font.Size  := varvetGrafTextoSize[StrToInt(vetSelectTexto[0])];
  varGrafTextoSize                 := varvetGrafTextoSize[StrToInt(vetSelectTexto[0])];
  frmGrafTexto.SpinEdit1.Value     := varVetGrafTextoRotacao[StrToInt(vetSelectTexto[0])];
  frmGrafTexto.RzLabel1.Angle      := varVetGrafTextoRotacao[StrToInt(vetSelectTexto[0])];
  varGrafTextoRotacao              := varVetGrafTextoRotacao[StrToInt(vetSelectTexto[0])];
  frmGrafTexto.show;

end;

procedure TfrmMenu.Layout1Click(Sender: TObject);
var
i  : Smallint ;
leg: WideString;

begin
   If map1.Layers.Count = 0 then
      begin
         application.messagebox('Não É Possível Gerar Layout!','SIGGEO',mb_ok + MB_ICONERROR);
         exit;
      end
   else
      begin
         try
           map1.ExportMap2(moExportEMF,'C:\SIGGeo\SIGGeo 2.0\mapA3.emf' , 3, true);
           map1.ExportMap2(moExportEMF,'C:\SIGGeo\SIGGeo 2.0\mapA4.emf' , 1, true);

           //exportando legenda
           i:= -1;
           legenda;
           leg:='C:\SIGGeo\SIGGeo 2.0\legend.bmp';

           maplegend1.color := clWhite;
           maplegend1.Refresh;
           maplegend1.ExportToBmp(leg,i);
           maplegend1.color := $00DDDDDD;
           maplegend1.Refresh;
           legenda;

         except
           application.messagebox('Não É Possível Gerar o Layout!','SIGGEO',mb_ok + MB_ICONERROR);
           exit;
         end;

         //Abrindo form principal do layout
           If frmlayout = nil then
              frmLayout := TfrmLayout.Create(application);
              frmLayout.Show;
      end;


end;

procedure TfrmMenu.MoverLegenda1Click(Sender: TObject);
begin

  MoverLegenda1.Checked := not MoverLegenda1.Checked;

  if MoverLegenda1.Checked then
     begin
          RedimensionarLegenda1.Checked   := false;
          //if sender is TControl then SetControlTo(TControl(pnlegenda));
          ControlSizer1.Control           := pnLegenda;
          ControlSizer1.AllowMove         := true;
          ControlSizer1.AllowResize       := false;
          ControlSizer1.LimitToParentRect := true;
     end
     else
        ControlSizer1.Control := nil;

end;

procedure TfrmMenu.RedimensionarLegenda1Click(Sender: TObject);
begin

  RedimensionarLegenda1.Checked := not RedimensionarLegenda1.Checked;

  if RedimensionarLegenda1.Checked then
     begin
          MoverLegenda1.Checked           := false;
          //if sender is TControl then SetControlTo(TControl(pnlegenda));
          ControlSizer1.Control           := pnLegenda;
          ControlSizer1.AllowMove         := false;
          ControlSizer1.AllowResize       := true;
          ControlSizer1.LimitToParentRect := true;
     end
     else
        ControlSizer1.Control           := nil;


end;

procedure TfrmMenu.MenuItem1Click(Sender: TObject);
begin

  MenuItem1.Checked := not MenuItem1.Checked;

  if MenuItem1.Checked then
     begin
          MenuItem2.Checked               := false;
          //if sender is TControl then SetControlTo(TControl(pnlegenda));
          ControlSizer1.Control           := pnMapa2;
          ControlSizer1.AllowMove         := true;
          ControlSizer1.AllowResize       := false;
          ControlSizer1.LimitToParentRect := true;
     end
     else
        ControlSizer1.Control := nil;

end;

procedure TfrmMenu.MenuItem2Click(Sender: TObject);
begin

  MenuItem2.Checked := not MenuItem2.Checked;

  if MenuItem2.Checked then
     begin
          MenuItem1.Checked               := false;
          //if sender is TControl then SetControlTo(TControl(pnlegenda));
          ControlSizer1.Control           := pnMapa2;
          ControlSizer1.AllowMove         := false;
          ControlSizer1.AllowResize       := true;
          ControlSizer1.LimitToParentRect := true;
     end
     else
        ControlSizer1.Control           := nil;

end;

procedure TfrmMenu.bsSkinSpeedButton4Click(Sender: TObject);
begin
btGrafico.Tag := 0;

   If map1.Layers.Count = 0 then
      application.messagebox('Não é Possível Imprimir o Mapa!','SIGGEO',mb_ok + MB_ICONERROR)
   else
      begin
        If frmPrint = nil then
           frmPrint := TfrmPrint.Create(application);
           frmPrint.Show;
      end;

end;

procedure TfrmMenu.Imprimir1Click(Sender: TObject);
begin

   If map1.Layers.Count = 0 then
      mensagem('Não é Possível Imprimir o Mapa!',mtInformation,[mbok])
   else
      begin
        If frmPrint = nil then
           frmPrint := TfrmPrint.Create(application);
           frmPrint.Show;
      end;

end;

procedure TfrmMenu.CloseItemClick(Sender: TObject);
begin

  PrintDialog1.Execute;

end;

procedure TfrmMenu.SobreoSistema1Click(Sender: TObject);
begin

   if frmSobre = nil then
      frmSobre := TfrmSobre.create(application);
      frmSobre.showmodal;

end;

procedure TfrmMenu.NewItemClick(Sender: TObject);
begin

   NovoProjeto;

end;

procedure TfrmMenu.MenuItem3Click(Sender: TObject);
begin

   if frmSDE = nil then
      frmSDE := TfrmSDE.create(application);
      frmSDE.Show;

end;

procedure TfrmMenu.MenuItem4Click(Sender: TObject);
begin

   if frmDirectConnect = nil then
      frmDirectConnect := TfrmDirectConnect.create(application);
      frmDirectConnect.Show;
end;

procedure TfrmMenu.Image1Click(Sender: TObject);
begin

   if frmSobre = nil then
      frmSobre := TfrmSobre.create(application);
   frmSobre.showmodal;

end;

procedure TfrmMenu.lblGeoprocessamentoClick(Sender: TObject);
begin

   if frmSobre = nil then
      frmSobre := TfrmSobre.create(application);
   frmSobre.showmodal;

end;

procedure TfrmMenu.VerificarVersao;
var
Direc, dir, varStr, varname : string;
F : TextFile;
verificaversaoHost, verificaversaoUser, verificaversaoSenha : string;
i : integer;
begin
LerArquivoIni;
//PROCURO A CHAVE [FTP]
            for i:=0 to leituraIni.Count -1 do
             if leituraIni.Strings[i] = '[FTP]' then
              begin
               verificaversaoHost  := frmMenu.leituraIni.Strings[i+1];
               verificaversaoUser  := frmMenu.leituraIni.Strings[i+2];
               verificaversaoSenha := LowerCase(DECrypt('D', frmMenu.leituraIni.Strings[i+3]));
              end;
               i := i + 1;

  Direc := ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0';
  //showmessage(direc);
  varname := 'versao.txt';
  dir := '/versao';
     if not (DirectoryExists(direc)) then
       begin
          frmMenu.Mensagem('O programa não foi instalado no diretório padrão...'+#13+'Não será possível a verificação de atualização automática no servidor'+#13+'Entre em contato com o administrador do sistema', mtWarning,[mbOK]);
          Abort;
       end;
         //showmessage(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\'+varname);
         DeleteFile(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\versao.txt');
         if not (FileExists((ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\'+varname))) then
            begin
              with dmGeo.IdFTP1 do 
                try
                  Username := verificaversaoUser;
                  Password := verificaversaoSenha;
                  Host := verificaversaoHost;
                  Connect;
                except
                  exit;
                  //DeleteFile(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\versao.txt');
                end;

                dmGeo.IdFTP1.ChangeDir(dir);
                dmGeo.IdFTP1.Get(varname, ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\'+ varname, false);  //joga o arquivo pra máquina para comparar a versão
                AssignFile(F,ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\'+ varname);
                Reset(F);
                 while not eof(F) do
                   begin
                     Readln(F,varStr);
                       //SHOWMESSAGE(VARSTR);
                       //showmessage(intToStr(varversaosiggeo));
                       if StrToInt(varStr) > varVersaoSIGGeo then   //compara a versão
                         if frmMenu.Mensagem('Existe uma versão mais atual disponível do sistema'+#13+'Deseja atualizar??',mtConfirmation,[mbYes,mbNo]) = mrYes then
                           begin
                            RzLauncher2.Execute;
                            Application.Terminate;
                            //AtualizaSistema;
                           end;
                   end;
                    CloseFile(f);
                    DeleteFile(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\versao.txt');
            end;
             dmGeo.IdFTP1.Disconnect;
//  end;
end;

procedure TfrmMenu.VerificarAtualizacaoTimer(Sender: TObject);
var
varatualizar : string;
i : integer;
begin
LerArquivoIni;
VerificarAtualizacao.Enabled := false;
VerificarVersao;
           //PROCURO A CHAVE [ATUALIZAR]
            for i:=0 to leituraIni.Count -1 do
             if leituraIni.Strings[i] = '[ATUALIZAR]' then
              begin
               varatualizar := leituraIni.Strings[i+1];
              end;
               i := i + 1;
  if varatualizar = 'TRUE' then
   begin
    try
     //ShowMessage('semanal habilitado');
     VerificarDataAtualizacaoSHP(Sender);
    except
    exit;
    end;
   end
    else
     //ShowMessage('semanal desabilitado');
     exit;
end;

procedure TfrmMenu.EditarPontoSelecionado1Click(Sender: TObject);
begin
if length(vetSelectPonto)=0 then
      begin
          Mensagem('Não Existe Nenhum Ponto Selecionado!',mtInformation,[mbok]);
          exit;
      end;


  if frmGrafPonto <> nil then frmGrafPonto.close;
  frmGrafPonto := TfrmGrafPonto.create(application);
  frmGrafPonto.Show;


end;

procedure TfrmMenu.EditarLinhaSelecionada1Click(Sender: TObject);
begin

if length(vetSelectLinha)=0 then
      begin
          Mensagem('Não Existe Nenhuma Linha Selecionado!',mtInformation,[mbok]);
          exit;
      end;
   {
   if length(vetSelectPonto)>1 then
      begin
          Mensagem('Selecione Somente uma Linha Para Editar!',mtInformation,[mbok]);
          exit;
      end;
  }
  if frmGrafLinha <> nil then frmGrafLinha.close;
  frmGrafLinha := TfrmGrafLinha.create(application);
  frmGrafLinha.Show;


end;

procedure TfrmMenu.EditarCirculoSelecionado1Click(Sender: TObject);
begin

if length(vetSelectCirculo)=0 then
      begin
          Mensagem('Não Existe Nenhum Círculo Selecionado!',mtInformation,[mbok]);
          exit;
      end;
   {
   if length(vetSelectPonto)>1 then
      begin
          Mensagem('Selecione Somente uma Círculo Para Editar!',mtInformation,[mbok]);
          exit;
      end;
   }
  if frmGrafCirculo <> nil then frmGrafCirculo.close;
  frmGrafCirculo := TfrmGrafCirculo.create(application);
  frmGrafCirculo.Show;


end;

procedure TfrmMenu.EditarRetanguloSelecionado1Click(Sender: TObject);
begin
if length(vetSelectRetang)=0 then
      begin
          Mensagem('Não Existe Nenhum Retângulo Selecionado!',mtInformation,[mbok]);
          exit;
      end;
    {
   if length(vetSelectPonto)>1 then
      begin
          Mensagem('Selecione Somente um Retângulo Para Editar!',mtInformation,[mbok]);
          exit;
      end;
   }
  if frmGrafRetangulo <> nil then frmGrafRetangulo.close;
  frmGrafRetangulo := TfrmGrafRetangulo.create(application);
  frmGrafRetangulo.Show;
end;

procedure TfrmMenu.EditarPoligonoSelecionado1Click(Sender: TObject);
begin

if length(vetSelectPoli)=0 then
      begin
          Mensagem('Não Existe Nenhum Polígono Selecionado!',mtInformation,[mbok]);
          exit;
      end;
   {
   if length(vetSelectPoli)>1 then
      begin
          Mensagem('Selecione Somente um Polígono Para Editar!',mtInformation,[mbok]);
          exit;
      end;
   }
  if frmGrafPoli <> nil then frmGrafPoli.close;
  frmGrafPoli := TfrmGrafPoli.create(application);
  frmGrafPoli.Show;
end;

procedure TfrmMenu.Ponto1Click(Sender: TObject);
var
i                : integer;
posVetGrafPoli   : Smallint;
atualiza         : boolean;
v                : variant;
begin
  if Length(varGrafPonto)> 0 then
            begin
                 for i:=0 to Length(varGrafPonto)-1 do
                     begin
                          posVetGrafPoli := i;
                          //********************************************
                          if varGrafPonto[i] <> nil then
                             begin
                              SetLength(vetSelectPonto,length(vetSelectPonto)+1);
                              vetSelectPonto[Length(vetSelectPonto)-1] := IntToStr(posVetGrafPoli);

                             end;
                          //********************************************
                     end;
            end;
             atualiza := true;
             map1.TrackingLayer.Refresh(atualiza,v);
end;

procedure TfrmMenu.exto1Click(Sender: TObject);
var
i    : Integer;
posVetGrafPoli   : Smallint;
atualiza         : boolean;
v                : variant;
begin
if Length(varVetGrafTexto)> 0 then
            begin
                 for i:=0 to Length(varVetGrafTextoPT)-1 do
                     begin
                          posVetGrafPoli := i;
                          //********************************************
                          if varVetGrafTextoPT[i] <> nil then
                                   begin
                                      SetLength(vetSelectTexto,length(vetSelectTexto)+1);
                                      vetSelectTexto[Length(vetSelectTexto)-1] := IntToStr(posVetGrafPoli);
                                   end;

                          //********************************************
                     end;
            end;

            atualiza := true;
            map1.TrackingLayer.Refresh(atualiza,v);
end;

procedure TfrmMenu.Linha1Click(Sender: TObject);
var
i,xxi,cont       : integer;
posVetGrafPoli   : smallint;
prts             : IMoParts;
ptsSelectGraf    : IMoPoints;
ptSelectGraf     : IMoPoint;
atualiza         : boolean;
v                : variant;
begin
if Length(varGrafLinha)> 0 then
            begin
                 for i:=0 to Length(varGrafLinha)-1 do
                     begin
                          posVetGrafPoli := i;
                          prts           := nil;
                          //********************************************
                          if varGrafLinha[i] <> nil then
                             begin
                                  prts           := varGrafLinha[i].Parts;
                                  for cont:=0 to prts.Count - 1 do
                                      begin
                                          ptsSelectGraf  := nil;
                                          ptsSelectGraf  := CoPoints.Create;
                                          ptsSelectGraf  := IMoPoints(prts.item(cont));

                                          //agora tento localizar
                                          for xxi:=0 to ptsSelectGraf.Count-1 do
                                              begin
                                                  ptSelectGraf := nil;
                                                  ptSelectGraf := CoPoint.Create;
                                                  ptSelectGraf := ptsSelectGraf.Item(xxi);
                                                  SetLength(vetSelectLinha,length(vetSelectLinha)+1);
                                                  vetSelectLinha[Length(vetSelectLinha)-1] := IntToStr(posVetGrafPoli);
                                                  break;
                                                    // end;
                                              end;
                                      end;
                             end;
                     end;
            end;
            atualiza := true;
            map1.TrackingLayer.Refresh(atualiza,v);
end;

procedure TfrmMenu.Circulo1Click(Sender: TObject);
var
i                : integer;
posVetGrafPoli   : Smallint;
prts             : IMoParts;
atualiza         : Boolean;
v                : Variant;
begin
if Length(varGrafCirculo)> 0 then
            begin
                 for i:=0 to Length(varGrafCirculo)-1 do
                     begin
                          posVetGrafPoli := i;
                          prts           := nil;
                          //********************************************
                          if varGrafCirculo[i] <> nil then
                                   begin
                                      SetLength(vetSelectCirculo,length(vetSelectCirculo)+1);
                                      vetSelectCirculo[Length(vetSelectCirculo)-1] := IntToStr(posVetGrafPoli);
                                   end;

                          //********************************************
                     end;
            end;
            atualiza := true;
            map1.TrackingLayer.Refresh(atualiza,v);


end;

procedure TfrmMenu.Retangulo1Click(Sender: TObject);
var
i                : integer;
posVetGrafPoli   : Smallint;
ptSelectGraf     : IMoPoint;
atualiza         : boolean;
v                : variant;
begin
  if Length(varGrafRetang)> 0 then
            begin
                 for i:=0 to Length(varGrafRetang)-1 do
                     begin
                          posVetGrafPoli := i;
                          //********************************************
                          if varGrafRetang[i] <> nil then
                             begin
                                  ptSelectGraf := nil;
                                  ptSelectGraf := CoPoint.Create;
                                  ptSelectGraf := varGrafRetang[i].Center;
                                  SetLength(vetSelectRetang,length(vetSelectRetang)+1);
                                  vetSelectRetang[Length(vetSelectRetang)-1] := IntToStr(posVetGrafPoli);
                                  //break;
                             end;
                     end;
            end;

            atualiza := true;
            map1.TrackingLayer.Refresh(atualiza,v);


end;

procedure TfrmMenu.Poligono1Click(Sender: TObject);
var
i, cont, xxi     : integer;
posVetGrafPoli   : Smallint;
prts             : IMoParts;
ptsSelectGraf    : IMoPoints;
ptSelectGraf     : IMoPoint;
atualiza         : boolean;
v                : variant;
begin
  if Length(varGrafPoli)> 0 then
            begin
                 for i:=0 to Length(varGrafPoli)-1 do
                     begin
                          posVetGrafPoli := i;
                          prts           := nil;
                          //********************************************
                          if varGrafPoli[i] <> nil then
                             begin
                                  prts   := varGrafPoli[i].Parts;
                                  for cont:=0 to prts.Count - 1 do
                                      begin
                                          ptsSelectGraf  := nil;
                                          ptsSelectGraf  := CoPoints.Create;
                                          ptsSelectGraf  := IMoPoints(prts.item(cont));

                                          //agora tento localizar
                                          for xxi:=0 to ptsSelectGraf.Count-1 do
                                              begin
                                                  ptSelectGraf := nil;
                                                  ptSelectGraf := CoPoint.Create;
                                                  ptSelectGraf := ptsSelectGraf.Item(xxi);
                                                  SetLength(vetSelectPoli,length(vetSelectPoli)+1);
                                                  vetSelectPoli[Length(vetSelectPoli)-1] := IntToStr(posVetGrafPoli);
                                                  break;

                                              end;
                                      end;
                             end;
                     end;
            end;

            atualiza := true;
            map1.TrackingLayer.Refresh(atualiza,v);

end;

procedure TfrmMenu.exto2Click(Sender: TObject);
var
//i        : integer;
atualiza : boolean;
v        : variant;
begin
 if Length(vetSelectTexto) = 0 then
  begin
   Mensagem('Não existe texto selecionado...',mtWarning,[mbOK]);
   exit;
  end
   else
     { if Length(vetSelectTexto)>0 then
          begin
              for i:=0 to Length(vetSelectTexto)-1 do
                  begin
                        if trim(vetSelectTexto[i])<> '' then
                          begin
                              varBoolGrafTexto[StrToInt(vetSelectTexto[i])]            := false;
                              varVetGrafTextoFonteNome[StrToInt(vetSelectTexto[i])]    := '';
                              varVetGrafTextoPT[StrToInt(vetSelectTexto[i])]           := nil;
                              varVetGrafTexto[StrToInt(vetSelectTexto[i])]             := '';
                              //****
                          end;
                  end; }
              SetLength(vetSelectTexto,0);
         // end;

          atualiza := true;
          map1.TrackingLayer.Refresh(atualiza,v);
end;

procedure TfrmMenu.Ponto2Click(Sender: TObject);
var
//i        : integer;
atualiza : boolean;
v        : variant;
begin
   if Length(vetSelectPonto) = 0 then
    begin
     Mensagem('Não existe nenhum ponto selecionado...',mtWarning,[mbOK]);
     exit;
    end
     else
       {if Length(vetSelectPonto)>0 then
            begin
                for i:=0 to Length(vetSelectPonto)-1 do
                    begin
                          if trim(vetSelectPonto[i])<> '' then
                            begin
                                varGrafPonto[StrToInt(vetSelectPonto[i])]     := nil;
                                varBoolGrafPonto[StrToInt(vetSelectPonto[i])] := false;
                            end;
                    end; }
                SetLength(vetSelectPonto,0);
           // end;

                atualiza := true;
                map1.TrackingLayer.Refresh(atualiza,v);
end;

procedure TfrmMenu.Linha2Click(Sender: TObject);
var
//i        : integer;
atualiza : boolean;
v        : variant;
begin
 if Length(vetSelectLinha) = 0 then
    begin
     Mensagem('Não existe nenhuma linha selecionada...',mtWarning,[mbOK]);
     exit;
    end
     else
   { if Length(vetSelectLinha)>0 then
      begin
          for i:=0 to Length(vetSelectLinha)-1 do
              begin
                    if trim(vetSelectLinha[i])<> '' then
                      begin
                          varBoolGrafLinha[StrToInt(vetSelectLinha[i])] := false;
                          varGrafLinha[StrToInt(vetSelectLinha[i])]     := nil;
                      end;
              end; }
          SetLength(vetSelectLinha,0);
    //  end;
      atualiza := true;
      map1.TrackingLayer.Refresh(atualiza,v);
end;

procedure TfrmMenu.Circulo2Click(Sender: TObject);
var
//i : integer;
atualiza : boolean;
v : variant;
begin
   if Length(vetSelectCirculo) = 0 then
    begin
     Mensagem('Não existe nenhum círculo selecionado...',mtWarning,[mbOK]);
     exit;
    end
     else
    {if Length(vetSelectCirculo)>0 then
      begin
          for i:=0 to Length(vetSelectCirculo)-1 do
              begin
                    if trim(vetSelectCirculo[i])<> '' then
                      begin
                          varBoolGrafCirculo[StrToInt(vetSelectCirculo[i])] := false;
                          varGrafCirculo[StrToInt(vetSelectCirculo[i])]     := nil;
                      end;
              end; }
          SetLength(vetSelectCirculo,0);
     // end;
      atualiza := true;
      map1.TrackingLayer.Refresh(atualiza,v);
end;

procedure TfrmMenu.Retangulo2Click(Sender: TObject);
var
//i : integer;
atualiza : boolean;
v : variant;
begin
  if Length(vetSelectRetang) = 0 then
    begin
     Mensagem('Não existe nenhum retângulo selecionado...',mtWarning,[mbOK]);
     exit;
    end
     else
  {   if Length(vetSelectRetang)>0 then
      begin
          for i:=0 to Length(vetSelectRetang)-1 do
              begin
                    if trim(vetSelectRetang[i])<> '' then
                      begin
                          varBoolGrafRetang[StrToInt(vetSelectRetang[i])] := false;
                          varGrafRetang[StrToInt(vetSelectRetang[i])]     := nil;
                      end;
              end; }
          SetLength(vetSelectRetang,0);
    //  end;
      atualiza := true;
      map1.TrackingLayer.Refresh(atualiza,v);
end;

procedure TfrmMenu.poligono2Click(Sender: TObject);
var
//i : integer;
atualiza : boolean;
v : variant;
begin
  if Length(vetSelectPoli) = 0 then
    begin
     Mensagem('Não existe nenhum polígono selecionado...',mtWarning,[mbOK]);
     exit;
    end
     else
  {   if Length(vetSelectPoli)>0 then
      begin
          for i:=0 to Length(vetSelectPoli)-1 do
              begin
                    if trim(vetSelectPoli[i])<> '' then
                      begin
                          varBoolGrafPoli[StrToInt(vetSelectPoli[i])] := false;
                          varGrafPoli[StrToInt(vetSelectPoli[i])]     := nil;
                      end;
              end;
                 }
          SetLength(vetSelectPoli,0);

//          if vetPtsEditVertexPoli <> nil then vetPtsEditVertexPoli := nil;

     // end;
      atualiza := true;
      map1.TrackingLayer.Refresh(atualiza,v);
end;

procedure TfrmMenu.DeletarTodosSelecionados1Click(Sender: TObject);
begin
 DeletaGraficos;
end;

function TfrmMenu.NovoProjeto:smallint;
var
F      : TextFile;
varStr : String;
i      : Smallint;
temp   : smallint;
begin

   if map1.Layers.Count > 0 then
      Begin
         if varSALVARPROJETO then
            begin
               temp := frmmenu.Mensagem('Deseja Salvar o Projeto?',mtInformation,[mbyes,mbno,mbcancel]);
               if temp=idyes then
                  BotaoSalvarProjeto;
               if temp=idcancel then
                  begin
                     result := temp;
                     exit;
                  end;
            end;
      end;

   ApagarTodosTemasAdicionados;
   map2.Layers.Clear;
   map2.refresh;

   //*********
   VarPermitirDesenharLayers := true;
   //*********

   DeletarArquivosTemporarios;
   //captura da query
   //***************************
   VarFrmQueryCapture  := false;
   varQuerySymbol      := moFillSymbol;
   varQueryStyle       := moLightGrayFill;
   varQueryColor       := moRed;
   varQuerySymbolPonto := moPointSymbol;
   varQueryStylePonto  := moCircleMarker;
   varQueryColorPonto  := moBlue;
   varQueryColorSize   := 8;

   ZerarZooms;

   //variaveis de projeto padrao;
   varAUTORPROJETO     := '';
   varCONTATO          := '';
   varPAGINA           := '';
   varDATACRIACAO      := FormatDateTime('dd/mm/yyyy',now);
   varSALVARPROJETO    := true;
   varDELETARGRAFICOS  := true;
   varADICIONARSDE     := true;
   varIMPRIMIR         := true;
   varLAYOUT           := true;
   varADICIONARDODISCO := true;
   varREMOVERLAYERS    := true;
   varEDITARLEGENDA    := true;
   varConvNovoSHP      := true;
   varDELETARGRAFICOS  := true;
   varNomeUsuproj      := '';
   varSenhaUsuproj     := '';
   varProjetoJaConfig  := false;

   //diretorio padrao
   varStrDirPadraoProjeto := 'C:\SIGGeo\Projetos';
   varStrDirPadraoShapes  := 'C:\SIGGeo\Camadas';
   //*******************************************

   //***************** CARREGANDO A CONFIGURAÇAO DO SDE PADRAO **************
   if FileExists(ExtractFilePath(application.ExeName)+'SIGGeo.ini') then
     begin
        AssignFile(F,ExtractFilePath(application.ExeName)+'SIGGeo.ini');
        Reset(F);
        //lixo
        Readln(F,varStr);
        //lixo
        Readln(F,varStr);
        //servidor
        Readln(F,varStr);
        varSDEServidor      := varStr;
        //banco
        Readln(F,varStr);
        varSDEBanco         := varStr;
        //serviço
        Readln(F,varStr);
        varSDEservico       := varStr;
        //****
        CloseFile(F);
     end;
   //*******************************

   //*******************************
   //cor de seleção de shapes;
   //*******************************
   //cor de seleção de shapes;
   cor_SelectPreenchCamada    := clYellow;
   cor_OutSelectCamada        := clRed;
   cor_SelectGraf             := clYellow;
   cor_OutSelectGraf          := clRed;
   varEspSelecaoCamada        := 6;
   varEspSelecaoGrafico       := 2;
   varPreenchSelecaoCamada    := 4;
   varPreenchSelecaoGrafico   := 4;
   varBoolDesenharOutCamada   := true;
   varBoolDesenharOutGrafico  := true;

   //************************
   varReguaEstilo       := mosolidline;
   varReguaSize         := 3;
   varReguaColor        := moRed;
   varReguaEstiloSelect := mosolidline;
   varReguaSizeSelect   := 3;
   varReguaColorSelect  := moYellow;
   //************************

   //ECW
   TemECWAdicionado     := false;
   VarSDEativo          := false;
   varDirInicial        := 'C:\SIGGeo\Shapes';

   //ligando a legenda ao mapa;
   //MapLegend1.SetMapSource(map1);

   //inicializar variavel de editar texto
   varBoolEditarTexto       := false;
   varBoolPermitirMudarPos  := false;

   //*****************************************
   //inicializa as variaveis dos graficos
   //****
   //poligono
    varGrafPoliColor           := clGray;
    varGrafPoliUsaOutline      := true;
    varGrafPoliSize            := 1;
    varGrafPoliOutCor          := clBlack;
    varGrafPoliStyle           := moSolidFill;
    varBoolSalvaConfigPoli     := false;
    //****
    //linha
    varGrafLinhaColor          := ClBlack;
    varGrafLinhaSize           := 1;
    varGrafLinhaStyle          := 0;
    varBoolSalvaConfigLinha    := false;
    //****
    //Circulo
    varGrafCirculoColor        := clGray;
    varGrafCirculoUsaOutline   := true;
    varGrafCirculoSize         := 1;
    varGrafCirculoOutCor       := clBlack;
    varGrafCirculoStyle        := moSolidFill;
    varBoolSalvaConfigPoli     := false;
    //***
    //retangulo
    varGrafRetangColor         := clGray;
    varGrafRetangOutCor        := clBlack;
    varGrafRetangUsaOutline    := true;
    varGrafRetangSize          := 1;//Word;
    varGrafRetangStyle         := 0;
    varBoolSalvaConfigRetang   := false;
    //**********
    //ponto
    varGrafPontoColor          := moRed;
    varGrafPontoUsaOutline     := true;
    varGrafPontoSize           := 8;
    varGrafPontoOutCor         := clBlack;
    varGrafPontoStyle          := 0;
    varBoolSalvaConfigPonto    := false;
    //**TEXTO
    varBoolEditarTexto         := false;
    varGrafTextoFonteEstilo    := [];
    varGrafTextoFonte          := 'Times New Roman';
    varGrafTextoRotacao        := 0;
    varGrafTextoColor          := clBlack;
    varGrafTextoSize           := 10;
    //************************************
    //***** trackinglayer do vertex ******
    //************************************
    tl                      := map1.trackinglayer;
    bVertexMoving           := false;
    tl.SymbolCount          := 6;
    //***PATHFINDER
    tl.Symbol[0].SymbolType := moPointSymbol;
    tl.Symbol[0].Style      := moSquareMarker;
    tl.Symbol[0].Size       := 4;
    tl.Symbol[0].Color      := moBlack;
    //***PATHFINDER
    tl.Symbol[1].SymbolType := moLineSymbol;
    tl.Symbol[1].Style      := moSolidLine;
    tl.Symbol[1].Size       := 1;
    tl.Symbol[1].Color      := moBlack;
    //************************************
    //************************************

    //unidades do mapa
    //unidades do mapa
    varMapUnits := 2; //metros
    //****************
    //*********************
    //formulario de inserir coordenadas
    varTemCoordDesenhada := false;
    //*********************

    //***************************************
    //************   Graficos   *************
    //***************************************
    //POLIGONOS
    setlength(varGrafPoli,0);
    setlength(varBoolGrafPoli,0);
    setlength(varVetGrafPoliColor,0);
    setlength(varVetGrafPoliUsaOutline,0);
    setlength(varVetGrafPoliSize,0);
    setlength(varVetGrafPoliOutCor,0);
    setlength(varVetGrafPoliStyle,0);
    //*********************************************
    //TEXTOS
    setlength(varBoolGrafTexto,0);
    setlength(varVetGrafTexto,0);
    setlength(varVetGrafTextoFonteStyle,0);
    setlength(varVetGrafTextoRotacao,0);
    setlength(varVetGrafTextoPT,0);
    setlength(varVetGrafTextoColor,0);
    setlength(varvetGrafTextoSize,0);
    setlength(varVetGrafTextoFonteNome,0);
    //*********************************************
    //LINHAS
    setlength(varGrafLinha,0);
    setlength(varBoolGrafLinha,0);
    setlength(varVetGrafLinhaColor,0);
    setlength(varVetGrafLinhaSize,0);
    setlength(varVetGrafLinhaStyle,0);
    //**********************************************
    //RETANGULOS
    setlength(varGrafRetang,0);
    setlength(varBoolGrafRetang,0);
    setlength(varVetGrafRetangColor,0);
    setlength(varVetGrafRetangSize,0);
    setlength(varVetGrafRetangUsaOutline,0);
    setlength(varVetGrafRetangStyle,0);
    setlength(varVetGrafRetangOutCor,0);
    //*********************************************
    //CIRCULOS
    setlength(varGrafCirculo,0);
    setlength(varBoolGrafCirculo,0);
    setlength(varVetGrafCirculoColor,0);
    setlength(varVetGrafCirculoUsaOutline,0);
    setlength(varVetGrafCirculoSize,0);
    setlength(varVetGrafCirculoOutCor,0);
    setlength(varVetGrafCirculoStyle,0);
    //*********************************************
    //PONTOS
    setlength(varGrafPonto,0);
    setlength(varBoolGrafPonto,0);
    setlength(varVetGrafPontoColor,0);
    setlength(varVetGrafPontoUsaOutline,0);
    setlength(varVetGrafPontoSize,0);
    setlength(varVetGrafPontoOutCor,0);
    setlength(varVetGrafPontoStyle,0);
    //**********************************************
    for i:=0 to length(vet_taglayer)-1 do
       begin
          vet_SelectedFeatures[i] := nil;
          AltSelect[i]            := nil;
       end;
    //********
    setLength(vet_taglayer,0);
    setLength(vet_SelectedFeatures,0);
    setLength(AltSelect,0);
    //PONTOS  FORM GrafInsCoordsUTM
    setlength(varGrafPontoUTM,0);
    setlength(varBoolGrafPontoUTM,0);
    setlength(varVetGrafPontoColorUTM,0);
    setlength(varVetGrafPontoUsaOutlineUTM,0);
    setlength(varVetGrafPontoSizeUTM,0);
    setlength(varVetGrafPontoOutCorUTM,0);
    setlength(varVetGrafPontoStyleUTM,0);
    //**********************************************
    //QUERY POR DISTANCIA
    setlength(varQueryCirculo,0);
    setlength(varQueryLayer,0);
    setlength(varQueryPontoOrigem,0);
    //**********************************************
    //*************   FIM GRAFICOS    **************
    //**********************************************
    //SELECT Graficos
    setlength(vetSelectPoli,0);
    setlength(vetSelectLinha,0);
    setlength(vetSelectRetang,0);
    setlength(vetSelectQueryCirculo,0);
    setlength(vetSelectQueryPonto,0);
    setlength(vetSelectCirculo,0);
    setlength(vetSelectPonto,0);
    setlength(vetSelectTexto,0);
    //*********************************************
    setlength(varIDENTConexao,0);
    setlength(varIDENTSQL,0);
    setlength(varIDENTTabela,0);
    setlength(varIDENTCampo,0);
    //CONEXOES 1:N
    setlength(varVetIDentTagLayer,0);
    setlength(varVetIDentLayerCampo,0);
    setlength(varVetIDentSQL,0);
    //*******
    for i:=0 to length(varVetIDentOraSession)-1 do
        begin
           varVetIDentOraSession[i].Disconnect;
           varVetIDentOraQuery[i].Close;
           varVetIDentOraSession[i].Free;
           varVetIDentOraQuery[i].free;
        end;
    //*******
    setlength(varVetIDentOraSession,0);
    setlength(varVetIDentOraQuery,0);
    //servidores de join
    setlength(varVetListaCampo,0);
    setlength(varVetListaTabela,0);
    setlength(varVetListaUsuario,0);
    setlength(varVetListaSenha,0);
    setlength(varVetListaServidor,0);
    setlength(varVetListaServico,0);
    setlength(varVetListaBanco,0);
    //****************
    setlength(varVetJoinTagLayer,0);
    setlength(varVetJoinTOFIELD,0);
    setlength(varVetJoinFROMFIELD,0);
    setlength(varVetJoinTabela,0);
    setlength(varVetJoinUsuario,0);
    setlength(varVetJoinSenha,0);
    setlength(varVetJoinServidor,0);
    setlength(varVetJoinServico,0);
    setlength(varVetJoinBanco,0);
    //*******************************
    setlength(vet_SelectedFeatures,0);
    setlength(AltSelect,0);
    setlength(vet_taglayer,0);
    //*******************************
    setlength(DicoCon,0);
    setlength(varVetDICOBanco,0);
    setlength(varVetDICOusuario,0);
    setlength(varVetDICOsenha,0);
    //*******************************
    setlength(SDECon,0);
    setlength(varVetSDEServidor,0);
    setlength(varVetSDEBanco,0);
    setlength(varVetSDEservico,0);
    setlength(varVetSDEusuario,0);
    setlength(varVetSDEsenha,0);
    //*******************************
    Caption := varStrCaptionSistema;
    //*******************************
    varProjetoJaConfig  := false;

    //*******************************
    map1.refresh;

    result := temp;

end;

function Tfrmmenu.cript(VarTexto:string):string;
var
  i:    Integer;
  s:    string[255];
  c:    array[0..255] of Byte absolute s;
begin

    s:=  '';
    s:=  vartexto;

    For i:=1 to ord(s[0]) do
    c[i] := 23 XOr c[i];
    result:=s

end;

function TfrmMenu.desencript(VarTexto:string):string;
var
  i :   Integer;
  s :   string[255];
  c :   array[0..255] of Byte absolute s;
begin
  s:=  '';
  s:=  vartexto;

     For i:=1 to Length(s) do
     s[i] := char(23 Xor ord(c[i]));
     result:=s;

end;

procedure TfrmMenu.Exportar1Click(Sender: TObject);
begin

   if frmExportar = nil then
      frmExportar := TfrmExportar.create(application);
   frmExportar.ShowModal;

end;

procedure TfrmMenu.ExOS1Click(Sender: TObject);
begin
 //** CONTROLAR CHECKERS
 ExOS1.Checked          := true;
 ConfigurarMenuTemas;

end;

procedure TfrmMenu.WindowsXPBlue1Click(Sender: TObject);
begin
 //** CONTROLAR CHECKERS
 WindowsXPBlue1.Checked := true;
 ConfigurarMenuTemas;

end;

procedure TfrmMenu.Windows981Click(Sender: TObject);
begin
 //** CONTROLAR CHECKERS
 Windows981.Checked     := true;
 ConfigurarMenuTemas;

end;

procedure TfrmMenu.Express1Click(Sender: TObject);
begin
 //** CONTROLAR CHECKERS
 Express1.Checked       := true;
 ConfigurarMenuTemas;

end;

procedure TfrmMenu.Clouds1Click(Sender: TObject);
begin
 //** CONTROLAR CHECKERS
 Clouds1.Checked        := true;
 ConfigurarMenuTemas;

end;

procedure TfrmMenu.Outono1Click(Sender: TObject);
begin
 //** CONTROLAR CHECKERS
 Outono1.Checked        := true;
 ConfigurarMenuTemas;

end;

procedure TfrmMenu.Ocultar1Click(Sender: TObject);
var
i : smallint;
begin

  for i:=0 to map1.layers.count -1 do
      begin
         MapLegend1.OcultarItem(i);
      end;

  legenda;

end;

procedure TfrmMenu.ExpandirTodososItensdaLegenda1Click(Sender: TObject);
var
i : smallint;
begin

  for i:=0 to map1.layers.count -1 do
      begin
         MapLegend1.ExpandirItem(i);
      end;

  legenda;

end;

procedure TfrmMenu.AdicionarCamadasLocais1Click(Sender: TObject);
begin

   adicionarCamada;

end;

procedure TfrmMenu.Adicionar1Click(Sender: TObject);
begin

   if frmSDE = nil then
      frmSDE := TfrmSDE.create(application);
      frmSDE.Show;

end;

procedure TfrmMenu.AdicionarCamadasviaConexoDireta1Click(Sender: TObject);
begin

   if frmDirectConnect = nil then
      frmDirectConnect := TfrmDirectConnect.create(application);
      frmDirectConnect.Show;

end;

procedure TfrmMenu.MenuItem5Click(Sender: TObject);
begin

  MenuItem5.Checked := not MenuItem5.Checked;

  if MenuItem5.Checked then
     begin
          MenuItem6.Checked               := false;
          ControlSizer1.Control           := pnEscala;
          ControlSizer1.AllowMove         := true;
          ControlSizer1.AllowResize       := false;
          ControlSizer1.LimitToParentRect := true;
     end
     else
        ControlSizer1.Control := nil;

end;

procedure TfrmMenu.MenuItem6Click(Sender: TObject);
begin

  MenuItem6.Checked := not MenuItem6.Checked;

  if MenuItem6.Checked then
     begin
          MenuItem5.Checked               := false;
          ControlSizer1.Control           := pnEscala;
          ControlSizer1.AllowMove         := false;
          ControlSizer1.AllowResize       := true;
          ControlSizer1.LimitToParentRect := true;
     end
     else
        ControlSizer1.Control           := nil;

end;

procedure TfrmMenu.ResetarPanels;
begin

  ControlSizer1.Control    := nil;

  //posicionar a escala
  pnescala.RollState       := false;
  pnEscala.Width           := 258;
  pnEscala.Height          := 73;
  pnEscala.Top             := map1.Height - pnEscala.Height - 6;
  pnEscala.left            := map1.Width - pnEscala.Width - 5;
  pnEscala.visible         := true;

  pnMapa2.RollState        := false;
  pnMapa2.Width            := 235;
  pnMapa2.Height           := 137;
  pnMapa2.Top              := 4;
  pnMapa2.Left             := map1.Width - pnMapa2.Width - 5;
  pnMapa2.Visible          := true;

  pnLegenda.RollState      := false;
  pnLegenda.Height         := map1.Height - 30;
  pnLegenda.Left           := 6;
  pnLegenda.Width          := 227;
  pnLegenda.top            := 8;
  pnlegenda.Visible        := true;

  lblGeoprocessamento.Top  := pnStatus.Height - 16;
  lblGeoprocessamento.Left := pnStatus.Width - 162;

end;


procedure TfrmMenu.ResetarJanelas1Click(Sender: TObject);
begin

  resetarPanels;

end;

procedure TfrmMenu.CriarJoinSDEBancoOracle1Click(Sender: TObject);
begin

  if frmJoin = nil then
     frmJoin := TfrmJoin.create(application);
  frmJoin.show;

end;

procedure TfrmMenu.CriarIdentificadordeCamada1N1Click(Sender: TObject);
begin

  if frmConfigIDentificador = nil then
     frmConfigIDentificador := TfrmConfigIDentificador.create(application);
  frmConfigIDentificador.show;

end;

procedure TfrmMenu.RemoverJoin1Click(Sender: TObject);
begin

    if frmRemoverJoins=nil then
       frmRemoverJoins:=TfrmRemoverJoins.create(application);
    frmRemoverJoins.show;

end;

procedure TfrmMenu.RemoverIdentificadordeCamada1N1Click(Sender: TObject);
begin

   if frmRemoverIDent1N=nil then
      frmRemoverIDent1N:=TfrmRemoverIDent1N.create(application);
   frmRemoverIDent1N.show;

end;

procedure TfrmMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

 if novoprojeto = idcancel then canclose:=false
 else canclose := true;

end;

procedure TfrmMenu.CarregarUmRelatrioPreviamenteSalvo1Click(Sender: TObject);
begin

  if frmRelSimples <> nil then frmRelSimples.close;
  frmRelSimples := TfrmRelSimples.create(application);
  frmRelSimples.QuickRep1.Preview;

end;

procedure TfrmMenu.CriarUmNovoRelatrio1Click(Sender: TObject);
begin

  if frmPreviewRel = nil then
     frmPreviewRel := TfrmPreviewRel.create(application);
     frmPreviewRel.show;

end;

procedure TfrmMenu.AbrirTabeladoTemaCamadaAtiva1Click(Sender: TObject);
begin

   frmmenu.mensagem('Formulário em Desenvolvimento',mtError,[mbOk]);

end;

procedure TfrmMenu.Query1Click(Sender: TObject);
begin

   if frmQuery = nil then
      frmQuery := TfrmQuery.create(application);
   frmQuery.show;

end;

procedure TfrmMenu.LimparSeleo1Click(Sender: TObject);
begin

  limparSelecaoShapes;
  map1.Refresh;

end;

procedure TfrmMenu.ZoomMaior1Click(Sender: TObject);
begin

  ZoomMaiorPadrao;

end;

procedure TfrmMenu.ZoomMaiorPadrao;
var
varRect : IMoRectangle;
begin
   //rotina que dá o zoom
   varRect := Map1.Extent;
   varRect.ScaleRectangle(variant(0.5));
   Map1.Extent := varRect;

end;

procedure TfrmMenu.ZoomMenorPadrao;
var
varRect : IMoRectangle;
begin
   varRect := Map1.Extent;
   varRect.ScaleRectangle(variant(1.5));
   Map1.Extent := varRect;

end;

procedure TfrmMenu.ZoomMenor1Click(Sender: TObject);
begin

  ZoomMenorPadrao;

end;

procedure TfrmMenu.btZoomAnteriorClick(Sender: TObject);
begin
btGrafico.Tag := 0;

  ZoomAnterior;

end;

procedure TfrmMenu.bsSkinSpeedButton2Click(Sender: TObject);
begin
btGrafico.Tag := 0;

   ZoomPosterior;

end;

procedure TfrmMenu.pnLegendaChangeRollState(Sender: TObject);
begin

   if pnlegenda.RollState = false then
      begin
         if pnlegenda.Height < 20 then
            pnlegenda.Height := map1.Height - 30;
      end;

end;

procedure TfrmMenu.pnEscalaChangeRollState(Sender: TObject);
begin

   if pnEscala.RollState = false then
      begin
         if pnEscala.Height < 20 then
            pnEscala.Height := 73;
      end;

end;

procedure TfrmMenu.pnMapa2ChangeRollState(Sender: TObject);
begin

   if pnMapa2.RollState = false then
      begin
         if pnMapa2.Height < 20 then
            pnMapa2.Height := 137;
      end;

end;

procedure TfrmMenu.EMDESENVOLVIMENTO1Click(Sender: TObject);
begin

   if frmAnaliseProximidade = nil then
      frmAnaliseProximidade := TfrmAnaliseProximidade.Create(application);
   frmAnaliseProximidade.show;

end;

procedure TfrmMenu.AbrirTabelaDosShapesSelecionadosCamadaAtiva1Click(
  Sender: TObject);
begin

   if frmTabelaSelecionados = nil then
      frmTabelaSelecionados := TfrmTabelaSelecionados.create(application);
   frmTabelaSelecionados.show;


end;

procedure TfrmMenu.CoordenadasemLatLong1Click(Sender: TObject);
begin

   if frmGrafInsCoordLatLong = nil then
      frmGrafInsCoordLatLong := TfrmGrafInsCoordLatLong.create(application);
   frmGrafInsCoordLatLong.show;

end;

procedure TfrmMenu.MenuItem7Click(Sender: TObject);
begin

   if map1.Layers.Count = 0 then exit;

   if frmTabelaSelecionados = nil then
      frmTabelaSelecionados := TfrmTabelaSelecionados.create(application);
   frmTabelaSelecionados.show;

end;

procedure TfrmMenu.btZoomMaisClick(Sender: TObject);
var
varRect : IMoRectangle;
begin
btGrafico.Tag := 0;

   varRect := Map1.Extent;
   varRect.ScaleRectangle(variant(0.9));
   Map1.Extent := varRect;
   ControlarZoom;
end;

procedure TfrmMenu.btZoomMenosClick(Sender: TObject);
var
varRect : IMoRectangle;
begin
btGrafico.Tag := 0;

   varRect := Map1.Extent;
   varRect.ScaleRectangle(variant(1.1));
   Map1.Extent := varRect;
   ControlarZoom;
end;

procedure TfrmMenu.AdicionarVertexLinha;
Var
pt                  : IMoPoint;
ptstmp              : IMoPoints;
tmpLinha            : IMoLine;
prts                : IMoParts;
varTrue             : WordBool;
V                   : Variant;
tempImoPoints       : IMoPoints;
i                   : smallint;
shortDistPtIndex    : Integer;
thisDist, shortDist : Single;
begin

         pt       := CoPoint.Create;
         pt       := Map1.ToMapPoint(varPosVerticeX,varPosVerticeY);
         //*****
         tmpLinha := varGrafLinha[strToInt(vetSelectLinha[0])];
         prts     := tmpLinha.Parts;
         ptstmp   := CoPoints.Create;
         ptstmp   := IMoPoints(prts.item(0));
         //*******
         tempImoPoints := CoPoints.Create;
         //**********************************************
         If tmpLinha.Parts.Count <> 0 Then
         shortDist := 999999999;
         pt := Map1.ToMapPoint(varPosVerticeX,varPosVerticeY);
         //**********************************************
         for i:=0 to ptstmp.Count - 2 do
            begin
               thisDist := pt.DistanceToSegment(ptstmp.Item(i), ptstmp.Item(i + 1));
                If thisDist < shortDist Then
                 begin
                  shortDist        := thisDist;
                  shortDistPtIndex := i + 1;
                 end;
            end;

         thisDist := pt.DistanceToSegment(ptstmp.Item(ptstmp.Count - 1), ptstmp.Item(0));
         If thisDist < shortDist Then
            ptstmp.Add(pt)
         else
            ptstmp.Insert(shortDistPtIndex, pt);
         //*******************************************************
         varTrue      := true;
         //*******************************************************
         Map1.TrackingLayer.Refresh(varTrue,V);

end;

procedure TfrmMenu.MoverVertexLinha(x,y : Double);
var
tmpLinha: IMoLine;
ptstmp  : IMoPoints;
prts    : IMoParts;
pt      : IMoPoint;
varTrue : WordBool;
V       : Variant;
begin

       varPosVerticeX := x;
       varPosVerticeY := y;
       pt       := CoPoint.Create;
       pt       := Map1.ToMapPoint(X,Y);
       tmpLinha := varGrafLinha[strToInt(vetSelectLinha[0])];
       prts     := tmpLinha.Parts;
       ptstmp   := CoPoints.Create;
       ptstmp   := IMoPoints(prts.item(0));
       //*******
       ptstmp.Set_(VarIntIndexVertice,pt);
       //*******
       tmpLinha.Parts.Set_(0,ptstmp);
       //*******
       varGrafLinha[strToInt(vetSelectLinha[0])] := tmpLinha;
       //*******
       lblInfo.text := 'Linha - Comprimento: '+formatFloat('0.000',varGrafLinha[strToInt(vetSelectLinha[0])].Length);
       varTrue := true;
       Map1.TrackingLayer.Refresh(varTrue,V);
  end;

procedure TfrmMenu.AtualizarCamadas(Sender : TObject);
var
Direc, dir, varStr, varname : string;
versaoatual, i : integer;
F : TextFile;
dataDia : string;
atualizaCamadasHost, atualizaCamadasUser, atualizaCamadasSenha : string;
begin
LerArquivoIni;
  //PROCURO A CHAVE [FTP]
  for i:=0 to leituraIni.Count -1 do
   if leituraIni.Strings[i] = '[FTP]' then
    begin
     atualizaCamadasHost  := frmMenu.leituraIni.Strings[i+1];
     atualizaCamadasUser  := frmMenu.leituraIni.Strings[i+2];
     atualizaCamadasSenha := LowerCase(DECrypt('D', frmMenu.leituraIni.Strings[i+3]));
    end;
     i := i + 1;

      datadia := DateToStr(date);
      Direc := ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0';
      varname := 'shapes.txt';
      dir := '/versao';
     if not (DirectoryExists(direc)) then
       begin
          MessageDlg('O programa não foi instalado no diretório padrão...'+#13+'Não será possível a verificação de atualização automática no servidor'+#13+'Entre em contato com o administrador do sistema', mtWarning,[mbOK],0);
          Abort;
       end;
         DeleteFile(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\shapes.txt');
         if not (FileExists((ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\'+varname))) then
            begin
              with dmGeo.IdFTP1 do
                try
                  Username := atualizaCamadasUser;
                  Password := atualizaCamadasSenha;
                  Host := atualizaCamadasHost;
                  Connect;
                except
                  exit;
                end;
                dmGeo.IdFTP1.ChangeDir(dir);
                dmGeo.IdFTP1.Get(varname, ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\'+ varname, false);  //joga o arquivo pra máquina para comparar a versão
                AssignFile(F,ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\'+ varname);
                Reset(F);
                 while not eof(F) do
                   begin
                     Readln(F,varStr); // F = ARQUIVO DE TEXTO DA VERSAOSHAPE

                 if FileExists(ExtractFilePath(application.ExeName)+'SIGGeo.ini') then
                   begin
                      AssignFile(ini,ExtractFilePath(application.ExeName)+'SIGGeo.ini');
                      Reset(ini);
                      leituraIni := TStringList.Create;
                   //LEIO INI E GUARDO NA STRINGLIST
                      while not Eof(ini) do
                       begin
                        Readln(ini,varversaoshape);
                        leituraIni.Add(varVersaoShape);
                       end;

                    //PROCURO O NUMERO DA VERSAO DOS SHAPES
                       for i:=0 to leituraIni.Count -1 do
                        if leituraIni.Strings[i] = '[VERSAOSHAPE]' then
                         begin
                          versaoatual := strtoint(leituraIni.Strings[i+1]);
                          CloseFile(ini);
                         end;
                        i := i + 1;

                   end;

                       if StrToInt(varStr) > versaoatual then   //compara a versão
                        begin
                         if frmmenu.mensagem('Existe shapes disponíveis para atualização'+#13+'Deseja atualizar??',mtConfirmation,[mbYes,mbNo])= mrYes then
                           begin
                            RzLauncher3.Execute;
                            Application.Terminate;

                            //****** LEIO INI E GUARDO NA STRINGLIST
                            AssignFile(ini,ExtractFilePath(application.ExeName)+'SIGGeo.ini');
                            reset(ini);
                            leituraIni := TStringList.Create;

                              while not Eof(ini) do
                               begin
                                Readln(ini,varversaoshape);
                                leituraIni.Add(varVersaoShape);

                               end;

                               CloseFile(ini);
                               AssignFile(ini,ExtractFilePath(application.ExeName)+'SIGGeo.ini');

                              if not FileExists(ExtractFilePath(application.ExeName)+'SIGGeo.ini') then
                                 ReWrite(ini)
                              else
                                 begin
                                     Append(ini);
                                     ReWrite(ini);

                                 end;
                               // VOU REESCREVER TODO O ARQUIVO INI E ATUALIZAR SOMENTE A CHAVE VERSÃOSHAPE
                               for i:=0 to leituraIni.Count -1 do
                                begin
                                 if leituraIni.Strings[i] = inttostr(versaoatual) then
                                   Writeln(ini,varStr)
                                  else
                                  if leituraIni.Strings[i] = data_atual_shp then
                                   writeln(ini,dataDia)
                                   else
                                     Writeln(ini,leituraIni.Strings[i]);
                                end;
                                 i:= i + 1;
                                 CloseFile(ini);
                           end;
                        end
                         else
                          if Sender is TTimer then
                           begin
                            CloseFile(f);
                            DeleteFile(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\shapes.txt');
                            dmGeo.IdFTP1.Disconnect;
                            exit;
                           end
                            else
                              begin
                               frmmenu.mensagem('Não existem atualizações no momento...',mtInformation,[mbOk]);
                              end;
                   end;
                    CloseFile(f);
                    DeleteFile(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\shapes.txt');
            end;
             dmGeo.IdFTP1.Disconnect;

end;

procedure TfrmMenu.VerificarAtualizacodeCamadas1Click(Sender: TObject);
begin
AtualizarCamadas(Sender);
end;

procedure TfrmMenu.VerificarDataAtualizacaoSHP(Sender : TObject);
var
i : integer;
data_dia : string;
begin
data_dia := DateToStr(Date);

  //PROCURO A DATA
     for i:=0 to leituraIni.Count -1 do
      if leituraIni.Strings[i] = '[DATA_ATUALIZACAO_SHP]' then
       begin
        data_atual_shp := leituraIni.Strings[i+1];
       end;
      i := i + 1;

       if IncDay(StrToDate(data_atual_shp),7) <= StrToDate(data_dia) then
        begin
         AtualizarCamadas(sender);
        end
         else
          begin
           exit;
          end;

end;

procedure TfrmMenu.Configuraes2Click(Sender: TObject);
begin
if frmConfigSistema = nil then
   frmConfigSistema := TfrmConfigSistema.create(application);
   frmConfigSistema.showmodal;
end;

procedure TfrmMenu.LerArquivoIni;
var
varIni : String;
begin
 if FileExists(ExtractFilePath(application.ExeName)+'SIGGeo.ini') then
     begin
        AssignFile(ini,ExtractFilePath(application.ExeName)+'SIGGeo.ini');
        Reset(ini);
        leituraIni := TStringList.Create;
     //LEIO INI E GUARDO NA STRINGLIST
        while not Eof(ini) do
         begin
          Readln(ini,varIni);
          leituraIni.Add(varIni);
         end;
         CloseFile(ini);
      end;
end;

procedure TfrmMenu.LerArquivoCabecalho;
var
varcab : String;
begin
 if FileExists(ExtractFilePath(application.ExeName)+'\profiles\layout\texto.txt') then
     begin
        AssignFile(cab,ExtractFilePath(application.ExeName)+'\profiles\layout\texto.txt');
        Reset(cab);
        leituraCab := TStringList.Create;
     //LEIO TEXTO.TXT E GUARDO NA STRINGLIST
        while not Eof(cab) do
         begin
          Readln(cab,varcab);
          leituraCab.Add(varcab);
         end;
         CloseFile(cab);
      end;
end;

function TfrmMenu.DECrypt(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
  KeyPos : Integer;
  OffSet : Integer;
  Dest, Key : String;
  SrcPos : Integer;
  SrcAsc : Integer;
  TmpSrcAsc : Integer;
  Range : Integer;
begin
  if (Src = '') Then
  begin
    Result:= '';
    Goto Fim;
  end;
  Key :=
'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x',[OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x',[SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$'+ copy(Src,1,2));
    SrcPos := 3;
  repeat
    SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
    if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
    TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
    if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
    else TmpSrcAsc := TmpSrcAsc - OffSet;
    Dest := Dest + Chr(TmpSrcAsc);
    OffSet := SrcAsc;
    SrcPos := SrcPos + 2;
  until (SrcPos >= Length(Src));
  end;
  Result:= Dest;
  Fim:
end;

procedure TfrmMenu.ConfigurarMenuTemas;
var
i : integer;
itemMenu : integer;
begin
frmMenu.LerArquivoIni;

 //PROCURO A CHAVE [TEMA]
  for i:=0 to frmMenu.leituraIni.Count -1 do
   if frmMenu.leituraIni.Strings[i] = '[TEMA]' then
    begin
     vartema := StrToInt(frmMenu.leituraIni.Strings[i+1]);
    end;
     i := i + 1;


  for i :=0 to emas1.Count - 1 do
   begin
    if emas1.Items[i].Checked = true then
     begin
      itemMenu := emas1.Items[i].MenuIndex;
     end;
   end;
     i := i + 1;

  AssignFile(ini,ExtractFilePath(application.ExeName)+'SIGGeo.ini');


    if not FileExists(ExtractFilePath(application.ExeName)+'SIGGeo.ini') then
       ReWrite(ini)
    else
       begin
           Append(ini);
           ReWrite(ini);
       end;
     //VOU REESCREVER TODO O ARQUIVO INI E ATUALIZAR AS CHAVES
     for i:=0 to frmMenu.leituraIni.Count -1 do
      begin
          if frmMenu.leituraIni.Strings[i] = inttostr(vartema) then
            begin
             writeln(ini,IntToStr(itemMenu));
            end
             else
               begin
                Writeln(ini,frmMenu.leituraIni.Strings[i]);
               end;
      end;
       i:= i + 1;
       CloseFile(ini);

     case itemMenu of

     0 : frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\ExOS.skn');
     1 : frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\Autumn.skn');
     2 : frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\Clouds.skn');
     3 : frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\Express.skn');
     4 : frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\Win9X.skn');
     5 : frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\WinXPBlue.skn');

     end;
end;

procedure TfrmMenu.EditarCamadas;
var
mlyr         : MapLayer;
//recs         : Recordset;
shppoli      : IMoPolygon;
shpline      : IMoLine;
shppoint     : IMoPoint;
i,layerativa : integer;
//lyr          : IMoMapLayer;
//lyrs         : IMoLayers;
extECW       : string;

begin

If maplegend1.getActiveLayer = -1 Then
      begin
         if map1.Layers.Count > 0 then
            MapLegend1.Active[0] := true
         else
            begin
               mensagem('Não Há Tema Ativo!',mtInformation,[mbok]);
               Exit;
            end;
      end;

      for i:=0 to Map1.Layers.Count - 1 do
       begin
         if MapLegend1.Active[i] = true then
          begin
           layerativa := i;
           break;
          end;
       end;
       i := i + 1;

       if (IMoMapLayer(IMoLayers(Map1.layers).Item(layerativa)).LayerType = moMapLayer) then
        begin
         lyr  := CoMapLayer.Create;
         lyrs := map1.Layers;
         lyr  := IMoMapLayer(lyrs.item(layerativa));
         extECW := copy(ExtractFileExt(lyr.tag),1,length(ExtractFileExt(lyr.tag))-2);
        end;

       If (UpperCase(extECW) = '.ECW|ECW') then
          begin
            Mensagem('A camada ativa é do tipo ECW e não pode ser editada...',mtWarning,[mbOK]);
            exit;
          end;
           EditarTema1.Enabled := not EditarTema1.Enabled;
           StopSaveEditing1.Enabled := not StopSaveEditing1.Enabled;


end;

procedure TfrmMenu.EditarTema1Click(Sender: TObject);
begin
EditarCamadas;
end;

procedure TfrmMenu.StopSaveEditing1Click(Sender: TObject);
begin
SalvarCamadasEditadas;
 EditarTema1.Enabled := not EditarTema1.Enabled;
 StopSaveEditing1.Enabled := not StopSaveEditing1.Enabled;
//recs.StopEditing;
//EM DESENVOLVIMENTO
end;

procedure TfrmMenu.SalvarCamadasEditadas;
begin
//************
//EM DESENVOLVIMENTO

end;

procedure TfrmMenu.ppGraftextClick(Sender: TObject);
begin
btGrafico.Tag := 1;
HabilitaGrafico; 
end;

procedure TfrmMenu.ppGrafpontoClick(Sender: TObject);
begin
btGrafico.Tag := 2;
HabilitaGrafico;
if not varBoolSalvaConfigPonto then
      begin
          if frmGrafPonto = nil then
             frmGrafPonto := TfrmGrafPonto.create(application);
          frmGrafPonto.show;
      end;
end;

procedure TfrmMenu.ppGrafLineClick(Sender: TObject);
begin
btGrafico.Tag := 3;
HabilitaGrafico;
 if not varBoolSalvaConfigLinha then
      begin
          if frmGrafLinha = nil then
             frmGrafLinha := TfrmGrafLinha.create(application);
          frmGrafLinha.show;
      end;
end;

procedure TfrmMenu.ppGrafCircClick(Sender: TObject);
begin
btGrafico.Tag := 4;
HabilitaGrafico;
if not varBoolSalvaConfigCirculo then
      begin
          if frmGrafCirculo = nil then
             frmGrafCirculo := TfrmGrafCirculo.create(application);
          frmGrafCirculo.show;
      end;
end;

procedure TfrmMenu.ppGrafRetClick(Sender: TObject);
begin
btGrafico.Tag := 5;
HabilitaGrafico;
 if not varBoolSalvaConfigRetang then
      begin
          if frmGrafRetangulo = nil then
             frmGrafRetangulo := TfrmGrafRetangulo.create(application);
          frmGrafRetangulo.show;
      end;
end;

procedure TfrmMenu.ppGrafpoliClick(Sender: TObject);
begin
btGrafico.Tag := 6;
HabilitaGrafico;
if not varBoolSalvaConfigPoli then
      begin
          if frmGrafPoli = nil then
             frmGrafPoli := TfrmGrafPoli.create(application);
          frmGrafPoli.show;
      end;
end;


procedure TfrmMenu.bsSkinMenuSpeedButton2Click(Sender: TObject);
begin
btGrafico.Tag := 0;

end;

procedure TfrmMenu.bsSkinMenuSpeedButton1Click(Sender: TObject);
begin
 btGrafico.Tag := 0;

end;

procedure TfrmMenu.btConfigGrafClick(Sender: TObject);
begin
btGrafico.Tag := 0;

end;


procedure TfrmMenu.ConverterParaShape1Click(Sender: TObject);
begin
 if frmCriarCamada = nil then
      frmCriarCamada := TfrmCriarCamada.create(application);
      frmCriarCamada.show;
end;

end.


