inherited FormManutCadNotaEntrada: TFormManutCadNotaEntrada
  Caption = 'Manunten'#231#227'o de Entradas'
  ClientHeight = 434
  ClientWidth = 697
  ExplicitWidth = 713
  ExplicitHeight = 473
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 697
    Height = 393
    ExplicitWidth = 697
    ExplicitHeight = 393
    object Label1: TLabel
      Left = 49
      Top = 30
      Width = 45
      Height = 13
      Align = alCustom
      Caption = 'idCompra'
    end
    object Label2: TLabel
      Left = 209
      Top = 30
      Width = 65
      Height = 13
      Align = alCustom
      Caption = 'IdFornecedor'
    end
    object Label3: TLabel
      Left = 379
      Top = 30
      Width = 23
      Height = 13
      Align = alCustom
      Caption = 'Data'
    end
    object Label4: TLabel
      Left = 531
      Top = 30
      Width = 48
      Height = 13
      Align = alCustom
      Caption = 'ValorTotal'
    end
    object Panel3: TPanel
      Left = 1
      Top = 160
      Width = 695
      Height = 232
      Align = alBottom
      Color = clHighlight
      ParentBackground = False
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 32
        Width = 693
        Height = 199
        Align = alBottom
        DataSource = FormCadNotaEntrada.DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
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
      object DBNavigator1: TDBNavigator
        Left = 1
        Top = 1
        Width = 693
        Height = 27
        DataSource = FormCadNotaEntrada.DataSource2
        Align = alTop
        TabOrder = 1
      end
    end
    object DBEdit1: TDBEdit
      Left = 49
      Top = 49
      Width = 104
      Height = 21
      DataField = 'idCompra'
      DataSource = FormCadNotaEntrada.DataSource1
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 209
      Top = 49
      Width = 104
      Height = 21
      DataField = 'Fornecedores_idFornecedor'
      DataSource = FormCadNotaEntrada.DataSource1
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 379
      Top = 49
      Width = 104
      Height = 21
      DataField = 'Data'
      DataSource = FormCadNotaEntrada.DataSource1
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 531
      Top = 49
      Width = 104
      Height = 21
      DataField = 'ValorTotal'
      DataSource = FormCadNotaEntrada.DataSource1
      ParentColor = True
      ReadOnly = True
      TabOrder = 4
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 209
      Top = 88
      Width = 280
      Height = 21
      DataField = 'Fornecedor'
      DataSource = FormCadNotaEntrada.DataSource1
      TabOrder = 5
    end
  end
  inherited Panel2: TPanel
    Top = 393
    Width = 697
    ExplicitTop = 393
    ExplicitWidth = 697
    inherited Image1: TImage
      Width = 695
      ExplicitWidth = 695
    end
  end
end
