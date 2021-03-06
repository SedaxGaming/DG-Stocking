inherited DtmMSTSaidaNotas: TDtmMSTSaidaNotas
  Width = 687
  inherited SQLQuery1: TSQLQuery
    SQL.Strings = (
      'select *'
      'from Vendas')
    object SQLQuery1idVendas: TIntegerField
      FieldName = 'idVendas'
      Required = True
    end
    object SQLQuery1Clientes_idClientes: TIntegerField
      FieldName = 'Clientes_idClientes'
      Required = True
    end
    object SQLQuery1Data: TDateField
      FieldName = 'Data'
    end
    object SQLQuery1ValorTotal: TFMTBCDField
      FieldName = 'ValorTotal'
      Precision = 17
      Size = 2
    end
  end
  inherited ClientDataSet1: TClientDataSet
    OnNewRecord = ClientDataSet1NewRecord
    object ClientDataSet1idVendas: TIntegerField
      FieldName = 'idVendas'
      Required = True
    end
    object ClientDataSet1Clientes_idClientes: TIntegerField
      FieldName = 'Clientes_idClientes'
      Required = True
    end
    object ClientDataSet1Cliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = CDSClientes
      LookupKeyFields = 'idClientes'
      LookupResultField = 'Nome'
      KeyFields = 'Clientes_idClientes'
      Size = 50
      Lookup = True
    end
    object ClientDataSet1Data: TDateField
      FieldName = 'Data'
    end
    object ClientDataSet1ValorTotal: TFMTBCDField
      FieldName = 'ValorTotal'
      Precision = 17
      Size = 2
    end
    object ClientDataSet1SQLQuery2: TDataSetField
      FieldName = 'SQLQuery2'
    end
  end
  inherited sqlNovaChave: TSQLQuery
    Left = 224
    Top = 128
  end
  inherited SQLQuery2: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'idVendas'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from produtosVenda'
      'where Vendas_idVendas = :IDVendas')
    object SQLQuery2Vendas_idVendas: TIntegerField
      FieldName = 'Vendas_idVendas'
      Required = True
    end
    object SQLQuery2Produtos_idProduto: TIntegerField
      FieldName = 'Produtos_idProduto'
      Required = True
    end
    object SQLQuery2Quantidade: TStringField
      FieldName = 'Quantidade'
      Size = 45
    end
    object SQLQuery2Valor: TFMTBCDField
      FieldName = 'Valor'
      Precision = 17
      Size = 2
    end
    object SQLQuery2Total: TFMTBCDField
      FieldName = 'Total'
      Precision = 17
      Size = 2
    end
  end
  inherited ClientDataSet2: TClientDataSet
    DataSetField = ClientDataSet1SQLQuery2
    BeforeEdit = ClientDataSet2BeforeEdit
    BeforePost = ClientDataSet2BeforePost
    AfterPost = ClientDataSet2AfterPost
    BeforeDelete = ClientDataSet2BeforeDelete
    OnNewRecord = ClientDataSet2NewRecord
    object ClientDataSet2Vendas_idVendas: TIntegerField
      FieldName = 'Vendas_idVendas'
      Required = True
    end
    object ClientDataSet2Produtos_idProduto: TIntegerField
      FieldName = 'Produtos_idProduto'
      Required = True
    end
    object ClientDataSet2Quantidade: TStringField
      FieldName = 'Quantidade'
      OnValidate = ClientDataSet2ValorValidate
      Size = 45
    end
    object ClientDataSet2Valor: TFMTBCDField
      FieldName = 'Valor'
      OnValidate = ClientDataSet2ValorValidate
      Precision = 17
      Size = 2
    end
    object ClientDataSet2Total: TFMTBCDField
      FieldName = 'Total'
      Precision = 17
      Size = 2
    end
    object ClientDataSet2Produto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = CDSProdutos
      LookupKeyFields = 'idProduto'
      LookupResultField = 'Descricao'
      KeyFields = 'Produtos_idProduto'
      Size = 50
      Lookup = True
    end
  end
  object SQLQProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * '
      'from produtos')
    SQLConnection = DtmConexao.SQLConnection1
    Left = 424
    Top = 80
    object SQLQProdutosidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object SQLQProdutosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
  end
  object DSPprodutos: TDataSetProvider
    DataSet = SQLQProdutos
    Options = [poReadOnly, poUseQuoteChar]
    Left = 424
    Top = 144
  end
  object CDSProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPprodutos'
    Left = 424
    Top = 200
    object CDSProdutosidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object CDSProdutosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
  end
  object SQLQClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * '
      'from Clientes')
    SQLConnection = DtmConexao.SQLConnection1
    Left = 496
    Top = 80
    object SQLQClientesidClientes: TIntegerField
      FieldName = 'idClientes'
      Required = True
    end
    object SQLQClientesNome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
    object SQLQClientesCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      FixedChar = True
      Size = 12
    end
    object SQLQClientesEmail: TStringField
      FieldName = 'Email'
      Size = 45
    end
    object SQLQClientesTelefone: TStringField
      FieldName = 'Telefone'
      Size = 16
    end
    object SQLQClientesCidade: TStringField
      FieldName = 'Cidade'
      Size = 45
    end
    object SQLQClientesEstado: TStringField
      FieldName = 'Estado'
      Size = 45
    end
    object SQLQClientesCEP: TStringField
      FieldName = 'CEP'
      Size = 45
    end
    object SQLQClientesBairro: TStringField
      FieldName = 'Bairro'
      Size = 45
    end
    object SQLQClientesRua: TStringField
      FieldName = 'Rua'
      Size = 45
    end
    object SQLQClientesNumero: TStringField
      FieldName = 'Numero'
      Size = 10
    end
  end
  object DSPClientes: TDataSetProvider
    DataSet = SQLQClientes
    Options = [poReadOnly, poUseQuoteChar]
    Left = 496
    Top = 144
  end
  object CDSClientes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPClientes'
    Left = 496
    Top = 200
    object CDSClientesidClientes: TIntegerField
      FieldName = 'idClientes'
      Required = True
    end
    object CDSClientesNome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
    object CDSClientesCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      FixedChar = True
      Size = 12
    end
    object CDSClientesEmail: TStringField
      FieldName = 'Email'
      Size = 45
    end
    object CDSClientesTelefone: TStringField
      FieldName = 'Telefone'
      Size = 16
    end
    object CDSClientesCidade: TStringField
      FieldName = 'Cidade'
      Size = 45
    end
    object CDSClientesEstado: TStringField
      FieldName = 'Estado'
      Size = 45
    end
    object CDSClientesCEP: TStringField
      FieldName = 'CEP'
      Size = 45
    end
    object CDSClientesBairro: TStringField
      FieldName = 'Bairro'
      Size = 45
    end
    object CDSClientesRua: TStringField
      FieldName = 'Rua'
      Size = 45
    end
    object CDSClientesNumero: TStringField
      FieldName = 'Numero'
      Size = 10
    end
  end
  object SQLExitProd: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtmConexao.SQLConnection1
    Left = 224
    Top = 176
  end
  object SQLCancel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtmConexao.SQLConnection1
    Left = 312
    Top = 64
  end
end
