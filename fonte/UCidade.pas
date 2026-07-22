unit UCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmCidade = class(TForm)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;

    ds_cidade: TDataSource;
    radio_group1: TRadioGroup;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    DBComboBox1: TDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure radio_group1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);

  private
    qryCidade: TZQuery;
    procedure qryCidadeAfterPost(DataSet: TDataSet);
  public        
    { Public declarations }
  end;

var
  frmCidade: TfrmCidade;

implementation

uses UDM_dados;

{$R *.dfm}

procedure TfrmCidade.FormCreate(Sender: TObject);
var
  qryUF: TZQuery;
begin
  qryCidade := TZQuery.Create(Self);
  qryCidade.Connection := dm_dados.ConexaoEstoque;
  qryCidade.SQL.Text := 'select cid_codigo, cid_nome, cid_uf from tbl_cidade';
  qryCidade.AfterPost := qryCidadeAfterPost;
  qryCidade.Open;
  qryCidade.FieldByName('cid_codigo').Required := False;

  ds_cidade.DataSet := qryCidade;

  DBEdit1.DataField := 'cid_codigo';
  DBEdit2.DataField := 'cid_nome';
  //DBEdit3.DataField := 'cid_uf';
  DBLookupComboBox1.ListSource := ds_cidade;
  //DBLookupComboBox1.DataSource := ds_cidade;
  DBLookupComboBox1.KeyField := 'cid_codigo';
  DBLookupComboBox1.ListField := 'cid_nome';


  //DBLookupComboBox2.ListSource := ds_cidade;
  //DBLookupComboBox2.ListField := 'cid_uf';
  //DBLookupComboBox2.KeyField := 'cid_codigo';
  //DBLookupComboBox2.DataSource := ds_cidade;
  //DBLookupComboBox2.DataField := 'cid_uf';
  //DBComboBox1.DataSource := ds_cidade;
  //DBComboBox1.DataSource := ds_cidade;

  DBComboBox1.DataSource := ds_cidade;
  DBComboBox1.DataField := 'cid_uf';

  qryUF := TZQuery.Create(nil);
  qryUF.Connection := dm_dados.ConexaoEstoque;
  qryUF.SQL.Text := 'SELECT DISTINCT cid_uf FROM tbl_cidade ORDER BY cid_uf';
  qryUF.Open;

  DBComboBox1.Items.Clear;
  while not qryUF.Eof do
  begin
    DBComboBox1.Items.Add(qryUF.FieldByName('cid_uf').AsString);
    qryUF.Next;
  end;
  
  qryUF.Close;



  //DBLookupComboBox1.DataField := 'cid_codigo';


end;
procedure TfrmCidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryCidade.Close;
end;

procedure TfrmCidade.radio_group1Click(Sender: TObject);
begin
    qryCidade.Close;
    qryCidade.SQL.Clear;


    case radio_group1.itemindex of
        0:  begin
              qryCidade.SQL.Add('select cid_codigo, cid_nome, cid_uf');
              qryCidade.SQL.Add('from tbl_cidade');
              qryCidade.SQL.Add('order by cid_codigo');
            end;

        1:  begin
              qryCidade.SQL.Add('select cid_codigo, cid_nome, cid_uf');
              qryCidade.SQL.Add('from tbl_cidade');
              qryCidade.SQL.Add('order by cid_nome');
            end;
    end;
    
    qryCidade.Open;

end;

procedure TfrmCidade.Edit1Change(Sender: TObject);
begin
    qryCidade.Locate('cid_nome', Edit1.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmCidade.qryCidadeAfterPost(DataSet: TDataSet);
begin
  DataSet.Refresh;
end;

procedure TfrmCidade.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  DBedit2.SetFocus;
end;

end.
