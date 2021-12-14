unit FrmFiltroImpressaoProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmFiltroImpressao, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TFormFiltroImpressaoProdutos = class(TFormFiltroImpressao)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edID: TEdit;
    edDescricao: TEdit;
    EdEmbalagem: TEdit;
    EdFornecedor: TEdit;
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroImpressaoProdutos: TFormFiltroImpressaoProdutos;

implementation

{$R *.dfm}

uses FrmRelatorioProdutos;

procedure TFormFiltroImpressaoProdutos.bImprimirClick(Sender: TObject);
begin
  inherited;

  FormRelatorioProdutos := TFormRelatorioProdutos.Create(self);
  try
    sqlFiltro := 'where 1=1';
    if trim(edID.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and UPPER(IDProduto) like UPPER(' +
        QuotedStr(edID.Text + '%') + ')';
    end;
    if trim(edDescricao.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and UPPER(Descricao) like UPPER(' +
        QuotedStr(edDescricao.Text + '%') + ')';
    end;
    if trim(EdEmbalagem.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and UPPER(Embalagem) like UPPER(' +
        QuotedStr(EdEmbalagem.Text + '%') + ')';
    end;
    if trim(EdFornecedor.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and UPPER(fornecedores_IdFornecedor) like UPPER(' +
        QuotedStr(EdFornecedor.Text + '%') + ')';
    end;
    FormRelatorioProdutos.SQLQuery1.Close;
    FormRelatorioProdutos.SQLQuery1.SQL.Add(sqlFiltro);
    FormRelatorioProdutos.SQLQuery1.Open;
    FormRelatorioProdutos.SQLQuery1.First;
    FormRelatorioProdutos.QuickRep.Preview;
  finally
    FreeAndNil(FormRelatorioProdutos);
  end;

end;

end.
