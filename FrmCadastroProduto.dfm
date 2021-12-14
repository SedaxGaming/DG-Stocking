inherited FormCadastroProduto: TFormCadastroProduto
  Caption = 'CadastroProduto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'idProduto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Validade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EstoqueDisponivel'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EstoqueReservado'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'preco'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Embalagem'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EmbalagemUnitaria'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fornecedores_idFornecedor'
        Width = 64
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
    inherited Panel6: TPanel
      inherited BAtualizar: TButton
        Left = 19
        ExplicitLeft = 19
      end
    end
  end
  inherited DataSource1: TDataSource
    DataSet = DtmCadProd.ClientDataSet1
  end
end
