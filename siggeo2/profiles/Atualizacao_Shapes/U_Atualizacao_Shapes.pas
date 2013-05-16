unit U_Atualizacao_Shapes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, IdAntiFreezeBase, IdAntiFreeze, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdFTP, StdCtrls, Gauges,
  bsSkinData, BusinessSkinForm, bsSkinCtrls, RzPrgres, RzBorder, sGauge,
  bsMessages;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    ListBox1: TListBox;
    IdFTP1: TIdFTP;
    IdAntiFreeze1: TIdAntiFreeze;
    Timer1: TTimer;
    Label3: TLabel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinData1: TbsSkinData;
    bsResourceStrData1: TbsResourceStrData;
    bsCompressedStoredSkin1: TbsCompressedStoredSkin;
    Gauge1: TGauge;
    bsSkinMessage1: TbsSkinMessage;
    procedure AtualizaShapes;
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

uses IdFTPList;

{$R *.dfm}

{ TForm1 }

procedure TForm1.AtualizaShapes;
var
dir : string;
LS : TStringList;
arquivo : integer;
pasta, totalpasta, atual   : integer;
varpasta: string;
begin
atual := 1;
dir := '/AtualizaShapes';
LS := TStringList.Create;
if not (FileExists('C:\SIGGeo\Camadas\'+ varname)) then
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
               //******* VERIFICAR PASTAS Q ESTÃO DENTRO DE "AtualizaShapes"  **********
                      pasta := IdFTP1.DirectoryListing.Count;
                      totalpasta := pasta;
                      while pasta <> 0 do
                       begin
                        varpasta := DirectoryListing.Items[ListBox1.itemindex + pasta].FileName;
                        // if not (DirectoryExists('C:\SIGGeo\Camadas\'+ varpasta)) then
                          begin
                            ForceDirectories('C:\SIGGeo\Camadas\'+ varpasta);
                            Edit1.Text := IdFTP1.RetrieveCurrentDir +'/'+varpasta+'/';
                            dir := '/AtualizaShapes'+'/'+varpasta;
                            LS := TStringList.Create;
                            ChangeDir(dir);
                            IdFTP1.List(LS);
                            ListBox1.Items.Assign(LS);
                            arquivo := ListBox1.Count;
                                while arquivo <> 0 do
                                 begin
                                  varname := IdFTP1.DirectoryListing.Items[ListBox1.ItemIndex + arquivo].FileName;
                                  IdFTP1.Get(varname,'C:\SIGGeo\Camadas\'+varpasta+'\'+varname,true,false);


                        //**************** progresso *****************
                        //Form1.Show;
                        Gauge1.MaxValue := ListBox1.Count - 1;
                        Label3.Caption := IntToStr(atual)+' de '+IntToStr(totalpasta);
                        Label2.Caption := 'C:\SIGGeo\Camadas\'+varpasta+'\'+varname;
                        Gauge1.Progress := ListBox1.Count - arquivo;
                        //********************************************

                                  arquivo :=  arquivo - 1;

                                 end;
                                  //****RETORNA PARA A PASTA "AtualizaShapes"
                                    dir := '/AtualizaShapes';
                                    LS := TStringList.Create;
                                    ChangeDir(dir);
                                    IdFTP1.List(LS);
                                    ListBox1.Items.Assign(LS);
                          end;

                            pasta := pasta - 1;
                            atual := atual + 1;
                       end;
                         Form1.Hide;
                         bsSkinMessage1.MessageDlg('Camadas atualizadas com sucesso!!', mtInformation,[mbOK],0);
                         IdFTP1.Disconnect;
                         WinExec('C:\SIGGeo\SIGGeo 2.0\SIGGeo.exe',SW_SHOWNORMAL);
                         Application.Terminate;
                except
                  bsSkinMessage1.MessageDlg('Não foi possível a conexão com o servidor de atualização...', mtError,[mbOK],0);
                  Application.Terminate;
            end;
   end;


end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Timer1.Enabled := false;
AtualizaShapes;
end;

end.
