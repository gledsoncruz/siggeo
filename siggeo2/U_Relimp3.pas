unit U_Relimp3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TfrmRelimp3 = class(TForm)
    qrcProd: TQuickRep;
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRImage2: TQRImage;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRStringsBand1: TQRStringsBand;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QRStringsBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelimp3: TfrmRelimp3;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmRelimp3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action     := caFree;
 frmRelimp3 := nil;
end;

procedure TfrmRelimp3.FormCreate(Sender: TObject);
var
str, caminho : string;
F            : Textfile;
begin

  QRImage2.Picture.LoadFromFile('C:\SIGGeo\SIGGeo 2.0\profiles\layout\brasao.jpg');

  try
      frmMenu.LerArquivoCabecalho;
      qrlabel4.Caption := frmMenu.leituraCab.Strings[0];
      qrlabel5.caption := frmMenu.leituraCab.Strings[1];
      qrlabel6.caption := frmMenu.leituraCab.Strings[2];
      
    except
      application.messagebox('Arquivo texto.txt Não Encontrado!','SIGGEO', mb_ok + mb_iconerror);
    end;
 end;
procedure TfrmRelimp3.QRStringsBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel2.Caption := QRStringsBand1.Item;
end;

end.
