unit FrmFiltroImpressaoFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmFiltroImpressao, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TFormFiltroImpressaoFornecedor = class(TFormFiltroImpressao)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edID: TEdit;
    edNome: TEdit;
    EdCidade: TEdit;
    EdEstado: TEdit;
    EdEmail: TEdit;
    EdTelefone: TEdit;
    Label1: TLabel;
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroImpressaoFornecedor: TFormFiltroImpressaoFornecedor;

implementation

{$R *.dfm}

uses FrmRelatorioFornecedor;

procedure TFormFiltroImpressaoFornecedor.bImprimirClick(Sender: TObject);
begin
  inherited;

  FormRelatorioFornecedor := TFormRelatorioFornecedor.Create(Self);
  try
    sqlFiltro := 'where 1=1';
    if trim(edID.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and UPPER(IDFornecedor) like UPPER(' +
        QuotedStr(edID.Text + '%') + ')';
    end;
    if trim(edNome.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and UPPER(Nome) like UPPER(' +
        QuotedStr(edNome.Text + '%') + ')';
    end;
    if trim(EdCidade.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and UPPER(Cidade) like UPPER(' +
        QuotedStr(EdCidade.Text + '%') + ')';
    end;
    if trim(EdEstado.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and UPPER(SiglaEstado) like UPPER(' +
        QuotedStr(EdEstado.Text + '%') + ')';
    end;
    if trim(EdEmail.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and UPPER(Email) like UPPER(' +
        QuotedStr(EdEmail.Text + '%') + ')';
    end;
    if trim(EdTelefone.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and UPPER(Telefone) like UPPER(' +
        QuotedStr(EdTelefone.Text + '%') + ')';
    end;
    FormRelatorioFornecedor.SQLQuery1.Close;
    FormRelatorioFornecedor.SQLQuery1.SQL.Add(sqlFiltro);
    FormRelatorioFornecedor.SQLQuery1.Open;
    FormRelatorioFornecedor.SQLQuery1.First;
    FormRelatorioFornecedor.QuickRep.Preview;
    finally
    FreeAndNil(FormRelatorioFornecedor);
    end;
  end;

end.
