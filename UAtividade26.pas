unit UAtividade26;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade26 = class(TForm)
    lblNome: TLabel;
    lblIdade: TLabel;
    edtNome: TEdit;
    edtIdade: TEdit;
    btnExibeIdade: TButton;
    lblMensagem: TLabel;
    procedure btnExibeIdadeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade26: TfrmAtividade26;

implementation

{$R *.dfm}

procedure TfrmAtividade26.btnExibeIdadeClick(Sender: TObject);
var
  nome, frase : String;
  idade, somaIdade : Integer;
begin
  nome := edtNome.Text;
  idade := StrToInt(edtIdade.Text);

  somaIdade := 28 + idade;
  frase := nome + ' daqui a 28 ano sua idade será ' + IntToStr(somaIdade) + ' anos.';

  lblMensagem.Caption := frase;
end;

end.
