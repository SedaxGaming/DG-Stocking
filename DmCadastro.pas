unit DmCadastro;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.Provider,
  Datasnap.DBClient, Data.DB, Data.SqlExpr, System.IniFiles,
  Vcl.Forms, Vcl.Dialogs, Data.DBXCommon, dmConexao;

const
  CANCELE_OU_GRAVE = 'Cancele ou grave o registro atual.';
  EM_EDICAO = 'Registro em edi??o.';
  NAO_ESTA_EM_EDICAO = 'Registro n?o est? em edi??o.';
  ERRO_OPERACAO = 'Ocorreu um erro ao processar essa opera??o:';


type
  TDtmCadastro = class(TDataModule)
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    sqlNovaChave: TSQLQuery;
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure ClientDataSet1AfterDelete(DataSet: TDataSet);
    procedure ClientDataSet1ReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DataModuleCreate(Sender: TObject);

  private
    { Private declarations }
    FDataModuleConexao: TdtmConexao;
    strSQL: string;
    Fchave: string;
    protected
    procedure OpenTables; virtual;
    procedure setDataModuleConexao(const Value: TdtmConexao);
    function getNovaChave (Chave: String): Integer;
  public
    { Public declarations }
    function onEdicao: boolean;
    function tabelaVazia: boolean;
    function inicioDados: boolean;
    function fimDados: boolean;
    function sqlInicial: string;
    // Registros
    procedure novoRegistro;
    procedure gravarRegistro;
    procedure excluirRegistro;
    procedure cancelarEdicao;
    // Atualiza??o
    procedure atualizarRegistros;
    // Ponteiro
    procedure primeiroRegistro;
    procedure registroAnterior;
    procedure proximoRegistro;
    procedure ultimoRegistro;
    procedure filtroSQL(sqlIni: boolean; stringSQL: string);
    property DataModuleConexao: TdtmConexao read FDataModuleConexao
      write setDataModuleConexao;
    property Chave: string read FChave write Fchave;
  end;

var
  DtmCadastro: TDtmCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FrmCadastro;
{$R *.dfm}

function TDtmCadastro.onEdicao: boolean;
begin
  result := ClientDataSet1.State in dsEditModes;
end;

procedure TDtmCadastro.OpenTables;
begin
  ClientDataSet1.Close;
  ClientDataSet1.Open;
end;

function TDtmCadastro.tabelaVazia: boolean;
begin
  result := ClientDataSet1.IsEmpty;
end;

procedure TDtmCadastro.filtroSQL(sqlIni: boolean; stringSQL: string);
begin
  ClientDataSet1.Close;
  SQLQuery1.SQL.Clear;
  if sqlIni then
    SQLQuery1.SQL.Add(sqlInicial());
  SQLQuery1.SQL.Add(stringSQL);
  ClientDataSet1.Open;
end;

function TDtmCadastro.fimDados: boolean;
begin
  result := ClientDataSet1.Eof;
end;

function TDtmCadastro.inicioDados: boolean;
begin
  result := ClientDataSet1.Bof
end;

procedure TDtmCadastro.novoRegistro;
begin
  if onEdicao then
  begin
    MessageDlg(EM_EDICAO, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  ClientDataSet1.Append;
end;

function TDtmCadastro.getNovaChave(Chave: String): Integer;
begin
  try
    sqlNovaChave.Close;
    sqlNovaChave.SQL.Clear;
    sqlNovaChave.SQL.Add('update chaves');
    sqlNovaChave.SQL.Add('set valor = valor + 1');
    sqlNovaChave.SQL.Add('where chave = ' + QuotedStr(Chave));
    sqlNovaChave.ExecSQL;

    sqlNovaChave.Close;
    sqlNovaChave.SQL.Clear;
    sqlNovaChave.SQL.Add('select valor from chaves ') ;
    sqlNovaChave.SQL.Add(' where chave = '+ QuotedStr(Chave));
    sqlNovaChave.Open;

    if sqlNovaChave.IsEmpty then
    begin
      sqlNovaChave.Close;
      sqlNovaChave.SQL.Clear;
      sqlNovaChave.SQL.Add('insert into Chaves ');
      sqlNovaChave.SQL.Add('values(' + QuotedStr(Chave) + ', 1)');
      sqlNovaChave.ExecSQL;
      result := 1;
    end
    else
      result := sqlNovaChave.Fields[0].AsInteger;

  finally
    sqlNovaChave.Close;
//    FDataModuleConexao.SQLConnection1.CommitFreeAndNil(transacao);
  end;
end;

procedure TDtmCadastro.gravarRegistro;
begin
  if not onEdicao then
  begin
    MessageDlg(NAO_ESTA_EM_EDICAO, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  ClientDataSet1.Post;
end;

procedure TDtmCadastro.excluirRegistro;
begin
  if onEdicao then
  begin
    MessageDlg(CANCELE_OU_GRAVE, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  ClientDataSet1.Delete;
end;

procedure TDtmCadastro.cancelarEdicao;
begin
  if not onEdicao then
  begin
    MessageDlg(NAO_ESTA_EM_EDICAO, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  ClientDataSet1.Cancel;
end;

procedure TDtmCadastro.atualizarRegistros;
begin
  if onEdicao then
  begin
    MessageDlg(CANCELE_OU_GRAVE, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  ClientDataSet1.Refresh;
end;

procedure TDtmCadastro.primeiroRegistro;
begin
  if onEdicao then
  begin
    MessageDlg(CANCELE_OU_GRAVE, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  ClientDataSet1.First;
end;

procedure TDtmCadastro.registroAnterior;
begin
  if onEdicao then
  begin
    MessageDlg(CANCELE_OU_GRAVE, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  ClientDataSet1.Prior;
end;

procedure TDtmCadastro.setDataModuleConexao(const Value: TdtmConexao);
begin
  FDataModuleConexao := Value;
  OpenTables;
end;

function TDtmCadastro.sqlInicial: string;
begin
  result := strSQL;
end;

procedure TDtmCadastro.proximoRegistro;
begin
  if onEdicao then
  begin
    MessageDlg(CANCELE_OU_GRAVE, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  ClientDataSet1.Next;
end;

procedure TDtmCadastro.ultimoRegistro;
begin
  if onEdicao then
  begin
    MessageDlg(CANCELE_OU_GRAVE, mtInformation, [mbOK], 0, mbOK);
    exit;
  end;
  ClientDataSet1.Last;
end;

procedure TDtmCadastro.ClientDataSet1AfterDelete(DataSet: TDataSet);
begin
  ClientDataSet1.ApplyUpdates(-1);
end;

procedure TDtmCadastro.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
  ClientDataSet1.ApplyUpdates(-1);
end;

procedure TDtmCadastro.ClientDataSet1ReconcileError
  (DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  MessageDlg(ERRO_OPERACAO + #13#10 + E.Message, mtError, [mbOK], 0, mbOK);
  Action := raCancel;
end;

procedure TDtmCadastro.DataModuleCreate(Sender: TObject);
begin
  strSQL := SQLQuery1.SQL.Text;
end;

end.
