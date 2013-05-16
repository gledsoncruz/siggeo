unit U_NovaConexaoDireta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsSkinCtrls, bsSkinBoxCtrls, StdCtrls, Mask,
  ComCtrls,ExtCtrls,MapObjects2_TLB,bsSkinGrids;

type
  TfrmNovaConexaoDireta = class(TForm)
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinStdLabel6: TbsSkinStdLabel;
    edtBanco: TbsSkinEdit;
    edtSenha: TbsSkinPasswordEdit;
    edtUsu: TbsSkinEdit;
    btConectar: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure btConectarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNovaConexaoDireta: TfrmNovaConexaoDireta;

implementation

uses U_Menu, U_SDE, U_DirectConnect;

{$R *.dfm}

procedure TfrmNovaConexaoDireta.btConectarClick(Sender: TObject);
var
 i           : integer;
 MyTreeNode1 : TTreeNode;
 MyTreeNode2 : TTreeNode;
 cont        : smallint;
begin

 screen.Cursor := crHourGlass;
 //dados do servidor;

 //*********************************************
 if length(frmmenu.varVetDICOusuario) > 0 then
    begin
       for i:=0 to length(frmmenu.varVetDICOusuario)-1 do
           begin
               if uppercase(trim(frmmenu.varVetDICOusuario[i])) = uppercase(trim(edtUsu.text)) then
                  begin
                      if uppercase(trim(frmmenu.varVetDICOBanco[i])) = uppercase(trim(edtBanco.text)) then
                         begin
                             frmmenu.Mensagem('Já Existe Uma Conexão Ativa Para o Usuário e Banco Informados!',mtError,[mbOk]);
                             screen.cursor := crDefault;
                             exit;
                         end;
                  end;
           end;
    end;
 //*********************************************

 SetLength(frmmenu.DicoCon,length(frmmenu.DicoCon)+1);
 frmmenu.DicoCon[length(frmmenu.DicoCon)-1]          := CoDataConnection.Create;
 frmmenu.DicoCon[length(frmmenu.DicoCon)-1].Server   := 'sde90:directconnect';//'sde81:dsg'
 frmmenu.DicoCon[length(frmmenu.DicoCon)-1].User     := edtUsu.text;
 frmmenu.DicoCon[length(frmmenu.DicoCon)-1].Password := edtSenha.text+'@'+edtBanco.text;
 frmmenu.DicoCon[length(frmmenu.DicoCon)-1].Database := 'instance=sde:oracle';

 //jogo os nomes dos shapes no listbox
 if frmmenu.DicoCon[length(frmmenu.DicoCon)-1].Connect then
  begin
        //g_count := IMoGeoDatasets(frmmenu.dc.GeoDataSets).Count;
        //i :=0;
  end
  else
    begin
        frmmenu.Mensagem('Erro ao Conectar no Servidor! Verifique seu Login/Senha, Se o Oracle Client Está Instalado, Se a Variavel SDEHOME Foi Definida e Tente Novamente',mtinformation,[mbOK]);
        edtUsu.SetFocus;
        screen.Cursor := crDefault;
        exit;
    end;

 frmmenu.varDICOAtivo       := true;
 screen.Cursor := crDefault;

 setLength(frmmenu.varVetDICOBanco,length(frmmenu.varVetDICOBanco)+1);
 setLength(frmmenu.varVetDICOusuario,length(frmmenu.varVetDICOusuario)+1);
 setLength(frmmenu.varVetDICOsenha,length(frmmenu.varVetDICOsenha)+1);

 frmmenu.varVetDICOBanco[length(frmmenu.varVetDICOBanco)-1]        := edtBanco.text;
 frmmenu.varVetDICOusuario[length(frmmenu.varVetDICOusuario)-1]    := edtUsu.Text;
 frmmenu.varVetDICOsenha[length(frmmenu.varVetDICOsenha)-1]        := edtSenha.Text;

 //*****************************************************
  with frmDirectConnect.TreeSde.Items do
      begin
        Clear;  //remove any existing nodes
        cont := 0;

        for i:=0 to length(frmmenu.varVetDICOUsuario)-1 do
            begin
                if trim(frmmenu.varVetDICOUsuario[i]) <> '' then
                   begin
                        //*****************************************
                        // Add a child node to the node just added
                        MyTreeNode1 := Add(nil,'Conexão '+formatfloat('00',i+1)+' : '+frmmenu.varVetDICOBanco[i]+' / '+frmmenu.varVetDICOusuario[i]);// Add a root node
                        MyTreeNode2 := frmDirectConnect.TreeSde.Items[cont];
                        AddChild(MyTreeNode2,'Banco: '+frmmenu.varVetDICOBanco[i]);
                        AddChild(MyTreeNode2,'Usuário: '+frmmenu.varVetDICOusuario[i]);
                        //****************************************
                        cont := cont + 3;
                   end;
            end;
      end;
 //*****************************************************}
 close;

end;

procedure TfrmNovaConexaoDireta.FormKeyPress(Sender: TObject;
  var Key: Char);
begin

   if key=#13 then
      begin
          perform(WM_NEXTDLGCTL,0,0);
          key:=#0;
      end;
      
end;

procedure TfrmNovaConexaoDireta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action  :=  cafree;
   frmNovaConexaoDireta  := nil;

end;

procedure TfrmNovaConexaoDireta.FormCreate(Sender: TObject);
var
i : integer;
begin

frmMenu.LerArquivoIni;
//PROCURO A CHAVE [SDE]
    for i:=0 to frmMenu.leituraIni.Count -1 do
     if frmMenu.leituraIni.Strings[i] = '[SDE]' then
      begin
       frmMenu.varSDEServidor := frmMenu.leituraIni.Strings[i+1];
       frmMenu.varSDEBanco := frmMenu.leituraIni.Strings[i+2];
       frmMenu.varSDEservico := frmMenu.leituraIni.Strings[i+3];
      end;
       i := i + 1;

edtBanco.Text := frmMenu.varSDEBanco;
edtSenha.Text := frmMenu.varSDEsenha;
edtUsu.Text   := frmMenu.varSDEusuario;
end;

end.
