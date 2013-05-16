unit U_Relimp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, QRCtrls, QuickRpt, ExtCtrls, QRPDFFilter;

type
  TfrmRelImp = class(TForm)
    qrcProd: TQuickRep;
    QRBand1: TQRBand;
    imagem01: TQRImage;
    imagem02: TQRImage;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRStringsBand1: TQRStringsBand;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRImage2: TQRImage;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData2: TQRSysData;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRStringsBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelImp: TfrmRelImp;

implementation

uses U_Princ, U_RelSimples, U_PreviewRel, U_Menu;

{$R *.dfm}

procedure TfrmRelImp.FormCreate(Sender: TObject);
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

procedure TfrmRelImp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action    := cafree;
   frmRelImp := nil;
end;

procedure TfrmRelImp.QRStringsBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
QRLabel2.Caption := QRStringsBand1.Item;
end;

end.
