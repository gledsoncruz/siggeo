unit U_ViewProp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RzButton, RzBorder, RzLabel, Buttons;

type
  TfrmViewProp = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    btAplicar: TRzBitBtn;
    btCancelar: TRzBitBtn;
    ColorDialog1: TColorDialog;
    RzBorder1: TRzBorder;
    RzBorder2: TRzBorder;
    edtColor: TRzLabel;
    btFechar: TRzBitBtn;
    edtSelecao: TRzLabel;
    Label3: TLabel;
    ckBarra: TCheckBox;
    procedure btAplicarClick(Sender: TObject);
    procedure edtColorDblClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure ckBarraClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtSelecaoDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmViewProp: TfrmViewProp;

implementation

uses U_menu, U_Print, MapObjects2_TLB;

{$R *.DFM}

procedure TfrmViewProp.btAplicarClick(Sender: TObject);
begin
//verificando barra de rolagem
   If ckBarra.Checked = true then
      frmMenu.Map1.ScrollBars := true
   else
      frmMenu.map1.ScrollBars := false;

//cor de fundo
   frmMenu.Map1.BackColor:= edtColor.Color;
   ColorDialog1.Color := clWhite ;

//cor de seleção
   frmMenu.cor_S := edtselecao.color;

//unidades do mapa
  if ComboBox1.itemindex <> -1 then
  frmmenu.varMapUnits := ComboBox1.itemindex
  else
  frmmenu.varMapUnits := -1;

  if frmmenu.varMapUnits = 2 THEN //metros
      begin
         frmMenu.convFactor2 := 0.025;
      end else
    if frmmenu.varMapUnits = 3 THEN //pés
       begin
         frmMenu.convFactor2 := 0.083;
      end else
          if frmmenu.varMapUnits = 1 THEN  //graus decimais
          begin     // degrees
            frmMenu.convFactor2 := 1/4322893.46;
          end;

//carregando alteraçao no frmprint
  if frmprint<>nil then
     begin
        case frmmenu.varMapUnits of
         -1:
         frmPrint.lblUnidades.caption := 'Desconhecida';
          0:
         frmPrint.lblUnidades.caption := 'Desconhecida';
          1:
         frmPrint.lblUnidades.caption := 'Graus Decimais';
          2:
         frmPrint.lblUnidades.caption := 'Metros';
          3:
         frmPrint.lblUnidades.caption := 'Pés';
        end;
     end;

//botões
   btAplicar.Enabled  := false;
   btfechar.enabled   := true;
   frmMenu.Map1.Refresh;

end;

procedure TfrmViewProp.edtColorDblClick(Sender: TObject);
begin
   ColorDialog1.execute;
   edtColor.Color := ColorDialog1.Color;
//botões
   btAplicar.Enabled := true;
   btFechar.enabled  := false;
end;

procedure TfrmViewProp.btCancelarClick(Sender: TObject);
begin
   frmViewProp.Close;
   edtColor.Color := clWhite;
   ColorDialog1.Color := clwhite;
end;

procedure TfrmViewProp.ckBarraClick(Sender: TObject);
begin
//botões
   btAplicar.Enabled := true;
   btFechar.enabled  := false;
end;

procedure TfrmViewProp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := cafree;
   frmViewProp := nil;
end;

procedure TfrmViewProp.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If key =#13 then
   begin
     key:=#0;
     perform(WM_NEXTDLGCTL ,0,0);
   end;
end;

procedure TfrmViewProp.edtSelecaoDblClick(Sender: TObject);
begin
   ColorDialog1.execute;
   edtSelecao.Color := ColorDialog1.Color;
//botões
   btAplicar.Enabled := true;
   btFechar.enabled  := false;
end;

procedure TfrmViewProp.FormCreate(Sender: TObject);
begin

   edtselecao.color := frmMenu.cor_s;
   edtColor.Color   := frmMenu.map1.BackColor ;

   if (frmmenu.varMapUnits = -1) or (frmmenu.varMapUnits = 0) then
      ComboBox1.ItemIndex := 0
   else
      ComboBox1.ItemIndex := frmmenu.varMapUnits;

   ckBarra.Checked := frmMenu.Map1.ScrollBars
   
end;

procedure TfrmViewProp.ComboBox1Change(Sender: TObject);
begin

  btAplicar.enabled := true;

end;

end.
