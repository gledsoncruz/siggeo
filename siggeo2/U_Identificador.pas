unit U_Identificador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, bsSkinGrids, BusinessSkinForm, bsSkinBoxCtrls,
  StdCtrls,MapObjects2_TLB;

type
  TfrmIdentificador = class(TForm)
    lstIdentificador: TbsSkinStringGrid;
    sbHorizontal: TbsSkinScrollBar;
    sbVertical: TbsSkinScrollBar;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    dbLista: TbsSkinComboBox;
    btInf: TbsSkinButton;
    procedure dbListaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btInfClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pontoX,pontoY       : double;
    varMuda             : Boolean;
    varPosVetorMaisInf  : Smallint;
    tempValor           : String;
  end;

var
  frmIdentificador: TfrmIdentificador;

implementation

uses U_Menu, U_ConfigurarMaisInf, U_IdentMaisInformacoes;

{$R *.dfm}

procedure TfrmIdentificador.dbListaChange(Sender: TObject);
var
i : integer;
begin

  if varMuda then
     begin
        if trim(dbLista.Text)<>'' then
           begin
              for i:=1 to lstIdentificador.RowCount-1 do
                 begin
                    lstIDentificador.Cells[0,i] := '';
                    lstIDentificador.Cells[1,i] := '';
                 end;
              frmmenu.Identificador(pontoX,pontoY,dbLista.ItemIndex);
              frmmenu.MapLegend1.Active[dbLista.ItemIndex] := true;
           end;
     end;

end;

procedure TfrmIdentificador.FormCreate(Sender: TObject);
begin

   varMuda   := false;

   FormStyle := fsStayOnTop;

end;

procedure TfrmIdentificador.btInfClick(Sender: TObject);
var
i : smallint;
begin

   frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Close;
   frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].sql.Clear;
   frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].sql.text   := frmmenu.varVetIDentSQL[varPosVetorMaisInf] + tempValor;
   frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Open;
   frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].FetchAll   := true;

   frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].First;

   if frmIdentMais = nil then
      frmIdentMais := TfrmIdentMais.create(application);


   frmIdentMais.Caption := '  Mais Informações: '+dblista.text +'  ';

   frmIdentMais.contReg := 1;

   frmIdentMais.varPosVetorMaisInf := varPosVetorMaisInf;

   frmIdentMais.lblTotal.caption := '1 De '+ IntToStr(frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].RecordCount);

   frmIdentMais.lstIdentificador.RowCount := frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields.Count -1;

   //******************************
   for i:=0 to frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields.Count-1 do
       begin
           frmIdentMais.lstIdentificador.Cells[0,i+1] := frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields[i].FieldName;
           frmIdentMais.lstIdentificador.Cells[1,i+1] := frmmenu.varVetIDentOraQuery[varPosVetorMaisInf].Fields.Fields[i].Text;
       end;

   frmIdentMais.Show;

end;

end.
