unit FrmFiltroImpressao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TFormFiltroImpressao = class(TForm)
    Panel1: TPanel;
    bFechar: TButton;
    bImprimir: TButton;
    Image1: TImage;
    procedure bFecharClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    { Private declarations }
    FsqlFiltro: string;
  public
    { Public declarations }
    property sqlFiltro: string read FsqlFiltro write FsqlFiltro;
  end;

var
  FormFiltroImpressao: TFormFiltroImpressao;

implementation

{$R *.dfm}

procedure TFormFiltroImpressao.bFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFormFiltroImpressao.bImprimirClick(Sender: TObject);
begin
  ModalResult:= mrOK;
end;

end.
