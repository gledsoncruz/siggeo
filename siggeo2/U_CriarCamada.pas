unit U_CriarCamada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, ExtCtrls, RzPanel, RzRadGrp, StdCtrls,
  bsSkinCtrls, Mask, bsSkinBoxCtrls, bsSkinGrids, bsSkinShellCtrls, MapObjects2_TLB;

type
  TfrmCriarCamada = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    RzRadioGroup1: TRzRadioGroup;
    bsSkinStdLabel1: TbsSkinStdLabel;
    edt_NovoCampo: TbsSkinEdit;
    bsSkinStdLabel2: TbsSkinStdLabel;
    btn_Add: TbsSkinSpeedButton;
    bsSkinButton1: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinComboBox1: TbsSkinComboBox;
    bsSkinStringGrid1: TbsSkinStringGrid;
    edt_TamanhoCampo: TbsSkinEdit;
    bsSkinStdLabel4: TbsSkinStdLabel;
    bsSkinSaveDialog1: TbsSkinSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure btn_AddClick(Sender: TObject);
  private
    { Private declarations }
    procedure ValidarCriacaoCamadas(Sender : TObject);
  public
    { Public declarations }
    procedure CriarCamadasPonto(Sender : TObject);


  end;

var
  frmCriarCamada: TfrmCriarCamada;
  NomeCampo, TipoCampo, TamanhoCampo : String;

implementation

uses U_Menu, StrUtils;

{$R *.dfm}

procedure TfrmCriarCamada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action             := cafree;
   frmCriarCamada     := nil;
end;

procedure TfrmCriarCamada.bsSkinButton2Click(Sender: TObject);
begin
frmCriarCamada.Close;
end;

procedure TfrmCriarCamada.FormCreate(Sender: TObject);
begin
bsSkinStringGrid1.Cells[0,0] := 'Nome do Campo';
bsSkinStringGrid1.Cells[1,0] := 'Tipo';
bsSkinStringGrid1.Cells[2,0] := 'Tamanho';
bsSkinStringGrid1.Cells[0,1] := 'ID';
bsSkinStringGrid1.Cells[1,1] := 'Inteiro';
bsSkinStringGrid1.Cells[2,1] := '';
bsSkinStringGrid1.Cells[0,2] := 'DESC';
bsSkinStringGrid1.Cells[1,2] := 'Texto';
bsSkinStringGrid1.Cells[2,2] := '50';
end;

procedure TfrmCriarCamada.ValidarCriacaoCamadas(Sender : TObject);
var
 l : byte;
begin
 if RzRadioGroup1.ItemIndex = - 1 then
  begin
   frmMenu.Mensagem('Escolha um tipo de camada',mtWarning,[mbOK]);
   RzRadioGroup1.SetFocus;
   exit;
  end;
    if RzRadioGroup1.ItemIndex = 0 then
     begin
       CriarCamadasPonto(Sender);
     end;


  if Sender is TbsSkinSpeedButton then
   begin
    if (bsSkinComboBox1.ItemIndex = 2) then
     begin
      if trim(edt_TamanhoCampo.Text) = '' then
       begin
        frmMenu.Mensagem('Digite o tamanho do campo', mtWarning,[mbOK]);
        edt_TamanhoCampo.SetFocus;
        exit;
       end;
     end
      else
       if (trim(edt_NovoCampo.Text) = '') or (bsSkinComboBox1.ItemIndex = -1) then
        begin
         frmMenu.Mensagem('Nome do campo ou tipo de campo sem preencher',mtWarning,[mbOK]);
         edt_NovoCampo.SetFocus;
         exit;
        end;
   end;


    //PREENCHER STRINGGRID
    NomeCampo    := edt_NovoCampo.Text;
    TamanhoCampo := edt_TamanhoCampo.Text;
    TipoCampo    := bsSkinComboBox1.Text;

      l := bsSkinStringGrid1.RowCount - 1;
      if bsSkinStringGrid1.Cells[0,l] = '' then
       begin
        bsskinStringGrid1.Cells[0,bsskinStringGrid1.RowCount -1] := NomeCampo;
        bsskinStringGrid1.Cells[1,bsskinStringGrid1.RowCount -1] := TipoCampo;
        bsskinStringGrid1.Cells[2,bsskinStringGrid1.RowCount -1] := TamanhoCampo;
       end;
        bsSkinStringGrid1.RowCount := l + 2;
        
end;

procedure TfrmCriarCamada.CriarCamadasPonto(Sender : TObject);
var
oTable      : IMoTableDesc;
oDataset    : IMoGeoDataset;
oConnection : IMoDataConnection;
dc          : IMoDataConnection;
layer       : MapLayer;
i           : integer;
recs        : IMoRecordset;
p           : imopoint;

begin

if Sender is TbsSkinButton then
 begin
  bsSkinSaveDialog1.FileName := '';
  bsSkinSaveDialog1.Execute;

  if bsSkinSaveDialog1.FileName = '' then
     exit;

  oConnection := CoDataConnection.create;
  oConnection.Database := ExtractFileDir(bsSkinSaveDialog1.FileName);

  oTable := coTableDesc.create;

  oTable.FieldCount := bsSkinStringGrid1.RowCount - 3;

  for i:=0 to oTable.FieldCount do
   begin
    ShowMessage(bsSkinStringGrid1.Cells[0,i+1]);
    oTable.FieldName[i]      := bsSkinStringGrid1.Cells[0,i+1]; //deve ter menos de 11 caracteres
    if bsSkinStringGrid1.cells[1,i+1] = 'Inteiro' then
     begin
      oTable.FieldType[i]      := molong;
      oTable.FieldLength[i]    := 16;
     end
      else
        if bsSkinStringGrid1.cells[1,i+1] = 'Decimal' then
         begin
           oTable.FieldType[i]      := moDouble;
           oTable.FieldLength[i]    := 16;
           otable.FieldScale[i]     := 6;
         end
          else
           if bsSkinStringGrid1.cells[1,i+1] = 'Texto' then
            begin
             oTable.FieldType[i]      := moString;
             oTable.FieldLength[i]    := StrToInt(bsSkinStringGrid1.Cells[2,i+1]);
            end
             else
               if bsSkinStringGrid1.cells[1,i+1] = 'Data' then
                begin
                  oTable.FieldType[i]      := moDate;
                end;
   end;
    i := i + 1;


  If oConnection.Connect Then
     begin
        oDataset    := oConnection.AddGeoDataset(ExtractFileName(bsSkinSaveDialog1.FileName), moPoint, oTable,false,false); //'NOME DO SHAPE TEMPORARIO + O TIPO DO POLIGONO
        dc          := CoDataConnection.create;
        dc.Database := ExtractFileDir(bsSkinSaveDialog1.FileName);

        If Not dc.Connect Then
           frmmenu.mensagem('Erro na Conexão!',mtInformation,[mbok])
        Else
          begin
             layer := coMapLayer.Create;
             layer.GeoDataset := dc.FindGeoDataset(ExtractFileName(bsSkinSaveDialog1.FileName));
          End;

     End;

   recs := layer.Records;
   recs.AutoFlush := true;
 end;
end;

procedure TfrmCriarCamada.bsSkinButton1Click(Sender: TObject);
begin
ValidarCriacaoCamadas(Sender);
end;

procedure TfrmCriarCamada.btn_AddClick(Sender: TObject);
begin
ValidarCriacaoCamadas(Sender);
end;


end.
