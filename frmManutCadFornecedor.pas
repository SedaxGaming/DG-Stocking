unit frmManutCadFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmManutCadastro, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.jpeg;

type
  TFormManutFornecedor = class(TFormManutCadastro)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    lbIDFornecedor: TLabel;
    lbNome: TLabel;
    lbCNPJ: TLabel;
    lbEmail: TLabel;
    lbSiglaEstado: TLabel;
    lbCidade: TLabel;
    lbTelefone: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormManutFornecedor: TFormManutFornecedor;

implementation

{$R *.dfm}

uses FrmCadastroFornecedor;

procedure TFormManutFornecedor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  //CanClose := (DBEdit5.Text <> '');
end;

end.
