unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ExtCtrls, ComCtrls, jpeg;

type
  TfrmPrincipal = class(TForm)
    labelTitulo: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Consultas1: TMenuItem;
    Relatrio1: TMenuItem;
    Sair1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Cidades1: TMenuItem;
    N1: TMenuItem;
    Estoque1: TMenuItem;
    Estoque2: TMenuItem;
    Entrada1: TMenuItem;
    Sada1: TMenuItem;
    N2: TMenuItem;
    Sair2: TMenuItem;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Image1: TImage;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses USobre;

{$R *.dfm}

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
    statusbar1.Panels[2].Text := 'Hora: ' + timetostr(time);
    statusbar1.Panels[3].Text := 'Data: ' + datetostr(date);
end;

procedure TfrmPrincipal.BitBtn7Click(Sender: TObject);
var sobre:TfrmSobre;
begin
    sobre :=TfrmSobre.create(self);
    sobre.ShowModal;
end;

procedure TfrmPrincipal.BitBtn3Click(Sender: TObject);
var cidade:TfrmCidade;
begin
    cidade := TfrmCidade.create(self);
    cidade.ShowModal;
end;

end.
