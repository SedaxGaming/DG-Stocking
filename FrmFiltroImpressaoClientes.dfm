inherited FormFiltroImpressaoClientes: TFormFiltroImpressaoClientes
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'FormFiltroImpressaoClientes'
  ClientHeight = 357
  ExplicitWidth = 463
  ExplicitHeight = 396
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 160
    Top = 8
    Width = 92
    Height = 13
    Caption = 'Deseja Filtrar algo?'
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 128
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label3: TLabel [2]
    Left = 24
    Top = 72
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label4: TLabel [3]
    Left = 24
    Top = 184
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label5: TLabel [4]
    Left = 264
    Top = 128
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object Label6: TLabel [5]
    Left = 264
    Top = 72
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label7: TLabel [6]
    Left = 264
    Top = 184
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  inherited Panel1: TPanel
    Top = 316
    ExplicitTop = 316
  end
  object edID: TEdit
    Left = 24
    Top = 91
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edNome: TEdit
    Left = 24
    Top = 147
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EdCidade: TEdit
    Left = 24
    Top = 203
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object EdEstado: TEdit
    Left = 264
    Top = 91
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object EdEmail: TEdit
    Left = 264
    Top = 147
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object EdTelefone: TEdit
    Left = 264
    Top = 203
    Width = 121
    Height = 21
    TabOrder = 6
  end
end
