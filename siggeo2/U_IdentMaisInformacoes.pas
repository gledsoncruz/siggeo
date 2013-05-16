unit U_IdentMaisInformacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, bsSkinGrids, bsDBGrids, StdCtrls, RzLabel,
  BusinessSkinForm, DB;

type
  TfrmIdentMais = class(TForm)
    bsSkinPanel1: TbsSkinPanel;
    bsSkinPanel2: TbsSkinPanel;
    lstIdentificador: TbsSkinStringGrid;
    sbVertical: TbsSkinScrollBar;
    sbHorizontal: TbsSkinScrollBar;
    btPrimeiro: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    btProximo: TbsSkinButton;
    btUltimo: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    RzLabel9: TRzLabel;
    lblTotal: TRzLabel;
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    contReg             : integer;
    varPosVetorMaisInf  : integer;
  end;

var
  frmIdentMais: TfrmIdentMais;

implementation

uses U_Menu;

{$R *.dfm}

procedure TfrmIdentMais.btProximoClick(Sender: TObject);
var
i : smallint;
begin

   frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Next;

   if not frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Eof then
      contReg := contReg + 1;

   lblTotal.caption := IntToStr(ContReg)+' De '+ IntToStr(frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].RecordCount);

   //******************************
   for i:=0 to frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields.Count-1 do
       begin
           //frmIdentMais.lstIdentificador.Cells[0,i+1] := frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields[i].FieldName;
           frmIdentMais.lstIdentificador.Cells[1,i+1] := frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].FieldByName(frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields[i].FieldName).AsString;
       end;

end;

procedure TfrmIdentMais.btUltimoClick(Sender: TObject);
var
i : smallint;
begin

   frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].last;
   contReg := frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].RecordCount;

   lblTotal.caption := IntToStr(ContReg)+' De '+ IntToStr(frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].RecordCount);

   //******************************
   for i:=0 to frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields.Count-1 do
       begin
           //frmIdentMais.lstIdentificador.Cells[0,i+1] := frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields[i].FieldName;
           frmIdentMais.lstIdentificador.Cells[1,i+1] := frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields.Fields[i].Text;//frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].FieldByName(frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields.Fields[i].Text).AsString;
       end;


end;

procedure TfrmIdentMais.bsSkinButton2Click(Sender: TObject);
var
i : smallint;
begin

   frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Prior;

   if not frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Bof then
      contReg := contReg-1
   else
      contReg := 1;

   lblTotal.caption := IntToStr(ContReg)+' De '+ IntToStr(frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].RecordCount);

   //******************************
   for i:=0 to frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields.Count-1 do
       begin
           //frmIdentMais.lstIdentificador.Cells[0,i+1] := frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields[i].FieldName;
           frmIdentMais.lstIdentificador.Cells[1,i+1] := frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].FieldByName(frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields[i].FieldName).AsString;
       end;

end;

procedure TfrmIdentMais.btPrimeiroClick(Sender: TObject);
var
i : smallint;
begin

   frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].First;
   contReg := 1;

   lblTotal.caption := IntToStr(ContReg)+' De '+ IntToStr(frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].RecordCount);

   //******************************
   for i:=0 to frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields.Count-1 do
       begin
           //frmIdentMais.lstIdentificador.Cells[0,i+1] := frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields[i].FieldName;
           frmIdentMais.lstIdentificador.Cells[1,i+1] := frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].FieldByName(frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields[i].FieldName).AsString;
       end;

end;

procedure TfrmIdentMais.FormCreate(Sender: TObject);
begin

      //********************************************
      //configurando a combo do form do identificador
      lstIdentificador.Cells[0,0] := ' CAMPOS ';
      lstIdentificador.Cells[1,0] := '     ATRIBUTOS ';

end;

end.
