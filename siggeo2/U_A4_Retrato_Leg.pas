unit U_A4_Retrato_Leg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TfrmA4RetLeg = class(TForm)
    qrcProd: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRImage2: TQRImage;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRMemo1: TQRMemo;
    QRImage1: TQRImage;
    QRImage4: TQRImage;
    QRImage5: TQRImage;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmA4RetLeg: TfrmA4RetLeg;

implementation

uses U_Princ;

{$R *.dfm}

procedure TfrmA4RetLeg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := cafree;
   frmA4RetLeg := nil;
end;

procedure TfrmA4RetLeg.FormCreate(Sender: TObject);
var
str,caminho : string;
F           : Textfile;
begin

   QRImage1.Picture.LoadFromFile('C:\SIGGeo\SIGGeo 2.0\mapA4.emf');
   QRImage5.Picture.LoadFromFile('C:\SIGGeo\SIGGeo 2.0\legend.bmp');
   QRLabel1.Caption := frmlayout.edtTitulo.text;
   qrlabel2.Caption := frmLayout.edtSub.text;

   {if trim(frmLayout.edtSub.text) <> '' then
      qrlabel2.Caption := frmLayout.edtSub.text
   else
      qrlabel2.Caption := '';
    }

    try
      caminho := ExtractFilePath(Application.ExeName);
      QRImage2.Picture.LoadFromFile('C:\SIGGeo\SIGGeo 2.0\profiles\layout\brasao.jpg');
    except
      application.messagebox('Figura Não Encontrada!','SIGGEO', mb_ok + mb_iconerror);
    end;

    try
      caminho := ExtractFilePath(Application.ExeName);
      caminho := 'C:\SIGGeo\SIGGeo 2.0\profiles\layout\texto.txt';
      //abrimos o arquivo texto
      AssignFile(F, Caminho);
      Reset(F); //seta o ponteiro na primeira linha

      //le cada linha do arquivo
      Readln(F,str);
      qrlabel4.Caption := str;
      Readln(F,str);
      qrlabel5.caption := str;
      Readln(F,str);
      qrlabel6.caption := str;
      Closefile(F);
    except
      application.messagebox('Arquivo texto.txt Não Encontrado!','SIGGEO', mb_ok + mb_iconerror);
    end;

end;

end.
