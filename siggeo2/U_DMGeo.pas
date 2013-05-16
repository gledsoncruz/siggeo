unit U_DMGeo;

interface

uses
  SysUtils, Classes,Ora, MemDS, DB, DBAccess, IdAntiFreezeBase,
  IdAntiFreeze, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdFTP;
  
type
  TdmGeo = class(TDataModule)
    OracleSession01: TOraSession;
    OraQuery: TOraQuery;
    IdFTP1: TIdFTP;
    IdAntiFreeze1: TIdAntiFreeze;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmGeo: TdmGeo;

implementation

{$R *.dfm}

end.
