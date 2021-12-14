inherited FormCadastroFornecedor: TFormCadastroFornecedor
  Caption = 'CadastroFornecedor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'idFornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
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
        FieldName = 'SiglaEstado'
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
      end>
  end
  inherited Panel1: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited DataSource1: TDataSource
    DataSet = DtmCadFornecedor.ClientDataSet1
    Left = 496
    Top = 16
  end
end
