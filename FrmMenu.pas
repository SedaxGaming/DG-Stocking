unit FrmMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TFormMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Fechar1: TMenuItem;
    Fornecedor1: TMenuItem;
    Produto1: TMenuItem;
    Cliente1: TMenuItem;
    Panel1: TPanel;
    Image1: TImage;
    EntradaseSaidas1: TMenuItem;
    EntradadeProdutos1: TMenuItem;
    SaidadeProdutos1: TMenuItem;
    Relatorios1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    SaidadeProdutos2: TMenuItem;
    EntradadeProdutos2: TMenuItem;
    procedure Cliente1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure EntradadeProdutos1Click(Sender: TObject);
    procedure SaidadeProdutos1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure SaidadeProdutos2Click(Sender: TObject);
    procedure EntradadeProdutos2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

{$R *.dfm}

uses DmConexao, DmCadFornecedor, FrmCadastroFornecedor, DmCadProd,
  FrmCadastroProduto, FrmCadastro, DmCadCliente, FrmCadastroCliente,
  frmFiltroClientes,frmFiltroFornecedor, frmFiltroProduto,
  frmManutCadFornecedor, FrmManutCliente, frmManutProduto, DmManutEntradaNotas,
  DmManutSaidaNotas, frmCadNotasSaidas, frmCadNotasEntradas,
  FrmManutCadNotaEntrada, FrmManutCadNotaSaida, FrmFiltroImpressao,
  FrmFiltroImpressaoClientes, FrmRelatorio, FrmRelatorioClientes,
  FrmFiltroImpressaoFornecedor, FrmRelatorioFornecedor,
  FrmFiltroImpressaoProdutos, FrmRelatorioProdutos, FrmFiltroImpressaoSaidaNota,
  FrmRelatorioSaidaNota, FrmFiltroImpressaoEntradaNota, FrmRelatorioEntradaNota;

procedure TFormMenu.Cliente1Click(Sender: TObject);
begin
  DtmCadCliente := TDtmCadCliente.Create(self);
  try
    DtmCadCliente.DataModuleConexao := DtmConexao;
    FormCadastroClient := TFormCadastroClient.Create(self);
    try
      FormCadastroClient.DataModuleCadastro := DtmCadCliente;
      FormCadastroClient.FormFiltroCadastro := TFormFiltroClientes.Create(self);
      FormCadastroClient.FormManutCadastro := TFormManutCadCliente.Create(self);
      FormCadastroClient.ShowModal;
    finally
      FreeAndNil(FormCadastroClient);
    end;
  finally
    FreeAndNil(DtmCadCliente);
  end;
end;

procedure TFormMenu.Clientes1Click(Sender: TObject);
begin
FormFiltroImpressaoClientes:= TFormFiltroImpressaoClientes.Create(self);
  try
    FormFiltroImpressaoClientes.ShowModal;
  finally
    FreeAndNil(FormFiltroImpressaoClientes);
  end;
end;

procedure TFormMenu.EntradadeProdutos1Click(Sender: TObject);
begin
  DtmMstDetailEntradaNota := TDtmMstDetailEntradaNota.Create(self);
  try
    DtmMstDetailEntradaNota.DataModuleConexao := dtmConexao;
    DtmMstDetailEntradaNota.Chave := 'NOTASENTRADA';
    FormCadNotaEntrada := TFormCadNotaEntrada.Create(self);
    try
      FormCadNotaEntrada.DataModuleCadastro := DtmMstDetailEntradaNota;
      //FormCadNotaEntrada.FormFiltroCadastro := TformFiltroCidades.create(self);
      FormCadNotaEntrada.FormManutCadastro := TFormManutCadNotaEntrada.create(self);
      FormCadNotaEntrada.ShowModal;
    finally
      FreeAndNil(FormCadNotaEntrada);
    end;
  finally
    FreeAndNil(DtmMstDetailEntradaNota);
  end;
end;


procedure TFormMenu.EntradadeProdutos2Click(Sender: TObject);
begin
 FormFiltroImpressaoEntradaNota:= TFormFiltroImpressaoEntradaNota.Create(self);
try
  FormFiltroImpressaoEntradaNota.ShowModal;
finally
  FreeAndNil(FormFiltroImpressaoEntradaNota);
end;
end;

procedure TFormMenu.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMenu.Fornecedor1Click(Sender: TObject);
begin
  DtmCadFornecedor := TDtmCadFornecedor.Create(self);
  try
    DtmCadFornecedor.DataModuleConexao := DtmConexao;
    FormCadastroFornecedor := TFormCadastroFornecedor.Create(self);
    try
      FormCadastroFornecedor.DataModuleCadastro := DtmCadFornecedor;
      FormCadastroFornecedor.FormFiltroCadastro := TFormFiltroFornecedor.Create(self);
      FormCadastroFornecedor.FormManutCadastro := TFormManutFornecedor.Create(self);
      FormCadastroFornecedor.ShowModal;
    finally
      FreeAndNil(FormCadastroFornecedor);
    end;
  finally
    FreeAndNil(DtmCadFornecedor);
  end;
end;

procedure TFormMenu.Fornecedores1Click(Sender: TObject);
begin
FormFiltroImpressaoFornecedor:= TFormFiltroImpressaoFornecedor.Create(self);
try
  FormFiltroImpressaoFornecedor.ShowModal;
finally
  FreeAndNil(FormFiltroImpressaoFornecedor);
end;
end;

procedure TFormMenu.Produto1Click(Sender: TObject);
begin
  DtmCadProd := TDtmCadProd.Create(self);
  try
    DtmCadProd.DataModuleConexao := DtmConexao;
    FormCadastroProduto := TFormCadastroProduto.Create(self);
    try
      FormCadastroProduto.DataModuleCadastro := DtmCadProd;
      FormCadastroProduto.FormFiltroCadastro := TFormFiltroProduto.Create(self);
      FormCadastroProduto.FormManutCadastro := TFormManutCadProdutos.Create(self);
      FormCadastroProduto.ShowModal;
    finally
      FreeAndNil(FormCadastroProduto);
    end;
  finally
    FreeAndNil(DtmCadProd);
  end;
end;

procedure TFormMenu.Produtos1Click(Sender: TObject);
begin
  FormFiltroImpressaoProdutos:= TFormFiltroImpressaoProdutos.Create(self);
try
  FormFiltroImpressaoProdutos.ShowModal;
finally
  FreeAndNil(FormFiltroImpressaoFornecedor);
end;
end;

procedure TFormMenu.SaidadeProdutos1Click(Sender: TObject);
begin
  DtmMSTSaidaNotas := TDtmMSTSaidaNotas.Create(self);
  try
    DtmMSTSaidaNotas.DataModuleConexao := dtmConexao;
    DtmMSTSaidaNotas.Chave := 'NOTASSAIDA';
    FrmCadNotasSaida := TFrmCadNotasSaida.Create(self);
    try
      FrmCadNotasSaida.DataModuleCadastro := DtmMSTSaidaNotas;
      FrmCadNotasSaida.FormManutCadastro := TFormManutCadNotaSaida.create(self);
      FrmCadNotasSaida.ShowModal;
    finally
      FreeAndNil(FrmCadNotasSaida);
    end;
  finally
    FreeAndNil(DtmMSTSaidaNotas);
  end;
end;

procedure TFormMenu.SaidadeProdutos2Click(Sender: TObject);
begin
  FormFiltroImpressaoSaidaNota:= TFormFiltroImpressaoSaidaNota.Create(self);
try
  FormFiltroImpressaoSaidaNota.ShowModal;
finally
  FreeAndNil(FormFiltroImpressaoSaidaNota);
end;
end;
end.
