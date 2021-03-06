unit FrmCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Data.DBXMySQL, Data.FMTBcd, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.Provider, Datasnap.DBClient, Data.SqlExpr, Data.DBXCommon,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, DmCadastro, DmConexao,
  FrmManutCadastro, FrmFiltroCad, Vcl.Imaging.jpeg;

type
  TFormCadastro = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel6: TPanel;
    BAtualizar: TButton;
    BFechar: TButton;
    BPesquisar: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    BEditar: TButton;
    BExcluir: TButton;
    Bnovo: TButton;
    Panel4: TPanel;
    BAnterior: TButton;
    BPrimeiro: TButton;
    Bproximo: TButton;
    Bultimo: TButton;
    Panel5: TPanel;
    Label1: TLabel;
    DataSource1: TDataSource;
    Image1: TImage;
    procedure BFecharClick(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure bNovoClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure bPrimeiroClick(Sender: TObject);
    procedure bAnteriorClick(Sender: TObject);
    procedure bProximoClick(Sender: TObject);
    procedure bUltimoClick(Sender: TObject);
    procedure BPesquisarClick(Sender: TObject);

  private
    FDataModuleCadastro: TdtmCadastro;
    FFormFiltroCad: TFormFiltroCad;
    FFormManutCadastro: TFormManutCadastro;
    procedure ChamarManutCadastro;
  public
    { Public declarations }
    property DataModuleCadastro: TDtmCadastro read FDataModuleCadastro write FDataModuleCadastro;
    property FormFiltroCadastro: TFormFiltroCad read FFormFiltroCad write FFormFiltroCad;
    property FormManutCadastro: TFormManutCadastro read FFormManutCadastro write FFormManutCadastro;
  end;

var
  FormCadastro: TFormCadastro;

implementation

{$R *.dfm}

{ TFrmCad }

procedure TFormCadastro.bAnteriorClick(Sender: TObject);
begin
  FDataModuleCadastro.registroAnterior;
end;

procedure TFormCadastro.bAtualizarClick(Sender: TObject);
begin
  FDataModuleCadastro.atualizarRegistros;
end;

procedure TFormCadastro.bCancelarClick(Sender: TObject);
begin
  FDataModuleCadastro.cancelarEdicao;
end;

procedure TFormCadastro.bExcluirClick(Sender: TObject);
begin
  FDataModuleCadastro.excluirRegistro;
end;

procedure TFormCadastro.BFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormCadastro.BEditarClick(Sender: TObject);
begin
  ChamarManutCadastro;
end;

procedure TFormCadastro.bNovoClick(Sender: TObject);
begin
  FDataModuleCadastro.novoRegistro;
  ChamarManutCadastro;
end;

procedure TFormCadastro.BPesquisarClick(Sender: TObject);
begin
 if FFormFiltroCad.ShowModal = mrOk then
 begin
   DataModuleCadastro.filtroSQL(true, FormFiltroCadastro.sqlFiltro);
 end;
end;

procedure TFormCadastro.bPrimeiroClick(Sender: TObject);
begin
  FDataModuleCadastro.primeiroRegistro;
end;

procedure TFormCadastro.bProximoClick(Sender: TObject);
begin
  FDataModuleCadastro.proximoRegistro;
end;

procedure TFormCadastro.bUltimoClick(Sender: TObject);
begin
  FDataModuleCadastro.ultimoRegistro;
end;

procedure TFormCadastro.ChamarManutCadastro;
var
  mr: integer;
begin
  mr := FormManutCadastro.ShowModal;
  if FDataModuleCadastro.onEdicao then
  begin
    if mr = mrOk then
      FDataModuleCadastro.gravarRegistro
    else
      FDataModuleCadastro.cancelarEdicao;
  end;
end;

procedure TFormCadastro.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  DataSource1StateChange(Sender);
end;

procedure TFormCadastro.DataSource1StateChange(Sender: TObject);
begin
  if not(FDataModuleCadastro = nil) then
    with FDataModuleCadastro do
    begin
      Bnovo.Enabled := not onEdicao;
      BExcluir.Enabled := not onEdicao;
      BEditar.Enabled := not tabelaVazia;

      BAtualizar.Enabled := not onEdicao;
      BFechar.Enabled := not onEdicao;

      BPrimeiro.Enabled := not onEdicao and not tabelaVazia and not inicioDados;
      BAnterior.Enabled := not onEdicao and not tabelaVazia and not inicioDados;
      Bproximo.Enabled := not onEdicao and not tabelaVazia and not fimDados;
      Bultimo.Enabled := not onEdicao and not tabelaVazia and not fimDados;
    end;

end;

end.
