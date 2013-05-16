unit U_A4_Legenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, jpeg, QuickRpt, ExtCtrls;

type
  TfrmA4_leg = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRImage4: TQRImage;
    QRLabel7: TQRLabel;
    QRImage8: TQRImage;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData2: TQRSysData;
    QRMemo2: TQRMemo;
    QRImage1: TQRImage;
    QRLabel2: TQRLabel;
    QRImage2: TQRImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmA4_leg: TfrmA4_leg;

implementation

uses U_Princ;

{$R *.DFM}

procedure TfrmA4_leg.FormCreate(Sender: TObject);
var
str,caminho : string;
F           : Textfile;
begin

   QRImage1.Picture.LoadFromFile('C:\SIGGeo\SIGGeo 2.0\mapA4.emf');
   QRImage4.Picture.LoadFromFile('C:\SIGGeo\SIGGeo 2.0\legend.bmp');
   QRLabel1.Caption := frmlayout.edtTitulo.text;

   if trim(frmLayout.edtSub.text)<>'' then
      qrlabel2.Caption := frmLayout.edtSub.text
     else
       qrlabel2.Caption := '';


    try
      caminho := ExtractFilePath(Application.ExeName);
      QRImage8.Picture.LoadFromFile('C:\SIGGeo\SIGGeo 2.0\profiles\layout\brasao.jpg');
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
      qrlabel9.Caption := str;
      Readln(F,str);
      qrlabel10.caption := str;
      Readln(F,str);
      qrlabel11.caption := str;
      Closefile(F);
    except
      application.messagebox('Arquivo texto.txt Não Encontrado!','SIGGEO', mb_ok + mb_iconerror);
    end;


end;

procedure TfrmA4_leg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := cafree;
   frmA4_leg := nil;
   
end;

end.
