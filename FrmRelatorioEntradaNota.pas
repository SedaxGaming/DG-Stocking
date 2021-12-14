unit FrmRelatorioEntradaNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmRelatorio, Data.FMTBcd, Data.DB,
  Data.SqlExpr, QRCtrls, Vcl.Imaging.jpeg, QuickRpt, Vcl.ExtCtrls,
  Datasnap.DBClient, Datasnap.Provider;

type
  TFormRelatorioEntradaNota = class(TFormRelatorio)
    QRBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    DataSource1: TDataSource;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    SQLQuery2: TSQLQuery;
    ClientDataSet2: TClientDataSet;
    SQLQuery2IdProduto: TIntegerField;
    SQLQuery2Descricao: TStringField;
    SQLQuery2Embalagem: TStringField;
    SQLQuery2Quantidade: TStringField;
    SQLQuery2Valor: TFMTBCDField;
    SQLQuery2Total: TFMTBCDField;
    SQLQuery1idCompra: TIntegerField;
    SQLQuery1Data: TDateField;
    SQLQuery1ValorTotal: TFMTBCDField;
    SQLQuery1idFornecedor: TIntegerField;
    SQLQuery1Nome: TStringField;
    SQLQuery1Cidade: TStringField;
    SQLQuery1SiglaEstado: TStringField;
    ClientDataSet1idCompra: TIntegerField;
    ClientDataSet1Data: TDateField;
    ClientDataSet1ValorTotal: TFMTBCDField;
    ClientDataSet1idFornecedor: TIntegerField;
    ClientDataSet1Nome: TStringField;
    ClientDataSet1Cidade: TStringField;
    ClientDataSet1SiglaEstado: TStringField;
    ClientDataSet1SQLQuery2: TDataSetField;
    ClientDataSet2IdProduto: TIntegerField;
    ClientDataSet2Descricao: TStringField;
    ClientDataSet2Embalagem: TStringField;
    ClientDataSet2Quantidade: TStringField;
    ClientDataSet2Valor: TFMTBCDField;
    ClientDataSet2Total: TFMTBCDField;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioEntradaNota: TFormRelatorioEntradaNota;

implementation

{$R *.dfm}

end.
