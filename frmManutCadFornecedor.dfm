inherited FormManutFornecedor: TFormManutFornecedor
  Caption = 'Manunten'#231#227'o de Cadastro de Fornecedor'
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 627
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object lbIDFornecedor: TLabel
      Left = 16
      Top = 5
      Width = 65
      Height = 13
      Caption = 'IdFornecedor'
    end
    object lbNome: TLabel
      Left = 16
      Top = 56
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object lbCNPJ: TLabel
      Left = 16
      Top = 109
      Width = 25
      Height = 13
      Caption = 'CNPJ'
    end
    object lbEmail: TLabel
      Left = 192
      Top = 109
      Width = 24
      Height = 13
      Caption = 'Email'
    end
    object lbSiglaEstado: TLabel
      Left = 192
      Top = 56
      Width = 73
      Height = 13
      Caption = 'Sigla do Estado'
    end
    object lbCidade: TLabel
      Left = 192
      Top = 5
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object lbTelefone: TLabel
      Left = 392
      Top = 56
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 24
      Width = 121
      Height = 21
      DataField = 'idFornecedor'
      DataSource = FormCadastroFornecedor.DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 75
      Width = 121
      Height = 21
      DataField = 'Nome'
      DataSource = FormCadastroFornecedor.DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 128
      Width = 121
      Height = 21
      DataField = 'CNPJ'
      DataSource = FormCadastroFornecedor.DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 192
      Top = 128
      Width = 121
      Height = 21
      DataField = 'Email'
      DataSource = FormCadastroFornecedor.DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 192
      Top = 75
      Width = 121
      Height = 21
      DataField = 'SiglaEstado'
      DataSource = FormCadastroFornecedor.DataSource1
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 192
      Top = 24
      Width = 121
      Height = 21
      DataField = 'Cidade'
      DataSource = FormCadastroFornecedor.DataSource1
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 392
      Top = 75
      Width = 121
      Height = 21
      DataField = 'Telefone'
      DataSource = FormCadastroFornecedor.DataSource1
      TabOrder = 6
    end
  end
end
