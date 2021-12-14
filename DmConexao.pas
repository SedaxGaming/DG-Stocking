unit DmConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.DB, Data.SqlExpr,
  Data.DBXCommon, Vcl.Forms, Vcl.Dialogs;

const
  ARQUIVO_NAO_ENCONTRADO = 'Arquivo de configuração não encontrado.';
  ERRO_AO_CONECTAR = 'Não foi possível conectar ao banco de dados.';
  INICIE_TRANSACAO = 'Inicie uma transação antes de executar essa ação.';
  TRANSACAO_ATIVA = 'Já existe uma transação ativa.';

type
  TDtmConexao = class(TDataModule)
    SQLConnection1: TSQLConnection;
    procedure DataModuleCreate(sender: Tobject);
  private
    transacao: TDBXTransaction;
    procedure OpenConnection;
  public
    { Public declarations }
    // Transação
    function transacaoAtiva: boolean;
    procedure iniciarTransacao;
    procedure cancelarTransacao;
    procedure gravarTransacao;
  end;


var
  DtmConexao: TDtmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
  procedure TDtmConexao.cancelarTransacao;
begin
  if not transacaoAtiva then
  begin
    MessageDlg(INICIE_TRANSACAO, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  SQLConnection1.RollbackFreeAndNil(transacao);
end;

procedure TDtmConexao.DataModuleCreate(Sender: TObject);
begin
  OpenConnection;
end;

procedure TDtmConexao.gravarTransacao;
begin
  if not transacaoAtiva then
  begin
    MessageDlg(INICIE_TRANSACAO, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  SQLConnection1.CommitFreeAndNil(transacao);
end;

procedure TDtmConexao.iniciarTransacao;
begin
  if transacaoAtiva then
  begin
    MessageDlg(TRANSACAO_ATIVA, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  transacao := SQLConnection1.BeginTransaction;
end;

function TDtmConexao.transacaoAtiva: boolean;
begin
  result := SQLConnection1.InTransaction;
end;

procedure TDtmConexao.OpenConnection;
begin
  if not FileExists('./properties.db') then
  begin
    MessageDlg(ARQUIVO_NAO_ENCONTRADO, mtError, [mbOK], 0, mbOK);
    Application.Terminate;
  end;

  try
    SQLConnection1.CloneConnection;
    SQLConnection1.Params.LoadFromFile('./properties.db');
    SQLConnection1.Open;
  except
    on e: exception do
    begin
      MessageDlg(ERRO_AO_CONECTAR + ' ' + e.Message, mtError, [mbOK], 0, mbOK);
      Application.Terminate;
    end;
  end;
end;

end.
