unit FrmFiltroCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TFormFiltroCad = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BFiltrar: TButton;
    BCancelar: TButton;
    Image1: TImage;
    procedure BFiltrarClick(Sender: TObject);
  private
  FsqlFiltro: String;
    { Private declarations }
  public
    { Public declarations }
      property sqlFiltro: string read FsqlFiltro write FsqlFiltro;
  end;

var
  FormFiltroCad: TFormFiltroCad;

implementation

{$R *.dfm}

procedure TFormFiltroCad.BFiltrarClick(Sender: TObject);
begin
  modalResult := MRok;
end;

end.
