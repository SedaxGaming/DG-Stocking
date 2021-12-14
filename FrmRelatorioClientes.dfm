inherited FormRelatorioCliente: TFormRelatorioCliente
  Caption = 'FormRelatorioCliente'
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
        Width = 68
        Size.Values = (
          44.979166666666670000
          1510.770833333333000000
          222.250000000000000000
          179.916666666666700000)
        FontSize = 10
        ExplicitWidth = 68
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
        Caption = 'Relat'#243'rio de Clientes'
        FontSize = 10
      end
    end
    inherited ColumnHeaderBand1: TQRBand
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      object QRLabel1: TQRLabel
        Left = 8
        Top = 17
        Width = 13
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          44.979166666666670000
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
        Left = 48
        Top = 17
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          44.979166666666670000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nome'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 168
        Top = 17
        Width = 64
        Height = 17
        Size.Values = (
          44.979166666666670000
          444.500000000000000000
          44.979166666666670000
          169.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CPF/CNPJ'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 288
        Top = 17
        Width = 34
        Height = 17
        Size.Values = (
          44.979166666666670000
          762.000000000000000000
          44.979166666666670000
          89.958333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Email'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 416
        Top = 17
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          1100.666666666667000000
          44.979166666666670000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Telefone'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 520
        Top = 17
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          1375.833333333333000000
          44.979166666666670000
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
      object QRLabel8: TQRLabel
        Left = 618
        Top = 17
        Width = 42
        Height = 17
        Size.Values = (
          44.979166666666670000
          1635.125000000000000000
          44.979166666666670000
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
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      object ID: TQRPDBText
        Left = 8
        Top = 17
        Width = 58
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          44.979166666666670000
          153.458333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'idClientes'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        SuppressRepeatedValues = False
        ReprintOnNewPage = False
        ReprintOnNewGroup = False
        BlankIfZero = False
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 10
      end
      object Nome: TQRPDBText
        Left = 31
        Top = 17
        Width = 35
        Height = 17
        Size.Values = (
          44.979166666666670000
          82.020833333333330000
          44.979166666666670000
          92.604166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'Nome'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        SuppressRepeatedValues = False
        ReprintOnNewPage = False
        ReprintOnNewGroup = False
        BlankIfZero = False
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 10
      end
      object CPF: TQRPDBText
        Left = 168
        Top = 17
        Width = 60
        Height = 17
        Size.Values = (
          44.979166666666670000
          444.500000000000000000
          44.979166666666670000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'CPFCNPJ'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        SuppressRepeatedValues = False
        ReprintOnNewPage = False
        ReprintOnNewGroup = False
        BlankIfZero = False
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 10
      end
      object Email: TQRPDBText
        Left = 264
        Top = 17
        Width = 25
        Height = 17
        Size.Values = (
          44.979166666666670000
          698.500000000000000000
          44.979166666666670000
          66.145833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        SuppressRepeatedValues = False
        ReprintOnNewPage = False
        ReprintOnNewGroup = False
        BlankIfZero = False
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 8
      end
      object Telefone: TQRPDBText
        Left = 416
        Top = 17
        Width = 49
        Height = 17
        Size.Values = (
          44.979166666666670000
          1100.666666666667000000
          44.979166666666670000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'Telefone'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        SuppressRepeatedValues = False
        ReprintOnNewPage = False
        ReprintOnNewGroup = False
        BlankIfZero = False
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 10
      end
      object Cidade: TQRPDBText
        Left = 520
        Top = 17
        Width = 41
        Height = 17
        Size.Values = (
          44.979166666666670000
          1375.833333333333000000
          44.979166666666670000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'Cidade'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        SuppressRepeatedValues = False
        ReprintOnNewPage = False
        ReprintOnNewGroup = False
        BlankIfZero = False
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 10
      end
      object Estado: TQRPDBText
        Left = 618
        Top = 17
        Width = 42
        Height = 17
        Size.Values = (
          44.979166666666670000
          1635.125000000000000000
          44.979166666666670000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'Estado'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        SuppressRepeatedValues = False
        ReprintOnNewPage = False
        ReprintOnNewGroup = False
        BlankIfZero = False
        FixBottomPosition = False
        StretchHeightWithBand = False
        FontSize = 10
      end
    end
    inherited PageFooterBand1: TQRBand
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      inherited QRSysData2: TQRSysData
        Width = 46
        Size.Values = (
          44.979166666666670000
          1793.875000000000000000
          42.333333333333330000
          121.708333333333300000)
        FontSize = 10
        ExplicitWidth = 46
      end
      object QRLabel9: TQRLabel
        Left = 636
        Top = 16
        Width = 24
        Height = 17
        Size.Values = (
          44.979166666666670000
          1682.750000000000000000
          42.333333333333330000
          63.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Pag'
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
      'select *'
      'from clientes')
  end
end
