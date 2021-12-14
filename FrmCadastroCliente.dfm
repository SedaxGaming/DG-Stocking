inherited FormCadastroClient: TFormCadastroClient
  Caption = 'CadastroCliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'idClientes'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPFCNPJ'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefone'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cidade'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Estado'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bairro'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rua'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero'
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited DataSource1: TDataSource
    DataSet = DtmCadCliente.ClientDataSet1
    OnDataChange = DataSource1DataChange
  end
end
