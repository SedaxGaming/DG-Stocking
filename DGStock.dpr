program DGStock;

uses
  Vcl.Forms,
  FrmMenu in 'FrmMenu.pas' {FormMenu},
  DmConexao in 'DmConexao.pas' {DtmConexao: TDataModule},
  FrmCadastro in 'FrmCadastro.pas' {FormCadastro},
  DmCadastro in 'DmCadastro.pas' {DtmCadastro: TDataModule},
  DmCadCliente in 'DmCadCliente.pas' {DtmCadCliente: TDataModule},
  DmCadFornecedor in 'DmCadFornecedor.pas' {DtmCadFornecedor: TDataModule},
  DmCadProd in 'DmCadProd.pas' {DtmCadProd: TDataModule},
  FrmCadastroCliente in 'FrmCadastroCliente.pas' {FormCadastroClient},
  FrmCadastroFornecedor in 'FrmCadastroFornecedor.pas' {FormCadastroFornecedor},
  FrmCadastroProduto in 'FrmCadastroProduto.pas' {FormCadastroProduto},
  FrmFiltroCad in 'FrmFiltroCad.pas' {FormFiltroCad},
  FrmFiltroClientes in 'FrmFiltroClientes.pas' {FormFiltroClientes},
  FrmFiltroFornecedor in 'FrmFiltroFornecedor.pas' {FormFiltroFornecedor},
  FrmFiltroProduto in 'FrmFiltroProduto.pas' {FormFiltroProduto},
  FrmManutCadastro in 'FrmManutCadastro.pas' {FormManutCadastro},
  FrmManutCliente in 'FrmManutCliente.pas' {FormManutCadCliente},
  frmManutProduto in 'frmManutProduto.pas' {FormManutCadProdutos},
  frmManutCadFornecedor in 'frmManutCadFornecedor.pas' {FormManutFornecedor},
  FrmMestreDetalhe in 'FrmMestreDetalhe.pas' {FormMestreDetalhe},
  DmMestreDetalhe in 'DmMestreDetalhe.pas' {DtmMestreDetalhe: TDataModule},
  DmManutEntradaNotas in 'DmManutEntradaNotas.pas' {DtmMstDetailEntradaNota: TDataModule},
  DmManutSaidaNotas in 'DmManutSaidaNotas.pas' {DtmMSTSaidaNotas: TDataModule},
  frmCadNotasEntradas in 'frmCadNotasEntradas.pas' {FormCadNotaEntrada},
  frmCadNotasSaidas in 'frmCadNotasSaidas.pas' {FrmCadNotasSaida},
  FrmManutCadNotaEntrada in 'FrmManutCadNotaEntrada.pas' {FormManutCadNotaEntrada},
  FrmManutCadNotaSaida in 'FrmManutCadNotaSaida.pas' {FormManutCadNotaSaida},
  FrmFiltroImpressao in 'FrmFiltroImpressao.pas' {FormFiltroImpressao},
  FrmRelatorio in 'FrmRelatorio.pas' {FormRelatorio},
  FrmRelatorioClientes in 'FrmRelatorioClientes.pas' {FormRelatorioCliente},
  FrmFiltroImpressaoClientes in 'FrmFiltroImpressaoClientes.pas' {FormFiltroImpressaoClientes},
  FrmFiltroImpressaoFornecedor in 'FrmFiltroImpressaoFornecedor.pas' {FormFiltroImpressaoFornecedor},
  FrmRelatorioFornecedor in 'FrmRelatorioFornecedor.pas' {FormRelatorioFornecedor},
  FrmRelatorioProdutos in 'FrmRelatorioProdutos.pas' {FormRelatorioProdutos},
  FrmFiltroImpressaoProdutos in 'FrmFiltroImpressaoProdutos.pas' {FormFiltroImpressaoProdutos},
  FrmFiltroImpressaoSaidaNota in 'FrmFiltroImpressaoSaidaNota.pas' {FormFiltroImpressaoSaidaNota},
  FrmRelatorioSaidaNota in 'FrmRelatorioSaidaNota.pas' {FormRelatorioSaidaNota},
  FrmRelatorioEntradaNota in 'FrmRelatorioEntradaNota.pas' {FormRelatorioEntradaNota},
  FrmFiltroImpressaoEntradaNota in 'FrmFiltroImpressaoEntradaNota.pas' {FormFiltroImpressaoEntradaNota};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDtmConexao, DtmConexao);
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormFiltroImpressaoSaidaNota, FormFiltroImpressaoSaidaNota);
  Application.CreateForm(TFormRelatorioSaidaNota, FormRelatorioSaidaNota);
  Application.CreateForm(TFormRelatorioEntradaNota, FormRelatorioEntradaNota);
  Application.CreateForm(TFormFiltroImpressaoEntradaNota, FormFiltroImpressaoEntradaNota);
  Application.Run;
end.
