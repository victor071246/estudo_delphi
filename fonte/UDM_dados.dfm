object dm_dados: Tdm_dados
  OldCreateOrder = False
  Left = 478
  Top = 197
  Height = 356
  Width = 679
  object ConexaoEstoque: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'controls_cp=GET_ACP'
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 5440
    Database = 'estoque'
    User = 'postgres'
    Password = 'nova_senha'
    Protocol = 'postgresql'
    LibraryLocation = 'C:\Program Files (x86)\PostgreSQL\9.2\bin\libpq.dll'
    Left = 128
    Top = 64
  end
end
