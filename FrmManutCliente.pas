unit FrmManutCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmManutCadastro, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFormManutCadCliente = class(TFormManutCadastro)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    lbNome: TLabel;
    lbBairro: TLabel;
    lbEmail: TLabel;
    lbCPFCNPJ: TLabel;
    lbTelefone: TLabel;
    lbCidade: TLabel;
    lbEstado: TLabel;
    lbNumero: TLabel;
    lbRua: TLabel;
    lbIDCliente: TLabel;
    lbCEP: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormManutCadCliente: TFormManutCadCliente;

implementation

{$R *.dfm}

uses FrmCadastroCliente;

end.
