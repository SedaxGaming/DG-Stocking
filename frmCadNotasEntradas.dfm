inherited FormCadNotaEntrada: TFormCadNotaEntrada
  Caption = 'Cadastro de Entradas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
    inherited Panel6: TPanel
      inherited BPesquisar: TButton
        Visible = False
      end
    end
  end
  inherited Panel8: TPanel
    inherited DBGrid2: TDBGrid
      DataSource = DataSource2
      Columns = <
        item
          Expanded = False
          FieldName = 'Compra_idCompra'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Produtos_idProduto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Produto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Visible = True
        end>
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'idCompra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fornecedores_idFornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ValorTotal'
        Visible = True
      end>
  end
  inherited DataSource1: TDataSource
    DataSet = DtmMstDetailEntradaNota.ClientDataSet1
  end
  inherited DataSource2: TDataSource
    DataSet = DtmMstDetailEntradaNota.ClientDataSet2
  end
end
