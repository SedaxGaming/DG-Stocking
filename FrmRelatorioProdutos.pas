unit FrmRelatorioProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmRelatorio, Data.FMTBcd, Data.DB,
  Data.SqlExpr, QRCtrls, Vcl.Imaging.jpeg, QuickRpt, Vcl.ExtCtrls;

type
  TFormRelatorioProdutos = class(TFormRelatorio)
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioProdutos: TFormRelatorioProdutos;

implementation

{$R *.dfm}

end.
