inherited FormManutCadCliente: TFormManutCadCliente
  Caption = 'Manuntencao de Cadastro de Cliente'
  ClientHeight = 331
  ClientWidth = 538
  ExplicitWidth = 554
  ExplicitHeight = 370
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 538
    Height = 290
    ExplicitWidth = 538
    ExplicitHeight = 290
    object lbNome: TLabel
      Left = 24
      Top = 61
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object lbBairro: TLabel
      Left = 384
      Top = 29
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object lbEmail: TLabel
      Left = 24
      Top = 189
      Width = 24
      Height = 13
      Caption = 'Email'
    end
    object lbCPFCNPJ: TLabel
      Left = 24
      Top = 125
      Width = 48
      Height = 13
      Caption = 'CPF/CNPJ'
    end
    object lbTelefone: TLabel
      Left = 208
      Top = 29
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object lbCidade: TLabel
      Left = 208
      Top = 88
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object lbEstado: TLabel
      Left = 208
      Top = 157
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object lbNumero: TLabel
      Left = 384
      Top = 157
      Width = 64
      Height = 13
      Caption = 'Numero Local'
    end
    object lbRua: TLabel
      Left = 384
      Top = 88
      Width = 19
      Height = 13
      Caption = 'Rua'
    end
    object lbIDCliente: TLabel
      Left = 384
      Top = 213
      Width = 46
      Height = 13
      Caption = 'Id Cliente'
    end
    object lbCEP: TLabel
      Left = 208
      Top = 213
      Width = 19
      Height = 13
      Caption = 'CEP'
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 80
      Width = 121
      Height = 21
      DataField = 'Nome'
      DataSource = FormCadastroClient.DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 144
      Width = 121
      Height = 21
      DataField = 'CPFCNPJ'
      DataSource = FormCadastroClient.DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 24
      Top = 208
      Width = 121
      Height = 21
      DataField = 'Email'
      DataSource = FormCadastroClient.DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 208
      Top = 232
      Width = 121
      Height = 21
      DataField = 'CEP'
      DataSource = FormCadastroClient.DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 208
      Top = 176
      Width = 121
      Height = 21
      DataField = 'Estado'
      DataSource = FormCadastroClient.DataSource1
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 208
      Top = 107
      Width = 121
      Height = 21
      DataField = 'Cidade'
      DataSource = FormCadastroClient.DataSource1
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 208
      Top = 48
      Width = 121
      Height = 21
      DataField = 'Telefone'
      DataSource = FormCadastroClient.DataSource1
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 384
      Top = 48
      Width = 121
      Height = 21
      DataField = 'Bairro'
      DataSource = FormCadastroClient.DataSource1
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 384
      Top = 104
      Width = 121
      Height = 21
      DataField = 'Rua'
      DataSource = FormCadastroClient.DataSource1
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 384
      Top = 176
      Width = 121
      Height = 21
      DataField = 'Numero'
      DataSource = FormCadastroClient.DataSource1
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 384
      Top = 232
      Width = 121
      Height = 21
      DataField = 'idClientes'
      DataSource = FormCadastroClient.DataSource1
      TabOrder = 10
    end
  end
  inherited Panel2: TPanel
    Top = 290
    Width = 538
    ExplicitTop = 290
    ExplicitWidth = 538
    inherited Bgravar: TButton
      Left = 24
      ExplicitLeft = 24
    end
    inherited BCancelar: TButton
      Left = 430
      ExplicitLeft = 430
    end
  end
end
