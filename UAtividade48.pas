unit UAtividade48;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade48 = class(TForm)
    btnExecutar: TButton;
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade48: TfrmAtividade48;

implementation

{$R *.dfm}

procedure TfrmAtividade48.btnExecutarClick(Sender: TObject);
var
  Numero: Integer;
  Quantidade: Integer;
  Soma: Integer;
  Media: Real;
begin
  Quantidade := 0;
  Soma := 0;

  repeat
    Numero := StrToInt(InputBox(
      'Entrada de Dados',
      'Digite um número (0 para finalizar):',
      '0'
    ));

    if Numero <> 0 then
    begin
      Inc(Quantidade);       // Conta quantos números foram digitados
      Soma := Soma + Numero; // Soma os valores
    end;

  until Numero = 0;

  if Quantidade > 0 then
    Media := Soma / Quantidade
  else
    Media := 0;

  ShowMessage(
    'Quantidade de números digitados: ' + IntToStr(Quantidade) + sLineBreak +
    'Soma dos números: ' + IntToStr(Soma) + sLineBreak +
    'Média: ' + FormatFloat('0.00', Media)
  );
end;

end.
