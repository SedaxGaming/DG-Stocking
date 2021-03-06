unit FrmFiltroImpressaoSaidaNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmFiltroImpressao, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TFormFiltroImpressaoSaidaNota = class(TFormFiltroImpressao)
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    edIDVenda: TEdit;
    edIDCliente: TEdit;
    EdData: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    EdCidade: TEdit;
    EdEstado: TEdit;
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroImpressaoSaidaNota: TFormFiltroImpressaoSaidaNota;

implementation

{$R *.dfm}

uses FrmRelatorioSaidaNota;

procedure TFormFiltroImpressaoSaidaNota.bImprimirClick(Sender: TObject);
begin
  inherited;

FormRelatorioSaidaNota := TFormRelatorioSaidaNota.Create(self);
  try
    sqlFiltro := 'where ';

    if trim(edIdCliente.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' UPPER(Clientes_idClientes) like UPPER(' +
        QuotedStr(edIDCliente.Text + '%') + ') and ';
    end;
    if trim(edData.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' UPPER(Data) like UPPER(' +
        QuotedStr(edData.Text + '%') + ') and ';
    end;
    if trim(EdidVenda.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' UPPER(IdVendas) like UPPER(' +
        QuotedStr(EdidVenda.Text + '%') + ') and ';
    end;
    if trim(EdCidade.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' UPPER(Cidade) like UPPER(' +
        QuotedStr(EdCidade.Text + '%') + ') and ';
    end;
    if trim(EdEstado.Text) <> '' then
    begin
      sqlFiltro := SqlFiltro + ' UPPER(Estado) like UPPER (' +
        QuotedSTR(EdCidade.Text + '%') + ') and ';
    end;

    SqlFiltro := SqlFiltro + '1=1';
    FormRelatorioSaidaNota.ClientDataSet1.Close;
    FormRelatorioSaidaNota.SQLQuery1.SQL.Add(sqlFiltro);
    FormRelatorioSaidaNota.ClientDataSet1.Open;
    FormRelatorioSaidaNota.ClientDataSet1.First;
    FormRelatorioSaidaNota.QuickRep.Preview;
  finally
    FreeAndNil(FormRelatorioSaidaNota);
  end;

end;

end.
