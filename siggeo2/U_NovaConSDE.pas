unit U_NovaConSDE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsSkinCtrls, bsSkinBoxCtrls, StdCtrls, Mask,
  ComCtrls,ExtCtrls,MapObjects2_TLB,bsSkinGrids;

type
  TfrmNovaConexaoSDE = class(TForm)
    bsSkinStdLabel1: TbsSkinStdLabel;
    edtServidor: TbsSkinEdit;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    edtBanco: TbsSkinEdit;
    edtServico: TbsSkinEdit;
    bsSkinStdLabel4: TbsSkinStdLabel;
    edtSenha: TbsSkinPasswordEdit;
    edtUsu: TbsSkinEdit;
    bsSkinStdLabel5: TbsSkinStdLabel;
    btConectar: TbsSkinButton;
    bsSkinStdLabel6: TbsSkinStdLabel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btConectarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNovaConexaoSDE: TfrmNovaConexaoSDE;

implementation

uses U_Menu, U_SDE;

{$R *.dfm}

procedure TfrmNovaConexaoSDE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action := cafree;
   frmNovaConexaoSDE := nil;

end;

procedure TfrmNovaConexaoSDE.FormCreate(Sender: TObject);
var
i : integer;
begin
frmMenu.LerArquivoIni;

//PROCURO A CHAVE [SDE]
    for i:=0 to frmmenu.leituraIni.Count -1 do
     if frmmenu.leituraIni.Strings[i] = '[SDE]' then
      begin
       frmmenu.varSDEServidor := frmmenu.leituraIni.Strings[i+1];
       frmmenu.varSDEBanco := frmmenu.leituraIni.Strings[i+2];
       frmmenu.varSDEservico := frmmenu.leituraIni.Strings[i+3];
      end;
       i := i + 1;


  edtServidor.text        := frmmenu.varSDEServidor;
  edtBanco.text           := frmmenu.varSDEBanco;
  edtServico.text         := frmmenu.varSDEservico;

end;

procedure TfrmNovaConexaoSDE.btConectarClick(Sender: TObject);
var
// name        : string;
 i           : integer;
// g_count     : integer;
 MyTreeNode1 : TTreeNode;
 MyTreeNode2 : TTreeNode;
 cont        : smallint;
begin

 screen.Cursor := crHourGlass;

 //*********************************************
 if length(frmmenu.varVetSDEusuario) > 0 then
    begin
       for i:=0 to length(frmmenu.varVetSDEusuario)-1 do
           begin
               if uppercase(trim(frmmenu.varVetSDEusuario[i])) = uppercase(trim(edtUsu.text)) then
                  begin
                      if uppercase(trim(frmmenu.varVetSDEBanco[i])) = uppercase(trim(edtBanco.text)) then
                         begin
                             frmmenu.Mensagem('Já Existe Uma Conexão Ativa Para o Usuário e Banco Informados!',mtError,[mbOk]);
                             screen.cursor := crDefault;
                             exit;
                         end;
                  end;
           end;
    end;
 //*********************************************

 SetLength(frmmenu.SDECon,length(frmmenu.SDECon)+1);
 //dados do servidor;
 frmmenu.SDECon[length(frmmenu.SDECon)-1]          := CoDataConnection.Create;
 frmmenu.SDECon[length(frmmenu.SDECon)-1].Server   := 'sde90:'+edtServidor.text;//'sde81:dsg'
 frmmenu.SDECon[length(frmmenu.SDECon)-1].User     := edtUsu.text;
 frmmenu.SDECon[length(frmmenu.SDECon)-1].Password := edtSenha.text;
 frmmenu.SDECon[length(frmmenu.SDECon)-1].Database := 'instance='+edtServico.text+';database='+edtBanco.text;

 //jogo os nomes dos shapes no listbox
 if frmmenu.SDECon[length(frmmenu.SDECon)-1].Connect then
  begin
        //g_count := IMoGeoDatasets(frmmenu.dc.GeoDataSets).Count;
        //i :=0;
  end
  else
    begin
        frmmenu.Mensagem('Erro ao Conectar no Servidor SDE! Verifique seu Login/Senha, Suas Configurações e Tente Novamente',mtinformation,[mbOK]);
        edtUsu.SetFocus;
        screen.Cursor := crDefault;
        exit;
    end;

 frmmenu.varSDEAtivo       := true;
 screen.Cursor := crDefault;
 frmmenu.varSDEServidor    := edtServidor.Text;
 frmmenu.varSDEBanco       := edtBanco.text;
 frmmenu.varSDEservico     := edtServico.text;
 frmmenu.varSDEusuario     := edtUsu.Text;
 frmmenu.varSDEsenha       := edtSenha.Text;

 setLength(frmmenu.varVetSDEServidor,length(frmmenu.varVetSDEServidor)+1);
 setLength(frmmenu.varVetSDEBanco,length(frmmenu.varVetSDEBanco)+1);
 setLength(frmmenu.varVetSDEservico,length(frmmenu.varVetSDEservico)+1);
 setLength(frmmenu.varVetSDEusuario,length(frmmenu.varVetSDEusuario)+1);
 setLength(frmmenu.varVetSDEsenha,length(frmmenu.varVetSDEsenha)+1);

 frmmenu.varVetSDEServidor[length(frmmenu.varVetSDEServidor)-1]  := edtServidor.Text;
 frmmenu.varVetSDEBanco[length(frmmenu.varVetSDEBanco)-1]        := edtBanco.text;
 frmmenu.varVetSDEservico[length(frmmenu.varVetSDEservico)-1]    := edtServico.text;
 frmmenu.varVetSDEusuario[length(frmmenu.varVetSDEusuario)-1]    := edtUsu.Text;
 frmmenu.varVetSDEsenha[length(frmmenu.varVetSDEsenha)-1]        := edtSenha.Text;

 //*****************************************************
  with frmSDE.TreeSde.Items do
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
                        MyTreeNode2 := frmSDE.TreeSde.Items[cont];
                        AddChild(MyTreeNode2,'Servidor: '+frmmenu.varVetSDEServidor[i]);
                        AddChild(MyTreeNode2,'Banco: '+frmmenu.varVetSDEBanco[i]);
                        AddChild(MyTreeNode2,'Serviço: '+frmmenu.varVetSDEservico[i]);
                        AddChild(MyTreeNode2,'Usuário: '+frmmenu.varVetSDEusuario[i]);
                        //****************************************
                        cont := cont + 5;
                   end;
            end;
      end;
 //*****************************************************}
 close;

end;

procedure TfrmNovaConexaoSDE.FormKeyPress(Sender: TObject; var Key: Char);
begin

   if key=#13 then
      begin
          perform(WM_NEXTDLGCTL,0,0);
          key:=#0;
      end;
      
end;

end.
