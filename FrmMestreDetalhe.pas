unit FrmMestreDetalhe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmCadastro, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFormMestreDetalhe = class(TFormCadastro)
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    Panel8: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMestreDetalhe: TFormMestreDetalhe;

implementation

{$R *.dfm}

uses DmMestreDetalhe;

end.
