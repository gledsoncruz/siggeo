unit U_ConfigSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, ComCtrls, bsSkinTabs, ExtCtrls, RzPanel,
  RzRadGrp, bsSkinCtrls, StdCtrls, Mask, bsSkinBoxCtrls;

type
  TfrmConfigSistema = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    RzRadioGroup1: TRzRadioGroup;
    RzRadioGroup2: TRzRadioGroup;
    btnAplicar: TbsSkinButton;
    btnCancelar: TbsSkinButton;
    bsSkinTabSheet2: TbsSkinTabSheet;
    bsSkinTabSheet3: TbsSkinTabSheet;
    RzGroupBox1: TRzGroupBox;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    edtIPServidor: TbsSkinEdit;
    edtPortaServidor: TbsSkinEdit;
    edtBancoServidor: TbsSkinEdit;
    RzGroupBox2: TRzGroupBox;
    bsSkinStdLabel4: TbsSkinStdLabel;
    edt_Estab: TbsSkinEdit;
    edt_Secr: TbsSkinEdit;
    edt_Depto: TbsSkinEdit;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinStdLabel6: TbsSkinStdLabel;
    RzGroupBox3: TRzGroupBox;
    bsSkinStdLabel7: TbsSkinStdLabel;
    edtHost: TbsSkinEdit;
    bsSkinStdLabel8: TbsSkinStdLabel;
    edtUser: TbsSkinEdit;
    bsSkinStdLabel9: TbsSkinStdLabel;
    edtSenha: TbsSkinPasswordEdit;
    bsSkinStdLabel10: TbsSkinStdLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmConfigSistema: TfrmConfigSistema;
  varIni, varEndIP, varBanco, varPorta : String;
  vartema    : integer;
  ini, cab :  TextFile;
  varatualiz : byte;
  //FTP
  varHost, varUser, varSenha : string;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmConfigSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action           := cafree;
frmConfigSistema := nil;

end;

procedure TfrmConfigSistema.FormCreate(Sender: TObject);
var
i : integer;
begin
     frmMenu.LerArquivoIni;
     frmMenu.LerArquivoCabecalho;
     edt_Estab.Text := frmMenu.leituraCab.Strings[0];
     edt_Secr.Text  := frmMenu.leituraCab.Strings[1];
     edt_Depto.Text := frmMenu.leituraCab.Strings[2];

           //PROCURO A CHAVE [ATUALIZAR]
           for i:=0 to frmMenu.leituraIni.Count -1 do
             if frmMenu.leituraIni.Strings[i] = '[ATUALIZAR]' then
              begin
               varIni := frmMenu.leituraIni.Strings[i+1];
              end;
               i := i + 1;

            //PROCURO A CHAVE [TEMA]
            for i:=0 to frmMenu.leituraIni.Count -1 do
             if frmMenu.leituraIni.Strings[i] = '[TEMA]' then
              begin
               vartema := StrToInt(frmMenu.leituraIni.Strings[i+1]);
              end;
               i := i + 1;

            //PROCURO A CHAVE [SDE]
            for i:=0 to frmMenu.leituraIni.Count -1 do
             if frmMenu.leituraIni.Strings[i] = '[SDE]' then
              begin
               varEndIP := frmMenu.leituraIni.Strings[i+1];
               varBanco := frmMenu.leituraIni.Strings[i+2];
               varPorta := frmMenu.leituraIni.Strings[i+3];
              end;
               i := i + 1;

            //PROCURO A CHAVE [FTP]
            for i:=0 to frmMenu.leituraIni.Count -1 do
             if frmMenu.leituraIni.Strings[i] = '[FTP]' then
              begin
               varHost  := frmMenu.leituraIni.Strings[i+1];
               varUser  := frmMenu.leituraIni.Strings[i+2];
               varSenha := frmMenu.leituraIni.Strings[i+3];
              end;
               i := i + 1;

      if varIni = 'TRUE' then
       begin
         RzRadioGroup1.ItemIndex := 1;
       end
        else
         if varIni = 'FALSE' then
         begin
          RzRadioGroup1.ItemIndex := 0;
         end;

         RzRadioGroup2.ItemIndex := vartema;
         edtIPServidor.Text := varEndIP;
         edtPortaServidor.Text := varPorta;
         edtBancoServidor.Text := varBanco;
         edtHost.Text := varHost;
         edtUser.Text := varUser;
         edtSenha.Text := frmMenu.DECrypt('D', varSenha);

end;

procedure TfrmConfigSistema.btnAplicarClick(Sender: TObject);
var
i : integer;
varItem : integer;
varIPbool : boolean;
begin
  varIPbool := true;
  frmMenu.LerArquivoIni;
  varatualiz := RzRadioGroup1.ItemIndex;
  varItem := RzRadioGroup2.ItemIndex;
  AssignFile(ini,ExtractFilePath(application.ExeName)+'SIGGeo.ini');

    if not FileExists(ExtractFilePath(application.ExeName)+'SIGGeo.ini') then
       ReWrite(ini)
    else
       begin
           Append(ini);
           ReWrite(ini);
       end;
     //VOU REESCREVER TODO O ARQUIVO INI E ATUALIZAR AS CHAVES
     for i:=0 to frmMenu.leituraIni.Count -1 do
      begin
       if frmMenu.leituraIni.Strings[i] = varIni then
        begin
         if varatualiz = 0 then
          begin
           varIni := 'FALSE';
          end
           else
            begin
             varIni := 'TRUE';
            end;
         writeln(ini,varIni);
        end
         else
          if frmMenu.leituraIni.Strings[i] = inttostr(vartema) then
            begin
             writeln(ini,IntToStr(RzRadioGroup2.ItemIndex));
            end
             else
              if (frmMenu.leituraIni.Strings[i] = varEndIP) and (varIPbool = true) then
               begin
                  writeln(ini,edtIPServidor.Text);
                  varIPbool := false;
               end
                 else
                  if frmMenu.leituraIni.Strings[i] = varBanco then
                   begin
                    writeln(ini,edtBancoServidor.Text);
                   end
                    else
                     if frmMenu.leituraIni.Strings[i] = varPorta then
                      begin
                       writeln(ini,edtPortaServidor.Text);
                      end
                       else
                        if frmMenu.leituraIni.Strings[i] = varHost then
                         begin
                            Writeln(ini,edtHost.text);
                         end
                          else
                           if frmMenu.leituraIni.Strings[i] = varUser then
                             begin
                               Writeln(ini,edtuser.text);
                             end
                              else
                               if frmMenu.leituraIni.Strings[i] = varsenha then
                                 begin
                                   Writeln(ini,frmMenu.DECrypt('C', edtsenha.text));
                                 end
                                  else
                                    begin
                                     Writeln(ini,frmMenu.leituraIni.Strings[i]);
                                    end;
      end;
       i:= i + 1;
       CloseFile(ini);

       case varItem of

       0 : begin
           frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\ExOS.skn');
           frmMenu.emas1.Items[varItem].Checked := true;
           end;
       1 : begin
           frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\Autumn.skn');
           frmMenu.emas1.Items[varItem].Checked := true;
           end;
       2 : begin
           frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\Clouds.skn');
           frmMenu.emas1.Items[varItem].Checked := true;
           end;
       3 : begin
           frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\Express.skn');
           frmMenu.emas1.Items[varItem].Checked := true;
           end;
       4 : begin
           frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\Win9X.skn');
           frmMenu.emas1.Items[varItem].Checked := true;
           end;
       5 : begin
           frmMenu.LoadSkin(ExtractFileDrive(application.ExeName)+'\SIGGeo\SIGGeo 2.0\profiles\Skins\WinXPBlue.skn');
           frmMenu.emas1.Items[varItem].Checked := true;
           end;

       end;

       AssignFile(cab,ExtractFilePath(application.ExeName)+'\profiles\layout\texto.txt');

    if not FileExists(ExtractFilePath(application.ExeName)+'\profiles\layout\texto.txt') then
       ReWrite(cab)
    else
       begin
        Append(cab);
        ReWrite(cab);
       end;
        Writeln(cab,edt_Estab.Text);
        Writeln(cab,edt_Secr.text);
        Writeln(cab,edt_Depto.text);
        CloseFile(cab);
        frmConfigSistema.Close;
end;

procedure TfrmConfigSistema.btnCancelarClick(Sender: TObject);
begin
 frmMenu.LerArquivoIni;
 frmConfigSistema.Close;
end;

procedure TfrmConfigSistema.FormActivate(Sender: TObject);
begin
frmMenu.LerArquivoIni;
end;

end.
