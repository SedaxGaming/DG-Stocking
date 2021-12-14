unit DmMestreDetalhe;

interface

uses
  System.SysUtils, System.Classes, DmCadastro, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TDtmMestreDetalhe = class(TDtmCadastro)
    DataSource1: TDataSource;
    SQLQuery2: TSQLQuery;
    ClientDataSet2: TClientDataSet;
  private
    { Private declarations }
    protected
    PROCEDURE OpenTables; override;
  public
    { Public declarations }
  end;

var
  DtmMestreDetalhe: TDtmMestreDetalhe;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDtmMestreDetalhe }

procedure TDtmMestreDetalhe.OpenTables;
begin
  inherited;
  ClientDataSet2.Close;
  ClientDataSet2.Open;
end;

end.
