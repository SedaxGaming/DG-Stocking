unit FrmRelatorioFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmRelatorio, Data.FMTBcd, Data.DB,
  Data.SqlExpr, QRCtrls, Vcl.Imaging.jpeg, QuickRpt, Vcl.ExtCtrls;

type
  TFormRelatorioFornecedor = class(TFormRelatorio)
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioFornecedor: TFormRelatorioFornecedor;

implementation

{$R *.dfm}

end.
