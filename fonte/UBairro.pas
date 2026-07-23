unit UBairro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmBairro = class(TForm)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    ds_bairro: TDataSource;
    radio_group1: TRadioGroup;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure radio_group1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);

  private
    qryBairro: TZQuery;
    procedure qryBairroAfterPost(DataSet: TDataSet);
  public        
    { Public declarations }
  end;

var
  frmBairro: TfrmBairro;

implementation

uses UDM_dados;

{$R *.dfm}

procedure TfrmBairro.FormCreate(Sender: TObject);
//var
  //qryUF: TZQuery;
begin
  qryBairro := TZQuery.Create(Self);
  qryBairro.Connection := dm_dados.ConexaoEstoque;
  qryBairro.SQL.Text := 'SELECT bairro_codigo, bairro_nome FROM bairro';
  qryBairro.AfterPost := qryBairroAfterPost;
  qryBairro.Open;
  qryBairro.FieldByName('bairro_codigo').Required := False;

  ds_bairro.DataSet := qryBairro;

  DBEdit1.DataField := 'bairro_codigo';
  DBEdit2.DataField := 'bairro_nome';
  //DBEdit3.DataField := 'cid_uf';
  DBLookupComboBox1.ListSource := ds_bairro;
  //DBLookupComboBox1.DataSource := ds_cidade;
  DBLookupComboBox1.KeyField := 'bairro_codigo';
  DBLookupComboBox1.ListField := 'bairro_nome';


  //DBLookupComboBox2.ListSource := ds_cidade;
  //DBLookupComboBox2.ListField := 'cid_uf';
  //DBLookupComboBox2.KeyField := 'cid_codigo';
  //DBLookupComboBox2.DataSource := ds_cidade;
  //DBLookupComboBox2.DataField := 'cid_uf';
  //DBComboBox1.DataSource := ds_cidade;
  //DBComboBox1.DataSource := ds_cidade;

  //DBComboBox1.DataSource := ds_bairro;
  //DBComboBox1.DataField := 'cid_uf';

  //qryUF := TZQuery.Create(nil);
  //qryUF.Connection := dm_dados.ConexaoEstoque;
  //qryUF.SQL.Text := 'SELECT DISTINCT cid_uf FROM tbl_cidade ORDER BY cid_uf';
  //qryUF.Open;

  //DBComboBox1.Items.Clear;
  //while not qryUF.Eof do
  //begin
    //DBComboBox1.Items.Add(qryUF.FieldByName('cid_uf').AsString);
    //qryUF.Next;
  //end;

  //qryUF.Close;



  //DBLookupComboBox1.DataField := 'cid_codigo';


end;
procedure TfrmBairro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryBairro.Close;
end;

procedure TfrmBairro.radio_group1Click(Sender: TObject);
begin
    qryBairro.Close;
    qryBairro.SQL.Clear;


    case radio_group1.itemindex of
        0:  begin
              qryBairro.SQL.Add('select bairro_codigo, bairro_nome');
              qryBairro.SQL.Add('from bairro');
              qryBairro.SQL.Add('order by bairro_codigo');
            end;

        1:  begin
              qryBairro.SQL.Add('select bairro_codigo, bairro_nome');
              qryBairro.SQL.Add('from bairro');
              qryBairro.SQL.Add('order by bairro_nome');
            end;
    end;
    
    qryBairro.Open;

end;

procedure TfrmBairro.Edit1Change(Sender: TObject);
begin
    qryBairro.Locate('bairro_nome', Edit1.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmBairro.qryBairroAfterPost(DataSet: TDataSet);
begin
  DataSet.Refresh;
end;

procedure TfrmBairro.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  DBedit2.SetFocus;
end;

end.
