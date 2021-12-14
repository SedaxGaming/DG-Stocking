unit DmCadProd;

interface

uses
  System.SysUtils, System.Classes, DmCadastro, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TDtmCadProd = class(TDtmCadastro)
    SQLQuery1idProduto: TIntegerField;
    SQLQuery1Descricao: TStringField;
    SQLQuery1Validade: TDateField;
    SQLQuery1EstoqueDisponivel: TIntegerField;
    SQLQuery1EstoqueReservado: TIntegerField;
    SQLQuery1preco: TFMTBCDField;
    SQLQuery1Embalagem: TStringField;
    SQLQuery1EmbalagemUnitaria: TStringField;
    SQLQuery1Fornecedores_idFornecedor: TIntegerField;
    ClientDataSet1idProduto: TIntegerField;
    ClientDataSet1Descricao: TStringField;
    ClientDataSet1Validade: TDateField;
    ClientDataSet1EstoqueDisponivel: TIntegerField;
    ClientDataSet1EstoqueReservado: TIntegerField;
    ClientDataSet1preco: TFMTBCDField;
    ClientDataSet1Embalagem: TStringField;
    ClientDataSet1EmbalagemUnitaria: TStringField;
    ClientDataSet1Fornecedores_idFornecedor: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmCadProd: TDtmCadProd;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FrmCadastro, DmConexao;

{$R *.dfm}

end.
