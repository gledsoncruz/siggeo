unit U_ConfigProj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, ExtCtrls, StdCtrls, Mask, bsSkinBoxCtrls,
  BusinessSkinForm, RzLabel, ComCtrls, bsSkinTabs;

type
  TfrmConfigProj = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    pgcConfProj: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinTabSheet2: TbsSkinTabSheet;
    edtDataProj: TbsSkinEdit;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    edtAutorProj: TbsSkinEdit;
    edtContato: TbsSkinEdit;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    edtPagProj: TbsSkinEdit;
    cbRemoverCamada: TbsSkinCheckRadioBox;
    cbEditLegenda: TbsSkinCheckRadioBox;
    cbConvNovoTema: TbsSkinCheckRadioBox;
    cbLayout: TbsSkinCheckRadioBox;
    cbImprimir: TbsSkinCheckRadioBox;
    cbAddDisco: TbsSkinCheckRadioBox;
    cbAddSDE: TbsSkinCheckRadioBox;
    cbSalvarProj: TbsSkinCheckRadioBox;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel6: TbsSkinStdLabel;
    lblConfSenha: TbsSkinStdLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    edtLogin: TbsSkinEdit;
    edtSenha: TbsSkinPasswordEdit;
    edtConfSenha: TbsSkinPasswordEdit;
    bsSkinButton1: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    cbProtegeProjeto: TbsSkinCheckRadioBox;
    cbDeletarGraficos: TbsSkinCheckRadioBox;
    procedure FormCreate(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure cbProtegeProjetoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigProj: TfrmConfigProj;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmConfigProj.FormCreate(Sender: TObject);
begin

  frmmenu.varConfigOk         := false;
  pgcConfProj.ActivePageIndex := 0;

  //***************************************************************
  //nao foi configurado ainda
  if not frmmenu.varProjetoJaConfig then
     begin
         //*******************
         if trim(frmmenu.varNomeUsuproj)<>'' then
            begin
               cbProtegeProjeto.Checked := true;
               edtLogin.Text            := frmmenu.varNomeUsuproj;
               edtSenha.text            := frmmenu.varSenhaUsuproj;
            end
            else
                begin
                   cbProtegeProjeto.Checked := false;
                end;
         //*******************
         edtDataProj.text        := FormatDateTime('dd/mm/yyyy',now);
         edtAutorProj.text       := 'Equipe Geoprocessamento - EPD/VR';
         edtContato.text         := 'geo@epdvr.com.br';
         cbSalvarProj.Checked    := frmmenu.varSALVARPROJETO;
         cbAddSDE.Checked        := frmmenu.varADICIONARSDE;
         cbAddDisco.Checked      := frmmenu.varADICIONARDODISCO;
         cbImprimir.Checked      := frmmenu.varIMPRIMIR;
         cbLayout.Checked        := frmmenu.varLAYOUT;
         cbConvNovoTema.Checked  := frmmenu.varConvNovoSHP;
         cbEditLegenda.Checked   := frmmenu.varEDITARLEGENDA;
         cbRemoverCamada.Checked := frmmenu.varREMOVERLAYERS;
         cbDeletarGraficos.Checked := frmmenu.varDELETARGRAFICOS;
     end
     else
        begin
            //*******************
            if trim(frmmenu.varNomeUsuproj)<>'' then
               begin
                   cbProtegeProjeto.Checked := true;
                   edtLogin.Text            := frmmenu.varNomeUsuproj;
                   edtSenha.text            := frmmenu.varSenhaUsuproj;
                   edtConfSenha.clear;
                   lblConfSenha.Visible     := false;
                   edtConfSenha.Visible     := false;
               end
               else
                  begin
                       cbProtegeProjeto.Checked := false;
                       edtLogin.Clear;
                       edtSenha.clear;
                       edtConfSenha.clear;
                       lblConfSenha.Visible     := false;
                       edtConfSenha.Visible     := false;
                  end;
            //*******************
            edtDataProj.text          := frmmenu.varDATACRIACAO;
            edtAutorProj.text         := frmmenu.varAUTORPROJETO;
            edtContato.text           := frmmenu.varCONTATO;
            edtPagProj.text           := frmmenu.varPAGINA;
            cbSalvarProj.Checked      := frmmenu.varSALVARPROJETO;
            cbAddSDE.Checked          := frmmenu.varADICIONARSDE;
            cbAddDisco.Checked        := frmmenu.varADICIONARDODISCO;
            cbImprimir.Checked        := frmmenu.varIMPRIMIR;
            cbLayout.Checked          := frmmenu.varLAYOUT;
            cbConvNovoTema.Checked    := frmmenu.varConvNovoSHP;
            cbEditLegenda.Checked     := frmmenu.varEDITARLEGENDA;
            cbRemoverCamada.Checked   := frmmenu.varREMOVERLAYERS;
            cbDeletarGraficos.Checked := frmmenu.varDELETARGRAFICOS;
        end;
  //***************************************************************

end;

procedure TfrmConfigProj.bsSkinButton1Click(Sender: TObject);
begin

    if cbProtegeProjeto.checked then
       begin
           if trim(edtLogin.text)='' then
              begin
                  frmmenu.mensagem('Informe Um Login Para o Projeto!',mtInformation,[mbok]);
                  pgcConfProj.ActivePageIndex := 0;
                  edtLogin.setfocus;
                  exit;
              end;
           //********
           if trim(edtSenha.text)='' then
              begin
                  frmmenu.mensagem('Informe Uma Senha Para o Projeto!',mtInformation,[mbok]);
                  pgcConfProj.ActivePageIndex := 0;
                  edtSenha.SetFocus;
                  exit;
              end;
           //********
           if trim(edtConfSenha.text)='' then
              begin
                  frmmenu.mensagem('Confirme a Senha!',mtInformation,[mbok]);
                  pgcConfProj.ActivePageIndex := 0;
                  edtConfSenha.Visible := true;
                  edtConfSenha.SetFocus;
                  exit;
              end;
           //********
           if trim(edtConfSenha.text)<>trim(edtSenha.text) then
              begin
                  frmmenu.mensagem('As Senhas Informadas Não Conferem!Digite Novamente!',mtInformation,[mbok]);
                  pgcConfProj.ActivePageIndex := 0;
                  edtSenha.Clear;
                  edtConfSenha.clear;
                  edtSenha.SetFocus;
                  exit;
              end;
           //*********
           frmmenu.varNomeUsuproj  := edtLogin.Text;
           frmmenu.varSenhaUsuproj := edtSenha.Text;
           //*********
       end;

    frmmenu.varConfigOk          := true;
    frmmenu.varDATACRIACAO       := edtDataProj.text;
    frmmenu.varAUTORPROJETO      := edtAutorProj.text;
    frmmenu.varCONTATO           := edtContato.text;
    frmmenu.varPAGINA            := edtPagProj.text;
    frmmenu.varSALVARPROJETO     := cbSalvarProj.Checked;
    frmmenu.varADICIONARSDE      := cbAddSDE.Checked;
    frmmenu.varADICIONARDODISCO  := cbAddDisco.Checked;
    frmmenu.varIMPRIMIR          := cbImprimir.Checked;
    frmmenu.varLAYOUT            := cbLayout.Checked;
    frmmenu.varConvNovoSHP       := cbConvNovoTema.Checked;
    frmmenu.varEDITARLEGENDA     := cbEditLegenda.Checked;
    frmmenu.varREMOVERLAYERS     := cbRemoverCamada.Checked;
    frmMenu.varDELETARGRAFICOS   := cbDeletarGraficos.Checked;

    close;

end;

procedure TfrmConfigProj.bsSkinButton2Click(Sender: TObject);
begin

   close;

end;

procedure TfrmConfigProj.FormKeyPress(Sender: TObject; var Key: Char);
begin

   if key=#13 then
      begin
          Perform(WM_NEXTDLGCTL,0,0);
          key:=#0;
      end;

end;

procedure TfrmConfigProj.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin

   if key=#13 then
      begin
          edtConfSenha.Visible := true;
          lblConfSenha.Visible := true;
          edtConfSenha.SetFocus;
      end;

end;

procedure TfrmConfigProj.cbProtegeProjetoClick(Sender: TObject);
begin

   if cbProtegeProjeto.Checked then
      begin
          edtLogin.Enabled     := true;
          edtSenha.enabled     := true;
          lblConfSenha.Visible := true;
          edtConfSenha.Visible := true;
          edtLogin.SetFocus;
      end
      else
         begin
             edtLogin.enabled     := false;
             edtSenha.Enabled     := false;
             lblConfSenha.Visible := false;
             edtConfSenha.Visible := false;
         end;        

end;

end.