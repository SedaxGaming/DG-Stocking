object DtmCadastro: TDtmCadastro
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 284
  Width = 366
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtmConexao.SQLConnection1
    Left = 136
    Top = 64
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 136
    Top = 128
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    AfterPost = ClientDataSet1AfterPost
    AfterDelete = ClientDataSet1AfterDelete
    OnReconcileError = ClientDataSet1ReconcileError
    Left = 136
    Top = 200
  end
  object sqlNovaChave: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtmConexao.SQLConnection1
    Left = 248
    Top = 128
  end
end
