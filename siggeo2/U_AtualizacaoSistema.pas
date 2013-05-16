unit U_AtualizacaoSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Gauges, IdComponent, IdTCPConnection, IdTCPClient,
  IdFTP, IdBaseComponent, IdAntiFreezeBase, IdAntiFreeze;

type
  Tfrm_atualizacao = class(TForm)
    ListBox1: TListBox;
    Edit1: TEdit;
    Gauge1: TGauge;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private

    { Private declarations }
  public
  procedure AtualizaSistema;
    { Public declarations }
  end;

var
  frm_atualizacao: Tfrm_atualizacao;
  varname : string;
implementation

uses U_Menu, U_DMGeo;

{$R *.dfm}

{ Tfrm_atualizacao }

procedure Tfrm_atualizacao.AtualizaSistema;
var
dir : string;
LS : TStringList;
arquivo : integer;
begin
dir := '/atualizacao';
LS := TStringList.Create;
dmGeo.IdFTP1.ChangeDir(dir);
Edit1.Text := dmgeo.IdFTP1.RetrieveCurrentDir;
dmgeo.IdFTP1.List(LS);
ListBox1.Items.Assign(LS);
arquivo := ListBox1.Count;
  while arquivo <> 0 do
   begin
    varname := dmgeo.IdFTP1.DirectoryListing.Items[ListBox1.ItemIndex + arquivo].FileName;
    dmgeo.IdFTP1.Get(varname, 'C:\teste\'+varname,false, true);
  //**************** progresso *****************
    Gauge1.MaxValue := ListBox1.Count - 1;
    Label2.Caption := varname;
    Gauge1.Progress := ListBox1.Count - arquivo;
  //********************************************
    arquivo :=  arquivo - 1;
   end;
     ShowMessage('Versão atualizada com sucesso!!');
     dmgeo.IdFTP1.Disconnect;
     //frm_atualizacao.Close;
end;


procedure Tfrm_atualizacao.FormCreate(Sender: TObject);
begin
AtualizaSistema;
end;

end.
