unit FrmCadastroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg;

type
  TFormCadastroFornecedor = class(TFormCadastro)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroFornecedor: TFormCadastroFornecedor;

implementation

{$R *.dfm}

uses DmCadFornecedor;

end.
