unit U_Menu_ly;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, jpeg, QuickRpt, StdCtrls, Buttons, QRPrntr, ExtCtrls;

type
  TfrmA4 = class(TForm)
    qrcProd: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRImage2: TQRImage;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRMemo1: TQRMemo;
    QRLabel2: TQRLabel;
    QRImage1: TQRImage;
    QRImage4: TQRImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmA4: TfrmA4;

implementation

uses U_Princ;

{$R *.DFM}

procedure TfrmA4.FormCreate(Sender: TObject);
var
str,caminho : string;
F           : Textfile;
begin

   QRImage1.Picture.LoadFromFile('C:\SIGGeo\SIGGeo 2.0\mapA4.emf');
   QRLabel1.Caption := frmlayout.edtTitulo.text;

      if trim(frmLayout.edtSub.text)<>'' then
        qrlabel2.Caption := frmLayout.edtSub.text
      else
        qrlabel2.Caption := '';

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

procedure TfrmA4.FormClose(Sender: TObject; var Action: TCloseAction);
begin

 action:= cafree;
 frmA4 := nil;


end;

end.
