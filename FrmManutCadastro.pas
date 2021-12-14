unit FrmManutCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TFormManutCadastro = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Bgravar: TButton;
    BCancelar: TButton;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormManutCadastro: TFormManutCadastro;

implementation

{$R *.dfm}

uses DmCadastro;

end.
