inherited FormManutCadProdutos: TFormManutCadProdutos
  Caption = 'Manunten'#231#227'o de Cadastro de Produtos'
  ExplicitWidth = 627
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object lbEmbalagem: TLabel
      Left = 216
      Top = 53
      Width = 54
      Height = 13
      Caption = 'Embalagem'
    end
    object lbEstoqueDISP: TLabel
      Left = 216
      Top = 5
      Width = 59
      Height = 13
      Caption = 'EstoqueDisp'
    end
    object lbIdProduto: TLabel
      Left = 40
      Top = 5
      Width = 51
      Height = 13
      Caption = 'Id Produto'
    end
    object lbDescricao: TLabel
      Left = 40
      Top = 53
      Width = 46
      Height = 13
      Caption = 'Descricao'
    end
    object lbValidade: TLabel
      Left = 40
      Top = 109
      Width = 40
      Height = 13
      Caption = 'Validade'
    end
    object lbPreco: TLabel
      Left = 216
      Top = 109
      Width = 27
      Height = 13
      Caption = 'Preco'
    end
    object lbIDFornecedor: TLabel
      Left = 392
      Top = 53
      Width = 65
      Height = 13
      Caption = 'IdFornecedor'
    end
    object DBEdit1: TDBEdit
      Left = 40
      Top = 24
      Width = 121
      Height = 21
      DataField = 'idProduto'
      DataSource = FormCadastroProduto.DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 40
      Top = 72
      Width = 121
      Height = 21
      DataField = 'Descricao'
      DataSource = FormCadastroProduto.DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 40
      Top = 128
      Width = 121
      Height = 21
      DataField = 'Validade'
      DataSource = FormCadastroProduto.DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 216
      Top = 24
      Width = 121
      Height = 21
      DataField = 'EstoqueDisponivel'
      DataSource = FormCadastroProduto.DataSource1
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 216
      Top = 128
      Width = 121
      Height = 21
      DataField = 'preco'
      DataSource = FormCadastroProduto.DataSource1
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 216
      Top = 72
      Width = 121
      Height = 21
      DataField = 'Embalagem'
      DataSource = FormCadastroProduto.DataSource1
      TabOrder = 5
    end
    object DBEdit8: TDBEdit
      Left = 392
      Top = 72
      Width = 121
      Height = 21
      DataField = 'Fornecedores_idFornecedor'
      DataSource = FormCadastroProduto.DataSource1
      TabOrder = 6
    end
  end
end
