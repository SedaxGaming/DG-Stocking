unit FrmFiltroImpressaoEntradaNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmFiltroImpressao, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TFormFiltroImpressaoEntradaNota = class(TFormFiltroImpressao)
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    edIDCompra: TEdit;
    edIDFornecedor: TEdit;
    EdData: TEdit;
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroImpressaoEntradaNota: TFormFiltroImpressaoEntradaNota;

implementation

{$R *.dfm}

uses FrmRelatorioEntradaNota;

{ TFormFiltroImpressao1 }

procedure TFormFiltroImpressaoEntradaNota.bImprimirClick(Sender: TObject);
begin
  inherited;

FormRelatorioEntradaNota := TFormRelatorioEntradaNota.Create(self);
  try
    sqlFiltro := 'where ';

    if trim(edIdFornecedor.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' UPPER(Fornecedores_idFornecedor) like UPPER(' +
        QuotedStr(edIDFornecedor.Text + '%') + ') and ';
    end;
    if trim(edData.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' UPPER(Data) like UPPER(' +
        QuotedStr(edData.Text + '%') + ') and ';
    end;
    if trim(EdidCompra.Text) <> '' then
    begin
      sqlFiltro := sqlFiltro + ' UPPER(idCompra) like UPPER(' +
        QuotedStr(EdidCompra.Text + '%') + ') and ';
    end;
    SqlFiltro := SqlFiltro + '1=1';
    FormRelatorioEntradaNota.ClientDataSet1.Close;
    FormRelatorioEntradaNota.SQLQuery1.SQL.Add(sqlFiltro);
    FormRelatorioEntradaNota.ClientDataSet1.Open;
    FormRelatorioEntradaNota.ClientDataSet1.First;
    FormRelatorioEntradaNota.QuickRep.Preview;
  finally
    FreeAndNil(FormRelatorioEntradaNota);
  end;

end;

end.
