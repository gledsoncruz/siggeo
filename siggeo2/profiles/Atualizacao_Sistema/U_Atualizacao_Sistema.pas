unit U_Atualizacao_Sistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, IdAntiFreezeBase, IdAntiFreeze, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdFTP, StdCtrls, ExtCtrls,
  bsMessages, bsSkinData, BusinessSkinForm;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    ListBox1: TListBox;
    IdFTP1: TIdFTP;
    IdAntiFreeze1: TIdAntiFreeze;
    Gauge1: TGauge;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinData1: TbsSkinData;
    bsResourceStrData1: TbsResourceStrData;
    bsCompressedStoredSkin1: TbsCompressedStoredSkin;
    bsSkinMessage1: TbsSkinMessage;
    procedure AtualizaSistema;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  varname : string;

implementation

{$R *.dfm}

procedure TForm1.AtualizaSistema;
var
dir : string;
LS : TStringList;
arquivo : integer;
begin
dir := '/atualizacao';
LS := TStringList.Create;

if not (FileExists('C:\SIGGeo\SIGGeo 2.0\'+varname)) then
            begin
              with IdFTP1 do
                try
                  Username := 'siggeo';
                  Password := 'geo';
                  Host := '192.168.1.173';
                  Connect;
                  ChangeDir(dir);

                      Edit1.Text := IdFTP1.RetrieveCurrentDir;
                      IdFTP1.List(LS);
                      ListBox1.Items.Assign(LS);
                      arquivo := ListBox1.Count;
                      while arquivo <> 0 do
                       begin
                        varname := IdFTP1.DirectoryListing.Items[ListBox1.ItemIndex + arquivo].FileName;
                        IdFTP1.Get(varname,'C:\SIGGeo\SIGGeo 2.0\'+varname,true,false);
                      //**************** progresso *****************
                        Gauge1.MaxValue := ListBox1.Count - 1;
                        Label2.Caption := varname;
                        Gauge1.Progress := ListBox1.Count - arquivo;
                      //********************************************
                        arquivo :=  arquivo - 1;
                       end;
                         Form1.Hide;
                         bsSkinMessage1.MessageDlg('Versão atualizada com sucesso!!', mtInformation,[mbOK],0);
                         IdFTP1.Disconnect;
                         WinExec('C:\SIGGeo\SIGGeo 2.0\SIGGeo.exe',SW_SHOWNORMAL);
                         Application.Terminate;

                      //end;
                except
                  bsSkinMessage1.MessageDlg('Não foi possível a conexão com o servidor de atualização...', mtError,[mbOK],0);
                  Application.Terminate;
            end;
   end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Timer1.Enabled := false;
AtualizaSistema;
end;

end.
