unit DmManutEntradaNotas;

interface

uses
  System.SysUtils, System.Classes, DmMestreDetalhe, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TDtmMstDetailEntradaNota = class(TDtmMestreDetalhe)
    SQLQuery1idCompra: TIntegerField;
    SQLQuery1Fornecedores_idFornecedor: TIntegerField;
    SQLQuery1Data: TDateField;
    SQLQuery1ValorTotal: TFMTBCDField;
    SQLQuery2Compra_idCompra: TIntegerField;
    SQLQuery2Produtos_idProduto: TIntegerField;
    SQLQuery2Quantidade: TStringField;
    SQLQuery2Valor: TFMTBCDField;
    SQLQuery2Total: TFMTBCDField;
    ClientDataSet1idCompra: TIntegerField;
    ClientDataSet1Fornecedores_idFornecedor: TIntegerField;
    ClientDataSet1Data: TDateField;
    ClientDataSet1ValorTotal: TFMTBCDField;
    ClientDataSet1SQLQuery2: TDataSetField;
    ClientDataSet2Compra_idCompra: TIntegerField;
    ClientDataSet2Produtos_idProduto: TIntegerField;
    ClientDataSet2Quantidade: TStringField;
    ClientDataSet2Valor: TFMTBCDField;
    ClientDataSet2Total: TFMTBCDField;
    SQLQFornecedor: TSQLQuery;
    CDSFornecedor: TClientDataSet;
    DSPFornecedor: TDataSetProvider;
    CDSFornecedoridfornecedor: TIntegerField;
    SQLQFornecedoridfornecedor: TIntegerField;
    SQLQFornecedornome: TStringField;
    CDSFornecedornome: TStringField;
    ClientDataSet1Fornecedor: TStringField;
    SQLQuery1Fornecedor: TStringField;
    SQLQProdutos: TSQLQuery;
    DSPprodutos: TDataSetProvider;
    SQLQProdutosidProduto: TIntegerField;
    SQLQProdutosDescricao: TStringField;
    CDSProdutos: TClientDataSet;
    CDSProdutosidProduto: TIntegerField;
    CDSProdutosDescricao: TStringField;
    ClientDataSet2Produto: TStringField;
    SQLEntryProd: TSQLQuery;
    procedure ClientDataSet1NewRecord(DataSet: TDataSet);
    procedure ClientDataSet2BeforeEdit(DataSet: TDataSet);
    procedure ClientDataSet2BeforeDelete(DataSet: TDataSet);
    procedure ClientDataSet2ValorValidate(Sender: TField);
    procedure ClientDataSet2AfterPost(DataSet: TDataSet);
    procedure ClientDataSet2NewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);

  private
    { Private declarations }
    totalitem: currency;
    QuantItem: Integer;
    procedure AtualizarEstoque(idProd: integer; qtdeAntiga: integer;
      qtdeNova: integer);
  public
    { Public declarations }
  end;

var
  DtmMstDetailEntradaNota: TDtmMstDetailEntradaNota;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DmConexao;
{$R *.dfm}

procedure TDtmMstDetailEntradaNota.ClientDataSet2ValorValidate(Sender: TField);
var
  oldEvent: TFieldNotifyEvent;
begin
  inherited;
  oldEvent := ClientDataSet2Total.OnValidate;
  try
    ClientDataSet2Total.OnValidate := nil;
    ClientDataSet2Total.Value := ClientDataSet2Valor.AsInteger *
      ClientDataSet2Quantidade.AsFloat;
  finally
    ClientDataSet2Total.OnValidate := oldEvent;
  end;
end;

procedure TDtmMstDetailEntradaNota.DataModuleCreate(Sender: TObject);
begin
  inherited;
  CDSFornecedor.Close;
  CDSFornecedor.Open;
end;

procedure TDtmMstDetailEntradaNota.ClientDataSet2BeforeDelete
  (DataSet: TDataSet);
begin
  inherited;
  if not(ClientDataSet1.State in dsEditModes) then
    ClientDataSet1.Edit;
  ClientDataSet1ValorTotal.AsCurrency := ClientDataSet1ValorTotal.AsCurrency -
    ClientDataSet2Total.AsCurrency;
end;

procedure TDtmMstDetailEntradaNota.AtualizarEstoque(idProd, qtdeAntiga,
  qtdeNova: integer);
begin
  SQLEntryProd.SQL.Clear;
  SQLEntryProd.SQL.Add('update produtos');
  SQLEntryProd.SQL.Add('set EstoqueDisponivel = EstoqueDisponivel + '  +
    IntToSTr(ClientDataSet2Quantidade.AsInteger - QuantItem));
  SQLEntryProd.SQL.Add('where produtos.`idProduto` = ' +
    ClientDataSet2Produtos_idProduto.AsString);
  SQLEntryProd.ExecSQL();
end;

procedure TDtmMstDetailEntradaNota.ClientDataSet1NewRecord(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idCompra.Value := getNovaChave('NOTASENTRADA');
end;

procedure TDtmMstDetailEntradaNota.ClientDataSet2AfterPost(DataSet: TDataSet);
begin
  inherited;
  if not(ClientDataSet1.State in dsEditModes) then
    ClientDataSet1.Edit;
  ClientDataSet1ValorTotal.AsCurrency := ClientDataSet1ValorTotal.AsCurrency -
    totalitem + ClientDataSet2Total.AsCurrency;
  AtualizarEstoque(ClientDataSet2Produtos_idProduto.AsInteger, QuantItem,
     ClientDataSet2Quantidade.AsInteger);
end;

procedure TDtmMstDetailEntradaNota.ClientDataSet2BeforeEdit(DataSet: TDataSet);
begin
  inherited;
  totalitem := ClientDataSet2Total.AsCurrency;
  QuantItem := ClientDataSet2Quantidade.AsInteger;
end;

procedure TDtmMstDetailEntradaNota.ClientDataSet2NewRecord(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet2Compra_idCompra.Value := ClientDataSet1idCompra.AsInteger;
  totalitem := 0;
end;

end.
