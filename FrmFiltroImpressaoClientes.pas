unit FrmFiltroImpressaoClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmFiltroImpressao, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TFormFiltroImpressaoClientes = class(TFormFiltroImpressao)
    Label1: TLabel;
    edID: TEdit;
    edNome: TEdit;
    EdCidade: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdEstado: TEdit;
    EdEmail: TEdit;
    EdTelefone: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
    FsqlFiltro: string;
  public
    { Public declarations }
    property sqlFiltro: string read FsqlFiltro write FsqlFiltro;
  end;

var
  FormFiltroImpressaoClientes: TFormFiltroImpressaoClientes;

implementation

{$R *.dfm}

uses FrmRelatorioClientes;

procedure TFormFiltroImpressaoClientes.bImprimirClick(Sender: TObject);
begin
  inherited;

  FormRelatorioCliente := TFormRelatorioCliente.Create(self);
  try
    sqlFiltro := 'where 1=1';
    if trim(edID.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' and UPPER(IDClientes) like UPPER(' +
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
      sqlFiltro := sqlFiltro + ' and UPPER(Estado) like UPPER(' +
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
    FormRelatorioCliente.SQLQuery1.Close;
    FormRelatorioCliente.SQLQuery1.SQL.Add(sqlFiltro);
    FormRelatorioCliente.SQLQuery1.Open;
    FormRelatorioCliente.SQLQuery1.First;
    FormRelatorioCliente.QuickRep.Preview;
  finally
    FreeAndNil(FormRelatorioCliente);
  end;

end;

end.
