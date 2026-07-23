program Estoque;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  USobre in 'USobre.pas' {frmSobre},
  UDM_dados in 'UDM_dados.pas' {dm_dados: TDataModule},
  UCidade in 'UCidade.pas' {frmCidade},
  UBairro in 'UBairro.pas' {frmBairro};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tdm_dados, dm_dados);
  Application.CreateForm(TfrmCidade, frmCidade);
  Application.CreateForm(TfrmBairro, frmBairro);
  Application.Run;
end.
