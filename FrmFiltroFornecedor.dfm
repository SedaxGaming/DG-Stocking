inherited FormFiltroFornecedor: TFormFiltroFornecedor
  Caption = 'FiltroFornecedor'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object edIDfornecedor: TLabeledEdit
      Left = 32
      Top = 56
      Width = 121
      Height = 21
      EditLabel.Width = 65
      EditLabel.Height = 13
      EditLabel.Caption = 'IdFornecedor'
      TabOrder = 0
    end
    object edNome: TLabeledEdit
      Left = 32
      Top = 136
      Width = 121
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      TabOrder = 1
    end
    object edSiglaEstado: TLabeledEdit
      Left = 208
      Top = 136
      Width = 121
      Height = 21
      EditLabel.Width = 55
      EditLabel.Height = 13
      EditLabel.Caption = 'SiglaEstado'
      TabOrder = 2
    end
    object edCNPJ: TLabeledEdit
      Left = 32
      Top = 224
      Width = 121
      Height = 21
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'CNPJ'
      TabOrder = 3
    end
    object edEmail: TLabeledEdit
      Left = 208
      Top = 224
      Width = 121
      Height = 21
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.Caption = 'Email'
      TabOrder = 4
    end
    object edCidade: TLabeledEdit
      Left = 208
      Top = 56
      Width = 121
      Height = 21
      EditLabel.Width = 33
      EditLabel.Height = 13
      EditLabel.Caption = 'Cidade'
      TabOrder = 5
    end
    object edTelefone: TLabeledEdit
      Left = 392
      Top = 56
      Width = 121
      Height = 21
      EditLabel.Width = 42
      EditLabel.Height = 13
      EditLabel.Caption = 'Telefone'
      TabOrder = 6
    end
  end
end
