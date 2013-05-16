unit U_PreviewRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, QRPrntr, BusinessSkinForm,StdCtrls,
  bsSkinShellCtrls, bsSkinBoxCtrls, Mask, ComCtrls, bsSkinTabs, MapObjects2_TLB;

type
  TfrmPreviewRel = class(TForm)
    QRPreview1: TQRPreview;
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinTabSheet2: TbsSkinTabSheet;
    bsSkinTabSheet3: TbsSkinTabSheet;
    bsSkinStdLabel6: TbsSkinStdLabel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    edtSub: TbsSkinEdit;
    bsSkinMemo1: TbsSkinMemo;
    bsSkinButton1: TbsSkinButton;
    btCarregar: TbsSkinButton;
    btSalvar: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    edtFoto01: TbsSkinEdit;
    bsSkinButton3: TbsSkinButton;
    edtFoto02: TbsSkinEdit;
    bsSkinButton4: TbsSkinButton;
    bsSkinButton5: TbsSkinButton;
    bsSkinButton6: TbsSkinButton;
    bsBusinessSkinForm2: TbsBusinessSkinForm;
    bsSkinSaveDialog1: TbsSkinSaveDialog;
    bsSkinOpenDialog1: TbsSkinOpenDialog;
    bsSkinOpenDialog2: TbsSkinOpenDialog;
    bsSkinStdLabel4: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinEdit1: TbsSkinEdit;
    bsSkinStdLabel7: TbsSkinStdLabel;
    bsSkinEdit2: TbsSkinEdit;
    bsSkinStdLabel8: TbsSkinStdLabel;
    bsSkinEdit3: TbsSkinEdit;
    bsSkinButton7: TbsSkinButton;
    bsSkinButton8: TbsSkinButton;
    bsSkinButton9: TbsSkinButton;
    bsSkinButton10: TbsSkinButton;
    bsSkinStdLabel9: TbsSkinStdLabel;
    bsSkinMemo2: TbsSkinMemo;
    bsSkinButton11: TbsSkinButton;
    bsSkinButton12: TbsSkinButton;
    bsSkinButton13: TbsSkinButton;
    bsSkinButton14: TbsSkinButton;
    bsSkinStdLabel10: TbsSkinStdLabel;
    bsSkinEdit4: TbsSkinEdit;
    bsSkinStdLabel13: TbsSkinStdLabel;
    bsSkinMemo3: TbsSkinMemo;
    bsSkinButton19: TbsSkinButton;
    bsSkinButton20: TbsSkinButton;
    bsSkinButton21: TbsSkinButton;
    bsSkinButton22: TbsSkinButton;
    bsSkinEdit7: TbsSkinEdit;
    bsSkinStdLabel14: TbsSkinStdLabel;
    bsSkinButton23: TbsSkinButton;
    bsSkinButton24: TbsSkinButton;
    procedure bsSkinButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCarregarClick(Sender: TObject);
    procedure bsSkinButton3Click(Sender: TObject);
    procedure bsSkinButton5Click(Sender: TObject);
    procedure bsSkinButton4Click(Sender: TObject);
    procedure bsSkinButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinPageControl1Change(Sender: TObject);
    procedure bsSkinButton7Click(Sender: TObject);
    procedure bsSkinButton8Click(Sender: TObject);
    procedure bsSkinButton9Click(Sender: TObject);
    procedure bsSkinButton10Click(Sender: TObject);
    procedure bsSkinButton23Click(Sender: TObject);
    procedure bsSkinButton24Click(Sender: TObject);
    procedure bsSkinButton11Click(Sender: TObject);
    procedure bsSkinButton19Click(Sender: TObject);
    procedure bsSkinButton12Click(Sender: TObject);
    procedure bsSkinButton20Click(Sender: TObject);
    procedure bsSkinButton13Click(Sender: TObject);
    procedure bsSkinButton21Click(Sender: TObject);
    procedure bsSkinButton14Click(Sender: TObject);
    procedure bsSkinButton22Click(Sender: TObject);
    procedure edtSubExit(Sender: TObject);
    procedure bsSkinMemo1Exit(Sender: TObject);
    procedure bsSkinEdit4Exit(Sender: TObject);
    procedure bsSkinMemo3Exit(Sender: TObject);
    procedure bsSkinMemo2Exit(Sender: TObject);
    procedure bsSkinEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreviewRel: TfrmPreviewRel;

implementation

uses U_Menu, U_Relimp, QuickRpt, Math, U_Relimp2, U_Relimp3;

{$R *.dfm}

procedure TfrmPreviewRel.bsSkinButton1Click(Sender: TObject);
begin

    frmmenu.map1.ExportMap(moExportEMF,'C:\SIGGeo\SIGGeo 2.0\rel.emf' ,0.9);
    frmRelImp.imagem01.Visible := false;
    frmRelImp.imagem01.Visible := false;
    frmRelImp.QRStringsBand1.Items := frmPreviewRel.bsSkinMemo1.Lines;
   // frmRelImp.QRMemo2.Lines.Text := bsSkinmemo1.lines.text;

    //*********
    if trim(frmPreviewRel.edtSub.text)<>'' then
        frmRelImp.qrlabel1.Caption := edtSub.text
     else
        frmRelImp.qrlabel1.Caption := '';
    //********

    if trim(edtFoto01.Text)<>'' then
       begin
          frmRelImp.imagem01.Frame.DrawTop     := true;
          frmRelImp.imagem01.Frame.DrawBottom  := true;
          frmRelImp.imagem01.Frame.DrawLeft    := true;
          frmRelImp.imagem01.Frame.DrawRight   := true;
          //***
          frmRelImp.imagem01.Picture.LoadFromFile(edtfoto01.text);
       end
       else
          begin
              frmRelImp.imagem01.Frame.DrawTop     := false;
              frmRelImp.imagem01.Frame.DrawBottom  := false;
              frmRelImp.imagem01.Frame.DrawLeft    := false;
              frmRelImp.imagem01.Frame.DrawRight   := false;
              //***
              frmRelImp.imagem01.Picture.Bitmap    := nil;
          end;


    if trim(edtFoto02.Text)<>'' then
       begin
          frmRelImp.imagem02.Frame.DrawTop     := true;
          frmRelImp.imagem02.Frame.DrawBottom  := true;
          frmRelImp.imagem02.Frame.DrawLeft    := true;
          frmRelImp.imagem02.Frame.DrawRight   := true;
          //***
          frmRelImp.imagem02.Picture.LoadFromFile(edtfoto02.text);
       end
       else
          begin
              frmRelImp.imagem02.Frame.DrawTop     := false;
              frmRelImp.imagem02.Frame.DrawBottom  := false;
              frmRelImp.imagem02.Frame.DrawLeft    := false;
              frmRelImp.imagem02.Frame.DrawRight   := false;
              //***
              frmRelImp.imagem02.Picture.Bitmap    := nil;
          end;

    frmrelimp.QRImage1.Picture.LoadFromFile('C:\SIGGeo\SIGGeo 2.0\rel.emf');

    frmRelImp.hide;
    frmPreviewRel.hide;
    frmRelImp.qrcProd.Preview;

end;


procedure TfrmPreviewRel.FormCreate(Sender: TObject);
begin

if frmRelImp <> nil then
     frmRelImp.close;
     frmRelImp  := TfrmRelImp.create(application);


     if frmRelimp2 <> nil then
     frmRelimp2.close;
     frmRelimp2  := TfrmRelimp2.create(application);


     if frmRelimp3 <> nil then
     frmRelimp3.close;
     frmRelimp3  := TfrmRelimp3.create(application);


  frmmenu.map1.ExportMap(moExportEMF,'C:\SIGGeo\SIGGeo 2.0\rel.emf' ,0.9);
  frmrelimp.QRImage1.Picture.LoadFromFile('C:\SIGGeo\SIGGeo 2.0\rel.emf');
  bsSkinPageControl1.ActivePage := bsSkinTabSheet1;
end;

procedure TfrmPreviewRel.FormActivate(Sender: TObject);
begin

//****************************************************
if frmRelImp <> nil then
     frmRelImp.close;
     frmRelImp  := TfrmRelImp.create(application);


     if frmRelimp2 <> nil then
     frmRelimp2.close;
     frmRelimp2  := TfrmRelimp2.create(application);


     if frmRelimp3 <> nil then
     frmRelimp3.close;
     frmRelimp3  := TfrmRelimp3.create(application);

 //****************************************************




    if bsSkinPageControl1.ActivePageIndex = 0 then
     begin
      frmRelImp.qrcProd.Prepare;
      QRPreview1.QRPrinter := frmRelImp.qrcProd.QRPrinter;
     end
      else
       if bsSkinPageControl1.ActivePageIndex = 1 then
        begin
         frmRelimp2.qrcProd.Prepare;
         QRPreview1.QRPrinter := frmRelimp2.qrcProd.QRPrinter;
        end
         else
          begin
           frmRelimp3.qrcProd.Prepare;
           QRPreview1.QRPrinter := frmRelimp3.qrcProd.QRPrinter;
          end;
end;

procedure TfrmPreviewRel.bsSkinButton2Click(Sender: TObject);
begin
 bsSkinMemo1.Lines.Clear;
 frmRelImp.qrcProd.Prepare;
 QRPreview1.QRPrinter := frmRelImp.qrcProd.QRPrinter;
end;

procedure TfrmPreviewRel.btSalvarClick(Sender: TObject);
begin
 bsSkinSaveDialog1.Execute;
   if trim(bsSkinSaveDialog1.filename)<>'' then
      begin
         bsSkinMemo1.Lines.SaveToFile(bsSkinSaveDialog1.FileName);
         frmmenu.mensagem('Arquivo Salvo Com Sucesso!',mtInformation,[mbOk]);
      end;
end;

procedure TfrmPreviewRel.btCarregarClick(Sender: TObject);
begin
 bsSkinOpenDialog1.Execute;
   if trim(bsSkinOpenDialog1.filename)<>'' then
      begin
         bsSkinMemo1.Lines.LoadFromFile(bsSkinOpenDialog1.FileName);
      end;
end;

procedure TfrmPreviewRel.bsSkinButton3Click(Sender: TObject);
begin
 bsSkinOpenDialog2.FileName := '';
  bsSkinOpenDialog2.Execute;
  //***************
  if trim(bsSkinOpenDialog2.FileName)<> '' then
     begin
         bsSkinOpenDialog2.InitialDir := ExtractFilePath(bsSkinOpenDialog2.FileName);
         edtFoto01.Text := bsSkinOpenDialog2.FileName;
         frmRelImp.imagem01.Picture.LoadFromFile(edtfoto01.text);

         frmRelImp.qrcProd.Prepare;
         QRPreview1.QRPrinter := frmRelImp.qrcProd.QRPrinter;

     end
     else
        edtFoto01.Text := '';
end;

procedure TfrmPreviewRel.bsSkinButton5Click(Sender: TObject);
begin
edtFoto01.Text := '';
frmRelImp.imagem01.Picture.Bitmap    := nil;


frmRelImp.qrcProd.Prepare;
QRPreview1.QRPrinter := frmRelImp.qrcProd.QRPrinter;
end;

procedure TfrmPreviewRel.bsSkinButton4Click(Sender: TObject);
begin

  bsSkinOpenDialog2.FileName := '';
  bsSkinOpenDialog2.Execute;
  //************
  if trim(bsSkinOpenDialog2.FileName)<>'' then
     begin
         bsSkinOpenDialog2.InitialDir := ExtractFilePath(bsSkinOpenDialog2.FileName);
         edtFoto02.Text := bsSkinOpenDialog2.FileName;
         frmRelImp.imagem02.Picture.LoadFromFile(edtFoto02.text);
         frmRelImp.qrcProd.Prepare;
         QRPreview1.QRPrinter := frmRelImp.qrcProd.QRPrinter;
     end
     else
        edtFoto02.Text := '';
end;

procedure TfrmPreviewRel.bsSkinButton6Click(Sender: TObject);
begin
edtFoto02.Text := '';
frmRelImp.imagem02.Picture.Bitmap    := nil;

frmRelImp.qrcProd.Prepare;
QRPreview1.QRPrinter := frmRelImp.qrcProd.QRPrinter;
end;

procedure TfrmPreviewRel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   action          := cafree;
   frmpreviewRel   := nil;
//   frmRelImp       := nil;

end;

procedure TfrmPreviewRel.bsSkinPageControl1Change(Sender: TObject);
begin
 if bsSkinPageControl1.ActivePageIndex = 0 then
  begin
   frmRelImp.qrcProd.Prepare;
   QRPreview1.QRPrinter := frmRelImp.qrcProd.QRPrinter;
  end
   else
    if bsSkinPageControl1.ActivePageIndex = 1 then
     begin
      frmRelimp2.qrcProd.Prepare;
      QRPreview1.QRPrinter := frmRelimp2.qrcProd.QRPrinter;
     end
      else
       begin
        frmRelimp3.qrcProd.Prepare;
        QRPreview1.QRPrinter := frmRelimp3.qrcProd.QRPrinter;
       end;
end;

procedure TfrmPreviewRel.bsSkinButton7Click(Sender: TObject);
begin
 bsSkinOpenDialog2.FileName := '';
  bsSkinOpenDialog2.Execute;
  //***************
  if trim(bsSkinOpenDialog2.FileName)<> '' then
     begin
         bsSkinOpenDialog2.InitialDir := ExtractFilePath(bsSkinOpenDialog2.FileName);
         bsSkinEdit2.Text := bsSkinOpenDialog2.FileName;
         frmRelimp2.imagem01.Picture.LoadFromFile(bsSkinEdit2.text);

         frmRelimp2.qrcProd.Prepare;
         QRPreview1.QRPrinter := frmRelimp2.qrcProd.QRPrinter;

     end
     else
        bsSkinEdit2.Text := '';
end;

procedure TfrmPreviewRel.bsSkinButton8Click(Sender: TObject);
begin
bsSkinEdit2.Text := '';
frmRelimp2.imagem01.Picture.Bitmap    := nil;
frmRelimp2.qrcProd.Prepare;
QRPreview1.QRPrinter := frmRelimp2.qrcProd.QRPrinter;
end;

procedure TfrmPreviewRel.bsSkinButton9Click(Sender: TObject);
begin

  bsSkinOpenDialog2.FileName := '';
  bsSkinOpenDialog2.Execute;
  //************
  if trim(bsSkinOpenDialog2.FileName)<>'' then
     begin
         bsSkinOpenDialog2.InitialDir := ExtractFilePath(bsSkinOpenDialog2.FileName);
         bsSkinEdit3.Text := bsSkinOpenDialog2.FileName;
         frmRelimp2.imagem02.Picture.LoadFromFile(bsSkinEdit3.text);
         frmRelimp2.qrcProd.Prepare;
         QRPreview1.QRPrinter := frmRelimp2.qrcProd.QRPrinter;
     end
     else
        bsSkinEdit3.Text := '';
end;

procedure TfrmPreviewRel.bsSkinButton10Click(Sender: TObject);
begin
 bsSkinEdit3.Text                   := '';
 frmRelimp2.imagem01.Picture.Bitmap := nil;
 frmRelimp2.qrcProd.Prepare;
 QRPreview1.QRPrinter               := frmRelimp2.qrcProd.QRPrinter;
end;

procedure TfrmPreviewRel.bsSkinButton23Click(Sender: TObject);
begin

  bsSkinOpenDialog2.FileName := '';
  bsSkinOpenDialog2.Execute;
  //************
  if trim(bsSkinOpenDialog2.FileName)<>'' then
     begin
         bsSkinOpenDialog2.InitialDir := ExtractFilePath(bsSkinOpenDialog2.FileName);
         bsSkinEdit7.Text             := bsSkinOpenDialog2.FileName;
         frmRelimp2.QRImage1.Picture.LoadFromFile(bsSkinEdit7.text);
         frmRelimp2.qrcProd.Prepare;
         QRPreview1.QRPrinter         := frmRelimp2.qrcProd.QRPrinter;
     end
     else
        bsSkinEdit7.Text := '';
end;

procedure TfrmPreviewRel.bsSkinButton24Click(Sender: TObject);
begin
  bsSkinEdit7.Text := '';
  frmRelimp2.imagem01.Picture.Bitmap    := nil;
  frmRelimp2.qrcProd.Prepare;
  QRPreview1.QRPrinter := frmRelimp2.qrcProd.QRPrinter;
end;

procedure TfrmPreviewRel.bsSkinButton11Click(Sender: TObject);
begin
bsSkinOpenDialog1.Execute;
   if trim(bsSkinOpenDialog1.filename)<>'' then
      begin
         bsSkinMemo2.Lines.LoadFromFile(bsSkinOpenDialog1.FileName);
         frmRelimp2.QRMemo1.Lines.Text := bsSkinmemo2.lines.text;
         frmRelimp2.qrcProd.Prepare;
         QRPreview1.QRPrinter := frmRelimp2.qrcProd.QRPrinter;
      end;
end;

procedure TfrmPreviewRel.bsSkinButton19Click(Sender: TObject);
begin
bsSkinOpenDialog1.Execute;
   if trim(bsSkinOpenDialog1.filename)<>'' then
      begin
         bsSkinMemo3.Lines.LoadFromFile(bsSkinOpenDialog1.FileName);
      end;
end;

procedure TfrmPreviewRel.bsSkinButton12Click(Sender: TObject);
begin
bsSkinSaveDialog1.Execute;
   if trim(bsSkinSaveDialog1.filename)<>'' then
      begin
         bsSkinMemo2.Lines.SaveToFile(bsSkinSaveDialog1.FileName);
         frmmenu.mensagem('Arquivo Salvo Com Sucesso!',mtInformation,[mbOk]);
      end;
end;

procedure TfrmPreviewRel.bsSkinButton20Click(Sender: TObject);
begin
bsSkinSaveDialog1.Execute;
   if trim(bsSkinSaveDialog1.filename)<>'' then
      begin
         bsSkinMemo3.Lines.SaveToFile(bsSkinSaveDialog1.FileName);
         frmmenu.mensagem('Arquivo Salvo Com Sucesso!',mtInformation,[mbOk]);
      end;
end;

procedure TfrmPreviewRel.bsSkinButton13Click(Sender: TObject);
begin
 bsSkinMemo2.Lines.Clear;
 frmRelimp2.QRMemo1.Lines.Clear;
 frmRelimp2.qrcProd.Prepare;
 QRPreview1.QRPrinter := frmRelimp2.qrcProd.QRPrinter;
end;

procedure TfrmPreviewRel.bsSkinButton21Click(Sender: TObject);
begin
 bsSkinMemo3.Lines.Clear;
 frmRelimp3.QRStringsBand1.Items.Clear;
 frmRelimp3.qrcProd.Prepare;
 QRPreview1.QRPrinter := frmRelimp3.qrcProd.QRPrinter;
end;

procedure TfrmPreviewRel.bsSkinButton14Click(Sender: TObject);
var
texto : string;
i     : integer;
begin
    texto:='';
    i := bsSkinMemo2.Lines.Count;
    frmRelimp2.imagem01.Visible := false;
    frmRelimp2.imagem01.Visible := false;

   if i > 50 then
    begin
    //50 primeiras linhas do bsSkinMemo2 e joga pro QRMemo1
     for i := 1 to 50 do
       begin

         texto := bsSkinMemo2.Lines.Strings[i];
         frmRelimp2.QRMemo1.Lines.Add(texto);
         texto := '';
       end;
         i := i + 1;

       //da linha 51 até a última linha do bsSkinMemo2 joga pra QRStringsBand1
        for i := 51 to frmpreviewRel.bsSkinMemo2.Lines.Count do
        begin
         texto := frmpreviewRel.bsSkinMemo2.Lines.Strings[i];
         frmRelimp2.QRStringsBand1.Items.Add(texto);
        end;
         i := i + 1;
         texto := '';
    end
     else
       begin
        frmRelimp2.QRMemo1.Lines := bsSkinMemo2.Lines;
       end;




    //*********
    if trim(frmpreviewRel.bsSkinEdit1.text)<>'' then
        frmRelimp2.qrlabel1.Caption := bsSkinEdit1.text
     else
        frmRelimp2.qrlabel1.Caption := '';
    //********

    if trim(bsSkinEdit2.Text)<>'' then
       begin
          frmRelimp2.imagem01.Frame.DrawTop     := true;
          frmRelimp2.imagem01.Frame.DrawBottom  := true;
          frmRelimp2.imagem01.Frame.DrawLeft    := true;
          frmRelimp2.imagem01.Frame.DrawRight   := true;
          //***
          frmRelimp2.imagem01.Picture.LoadFromFile(bsSkinEdit2.text);
       end
       else
          begin
              frmRelimp2.imagem01.Frame.DrawTop     := false;
              frmRelimp2.imagem01.Frame.DrawBottom  := false;
              frmRelimp2.imagem01.Frame.DrawLeft    := false;
              frmRelimp2.imagem01.Frame.DrawRight   := false;
              //***
              frmRelimp2.imagem01.Picture.Bitmap    := nil;
          end;


    if trim(bsSkinEdit3.Text)<>'' then
       begin
          frmRelimp2.imagem02.Frame.DrawTop     := true;
          frmRelimp2.imagem02.Frame.DrawBottom  := true;
          frmRelimp2.imagem02.Frame.DrawLeft    := true;
          frmRelimp2.imagem02.Frame.DrawRight   := true;
          //***
          frmRelimp2.imagem02.Picture.LoadFromFile(bsSkinEdit3.text);
       end
       else
          begin
              frmRelimp2.imagem02.Frame.DrawTop     := false;
              frmRelimp2.imagem02.Frame.DrawBottom  := false;
              frmRelimp2.imagem02.Frame.DrawLeft    := false;
              frmRelimp2.imagem02.Frame.DrawRight   := false;
              //***
              frmRelimp2.imagem02.Picture.Bitmap    := nil;
          end;

       if trim(bsSkinEdit7.Text)<>'' then
       begin
          frmRelimp2.QRImage1.Frame.DrawTop     := true;
          frmRelimp2.QRImage1.Frame.DrawBottom  := true;
          frmRelimp2.QRImage1.Frame.DrawLeft    := true;
          frmRelimp2.QRImage1.Frame.DrawRight   := true;
          //***
          frmRelimp2.QRImage1.Picture.LoadFromFile(bsSkinEdit7.text);
       end
       else
          begin
              frmRelimp2.QRImage1.Frame.DrawTop     := false;
              frmRelimp2.QRImage1.Frame.DrawBottom  := false;
              frmRelimp2.QRImage1.Frame.DrawLeft    := false;
              frmRelimp2.QRImage1.Frame.DrawRight   := false;
              //***
              frmRelimp2.QRImage1.Picture.Bitmap    := nil;
          end;


    frmRelimp2.hide;
    frmpreviewRel.hide;
    frmRelimp2.qrcProd.Preview;

end;

procedure TfrmPreviewRel.bsSkinButton22Click(Sender: TObject);
begin

   frmRelimp3.QRStringsBand1.Items := frmpreviewRel.bsSkinMemo3.Lines;
   frmRelimp3.QRLabel2.Caption := frmRelimp3.QRStringsBand1.Item;

    if trim(frmpreviewRel.bsSkinEdit4.text)<>'' then
        frmRelimp3.qrlabel1.Caption := bsSkinEdit4.text
     else
      begin
        frmRelimp3.qrlabel1.Caption := '';
      end;

    frmRelimp3.hide;
    frmpreviewRel.hide;
    frmRelimp3.qrcProd.Preview;

end;

procedure TfrmPreviewRel.edtSubExit(Sender: TObject);
begin
      frmRelImp.qrlabel1.Caption := edtSub.text;
      frmRelImp.qrcProd.Prepare;
      QRPreview1.QRPrinter := frmRelImp.qrcProd.QRPrinter;
end;

procedure TfrmPreviewRel.bsSkinMemo1Exit(Sender: TObject);
begin
   frmRelImp.QRStringsBand1.Items := bsSkinMemo1.Lines;
   frmRelImp.QRLabel2.Caption := frmRelImp.QRStringsBand1.Item;
   frmRelImp.qrcProd.Prepare;
   QRPreview1.QRPrinter := frmRelImp.qrcProd.QRPrinter;
end;

procedure TfrmPreviewRel.bsSkinEdit4Exit(Sender: TObject);
begin
      frmRelimp3.qrlabel1.Caption := bsSkinEdit4.text;
      frmRelimp3.qrcProd.Prepare;
      QRPreview1.QRPrinter := frmRelimp3.qrcProd.QRPrinter;
end;

procedure TfrmPreviewRel.bsSkinMemo3Exit(Sender: TObject);
begin
   frmRelimp3.QRStringsBand1.Items := frmpreviewRel.bsSkinMemo3.Lines;
   frmRelimp3.QRLabel2.Caption := frmRelimp3.QRStringsBand1.Item;
   frmRelimp3.qrcProd.Prepare;
   QRPreview1.QRPrinter := frmRelimp3.qrcProd.QRPrinter;
end;

procedure TfrmPreviewRel.bsSkinMemo2Exit(Sender: TObject);
begin
   frmRelimp2.QRMemo1.Lines := frmpreviewRel.bsSkinMemo2.Lines;
   frmRelimp2.qrcProd.Prepare;
   QRPreview1.QRPrinter := frmRelimp2.qrcProd.QRPrinter;

end;

procedure TfrmPreviewRel.bsSkinEdit1Exit(Sender: TObject);
begin
      frmRelimp2.qrlabel1.Caption := bsSkinEdit1.text;
      frmRelimp2.qrcProd.Prepare;
      QRPreview1.QRPrinter := frmRelimp2.qrcProd.QRPrinter;
end;

end.


