unit UAtividade49;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade49 = class(TForm)
    btnIniciar: TButton;
    procedure btnIniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade49: TfrmAtividade49;

implementation

{$R *.dfm}

procedure TfrmAtividade49.btnIniciarClick(Sender: TObject);
var
  ValorInicial, ValorFinal, Divisor: Integer;
  I: Integer;
  Encontrou: Boolean;
begin
  // Mensagem inicial
  ShowMessage(
    'Programa que identifica o primeiro número divisível ' +
    'dentro de uma faixa de valores'
  );

  // Entrada de dados
  ValorInicial := StrToInt(InputBox(
    'Atividade 49',
    'Digite o valor inicial:',
    '1'
  ));

  ValorFinal := StrToInt(InputBox(
    'Atividade 49',
    'Digite o valor final:',
    '100'
  ));

  Divisor := StrToInt(InputBox(
    'Atividade 49',
    'Qual número você deseja ver o divisível?',
    '2'
  ));

  // Verifica se o divisor é válido
  if Divisor = 0 then
  begin
    ShowMessage('O divisor não pode ser zero.');
    Exit;
  end;

  Encontrou := False;

  // Procura o primeiro número divisível na faixa
  for I := ValorInicial to ValorFinal do
  begin
    if I mod Divisor = 0 then
    begin
      ShowMessage(
        'O primeiro número divisível por ' + IntToStr(Divisor) +
        ' entre ' + IntToStr(ValorInicial) +
        ' e ' + IntToStr(ValorFinal) +
        ' é: ' + IntToStr(I)
      );

      Encontrou := True;
      Break;
    end;
  end;

  // Caso não exista nenhum número divisível
  if not Encontrou then
    ShowMessage(
      'Não existe nenhum número divisível por ' +
      IntToStr(Divisor) + ' dentro da faixa informada.'
    );
end;

end.
