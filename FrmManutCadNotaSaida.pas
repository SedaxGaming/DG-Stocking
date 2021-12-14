unit FrmManutCadNotaSaida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmManutCadastro, Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TFormManutCadNotaSaida = class(TFormManutCadastro)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormManutCadNotaSaida: TFormManutCadNotaSaida;

implementation

{$R *.dfm}

uses frmCadNotasSaidas, DmManutSaidaNotas;

end.
