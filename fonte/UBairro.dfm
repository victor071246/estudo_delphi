object frmBairro: TfrmBairro
  Left = 267
  Top = 180
  Width = 1305
  Height = 675
  Caption = 'Manuten'#231#227'o de Bairros'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 248
    Top = 205
    Width = 79
    Height = 29
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 248
    Top = 271
    Width = 65
    Height = 29
    Caption = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 232
    Top = 112
    Width = 240
    Height = 25
    DataSource = ds_bairro
    Hints.Strings = (
      'Primeiro Registro'
      'Registro Anterior'
      'Pr'#243'ximo Registro'
      #218'ltimo Registro'
      'Novo Registro'
      'Excluir Registro'
      'Editar Registro'
      'Gravar Registro'
      'Cancelar Registro'
      'Atualizar Dados')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = DBNavigator1Click
  end
  object DBEdit1: TDBEdit
    Left = 353
    Top = 201
    Width = 121
    Height = 37
    DataSource = ds_bairro
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 353
    Top = 267
    Width = 121
    Height = 37
    DataSource = ds_bairro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 248
    Top = 416
    Width = 745
    Height = 185
    Color = clScrollBar
    DataSource = ds_bairro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BAIRRO_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Color = clSkyBlue
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO_NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Bairro'
        Title.Color = clSkyBlue
        Width = 291
        Visible = True
      end>
  end
  object radio_group1: TRadioGroup
    Left = 808
    Top = 104
    Width = 185
    Height = 105
    Caption = 'Ordem de Visualiza'#231#227'o'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'C'#243'digo'
      'Nome')
    TabOrder = 4
    OnClick = radio_group1Click
  end
  object GroupBox1: TGroupBox
    Left = 808
    Top = 256
    Width = 185
    Height = 105
    Caption = 'Consulta por Sele'#231#227'o'
    TabOrder = 5
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 32
      Width = 145
      Height = 21
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 240
    Top = 16
    Width = 753
    Height = 57
    Caption = 'Consulta via Digita'#231#227'o'
    TabOrder = 6
    object Edit1: TEdit
      Left = 18
      Top = 22
      Width = 713
      Height = 21
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object ds_bairro: TDataSource
    Left = 1152
    Top = 80
  end
end
