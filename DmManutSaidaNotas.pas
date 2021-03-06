unit DmManutSaidaNotas;

interface

uses
  System.SysUtils, System.Classes, DmMestreDetalhe, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

const

  QUANTIDADE_MAIOR = 'Quantidade maior que disponivel';

type
  TDtmMSTSaidaNotas = class(TDtmMestreDetalhe)
    SQLQuery2Vendas_idVendas: TIntegerField;
    SQLQuery2Produtos_idProduto: TIntegerField;
    SQLQuery2Quantidade: TStringField;
    SQLQuery2Valor: TFMTBCDField;
    SQLQuery2Total: TFMTBCDField;
    ClientDataSet2Vendas_idVendas: TIntegerField;
    ClientDataSet2Produtos_idProduto: TIntegerField;
    ClientDataSet2Quantidade: TStringField;
    ClientDataSet2Valor: TFMTBCDField;
    SQLQProdutos: TSQLQuery;
    SQLQProdutosidProduto: TIntegerField;
    SQLQProdutosDescricao: TStringField;
    DSPprodutos: TDataSetProvider;
    CDSProdutos: TClientDataSet;
    CDSProdutosidProduto: TIntegerField;
    CDSProdutosDescricao: TStringField;
    SQLQClientes: TSQLQuery;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    SQLQClientesidClientes: TIntegerField;
    SQLQClientesNome: TStringField;
    SQLQClientesCPFCNPJ: TStringField;
    SQLQClientesEmail: TStringField;
    SQLQClientesTelefone: TStringField;
    SQLQClientesCidade: TStringField;
    SQLQClientesEstado: TStringField;
    SQLQClientesCEP: TStringField;
    SQLQClientesBairro: TStringField;
    SQLQClientesRua: TStringField;
    SQLQClientesNumero: TStringField;
    CDSClientesidClientes: TIntegerField;
    CDSClientesNome: TStringField;
    CDSClientesCPFCNPJ: TStringField;
    CDSClientesEmail: TStringField;
    CDSClientesTelefone: TStringField;
    CDSClientesCidade: TStringField;
    CDSClientesEstado: TStringField;
    CDSClientesCEP: TStringField;
    CDSClientesBairro: TStringField;
    CDSClientesRua: TStringField;
    CDSClientesNumero: TStringField;
    SQLQuery1idVendas: TIntegerField;
    SQLQuery1Clientes_idClientes: TIntegerField;
    SQLQuery1Data: TDateField;
    SQLQuery1ValorTotal: TFMTBCDField;
    ClientDataSet1idVendas: TIntegerField;
    ClientDataSet1Clientes_idClientes: TIntegerField;
    ClientDataSet1Data: TDateField;
    ClientDataSet1ValorTotal: TFMTBCDField;
    ClientDataSet1SQLQuery2: TDataSetField;
    ClientDataSet2Total: TFMTBCDField;
    ClientDataSet1Cliente: TStringField;
    ClientDataSet2Produto: TStringField;
    SQLExitProd: TSQLQuery;
    SQLCancel: TSQLQuery;
    procedure ClientDataSet1NewRecord(DataSet: TDataSet);
    procedure ClientDataSet2BeforeDelete(DataSet: TDataSet);
    procedure ClientDataSet2BeforeEdit(DataSet: TDataSet);
    procedure ClientDataSet2AfterPost(DataSet: TDataSet);
    procedure ClientDataSet2NewRecord(DataSet: TDataSet);
    procedure ClientDataSet2ValorValidate(Sender: TField);
    procedure ClientDataSet2BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    totalitem: currency;
    QuantItem: integer;
    procedure AtualizarEstoque(idProd: integer; qtdeAntiga: integer;
      qtdeNova: integer);
    function EstoqueProduto(idProduto: integer): integer;
  public
    { Public declarations }
  end;

var
  DtmMSTSaidaNotas: TDtmMSTSaidaNotas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DmConexao;

{$R *.dfm}

procedure TDtmMSTSaidaNotas.AtualizarEstoque(idProd, qtdeAntiga,
  qtdeNova: integer);
begin
 SQLExitProd.SQL.Clear;
 SQLExitProd.SQL.Add('update produtos');
 SQLExitProd.SQL.Add('set EstoqueDisponivel = EstoqueDisponivel - '  +
   IntToSTr(ClientDataSet2Quantidade.AsInteger - QuantItem));
 SQLExitProd.SQL.Add('where produtos.`idProduto` = ' +
   ClientDataSet2Produtos_idProduto.AsString);
 SQLExitProd.ExecSQL();
end;

procedure TDtmMSTSaidaNotas.ClientDataSet1NewRecord(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet1idvendas.Value := getNovaChave('NOTASSAIDA');
end;

procedure TDtmMSTSaidaNotas.ClientDataSet2valorValidate(Sender: TField);
var
  oldEvent: TFieldNotifyEvent;
begin
  inherited;
  oldEvent := ClientDataSet2Total.OnValidate;
  try
    ClientDataSet2Total.OnValidate := nil;
    ClientDataSet2Total.Value := ClientDataSet2Valor.AsFloat *
      ClientDataSet2Quantidade.AsInteger;
  finally
    ClientDataSet2Total.OnValidate := oldEvent;
  end;
end;


function TDtmMSTSaidaNotas.EstoqueProduto(idProduto: integer): integer;
begin
  SQLCancel.Close;
  SQLCancel.SQL.Clear;
  SQLCancel.SQL.Add('select EstoqueDisponivel');
  SQLCancel.SQL.Add('from Produtos');
  SQLCancel.SQL.Add('where `idProduto` = ' + IntToStr(idProduto));
  SQLCancel.Open;
  if SQLCancel.IsEmpty then
    result := 0
  else
    result := SQLCancel.Fields[0].AsInteger;
end;

procedure TDtmMSTSaidaNotas.ClientDataSet2NewRecord(DataSet: TDataSet);
begin
  inherited;
  ClientDataSet2Vendas_idVendas.Value := ClientDataSet1idVendas.AsInteger;
  totalItem := 0;
end;

procedure TDtmMSTSaidaNotas.ClientDataSet2BeforeDelete(DataSet: TDataSet);
begin
   inherited;
  if not(ClientDataSet1.State in dsEditModes) then
    ClientDataSet1.Edit;
  ClientDataSet1ValorTotal.AsCurrency := ClientDataSet1ValorTotal.AsCurrency -
    ClientDataSet2Total.AsCurrency;
end;

procedure TDtmMSTSaidaNotas.ClientDataSet2BeforeEdit(DataSet: TDataSet);
begin
  inherited;
  totalItem := ClientDataSet2Total.AsCurrency;
  QuantItem := ClientDataSet2Quantidade.AsInteger;
end;

procedure TDtmMSTSaidaNotas.ClientDataSet2BeforePost(DataSet: TDataSet);
begin
  inherited;
if EstoqueProduto(ClientDataSet2Produtos_idProduto.AsInteger) <
      (ClientDataSet2Quantidade.AsInteger - QuantItem) then
    raise exception.Create(QUANTIDADE_MAIOR);
end;

procedure TDtmMSTSaidaNotas.ClientDataSet2AfterPost(DataSet: TDataSet);
begin
  inherited;
  if not(ClientDataSet1.State in dsEditModes) then
    ClientDataSet1.Edit;
  ClientDataSet1ValorTotal.AsCurrency := ClientDataSet1ValorTotal.AsCurrency -
    totalitem + ClientDataSet2Total.AsCurrency;
    AtualizarEstoque(ClientDataSet2Produtos_idProduto.AsInteger, QuantItem,
     ClientDataSet2Quantidade.AsInteger);
end;

end.
