inherited FormRelatorioEntradaNota: TFormRelatorioEntradaNota
  Caption = 'FormRelatorioEntradaNota'
  ClientHeight = 515
  ClientWidth = 760
  ExplicitWidth = 776
  ExplicitHeight = 554
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickRep: TQuickRep
    Left = -8
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
    PrevInitialZoom = qrZoom100
    ExplicitLeft = -8
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
        Caption = 'Relat'#243'rio de Entrada de Notas'
        FontSize = 10
      end
    end
    inherited ColumnHeaderBand1: TQRBand
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      object QRLabel1: TQRLabel
        Left = 16
        Top = 6
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          15.875000000000000000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = True
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'IDCompra'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 80
        Top = 6
        Width = 78
        Height = 17
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          15.875000000000000000
          206.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'IDFornecedor'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 162
        Top = 6
        Width = 66
        Height = 17
        Size.Values = (
          44.979166666666670000
          428.625000000000000000
          15.875000000000000000
          174.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Fornecedor'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 314
        Top = 6
        Width = 28
        Height = 17
        Size.Values = (
          44.979166666666670000
          830.791666666666700000
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
      object QRLabel6: TQRLabel
        Left = 418
        Top = 6
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          1105.958333333333000000
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
      object QRLabel7: TQRLabel
        Left = 535
        Top = 6
        Width = 42
        Height = 17
        Size.Values = (
          44.979166666666670000
          1415.520833333333000000
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
      object QRLabel8: TQRLabel
        Left = 651
        Top = 6
        Width = 63
        Height = 17
        Size.Values = (
          44.979166666666670000
          1722.437500000000000000
          15.875000000000000000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Valor Total'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    inherited DetailBand1: TQRBand
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      object QRDBText1: TQRDBText
        Left = 18
        Top = 6
        Width = 56
        Height = 17
        Size.Values = (
          44.979166666666670000
          47.625000000000000000
          15.875000000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet1
        DataField = 'idCompra'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 80
        Top = 6
        Width = 76
        Height = 17
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          15.875000000000000000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet1
        DataField = 'idFornecedor'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 162
        Top = 6
        Width = 146
        Height = 17
        Size.Values = (
          44.979166666666670000
          428.625000000000000000
          15.875000000000000000
          386.291666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
      object QRDBText4: TQRDBText
        Left = 314
        Top = 6
        Width = 28
        Height = 17
        Size.Values = (
          44.979166666666670000
          830.791666666666700000
          15.875000000000000000
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
        Left = 418
        Top = 6
        Width = 111
        Height = 17
        Size.Values = (
          44.979166666666670000
          1105.958333333333000000
          15.875000000000000000
          293.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
        Left = 535
        Top = 6
        Width = 71
        Height = 17
        Size.Values = (
          44.979166666666670000
          1415.520833333333000000
          15.875000000000000000
          187.854166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet1
        DataField = 'SiglaEstado'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 651
        Top = 6
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          1722.437500000000000000
          15.875000000000000000
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
    end
    inherited PageFooterBand1: TQRBand
      Top = 353
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      BandType = rbGroupFooter
      ExplicitTop = 353
      inherited QRSysData2: TQRSysData
        Left = 670
        Size.Values = (
          44.979166666666670000
          1772.708333333333000000
          42.333333333333330000
          21.166666666666670000)
        FontSize = 10
        ExplicitLeft = 670
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 313
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
      FooterBand = PageFooterBand1
      HeaderBand = QRBand1
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText8: TQRDBText
        Left = 16
        Top = 6
        Width = 56
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          15.875000000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = ClientDataSet2
        DataField = 'IdProduto'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 78
        Top = 6
        Width = 228
        Height = 17
        Size.Values = (
          44.979166666666670000
          206.375000000000000000
          15.875000000000000000
          603.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
      object QRDBText10: TQRDBText
        Left = 306
        Top = 6
        Width = 70
        Height = 17
        Size.Values = (
          44.979166666666670000
          809.625000000000000000
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
      object QRDBText11: TQRDBText
        Left = 418
        Top = 6
        Width = 67
        Height = 17
        Size.Values = (
          44.979166666666670000
          1105.958333333333000000
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
      object QRDBText12: TQRDBText
        Left = 535
        Top = 6
        Width = 31
        Height = 17
        Size.Values = (
          44.979166666666670000
          1415.520833333333000000
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
        Left = 651
        Top = 6
        Width = 29
        Height = 17
        Size.Values = (
          44.979166666666670000
          1722.437500000000000000
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
      Top = 263
      Width = 718
      Height = 50
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        132.291666666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRLabel9: TQRLabel
        Left = 16
        Top = 6
        Width = 62
        Height = 17
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          15.875000000000000000
          164.041666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ID Produto'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel10: TQRLabel
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
      object QRLabel11: TQRLabel
        Left = 306
        Top = 6
        Width = 70
        Height = 17
        Size.Values = (
          44.979166666666670000
          809.625000000000000000
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
      object QRLabel12: TQRLabel
        Left = 418
        Top = 6
        Width = 36
        Height = 17
        Size.Values = (
          44.979166666666670000
          1105.958333333333000000
          15.875000000000000000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Quant'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 530
        Top = 6
        Width = 31
        Height = 17
        Size.Values = (
          44.979166666666670000
          1402.291666666667000000
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
      object QRLabel14: TQRLabel
        Left = 649
        Top = 6
        Width = 29
        Height = 17
        Size.Values = (
          44.979166666666670000
          1717.145833333333000000
          15.875000000000000000
          76.729166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Total'
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
      
        'SELECT idCompra, Data, ValorTotal, idFornecedor, Nome, Cidade, S' +
        'iglaEstado'
      'FROM Compra'
      
        'INNER JOIN Fornecedores ON compra.Fornecedores_idFornecedor = Fo' +
        'rnecedores.idFornecedor'
      '')
    Left = 56
    Top = 384
    object SQLQuery1idCompra: TIntegerField
      FieldName = 'idCompra'
      Required = True
    end
    object SQLQuery1Data: TDateField
      FieldName = 'Data'
    end
    object SQLQuery1ValorTotal: TFMTBCDField
      FieldName = 'ValorTotal'
      Precision = 14
      Size = 2
    end
    object SQLQuery1idFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object SQLQuery1Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object SQLQuery1Cidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object SQLQuery1SiglaEstado: TStringField
      FieldName = 'SiglaEstado'
      FixedChar = True
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = SQLQuery1
    Left = 56
    Top = 442
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 128
    Top = 384
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 128
    Top = 440
    object ClientDataSet1idCompra: TIntegerField
      FieldName = 'idCompra'
      Required = True
    end
    object ClientDataSet1Data: TDateField
      FieldName = 'Data'
    end
    object ClientDataSet1ValorTotal: TFMTBCDField
      FieldName = 'ValorTotal'
      DisplayFormat = 'R$####,##'
      Precision = 14
      Size = 2
    end
    object ClientDataSet1idFornecedor: TIntegerField
      FieldName = 'idFornecedor'
      Required = True
    end
    object ClientDataSet1Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object ClientDataSet1Cidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object ClientDataSet1SiglaEstado: TStringField
      FieldName = 'SiglaEstado'
      FixedChar = True
      Size = 2
    end
    object ClientDataSet1SQLQuery2: TDataSetField
      FieldName = 'SQLQuery2'
    end
  end
  object SQLQuery2: TSQLQuery
    Active = True
    DataSource = DataSource1
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idCompra'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT IdProduto, Descricao, Embalagem, Quantidade, Valor, Total'
      'FROM produtoscompra'
      
        'INNER JOIN `produtos` ON produtos.`idProduto` = produtoscompra.`' +
        'Produtos_idProduto`'
      'WHERE produtosCompra.Compra_idCompra= :idCompra')
    SQLConnection = DtmConexao.SQLConnection1
    Left = 216
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
  object ClientDataSet2: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = ClientDataSet1SQLQuery2
    Params = <>
    Left = 216
    Top = 440
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
      DisplayFormat = 'R$####,##'
      Precision = 17
      Size = 2
    end
    object ClientDataSet2Total: TFMTBCDField
      FieldName = 'Total'
      DisplayFormat = 'R$####,##'
      Precision = 17
      Size = 2
    end
  end
end
