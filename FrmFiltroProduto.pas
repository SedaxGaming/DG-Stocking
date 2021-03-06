unit FrmFiltroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmFiltroCad, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TFormFiltroProduto = class(TFormFiltroCad)
    edIDproduto: TLabeledEdit;
    edDescricao: TLabeledEdit;
    edValidade: TLabeledEdit;
    edEstoqueDISP: TLabeledEdit;
    edEmbalagem: TLabeledEdit;
    edPreco: TLabeledEdit;
    procedure BFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroProduto: TFormFiltroProduto;

implementation

{$R *.dfm}

procedure TFormFiltroProduto.BFiltrarClick(Sender: TObject);
begin
sqlfiltro := 'where 1=1';

  if trim(edIdProduto.Text) <>'' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(Idproduto) like UPPER(' +
      QuotedStr(edIDproduto.Text + '%' ) + ')';
  end;
  if trim(edDescricao.Text) <> '' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(descricao) like UPPER(' +
      QuotedStr(eddescricao.Text + '%' ) + ')';
  end;
  if trim(edValidade.Text) <> '' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(validade) like UPPER(' +
      QuotedStr(edValidade.Text + '%') + ')';
  end;
  if trim(edEstoqueDisp.Text) <> '' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(estoqueDisponivel) like UPPER(' +
      QuotedStr(edestoqueDisp.Text + '%') + ')';
  end;
  if trim(edPreco.Text) <> '' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(preco) like UPPER(' +
      QuotedStr(edPreco.Text + '%') + ')';
  end;
  if trim(edEmbalagem.Text) <> '' then
  begin
    sqlFiltro := sqlFiltro + ' and UPPER(Embalagem) like UPPER(' +
      QuotedStr(edEmbalagem.Text + '%') + ')';
  end;
  sqlFiltro := sqlFiltro + ' order by descricao';
  inherited;
end;

end.
