unit U_DirectConnect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsSkinBoxCtrls, bsSkinCtrls, ComCtrls,
  StdCtrls, ExtCtrls,MapObjects2_TLB, RzLabel;

type
  TfrmDirectConnect = class(TForm)
    bsSkinBevel3: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinStdLabel7: TbsSkinStdLabel;
    bsSkinStdLabel8: TbsSkinStdLabel;
    bsSkinButton1: TbsSkinButton;
    treeSDE: TbsSkinTreeView;
    bsSkinScrollBar1: TbsSkinScrollBar;
    bsSkinButton2: TbsSkinButton;
    bsSkinButton3: TbsSkinButton;
    bsSkinButton4: TbsSkinButton;
    lstShapes: TbsSkinCheckListBox;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    RzLabel2: TRzLabel;
    procedure treeSDEDblClick(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bsSkinButton3Click(Sender: TObject);
  private
    { Private declarations }
    varVetTempLista : array of string;
    Cont_conexaoselecionada : Smallint;
  public
    { Public declarations }
  end;

var
  frmDirectConnect: TfrmDirectConnect;

implementation

uses U_Menu, U_NovaConexaoDireta;

{$R *.dfm}

procedure TfrmDirectConnect.treeSDEDblClick(Sender: TObject);
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

 {//dados do servidor;
 frmmenu.dc          := CoDataConnection.Create;
 frmmenu.dc.Server   := 'sde90:directconnect';//'sde81:dsg'
 frmmenu.dc.User     := frmmenu.varVetDICOUsuario[x];
 frmmenu.dc.Password := frmmenu.varVetDICOSenha[x]+'@'+frmmenu.varVetDICOBanco[x];
 frmmenu.dc.Database := 'instance=sde:oracle';}

 //jogo os nomes dos shapes no listbox
 if frmmenu.DicoCon[x].Connect then
  begin
        lstShapes.Clear;
        //****

        //frmmenu.dc.
        //****
        g_count := IMoGeoDatasets(frmmenu.DicoCon[x].GeoDataSets).Count;
        i :=0;

        SetLength(varVetTempLista,g_count);

        teste := TStringList.Create;
        teste.Clear;

        while i<> g_count do
            begin
                teste.add(IMoGeoDataset(IMoGeoDatasets(frmmenu.DicoCon[x].GeoDataSets).item(i)).name);
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
        frmmenu.Mensagem('Erro ao Conectar no Servidor! Verifique seu Login/Senha, Suas Configurações e Tente Novamente',mtinformation,[mbOK]);
        screen.Cursor := crDefault;
        exit;
    end;

  screen.Cursor := crDefault;

end;

procedure TfrmDirectConnect.bsSkinButton2Click(Sender: TObject);
begin
   frmMenu.LerArquivoIni;
   if frmNovaConexaoDireta = nil then
      frmNovaConexaoDireta := TfrmNovaConexaoDireta.create(application);
   frmNovaConexaoDireta.showmodal;
   
end;

procedure TfrmDirectConnect.bsSkinButton1Click(Sender: TObject);
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
                frmmenu.adicionarDirectConnect(varVetTempLista[i],Cont_conexaoselecionada);
                frmmenu.AtualizarSituacaoLegenda;
                teste := true;
            end;
     end;

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

procedure TfrmDirectConnect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action             := cafree;
   frmDirectConnect   := nil;


end;

procedure TfrmDirectConnect.FormCreate(Sender: TObject);
var
// name    : string;
 i       : integer;
// g_count : integer;
 cont    : smallint;
 MyTreeNode1 : TTreeNode;
 MyTreeNode2 : TTreeNode;
begin

  Cont_conexaoselecionada := 0;

  if frmMenu.VarDICOativo then
     begin
         //*****************************************************
          with TreeSde.Items do
              begin
                Clear;  //remove any existing nodes
                cont := 0;

                for i:=0 to length(frmmenu.varVetDICOBanco)-1 do
                    begin
                        if trim(frmmenu.varVetDICOBanco[i]) <> '' then
                           begin
                                //*****************************************
                                // Add a child node to the node just added
                                MyTreeNode1 := Add(nil,'Conexão '+formatfloat('00',i+1)+' : '+frmmenu.varVetDICOBanco[i]+ ' / '+frmmenu.varVetDICOusuario[i]);// Add a root node
                                MyTreeNode2 := TreeSde.Items[cont];
                                AddChild(MyTreeNode2,'Banco: '+frmmenu.varVetDICOBanco[i]);
                                AddChild(MyTreeNode2,'Usuário: '+frmmenu.varVetDICOusuario[i]);
                                //****************************************
                                cont := cont + 3;
                           end;
                    end;
              end;
         //*****************************************************
     end;

end;

procedure TfrmDirectConnect.bsSkinButton3Click(Sender: TObject);
var
Cont_conexaoselecionada : smallint;
x                       : smallint;
temp                    : string;
NoRaiz                  : TTreeNode;
//************
DicoBanco               : array of string;
Dicousuario             : array of string;
Dicosenha               : array of string;
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
         //showmessage('tamanho '+intToStr(length(frmmenu.varVetDicoBanco)));

         for i:=0 to length(frmmenu.varVetDicoBanco)-1 do
             begin
                 if i <> cont_conexaoselecionada then
                    begin
                       setLength(DicoBanco,length(DicoBanco)+1);
                       setLength(Dicousuario,length(Dicousuario)+1);
                       setLength(Dicosenha,length(Dicosenha)+1);
                       //**************************************
                       DicoBanco[length(DicoBanco)-1]       := frmmenu.varVetDicoBanco[i];
                       Dicousuario[length(Dicousuario)-1]   := frmmenu.varVetDicoUsuario[i];
                       Dicosenha[length(Dicosenha)-1]       := frmmenu.varVetDicoSenha[i];
                       //showmessage('usuario '+frmmenu.varvetDicoUsuario[i]);
                    end;
             end;

         //*************************
         SetLength(frmmenu.DicoCon,0);
         setLength(frmmenu.varVetDICOBanco,0);
         setLength(frmmenu.varVetDICOusuario,0);
         setLength(frmmenu.varVetDICOsenha,0);
         //**************************

         for i:=0 to length(DicoBanco)-1 do
             begin
                SetLength(frmmenu.DicoCon,length(frmmenu.DicoCon)+1);
                setLength(frmmenu.varVetDICOBanco,length(frmmenu.varVetDICOBanco)+1);
                setLength(frmmenu.varVetDICOusuario,length(frmmenu.varVetDICOusuario)+1);
                setLength(frmmenu.varVetDICOsenha,length(frmmenu.varVetDICOsenha)+1);
                //*******************************************************
                frmmenu.varVetDicoBanco[length(frmmenu.varVetDicoBanco)-1]        := DicoBanco[i];
                frmmenu.varVetDicousuario[length(frmmenu.varVetDicoUsuario)-1]    := Dicousuario[i];
                frmmenu.varVetDicosenha[length(frmmenu.varVetDicoSenha)-1]        := Dicosenha[i];
                //***********************************************************
                frmmenu.DicoCon[length(frmmenu.DicoCon)-1]          := CoDataConnection.Create;
                frmmenu.DicoCon[length(frmmenu.DicoCon)-1].Server   := 'sde90:directconnect';//'sde81:dsg'
                frmmenu.DicoCon[length(frmmenu.DicoCon)-1].User     := Dicousuario[i];
                frmmenu.DicoCon[length(frmmenu.DicoCon)-1].Password := DicoSenha[i]+'@'+DicoBanco[i];
                frmmenu.DicoCon[length(frmmenu.DicoCon)-1].Database := 'instance=sde:oracle';
                frmmenu.DicoCon[length(frmmenu.DicoCon)-1].Connect;
                //showmessage('novo '+Dicousuario[i]);
             end;

          //************************************
          //************************************
          with TreeSde.Items do
              begin
                Clear;  //remove any existing nodes
                cont := 0;

                for i:=0 to length(frmmenu.varVetDICOBanco)-1 do
                    begin
                        //showmessage(intToStr(i));
                        if trim(frmmenu.varVetDICOBanco[i]) <> '' then
                           begin
                                //*****************************************
                                // Add a child node to the node just added
                                MyTreeNode1 := Add(nil,'Conexão '+formatfloat('00',i+1)+' : '+frmmenu.varVetDICOBanco[i]+ ' / '+frmmenu.varVetDICOusuario[i]);// Add a root node
                                MyTreeNode2 := TreeSde.Items[cont];
                                AddChild(MyTreeNode2,'Banco: '+frmmenu.varVetDICOBanco[i]);
                                AddChild(MyTreeNode2,'Usuário: '+frmmenu.varVetDICOusuario[i]);
                                //****************************************
                                cont := cont + 3;
                           end;
                    end;
              end;
          //*****************************************************
          screen.cursor := crDefault;
     end;


end;

end.
