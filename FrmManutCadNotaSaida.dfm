inherited FormManutCadNotaSaida: TFormManutCadNotaSaida
  Caption = 'Manunten'#231#227'o de Saidas'
  ClientHeight = 462
  ClientWidth = 667
  ExplicitWidth = 683
  ExplicitHeight = 501
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 667
    Height = 421
    ExplicitWidth = 667
    ExplicitHeight = 421
    object Label1: TLabel
      Left = 49
      Top = 30
      Width = 38
      Height = 13
      Align = alCustom
      Caption = 'idVenda'
    end
    object Label2: TLabel
      Left = 209
      Top = 30
      Width = 41
      Height = 13
      Align = alCustom
      Caption = 'idCliente'
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
    object DBEdit1: TDBEdit
      Left = 49
      Top = 49
      Width = 104
      Height = 21
      DataField = 'idVendas'
      DataSource = FrmCadNotasSaida.DataSource1
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 209
      Top = 49
      Width = 104
      Height = 21
      Color = clBtnFace
      DataField = 'Clientes_idClientes'
      DataSource = FrmCadNotasSaida.DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 379
      Top = 49
      Width = 104
      Height = 21
      DataField = 'Data'
      DataSource = FrmCadNotasSaida.DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 531
      Top = 49
      Width = 104
      Height = 21
      DataField = 'ValorTotal'
      DataSource = FrmCadNotasSaida.DataSource1
      ParentColor = True
      ReadOnly = True
      TabOrder = 3
    end
    object Panel3: TPanel
      Left = 1
      Top = 188
      Width = 665
      Height = 232
      Align = alBottom
      Color = clHighlight
      ParentBackground = False
      TabOrder = 4
      object DBGrid1: TDBGrid
        Left = 1
        Top = 32
        Width = 663
        Height = 199
        Align = alBottom
        DataSource = FrmCadNotasSaida.DataSource2
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
        Width = 663
        Height = 27
        DataSource = FrmCadNotasSaida.DataSource2
        Align = alTop
        TabOrder = 1
      end
    end
  end
  inherited Panel2: TPanel
    Top = 421
    Width = 667
    ExplicitTop = 421
    ExplicitWidth = 667
    inherited Image1: TImage
      Width = 665
      ExplicitWidth = 665
    end
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 209
    Top = 88
    Width = 280
    Height = 21
    DataField = 'Cliente'
    DataSource = FrmCadNotasSaida.DataSource1
    TabOrder = 2
  end
end
