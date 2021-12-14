inherited FormFiltroImpressaoEntradaNota: TFormFiltroImpressaoEntradaNota
  Caption = 'FormFiltroImpressaoEntradaNota'
  ClientHeight = 155
  ExplicitWidth = 463
  ExplicitHeight = 194
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 18
    Top = 42
    Width = 68
    Height = 13
    Caption = 'Id Fornecedor'
  end
  object Label3: TLabel [1]
    Left = 314
    Top = 42
    Width = 51
    Height = 13
    Caption = 'ID Compra'
  end
  object Label6: TLabel [2]
    Left = 170
    Top = 42
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label1: TLabel [3]
    Left = 194
    Top = 8
    Width = 69
    Height = 13
    Caption = 'Deseja Filtrar?'
  end
  inherited Panel1: TPanel
    Top = 98
    ExplicitTop = 98
  end
  object edIDCompra: TEdit
    Left = 314
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edIDFornecedor: TEdit
    Left = 18
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EdData: TEdit
    Left = 170
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 3
  end
end
