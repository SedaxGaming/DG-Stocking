unit frmCadNotasSaidas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrmMestreDetalhe, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TFrmCadNotasSaida = class(TFormMestreDetalhe)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadNotasSaida: TFrmCadNotasSaida;

implementation

{$R *.dfm}

uses DmManutSaidaNotas;

end.
