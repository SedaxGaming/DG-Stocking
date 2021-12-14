inherited FormFiltroClientes: TFormFiltroClientes
  Caption = 'FiltroClientes'
  ClientHeight = 388
  ClientWidth = 696
  ExplicitWidth = 712
  ExplicitHeight = 427
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 696
    Height = 322
    ExplicitWidth = 696
    ExplicitHeight = 322
    object edNome: TLabeledEdit
      Left = 40
      Top = 48
      Width = 121
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      TabOrder = 0
    end
    object edCPFCNPJ: TLabeledEdit
      Left = 40
      Top = 96
      Width = 121
      Height = 21
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'CPF/CNPJ'
      TabOrder = 1
    end
    object edEmail: TLabeledEdit
      Left = 40
      Top = 151
      Width = 121
      Height = 21
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.Caption = 'Email'
      TabOrder = 2
    end
    object edTelefone: TLabeledEdit
      Left = 40
      Top = 207
      Width = 121
      Height = 21
      EditLabel.Width = 42
      EditLabel.Height = 13
      EditLabel.Caption = 'Telefone'
      TabOrder = 3
    end
    object edCidade: TLabeledEdit
      Left = 40
      Top = 263
      Width = 121
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Cidade'
      TabOrder = 4
    end
    object edNumero: TLabeledEdit
      Left = 224
      Top = 263
      Width = 121
      Height = 21
      EditLabel.Width = 61
      EditLabel.Height = 13
      EditLabel.Caption = 'Numero local'
      TabOrder = 5
    end
    object edIDcliente: TLabeledEdit
      Left = 416
      Top = 48
      Width = 121
      Height = 21
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.Caption = 'Id Cliente'
      TabOrder = 6
    end
    object edEstado: TLabeledEdit
      Left = 224
      Top = 48
      Width = 121
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Estado'
      TabOrder = 7
    end
    object edCEP: TLabeledEdit
      Left = 224
      Top = 96
      Width = 121
      Height = 21
      EditLabel.Width = 19
      EditLabel.Height = 13
      EditLabel.Caption = 'CEP'
      TabOrder = 8
    end
    object edBairro: TLabeledEdit
      Left = 224
      Top = 151
      Width = 121
      Height = 21
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'Bairro'
      TabOrder = 9
    end
    object edRua: TLabeledEdit
      Left = 224
      Top = 207
      Width = 121
      Height = 21
      EditLabel.Width = 19
      EditLabel.Height = 13
      EditLabel.Caption = 'Rua'
      TabOrder = 10
    end
  end
  inherited Panel2: TPanel
    Top = 322
    Width = 696
    ExplicitTop = 322
    ExplicitWidth = 696
    DesignSize = (
      696
      66)
    inherited Image1: TImage
      Width = 694
    end
    inherited BFiltrar: TButton
      Left = 613
      ExplicitLeft = 613
    end
    inherited BCancelar: TButton
      Left = 613
      ExplicitLeft = 613
    end
  end
end
