unit FrmFiltroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmFiltroCad,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TFormFiltroClientes = class(TFormFiltroCad)
    edNome: TLabeledEdit;
    edCPFCNPJ: TLabeledEdit;
    edEmail: TLabeledEdit;
    edTelefone: TLabeledEdit;
    edCidade: TLabeledEdit;
    edEstado: TLabeledEdit;
    edCEP: TLabeledEdit;
    edBairro: TLabeledEdit;
    edRua: TLabeledEdit;
    edNumero: TLabeledEdit;
    edIDcliente: TLabeledEdit;
    procedure BFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroClientes: TFormFiltroClientes;

implementation

{$R *.dfm}

procedure TFormFiltroClientes.BFiltrarClick(Sender: TObject);
begin
  sqlFiltro:= 'where 1=1';

  if trim(ednome.Text) <>'' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(nome) like UPPER(' +
      QuotedStr(ednome.Text + '%' ) + ')';
  end;
  if trim(edCPFCNPJ.Text) <> '' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(cpfcnpj) like UPPER(' +
      QuotedStr(edCPFCNPJ.Text + '%' ) + ')';
  end;
  if trim(edEmail.Text) <> '' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(email) like UPPER(' +
      QuotedStr(edEmail.Text + '%') + ')';
  end;
  if trim(edTelefone.Text) <> '' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(telefone) like UPPER(' +
      QuotedStr(edTelefone.Text + '%') + ')';
  end;
  if trim(edCidade.Text) <> '' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(cidade) like UPPER(' +
      QuotedStr(edCidade.Text + '%') + ')';
  end;
  if trim(edEstado.Text) <> '' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(estado) like UPPER(' +
      QuotedStr(edEstado.Text + '%') + ')';
  end;
  if trim(edCEP.Text) <> '' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(cep) like UPPER(' +
      QuotedStr(edCEP.Text + '%') + ')';
  end;
  if trim(edBairro.Text) <> '' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(bairro) like UPPER(' +
      QuotedStr(edBairro.Text + '%' ) + ')';
  end;
  if trim(edRua.Text) <> '' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(rua) like UPPER(' +
      QuotedStr(edRua.Text + '%') + ')';
  end;
  if trim(edNumero.Text) <> '' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(numero) like UPPER(' +
      QuotedStr(edNumero.Text) + ')';
  end;
  if trim(edIDcliente.Text) <> '' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(idclientes) like UPPER(' +
      QuotedStr(edIDcliente.Text) + ')';
  end;
  sqlFiltro := sqlFiltro + ' order by nome';
  inherited;
end;

end.
