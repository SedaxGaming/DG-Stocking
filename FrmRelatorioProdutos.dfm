inherited FormRelatorioProdutos: TFormRelatorioProdutos
  Caption = 'FormRelatorioProdutos'
  ExplicitWidth = 743
  ExplicitHeight = 509
  PixelsPerInch = 96
  TextHeight = 13
  inherited QuickRep: TQuickRep
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
        Caption = 'Relat'#243'rio de Produtos'
        FontSize = 10
      end
    end
    inherited ColumnHeaderBand1: TQRBand
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      object QRLabel1: TQRLabel
        Left = 32
        Top = 6
        Width = 13
        Height = 17
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          15.875000000000000000
          34.395833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'ID'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 113
        Top = 6
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          298.979166666666700000
          15.875000000000000000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Descri'#231#227'o'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 316
        Top = 6
        Width = 70
        Height = 17
        Size.Values = (
          44.979166666666670000
          836.083333333333300000
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
      object QRLabel5: TQRLabel
        Left = 536
        Top = 6
        Width = 76
        Height = 17
        Size.Values = (
          44.979166666666670000
          1418.166666666667000000
          15.875000000000000000
          201.083333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'IdFornecedor'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 441
        Top = 6
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          1166.812500000000000000
          15.875000000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Estoque'
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
        Left = 32
        Top = 12
        Width = 56
        Height = 17
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          31.750000000000000000
          148.166666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'idProduto'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 113
        Top = 12
        Width = 59
        Height = 17
        Size.Values = (
          44.979166666666670000
          298.979166666666700000
          31.750000000000000000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'Descricao'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 316
        Top = 12
        Width = 70
        Height = 17
        Size.Values = (
          44.979166666666670000
          836.083333333333300000
          31.750000000000000000
          185.208333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'Embalagem'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 536
        Top = 12
        Width = 162
        Height = 17
        Size.Values = (
          44.979166666666670000
          1418.166666666667000000
          31.750000000000000000
          428.625000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'Fornecedores_idFornecedor'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 441
        Top = 12
        Width = 107
        Height = 17
        Size.Values = (
          44.979166666666670000
          1166.812500000000000000
          31.750000000000000000
          283.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'EstoqueDisponivel'
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
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      inherited QRSysData2: TQRSysData
        Size.Values = (
          44.979166666666670000
          1793.875000000000000000
          42.333333333333330000
          21.166666666666670000)
        FontSize = 10
      end
    end
  end
  inherited SQLQuery1: TSQLQuery
    Active = True
    SQL.Strings = (
      'select *'
      'from produtos')
  end
end
