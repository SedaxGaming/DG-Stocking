inherited FormMestreDetalhe: TFormMestreDetalhe
  Caption = 'FormMestreDetalhe'
  Color = clBlue
  ExplicitWidth = 767
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel [0]
    TabOrder = 0
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel2: TPanel [1]
    TabOrder = 1
  end
  object Panel8: TPanel [2]
    Left = 0
    Top = 235
    Width = 751
    Height = 155
    Align = alBottom
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 749
      Height = 153
      Align = alClient
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Visible = True
        end>
    end
  end
  inherited DBGrid1: TDBGrid [3]
    Height = 162
    Align = alTop
    TabOrder = 3
  end
  inherited DataSource1: TDataSource
    OnStateChange = DataSource1StateChange
    OnDataChange = DataSource1DataChange
    Left = 592
    Top = 136
  end
  object DataSource2: TDataSource
    OnStateChange = DataSource1StateChange
    OnDataChange = DataSource1DataChange
    Left = 600
    Top = 315
  end
end
