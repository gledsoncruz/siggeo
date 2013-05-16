unit U_SDE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, ExtCtrls, bsSkinCtrls, StdCtrls,
  bsSkinBoxCtrls, Mask,MapObjects2_TLB, ComCtrls, bsSkinGrids, RzLabel;

type
  TfrmSDE = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinStdLabel7: TbsSkinStdLabel;
    bsSkinButton1: TbsSkinButton;
    treeSDE: TbsSkinTreeView;
    bsSkinBevel3: TbsSkinBevel;
    bsSkinStdLabel8: TbsSkinStdLabel;
    bsSkinScrollBar1: TbsSkinScrollBar;
    bsSkinButton2: TbsSkinButton;
    bsSkinButton3: TbsSkinButton;
    bsSkinButton4: TbsSkinButton;
    lstShapes: TbsSkinCheckListBox;
    RzLabel2: TRzLabel;
    procedure bsSkinButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure treeSDEDblClick(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure bsSkinButton4Click(Sender: TObject);
    procedure bsSkinButton3Click(Sender: TObject);
  private
    { Private declarations }
    varVetTempLista : array of string;
    Cont_conexaoselecionada : smallint;
  public
    { Public declarations }
  end;

var
  frmSDE: TfrmSDE;

implementation

uses U_Menu, U_NovaConSDE;

{$R *.dfm}
        {Add another root node
        MyTreeNode2 := Add(MyTreeNode1, 'RootTreeNode2');
        {Give MyTreeNode2 to a child
        AddChild(MyTreeNode2,'ChildNode2');}

        {Change MyTreeNode2 to ChildNode2 }
        { and add a child node to it
        MyTreeNode2 := TreeSde.Items[3];
        AddChild(MyTreeNode2,'ChildNode2a');

        {Add another child to ChildNode2, after ChildNode2a }


        {add another root node
        Add(MyTreeNode1, 'RootTreeNode3');}

procedure TfrmSDE.bsSkinButton1Click(Sender: TObject);
var
 i     : smallint;
 teste : boolean;
begin

 teste := false;
 frmmenu.VarPermitirDesenharLayers := false;

 for i:=0 to lstShapes.Items.Count - 1 do
     begin
         if lstShapes.Checked[i] then
            begin
                frmmenu.EvitarBugDaLegenda;
                frmmenu.adicionarSDE(varVetTempLista[i],Cont_conexaoselecionada);
                frmmenu.AtualizarSituacaoLegenda;
                teste := true;
            end;
     end;

 //***
 frmmenu.VarPermitirDesenharLayers := true;

 if frmmenu.map1.layers.count > 0 then
   begin
      if frmmenu.maplegend1.GetActiveLayer = -1 then
         frmmenu.maplegend1.Active[0] := true;
   end;

 frmmenu.map1.refresh;

 if teste then
    close;

end;

procedure TfrmSDE.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  action := cafree;
  frmSDE := nil;

end;

procedure TfrmSDE.FormKeyPress(Sender: TObject; var Key: Char);
begin

   if key=#13 then
      begin
          perform(WM_NEXTDLGCTL,0,0);
          key:=#0;
      end;

end;

procedure TfrmSDE.FormCreate(Sender: TObject);
var
// name    : string;
 i       : integer;
// g_count : integer;
 cont    : smallint;
 MyTreeNode1 : TTreeNode;
 MyTreeNode2 : TTreeNode;
begin

  Cont_conexaoselecionada := 0;

  if frmMenu.VarSDEativo then
     begin
         //*****************************************************
          with TreeSde.Items do
              begin
                Clear;  //remove any existing nodes
                cont := 0;

                for i:=0 to length(frmmenu.varVetSDEServidor)-1 do
                    begin
                        if trim(frmmenu.varVetSDEServidor[i]) <> '' then
                           begin
                                //*****************************************
                                // Add a child node to the node just added
                                MyTreeNode1 := Add(nil,'Conexão '+formatfloat('00',i+1)+' : '+frmmenu.varVetSDEServidor[i]+ ' / '+frmmenu.varVetSDEusuario[i]);// Add a root node
                                MyTreeNode2 := TreeSde.Items[cont];
                                AddChild(MyTreeNode2,'Servidor: '+frmmenu.varVetSDEServidor[i]);
                                AddChild(MyTreeNode2,'Banco: '+frmmenu.varVetSDEBanco[i]);
                                AddChild(MyTreeNode2,'Serviço: '+frmmenu.varVetSDEservico[i]);
                                AddChild(MyTreeNode2,'Usuário: '+frmmenu.varVetSDEusuario[i]);
                                //****************************************
                                cont := cont + 5;
                           end;
                    end;
              end;
         //*****************************************************
     end;

end;

procedure TfrmSDE.treeSDEDblClick(Sender: TObject);
var
 name        : string;
 i           : integer;
 g_count     : integer;
 NoRaiz      : TTreeNode;
 temp        : string;
 X           : smallint;
varPos01     : integer;
varTam       : integer;
varTempSTR01 : string;
teste        : TStringList;
begin

  if TreeSDE.Selected = nil then
     Exit;

  NoRaiz := TreeSDE.Selected;
  While NoRaiz.Parent <> nil do
        NoRaiz := NoRaiz.Parent;

  temp := NoRaiz.Text;
  x    := StrToInt(copy(temp,9,2));
  x    := x - 1;

  Cont_conexaoselecionada := x;

  setLength(varVetTempLista,0);

  screen.Cursor := crHourGlass;

 //jogo os nomes dos shapes no listbox
 if frmmenu.SDECon[x].Connect then
  begin
        lstShapes.Clear;
        //****
        //****
        g_count := IMoGeoDatasets(frmmenu.SDECon[x].GeoDataSets).Count;
        i :=0;

        SetLength(varVetTempLista,g_count);

        teste := TStringList.Create;
        teste.Clear;

        while i<> g_count do
            begin
                teste.add(IMoGeoDataset(IMoGeoDatasets(frmmenu.SDECon[x].GeoDataSets).item(i)).name);
                i :=i+1;
            end;

        teste.Sort;

        for i:=0 to teste.Count -1 do
            begin
                name := teste.Strings[i];
                varVetTempLista[i] := name;
                //*****
                varPos01       := Pos('.',name);
                varTam         := length(name);
                varTempSTR01   := copy(name,varpos01+1,vartam);
                varPos01       := Pos('.',varTempSTR01);
                varTempSTR01   := copy(varTempSTR01,1,varPos01-1);
                //*****
                lstShapes.items.add(varTempSTR01);
            end;
  end
  else
    begin
        frmmenu.Mensagem('Erro ao Conectar no Servidor SDE! Verifique seu Login/Senha, Suas Configurações e Tente Novamente',mtinformation,[mbOK]);
        screen.Cursor := crDefault;
        exit;
    end;

  screen.Cursor := crDefault;
  

end;

procedure TfrmSDE.bsSkinButton2Click(Sender: TObject);
begin

   if frmNovaConexaoSDE = nil then
      frmNovaConexaoSDE := TfrmNovaConexaoSDE.create(application);
   frmNovaConexaoSDE.showmodal;

end;

procedure TfrmSDE.bsSkinButton4Click(Sender: TObject);
var
 name        : string;
 i           : integer;
 g_count     : integer;
 NoRaiz      : TTreeNode;
 temp        : string;
 X           : smallint;
varPos01     : integer;
varTam       : integer;
varTempSTR01 : string;
teste        : TStringList;
begin

  if TreeSDE.Selected = nil then
     Exit;

  NoRaiz := TreeSDE.Selected;
  While NoRaiz.Parent <> nil do
        NoRaiz := NoRaiz.Parent;

  temp := NoRaiz.Text;
  x    := StrToInt(copy(temp,8,2));

  Cont_conexaoselecionada := x;

  setLength(varVetTempLista,0);

 //dados do servidor;
 frmmenu.dc          := CoDataConnection.Create;
 frmmenu.dc.Server   := 'sde91:'+frmmenu.varVetSDEServidor[x];//'sde81:dsg'
 frmmenu.dc.User     := frmmenu.varVetSDEUsuario[x];
 frmmenu.dc.Password := frmmenu.varVetSDESenha[x];
 frmmenu.dc.Database := 'instance='+frmmenu.varVetSDEServico[x]+';database='+frmmenu.varVetSDEBanco[x];

 //jogo os nomes dos shapes no listbox
 if frmmenu.dc.Connect then
  begin
        lstShapes.Clear;
        g_count := IMoGeoDatasets(frmmenu.dc.GeoDataSets).Count;
        i :=0;

        SetLength(varVetTempLista,g_count);

        teste := TStringList.Create;
        teste.Clear;

        while i<> g_count do
            begin
                teste.add(IMoGeoDataset(IMoGeoDatasets(frmmenu.dc.GeoDataSets).item(i)).name);
                i :=i+1;
            end;

        teste.Sort;

        for i:=0 to teste.Count -1 do
            begin
                name := teste.Strings[i];
                varVetTempLista[i] := name;
                //*****
                varPos01       := Pos('.',name);
                varTam         := length(name);
                varTempSTR01   := copy(name,varpos01+1,vartam);
                varPos01       := Pos('.',varTempSTR01);
                varTempSTR01   := copy(varTempSTR01,1,varPos01-1);
                //*****
                lstShapes.items.add(varTempSTR01);
            end;
  end
  else
    begin
        frmmenu.Mensagem('Erro ao Conectar no Servidor SDE! Verifique seu Login/Senha, Suas Configurações e Tente Novamente',mtinformation,[mbOK]);
        screen.Cursor := crDefault;
        exit;
    end;

end;

procedure TfrmSDE.bsSkinButton3Click(Sender: TObject);
var
Cont_conexaoselecionada : smallint;
x                       : smallint;
temp                    : string;
NoRaiz                  : TTreeNode;
//************
SDEServidor             : array of string;
SDEBanco                : array of string;
SDEservico              : array of string;
SDEusuario              : array of string;
SDEsenha                : array of string;
i                       : smallint;
cont                    : smallint;
MyTreeNode1             : TTreeNode;
MyTreeNode2             : TTreeNode;
begin

  if TreeSDE.Selected = nil then
     begin
        frmmenu.mensagem('Selecione Uma Conexão Para Excluir!',mtError,[mbOk]);
        Exit;
     end;   

  NoRaiz := TreeSDE.Selected;
  While NoRaiz.Parent <> nil do
        NoRaiz := NoRaiz.Parent;

  temp := NoRaiz.Text;
  x    := StrToInt(copy(temp,9,2));
//  x    := x - 1;

  Cont_conexaoselecionada := x - 1;

  if Cont_conexaoselecionada < 0 then
     begin
        frmmenu.mensagem('Selecione Uma Conexão Para Excluir!',mtError,[mbOk]);
        exit;
     end;
  //*******************************

  if frmmenu.mensagem('Deseja Excluir a Conexao '+formatfloat('00',x)+' ?',mtConfirmation,[mbyes,mbno])=idyes then
     begin
         screen.cursor := crHourGlass;
         //***
         for i:=0 to length(frmmenu.varVetSDEServidor)-1 do
             begin
                 if i <> cont_conexaoselecionada then
                    begin
                       setLength(SDEServidor,length(SDEServidor)+1);
                       setLength(SDEBanco,length(SDEBanco)+1);
                       setLength(SDEservico,length(SDEservico)+1);
                       setLength(SDEusuario,length(SDEusuario)+1);
                       setLength(SDEsenha,length(SDEsenha)+1);
                       //**************************************
                       SDEServidor[length(SDEServidor)-1] := frmmenu.varVetSDEServidor[i];
                       SDEBanco[length(SDEBanco)-1]       := frmmenu.varVetSDEBanco[i];
                       SDEservico[length(SDEservico)-1]   := frmmenu.varVetSDEservico[i];
                       SDEusuario[length(SDEusuario)-1]   := frmmenu.varVetSDEusuario[i];
                       SDEsenha[length(SDEsenha)-1]       := frmmenu.varVetSDEsenha[i];

                    end;
             end;
         //*************************
         SetLength(frmmenu.SDECon,0);
         setLength(frmmenu.varVetSDEServidor,0);
         setLength(frmmenu.varVetSDEBanco,0);
         setLength(frmmenu.varVetSDEservico,0);
         setLength(frmmenu.varVetSDEusuario,0);
         setLength(frmmenu.varVetSDEsenha,0);
         //**************************

         for i:=0 to length(SDEServidor)-1 do
             begin
                SetLength(frmmenu.SDECon,length(frmmenu.SDECon)+1);
                setLength(frmmenu.varVetSDEServidor,length(frmmenu.varVetSDEServidor)+1);
                setLength(frmmenu.varVetSDEBanco,length(frmmenu.varVetSDEBanco)+1);
                setLength(frmmenu.varVetSDEservico,length(frmmenu.varVetSDEservico)+1);
                setLength(frmmenu.varVetSDEusuario,length(frmmenu.varVetSDEusuario)+1);
                setLength(frmmenu.varVetSDEsenha,length(frmmenu.varVetSDEsenha)+1);
                //*******************************************************
                frmmenu.varVetSDEServidor[length(frmmenu.varVetSDEServidor)-1]  := SDEServidor[i];
                frmmenu.varVetSDEBanco[length(frmmenu.varVetSDEBanco)-1]        := SDEBanco[i];
                frmmenu.varVetSDEservico[length(frmmenu.varVetSDEservico)-1]    := SDEservico[i];
                frmmenu.varVetSDEusuario[length(frmmenu.varVetSDEusuario)-1]    := SDEusuario[i];
                frmmenu.varVetSDEsenha[length(frmmenu.varVetSDEsenha)-1]        := SDEsenha[i];
                //***********************************************************
                frmmenu.SDECon[length(frmmenu.SDECon)-1]          := CoDataConnection.Create;
                frmmenu.SDECon[length(frmmenu.SDECon)-1].Server   := 'sde90:'+SDEServidor[i];//'sde81:dsg'
                frmmenu.SDECon[length(frmmenu.SDECon)-1].User     := SDEusuario[i];
                frmmenu.SDECon[length(frmmenu.SDECon)-1].Password := SDESenha[i];
                frmmenu.SDECon[length(frmmenu.SDECon)-1].Database := 'instance='+SDEservico[i]+';database='+SDEBanco[i];
                frmmenu.SDECon[length(frmmenu.SDECon)-1].Connect;
             end;

         //************************************
         //*****************************************************
         with TreeSde.Items do
              begin
                Clear;  //remove any existing nodes
                cont := 0;

                for i:=0 to length(frmmenu.varVetSDEServidor)-1 do
                    begin
                        if trim(frmmenu.varVetSDEServidor[i]) <> '' then
                           begin
                                //*****************************************
                                // Add a child node to the node just added
                                MyTreeNode1 := Add(nil,'Conexão '+formatfloat('00',i+1)+' : '+frmmenu.varVetSDEServidor[i]+ ' / '+frmmenu.varVetSDEusuario[i]);// Add a root node
                                MyTreeNode2 := TreeSde.Items[cont];
                                AddChild(MyTreeNode2,'Servidor: '+frmmenu.varVetSDEServidor[i]);
                                AddChild(MyTreeNode2,'Banco: '+frmmenu.varVetSDEBanco[i]);
                                AddChild(MyTreeNode2,'Serviço: '+frmmenu.varVetSDEservico[i]);
                                AddChild(MyTreeNode2,'Usuário: '+frmmenu.varVetSDEusuario[i]);
                                //****************************************
                                cont := cont + 5;
                           end;
                    end;
              end;
         //***********************************
         screen.cursor := crDefault;
         //***********************************
     end;


end;

end.
