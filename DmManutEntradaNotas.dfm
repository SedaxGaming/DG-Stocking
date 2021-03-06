inherited DtmMstDetailEntradaNota: TDtmMstDetailEntradaNota
  inherited SQLQuery1: TSQLQuery
    SQL.Strings = (
      'select *'
      'from compra')
    object SQLQuery1idCompra: TIntegerField
      FieldName = 'idCompra'
      Required = True
    end
    object SQLQuery1Fornecedores_idFornecedor: TIntegerField
      FieldName = 'Fornecedores_idFornecedor'
      Required = True
    end
    object SQLQuery1Data: TDateField
      FieldName = 'Data'
    end
    object SQLQuery1ValorTotal: TFMTBCDField
      FieldName = 'ValorTotal'
      Precision = 14
      Size = 2
    end
    object SQLQuery1Fornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'Fornecedor'
      LookupDataSet = CDSFornecedor
      LookupKeyFields = 'idfornecedor'
      LookupResultField = 'nome'
      KeyFields = 'Fornecedores_idFornecedor'
      Size = 50
      Lookup = True
    end
  end
  inherited ClientDataSet1: TClientDataSet
    Active = True
    OnNewRecord = ClientDataSet1NewRecord
    object ClientDataSet1idCompra: TIntegerField
      FieldName = 'idCompra'
      Required = True
    end
    object ClientDataSet1Fornecedores_idFornecedor: TIntegerField
      FieldName = 'Fornecedores_idFornecedor'
      Required = True
    end
    object ClientDataSet1Data: TDateField
      FieldName = 'Data'
    end
    object ClientDataSet1ValorTotal: TFMTBCDField
      AutoGenerateValue = arAutoInc
      FieldName = 'ValorTotal'
      Precision = 14
      Size = 2
    end
    object ClientDataSet1SQLQuery2: TDataSetField
      FieldName = 'SQLQuery2'
    end
    object ClientDataSet1Fornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'Fornecedor'
      LookupDataSet = CDSFornecedor
      LookupKeyFields = 'idfornecedor'
      LookupResultField = 'nome'
      KeyFields = 'Fornecedores_idFornecedor'
      Size = 50
      Lookup = True
    end
  end
  inherited sqlNovaChave: TSQLQuery
    Left = 224
    Top = 120
  end
  inherited SQLQuery2: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'idCompra'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * '
      'from produtoscompra'
      'where Compra_idcompra = :IDcompra')
    object SQLQuery2Compra_idCompra: TIntegerField
      FieldName = 'Compra_idCompra'
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
    Active = True
    DataSetField = ClientDataSet1SQLQuery2
    BeforeEdit = ClientDataSet2BeforeEdit
    AfterPost = ClientDataSet2AfterPost
    BeforeDelete = ClientDataSet2BeforeDelete
    OnNewRecord = ClientDataSet2NewRecord
    Left = 232
    Top = 240
    object ClientDataSet2Compra_idCompra: TIntegerField
      FieldName = 'Compra_idCompra'
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
  object SQLQFornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select idfornecedor, nome'
      'from fornecedores')
    SQLConnection = DtmConexao.SQLConnection1
    Left = 472
    Top = 64
    object SQLQFornecedoridfornecedor: TIntegerField
      FieldName = 'idfornecedor'
      Required = True
    end
    object SQLQFornecedornome: TStringField
      FieldName = 'nome'
      Size = 50
    end
  end
  object CDSFornecedor: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFornecedor'
    Left = 472
    Top = 176
    object CDSFornecedoridfornecedor: TIntegerField
      FieldName = 'idfornecedor'
      Required = True
    end
    object CDSFornecedornome: TStringField
      FieldName = 'nome'
      Size = 50
    end
  end
  object DSPFornecedor: TDataSetProvider
    DataSet = SQLQFornecedor
    Options = [poReadOnly, poUseQuoteChar]
    Left = 472
    Top = 120
  end
  object SQLQProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * '
      'from produtos')
    SQLConnection = DtmConexao.SQLConnection1
    Left = 376
    Top = 64
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
    Left = 376
    Top = 128
  end
  object CDSProdutos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPprodutos'
    Left = 376
    Top = 184
    object CDSProdutosidProduto: TIntegerField
      FieldName = 'idProduto'
      Required = True
    end
    object CDSProdutosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
  end
  object SQLEntryProd: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DtmConexao.SQLConnection1
    Left = 224
    Top = 176
  end
end
