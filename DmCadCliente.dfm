inherited DtmCadCliente: TDtmCadCliente
  OldCreateOrder = True
  inherited SQLQuery1: TSQLQuery
    SQL.Strings = (
      'select *'
      'from clientes')
    object SQLQuery1idClientes: TIntegerField
      FieldName = 'idClientes'
    end
    object SQLQuery1Nome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
    object SQLQuery1Email: TStringField
      FieldName = 'Email'
      Size = 45
    end
    object SQLQuery1Telefone: TStringField
      FieldName = 'Telefone'
      Size = 16
    end
    object SQLQuery1Cidade: TStringField
      FieldName = 'Cidade'
      Size = 45
    end
    object SQLQuery1Estado: TStringField
      FieldName = 'Estado'
      Size = 45
    end
    object SQLQuery1CEP: TStringField
      FieldName = 'CEP'
      Size = 45
    end
    object SQLQuery1Bairro: TStringField
      FieldName = 'Bairro'
      Size = 45
    end
    object SQLQuery1Rua: TStringField
      FieldName = 'Rua'
      Size = 45
    end
    object SQLQuery1Numero: TStringField
      FieldName = 'Numero'
      Size = 10
    end
    object SQLQuery1CPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      FixedChar = True
      Size = 12
    end
  end
  inherited ClientDataSet1: TClientDataSet
    object ClientDataSet1idClientes: TIntegerField
      FieldName = 'idClientes'
    end
    object ClientDataSet1Nome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
    object ClientDataSet1Email: TStringField
      FieldName = 'Email'
      Size = 45
    end
    object ClientDataSet1Telefone: TStringField
      FieldName = 'Telefone'
      Size = 16
    end
    object ClientDataSet1Cidade: TStringField
      FieldName = 'Cidade'
      Size = 45
    end
    object ClientDataSet1Estado: TStringField
      FieldName = 'Estado'
      Size = 45
    end
    object ClientDataSet1CEP: TStringField
      FieldName = 'CEP'
      Size = 45
    end
    object ClientDataSet1Bairro: TStringField
      FieldName = 'Bairro'
      Size = 45
    end
    object ClientDataSet1Rua: TStringField
      FieldName = 'Rua'
      Size = 45
    end
    object ClientDataSet1Numero: TStringField
      FieldName = 'Numero'
      Size = 10
    end
    object ClientDataSet1CPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      FixedChar = True
      Size = 12
    end
  end
end
