unit UAtividade50;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade50 = class(TForm)
    btnIniciar: TButton;
    procedure btnIniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade50: TfrmAtividade50;

implementation

{$R *.dfm}

procedure TfrmAtividade50.btnIniciarClick(Sender: TObject);
var
  Numero: Integer;
  I: Integer;
  Fatorial: Int64;
begin
  // Entrada do número
  Numero := StrToInt(InputBox(
    'Atividade 50',
    'Digite um número inteiro para calcular o fatorial:',
    '5'
  ));

  // Verifica se o número é negativo
  if Numero < 0 then
  begin
    ShowMessage('Não existe fatorial de números negativos.');
    Exit;
  end;

  // Inicializa o fatorial
  Fatorial := 1;

  // Calcula o fatorial
  for I := Numero downto 1 do
    Fatorial := Fatorial * I;

  // Exibe o resultado
  ShowMessage(
    IntToStr(Numero) + '! = ' + IntToStr(Fatorial)
  );
end;

end.
