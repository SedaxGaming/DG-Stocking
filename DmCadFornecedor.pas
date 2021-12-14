unit DmCadFornecedor;

interface

uses
  System.SysUtils, System.Classes, DmCadastro, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TDtmCadFornecedor = class(TDtmCadastro)
    ClientDataSet1idFornecedor: TIntegerField;
    ClientDataSet1Nome: TStringField;
    ClientDataSet1CNPJ: TStringField;
    ClientDataSet1Cidade: TStringField;
    ClientDataSet1SiglaEstado: TStringField;
    ClientDataSet1Email: TStringField;
    ClientDataSet1Telefone: TStringField;
    SQLQuery1idFornecedor: TIntegerField;
    SQLQuery1Nome: TStringField;
    SQLQuery1CNPJ: TStringField;
    SQLQuery1Cidade: TStringField;
    SQLQuery1SiglaEstado: TStringField;
    SQLQuery1Email: TStringField;
    SQLQuery1Telefone: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmCadFornecedor: TDtmCadFornecedor;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FrmCadastro, DmConexao;

{$R *.dfm}

end.
