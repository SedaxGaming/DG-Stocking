unit FrmRelatorioClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmRelatorio, Data.FMTBcd, QRCtrls,
  qrpctrls, Data.DB, Data.SqlExpr, Vcl.Imaging.jpeg, QuickRpt, Vcl.ExtCtrls;

type
  TFormRelatorioCliente = class(TFormRelatorio)
    ID: TQRPDBText;
    Nome: TQRPDBText;
    CPF: TQRPDBText;
    Email: TQRPDBText;
    Telefone: TQRPDBText;
    Cidade: TQRPDBText;
    Estado: TQRPDBText;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelatorioCliente: TFormRelatorioCliente;

implementation

{$R *.dfm}

end.
