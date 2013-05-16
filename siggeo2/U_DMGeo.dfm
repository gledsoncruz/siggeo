object dmGeo: TdmGeo
  OldCreateOrder = False
  Left = 292
  Top = 266
  Height = 370
  Width = 529
  object OracleSession01: TOraSession
    ConnectPrompt = False
    Options.Net = True
    Username = 'setor5'
    Password = 'mudar123'
    Server = 'dbgeo'
    Left = 32
    Top = 8
  end
  object OraQuery: TOraQuery
    Session = OracleSession01
    SQL.Strings = (
      'select * from SETOR5.CADTESTE')
    Left = 33
    Top = 62
  end
  object IdFTP1: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    RecvBufferSize = 8192
    SendBufferSize = 4096
    Password = 'idftp@client.com'
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 128
    Top = 8
  end
  object IdAntiFreeze1: TIdAntiFreeze
    IdleTimeOut = 50
    OnlyWhenIdle = False
    Left = 208
    Top = 8
  end
end
