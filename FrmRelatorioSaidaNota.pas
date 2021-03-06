unit FrmRelatorioSaidaNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmRelatorio, Data.FMTBcd, Data.DB,
  Data.SqlExpr, QRCtrls, Vcl.Imaging.jpeg, QuickRpt, Vcl.ExtCtrls,
  Datasnap.DBClient, Datasnap.Provider;

type
  TFormRelatorioSaidaNota = class(TFormRelatorio)
    SQLQuery2: TSQLQuery;
    DataSource1: TDataSource;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText3: TQRDBText;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText13: TQRDBText;
    SQLQuery1idVendas: TIntegerField;
    SQLQuery1idClientes: TIntegerField;
    SQLQuery1Nome: TStringField;
    SQLQuery1Cidade: TStringField;
    SQLQuery1Estado: TStringField;
    SQLQuery1Data: TDateField;
    SQLQuery1ValorTotal: TFMTBCDField;
    ClientDataSet1idVendas: TIntegerField;
    ClientDataSet1idClientes: TIntegerField;
    ClientDataSet1Nome: TStringField;
    ClientDataSet1Cidade: TStringField;
    ClientDataSet1Estado: TStringField;
    ClientDataSet1Data: TDateField;
    ClientDataSet1ValorTotal: TFMTBCDField;
    SQLQuery2IdProduto: TIntegerField;
    SQLQuery2Descricao: TStringField;
    SQLQuery2Embalagem: TStringField;
    SQLQuery2Quantidade: TStringField;
    SQLQuery2Valor: TFMTBCDField;
    SQLQuery2Total: TFMTBCDField;
    ClientDataSet1SQLQuery2: TDataSetField;
    ClientDataSet2IdProduto: TIntegerField;
    ClientDataSet2Descricao: TStringField;
    ClientDataSet2Embalagem: TStringField;
    ClientDataSet2Quantidade: TStringField;
    ClientDataSet2Valor: TFMTBCDField;
    ClientDataSet2Total: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioSaidaNota: TFormRelatorioSaidaNota;

implementation

{$R *.dfm}

end.
