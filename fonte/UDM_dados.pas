unit UDM_dados;

interface

uses
  SysUtils, Classes, DB, ZAbstractConnection, ZConnection;

type
  Tdm_dados = class(TDataModule)
    Estoque: TZConnection;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_dados: Tdm_dados;

implementation

{$R *.dfm}

end.
