unit U_Relimp2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, QuickRpt, ExtCtrls, QRPDFFilter;

type
  TfrmRelimp2 = class(TForm)
    qrcProd: TQuickRep;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRImage2: TQRImage;
    imagem01: TQRImage;
    imagem02: TQRImage;
    QRImage1: TQRImage;
    QRMemo1: TQRMemo;
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
   cont:byte;
  public
    { Public declarations }
  end;

var
  frmRelimp2: TfrmRelimp2;

implementation

uses Math, U_PreviewRel, bsSkinBoxCtrls, U_Menu;

{$R *.dfm}

procedure TfrmRelimp2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action     := caFree;
frmRelimp2 := nil;
end;

procedure TfrmRelimp2.FormCreate(Sender: TObject);
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

procedure TfrmRelimp2.QRStringsBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  QRLabel2.Caption := QRStringsBand1.Item;
  
end;

end.
