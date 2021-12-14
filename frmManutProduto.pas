unit frmManutProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmManutCadastro, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.jpeg;

type
  TFormManutCadProdutos = class(TFormManutCadastro)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    lbEmbalagem: TLabel;
    lbEstoqueDISP: TLabel;
    lbIdProduto: TLabel;
    lbDescricao: TLabel;
    lbValidade: TLabel;
    lbPreco: TLabel;
    DBEdit8: TDBEdit;
    lbIDFornecedor: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormManutCadProdutos: TFormManutCadProdutos;

implementation

{$R *.dfm}

uses FrmCadastroProduto;

end.
