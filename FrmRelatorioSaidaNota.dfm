inherited FormRelatorioSaidaNota: TFormRelatorioSaidaNota
  Caption = 'FormRelatorioSaidaNota'
  ClientHeight = 534
  ClientWidth = 767
  ExplicitWidth = 783
  ExplicitHeight = 573
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickRep: TQuickRep
    Left = -3
    Top = -8
    Frame.DrawTop = True
    Frame.DrawBottom = True
    DataSet = ClientDataSet1
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PreviewInitialState = wsMaximized
    ExplicitLeft = -3
    ExplicitTop = -8
    inherited PageHeaderBand1: TQRBand
      Size.Values = (
        261.937500000000000000
        1899.708333333333000000)
      inherited QRImage1: TQRImage
        Size.Values = (
          277.812500000000000000
          0.000000000000000000
          0.000000000000000000
          1822.979166666667000000)
      end
      inherited QRSysData1: TQRSysData
        Size.Values = (
          44.979166666666670000
          1510.770833333333000000
          222.250000000000000000
          314.854166666666700000)
        FontSize = 10
      end
    end
    inherited TitleBand1: TQRBand
      Size.Values = (
        121.708333333333300000
        1899.708333333333000000)
      inherited QRLabel2: TQRLabel
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          31.750000000000000000
          1619.250000000000000000)
        Caption = 'Relat'#243'rio de Saida'
        FontSize = 10
      end
    end
    inherited ColumnHeaderBand1: TQRBand
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      object QRLabel1: TQRLabel
        Left = 12
        Top = 6
        Width = 48
        Height = 17
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          15.875000000000000000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'IdVenda'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 88
        Top = 6
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          232.833333333333300000
          15.875000000000000000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'IdCliente'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 159
        Top = 6
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          420.687500000000000000
          15.875000000000000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cliente'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 531
        Top = 6
        Width = 28
        Height = 17
        Size.Values = (
          44.979166666666670000
          1404.937500000000000000
          15.875000000000000000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Data'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 642
        Top = 6
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          1698.625000000000000000
          15.875000000000000000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Caption = 'ValorTotal'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 304
        Top = 6
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          804.333333333333300000
          15.875000000000000000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Cidade'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 416
        Top = 6
        Width = 42
        Height = 17
        Size.Values = (
          44.979166666666670000
          1100.666666666667000000
          15.875000000000000000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Estado'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    inherited DetailBand1: TQRBand
      Height = 42
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Size.Values = (
        111.125000000000000000
        1899.708333333333000000)
      ExplicitHeight = 42
      object QRDBText1: TQRDBText
        Left = 12
        Top = 19
        Width = 55
        Height = 17
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          50.270833333333330000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet1
        DataField = 'idVendas'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 531
        Top = 19
        Width = 28
        Height = 17
        Size.Values = (
          44.979166666666670000
          1404.937500000000000000
          50.270833333333330000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet1
        DataField = 'Data'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 159
        Top = 19
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          420.687500000000000000
          50.270833333333330000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet1
        DataField = 'Nome'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 642
        Top = 19
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          1698.625000000000000000
          50.270833333333330000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet1
        DataField = 'ValorTotal'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 88
        Top = 17
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          232.833333333333300000
          44.979166666666670000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet1
        DataField = 'idClientes'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 304
        Top = 19
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          804.333333333333300000
          50.270833333333330000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet1
        DataField = 'Cidade'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 416
        Top = 19
        Width = 42
        Height = 17
        Size.Values = (
          44.979166666666670000
          1100.666666666667000000
          50.270833333333330000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet1
        DataField = 'Estado'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    inherited PageFooterBand1: TQRBand
      Top = 345
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      ExplicitTop = 345
      inherited QRSysData2: TQRSysData
        Size.Values = (
          44.979166666666670000
          1793.875000000000000000
          42.333333333333330000
          21.166666666666670000)
        FontSize = 10
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 305
      Width = 718
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep
      DataSet = ClientDataSet2
      HeaderBand = QRBand1
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText3: TQRDBText
        Left = 88
        Top = 6
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          232.833333333333300000
          15.875000000000000000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet2
        DataField = 'Descricao'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 12
        Top = 6
        Width = 56
        Height = 17
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          15.875000000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet2
        DataField = 'idProduto'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 363
        Top = 6
        Width = 67
        Height = 17
        Size.Values = (
          44.979166666666670000
          960.437500000000000000
          15.875000000000000000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet2
        DataField = 'Quantidade'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 232
        Top = 6
        Width = 70
        Height = 17
        Size.Values = (
          44.979166666666670000
          613.833333333333300000
          15.875000000000000000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet2
        DataField = 'Embalagem'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 528
        Top = 6
        Width = 31
        Height = 17
        Size.Values = (
          44.979166666666670000
          1397.000000000000000000
          15.875000000000000000
          82.020833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet2
        DataField = 'Valor'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 631
        Top = 6
        Width = 29
        Height = 17
        Size.Values = (
          44.979166666666670000
          1669.520833333333000000
          15.875000000000000000
          76.729166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet2
        DataField = 'Total'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 265
      Width = 718
      Height = 40
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRLabel6: TQRLabel
        Left = 12
        Top = 6
        Width = 38
        Height = 17
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          15.875000000000000000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'idProd'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 88
        Top = 6
        Width = 46
        Height = 17
        Size.Values = (
          44.979166666666670000
          232.833333333333300000
          15.875000000000000000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Produto'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 363
        Top = 6
        Width = 67
        Height = 17
        Size.Values = (
          44.979166666666670000
          960.437500000000000000
          15.875000000000000000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Quantidade'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 528
        Top = 6
        Width = 31
        Height = 17
        Size.Values = (
          44.979166666666670000
          1397.000000000000000000
          15.875000000000000000
          82.020833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 232
        Top = 6
        Width = 70
        Height = 17
        Size.Values = (
          44.979166666666670000
          613.833333333333300000
          15.875000000000000000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Embalagem'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 625
        Top = 6
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          1653.645833333333000000
          15.875000000000000000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Pre'#231'o'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
  end
  inherited SQLQuery1: TSQLQuery
    Active = True
    SQL.Strings = (
      
        'SELECT idVendas, idClientes, Nome, Cidade, Estado, Data, ValorTo' +
        'tal'
      'FROM vendas'
      
        'INNER JOIN clientes ON clientes.idClientes = vendas.Clientes_idC' +
        'lientes')
    Left = 64
    Top = 392
    object SQLQuery1idVendas: TIntegerField
      FieldName = 'idVendas'
      Required = True
    end
    object SQLQuery1idClientes: TIntegerField
      FieldName = 'idClientes'
      Required = True
    end
    object SQLQuery1Nome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
    object SQLQuery1Cidade: TStringField
      FieldName = 'Cidade'
      Size = 45
    end
    object SQLQuery1Estado: TStringField
      FieldName = 'Estado'
      Size = 45
    end
    object SQLQuery1Data: TDateField
      FieldName = 'Data'
    end
    object SQLQuery1ValorTotal: TFMTBCDField
      FieldName = 'ValorTotal'
      Precision = 17
      Size = 2
    end
  end
  object SQLQuery2: TSQLQuery
    DataSource = DataSource1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idVendas'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT IdProduto, Descricao, Embalagem, Quantidade, Valor, Total'
      'FROM produtosvenda'
      
        'INNER JOIN `produtos` ON produtos.`idProduto` = produtosvenda.`P' +
        'rodutos_idProduto`'
      'WHERE produtosvenda.Vendas_idVendas = :idVendas')
    SQLConnection = DtmConexao.SQLConnection1
    Left = 240
    Top = 384
    object SQLQuery2IdProduto: TIntegerField
      FieldName = 'IdProduto'
      Required = True
    end
    object SQLQuery2Descricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
    object SQLQuery2Embalagem: TStringField
      FieldName = 'Embalagem'
      Size = 10
    end
    object SQLQuery2Quantidade: TStringField
      FieldName = 'Quantidade'
      Size = 45
    end
    object SQLQuery2Valor: TFMTBCDField
      FieldName = 'Valor'
      Precision = 17
      Size = 2
    end
    object SQLQuery2Total: TFMTBCDField
      FieldName = 'Total'
      Precision = 17
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = SQLQuery1
    Left = 64
    Top = 448
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 152
    Top = 384
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 152
    Top = 432
    object ClientDataSet1idVendas: TIntegerField
      FieldName = 'idVendas'
      Required = True
    end
    object ClientDataSet1idClientes: TIntegerField
      FieldName = 'idClientes'
      Required = True
    end
    object ClientDataSet1Nome: TStringField
      FieldName = 'Nome'
      Size = 45
    end
    object ClientDataSet1Cidade: TStringField
      FieldName = 'Cidade'
      Size = 45
    end
    object ClientDataSet1Estado: TStringField
      FieldName = 'Estado'
      Size = 45
    end
    object ClientDataSet1Data: TDateField
      FieldName = 'Data'
    end
    object ClientDataSet1ValorTotal: TFMTBCDField
      FieldName = 'ValorTotal'
      Precision = 17
      Size = 2
    end
    object ClientDataSet1SQLQuery2: TDataSetField
      FieldName = 'SQLQuery2'
    end
  end
  object ClientDataSet2: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = ClientDataSet1SQLQuery2
    Params = <>
    Left = 240
    Top = 432
    object ClientDataSet2IdProduto: TIntegerField
      FieldName = 'IdProduto'
      Required = True
    end
    object ClientDataSet2Descricao: TStringField
      FieldName = 'Descricao'
      Size = 45
    end
    object ClientDataSet2Embalagem: TStringField
      FieldName = 'Embalagem'
      Size = 10
    end
    object ClientDataSet2Quantidade: TStringField
      FieldName = 'Quantidade'
      Size = 45
    end
    object ClientDataSet2Valor: TFMTBCDField
      FieldName = 'Valor'
      Precision = 17
      Size = 2
    end
    object ClientDataSet2Total: TFMTBCDField
      FieldName = 'Total'
      Precision = 17
      Size = 2
    end
  end
end
