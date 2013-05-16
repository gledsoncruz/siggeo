unit U_RemoverJoin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsSkinCtrls, bsSkinBoxCtrls, RzBorder,
  StdCtrls, RzLabel,MapObjects2_TLB;

type
  TfrmRemoverJoins = class(TForm)
    RzLabel7: TRzLabel;
    RzBorder4: TRzBorder;
    cbCamadaMapa: TbsSkinComboBox;
    RzLabel2: TRzLabel;
    btOk: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinButton1: TbsSkinButton;
    procedure FormCreate(Sender: TObject);
    function wright(wtexto:string;quant:integer):string;
    procedure btOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinButton1Click(Sender: TObject);
  private
    { Private declarations }
    varVetIndexLegenda : Array of Word;
  public
    { Public declarations }
  end;

var
  frmRemoverJoins: TfrmRemoverJoins;

implementation

uses U_Menu;

{$R *.dfm}

function TfrmRemoverJoins.wright(wtexto:string;quant:integer):string;
begin
    result := copy(wtexto,((length(wtexto) - quant)+1),quant);
//   ex: wcopy := wright(wtexto,3); - copia as 3 ultimas
end;

procedure TfrmRemoverJoins.FormCreate(Sender: TObject);
var
lyrs        : imolayers;
lyr         : imomaplayer;
i           : Smallint;
ext         : String;
tmp         : String;
tmpString   : String;
posSdeTexto : Smallint;
tmpStrSDE   : String;
begin

   lyr   := CoMapLayer.Create;
   lyrs  := frmMenu.map1.Layers;

   cbCamadaMapa.Items.Clear;

   for i:=0 to frmmenu.map1.Layers.Count - 1 do
       begin
           lyr         := imomaplayer(lyrs.item(i));
           //verificando se a layer é do tipo SDE
           ext         := lyr.tag;
           tmp         := upperCase(wright(ext,3));
           tmpString   := upperCase(wright(ext,4));
           posSdeTexto := Pos('|',ext);
           tmpStrSDE   := copy(ext,posSdeTexto+1,3);

           //o shape foi adicionado foi adicionado via SDE
           if (tmpStrSDE = 'SDE') or (tmpStrSDE = 'DIC') then
             begin
               cbCamadaMapa.Items.Add(lyr.name);
               SetLength(varVetIndexLegenda,Length(varVetIndexLegenda)+1);
               varVetIndexLegenda[Length(varVetIndexLegenda)-1] := i;
             end;
           //*********************************************
       end;
end;

procedure TfrmRemoverJoins.btOkClick(Sender: TObject);
var
lyrs          : imolayers;
lyr           : imomaplayer;
i             : Smallint;
posicao       : Smallint;
begin

    lyr                     := CoMapLayer.Create;
    lyrs                    := frmmenu.map1.Layers;
    lyr                     := IMoMaplayer(lyrs.item(varVetIndexLegenda[cbCamadaMapa.ItemIndex]));

    posicao := -1;
    for i:=0 to length(frmmenu.varVetJoinTagLayer)-1 do
        begin
            if uppercase(trim(lyr.tag)) = uppercase(trim(frmmenu.varVetJoinTagLayer[i])) then
               begin
                  posicao := i;
                  break;
               end;
        end;

    //************************
    if posicao <> -1 then
       begin
          frmmenu.varVetJoinTagLayer[posicao]     := '';
          frmmenu.varVetJoinTOFIELD[posicao]      := '';
          frmmenu.varVetJoinFROMFIELD[posicao]    := '';
          frmmenu.varVetJoinTabela[posicao]       := '';
          frmmenu.varVetJoinUsuario[posicao]      := '';
          frmmenu.varVetJoinSenha[posicao]        := '';
          frmmenu.varVetJoinServidor[posicao]     := '';
          frmmenu.varVetJoinServico[posicao]      := '';
          frmmenu.varVetJoinBanco[posicao]        := '';
       end;
    //************************
    lyr.RemoveRelates;
    frmmenu.Mensagem('Join Removido Com Sucesso!',mtInformation,[mbOk]);


end;

procedure TfrmRemoverJoins.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action          := cafree;
   frmRemoverJoins := nil;

end;

procedure TfrmRemoverJoins.bsSkinButton1Click(Sender: TObject);
begin

  close;

end;

end.
