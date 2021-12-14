unit DmCadCliente;

interface

uses
  System.SysUtils, System.Classes, DmCadastro, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TDtmCadCliente = class(TDtmCadastro)
    SQLQuery1idClientes: TIntegerField;
    SQLQuery1Nome: TStringField;
    SQLQuery1Email: TStringField;
    SQLQuery1Telefone: TStringField;
    SQLQuery1Cidade: TStringField;
    SQLQuery1Estado: TStringField;
    SQLQuery1CEP: TStringField;
    SQLQuery1Bairro: TStringField;
    SQLQuery1Rua: TStringField;
    SQLQuery1Numero: TStringField;
    ClientDataSet1idClientes: TIntegerField;
    ClientDataSet1Nome: TStringField;
    ClientDataSet1Email: TStringField;
    ClientDataSet1Telefone: TStringField;
    ClientDataSet1Cidade: TStringField;
    ClientDataSet1Estado: TStringField;
    ClientDataSet1CEP: TStringField;
    ClientDataSet1Bairro: TStringField;
    ClientDataSet1Rua: TStringField;
    ClientDataSet1Numero: TStringField;
    SQLQuery1CPFCNPJ: TStringField;
    ClientDataSet1CPFCNPJ: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmCadCliente: TDtmCadCliente;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FrmCadastro, DmConexao;

{$R *.dfm}

end.
