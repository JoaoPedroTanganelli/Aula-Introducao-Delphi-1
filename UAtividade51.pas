unit UAtividade51;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade51 = class(TForm)
    btnExecutar: TButton;
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade51: TfrmAtividade51;

implementation

{$R *.dfm}

procedure TfrmAtividade51.btnExecutarClick(Sender: TObject);
var
  Numero: Integer;
  I: Integer;
  EhPrimo: Boolean;
begin
  // Entrada do número
  Numero := StrToInt(InputBox(
    'Atividade 51',
    'Digite o valor para verificação:',
    '29'
  ));

  // Números menores que 2 não são primos
  if Numero < 2 then
  begin
    ShowMessage('O número ' + IntToStr(Numero) + ' não é primo.');
    Exit;
  end;

  EhPrimo := True;

  // Verifica se existe algum divisor além de 1 e dele mesmo
  for I := 2 to Numero - 1 do
  begin
    if Numero mod I = 0 then
    begin
      EhPrimo := False;
      Break;
    end;
  end;

  // Exibe o resultado
  if EhPrimo then
    ShowMessage('O número ' + IntToStr(Numero) + ' é primo.')
  else
    ShowMessage('O número ' + IntToStr(Numero) + ' não é primo.');
end;

end.
