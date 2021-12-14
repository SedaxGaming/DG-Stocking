inherited FormFiltroProduto: TFormFiltroProduto
  Caption = 'FiltroProduto'
  ClientHeight = 194
  ExplicitWidth = 701
  ExplicitHeight = 233
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 128
    ExplicitHeight = 128
    object edIDproduto: TLabeledEdit
      Left = 32
      Top = 32
      Width = 121
      Height = 21
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = 'ID Produto'
      TabOrder = 0
    end
    object edDescricao: TLabeledEdit
      Left = 32
      Top = 80
      Width = 121
      Height = 21
      EditLabel.Width = 46
      EditLabel.Height = 13
      EditLabel.Caption = 'Descricao'
      TabOrder = 1
    end
    object edValidade: TLabeledEdit
      Left = 224
      Top = 32
      Width = 121
      Height = 21
      EditLabel.Width = 40
      EditLabel.Height = 13
      EditLabel.Caption = 'Validade'
      TabOrder = 2
    end
    object edEstoqueDISP: TLabeledEdit
      Left = 224
      Top = 80
      Width = 121
      Height = 21
      EditLabel.Width = 90
      EditLabel.Height = 13
      EditLabel.Caption = 'Estoque Disponivel'
      TabOrder = 3
    end
    object edEmbalagem: TLabeledEdit
      Left = 400
      Top = 32
      Width = 121
      Height = 21
      EditLabel.Width = 54
      EditLabel.Height = 13
      EditLabel.Caption = 'Embalagem'
      TabOrder = 4
    end
    object edPreco: TLabeledEdit
      Left = 400
      Top = 80
      Width = 121
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Pre'#231'o'
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Top = 128
    ExplicitTop = 128
  end
end
