inherited DtmCadFornecedor: TDtmCadFornecedor
  OldCreateOrder = True
  inherited SQLQuery1: TSQLQuery
    SQL.Strings = (
      'select *'
      'from fornecedores')
    object SQLQuery1idFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object SQLQuery1Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object SQLQuery1CNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 14
    end
    object SQLQuery1Cidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object SQLQuery1SiglaEstado: TStringField
      FieldName = 'SiglaEstado'
      FixedChar = True
      Size = 2
    end
    object SQLQuery1Email: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object SQLQuery1Telefone: TStringField
      FieldName = 'Telefone'
      Size = 50
    end
  end
  inherited ClientDataSet1: TClientDataSet
    Top = 184
    object ClientDataSet1idFornecedor: TIntegerField
      FieldName = 'idFornecedor'
    end
    object ClientDataSet1Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object ClientDataSet1CNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 14
    end
    object ClientDataSet1Cidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object ClientDataSet1SiglaEstado: TStringField
      FieldName = 'SiglaEstado'
      FixedChar = True
      Size = 2
    end
    object ClientDataSet1Email: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object ClientDataSet1Telefone: TStringField
      FieldName = 'Telefone'
      Size = 50
    end
  end
end
