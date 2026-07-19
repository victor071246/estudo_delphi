program Estoque;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  USobre in 'USobre.pas' {frmSobre},
  UDM_dados in 'UDM_dados.pas' {dm_dados: TDataModule},
  UCidade in 'UCidade.pas' {frmCidade};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tdm_dados, dm_dados);
  Application.CreateForm(TfrmCidade, frmCidade);
  Application.Run;
end.
