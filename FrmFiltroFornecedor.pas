unit FrmFiltroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmFiltroCad, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TFormFiltroFornecedor = class(TFormFiltroCad)
    edIDfornecedor: TLabeledEdit;
    edNome: TLabeledEdit;
    edSiglaEstado: TLabeledEdit;
    edCNPJ: TLabeledEdit;
    edEmail: TLabeledEdit;
    edCidade: TLabeledEdit;
    edTelefone: TLabeledEdit;
    procedure BFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroFornecedor: TFormFiltroFornecedor;

implementation

{$R *.dfm}

procedure TFormFiltroFornecedor.BFiltrarClick(Sender: TObject);

begin
  sqlfiltro := 'where 1=1';

  if trim(edIDfornecedor.Text) <> '' then
  begin
    sqlfiltro := sqlfiltro + ' and UPPER(idFornecedor) like UPPER(' +
      QuotedStr(edIDfornecedor.Text) + ')';
  end;
  if trim(edNome.Text) <> '' then
  begin
    sqlfiltro := sqlfiltro + ' and UPPER(Nome) like UPPER(' +
      QuotedStr(edNome.Text + '%') + ')';
  end;
  if trim(edCNPJ.Text) <> '' then
  begin
    sqlfiltro := sqlfiltro + ' and UPPER(CNPJ) like UPPER(' +
      QuotedStr(edCNPJ.Text + '%') + ')';
  end;
  if trim(edTelefone.Text) <> '' then
  begin
    sqlfiltro := sqlfiltro + ' and UPPER(telefone) like UPPER(' +
      QuotedStr(edTelefone.Text + '%') + ')';
  end;
  if trim(edCidade.Text) <> '' then
  begin
    sqlfiltro := sqlfiltro + ' and UPPER(cidade) like UPPER(' +
      QuotedStr(edCidade.Text + '%') + ')';
  end;
  if trim(edSiglaEstado.Text) <> '' then
  begin
    sqlfiltro := sqlfiltro + ' and UPPER(Siglaestado) like UPPER(' +
      QuotedStr(edSiglaEstado.Text + '%') + ')';
  end;
  if trim(edEmail.Text) <> '' then
  begin
    sqlfiltro := sqlfiltro + ' and UPPER(Email) like UPPER(' +
      QuotedStr(edEmail.Text + '%') + ')';
  end;
  inherited;
end;

end.
