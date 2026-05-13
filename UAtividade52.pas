unit UAtividade52;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade52 = class(TForm)
    mmoValores: TMemo;
    lblInicio: TLabel;
    edtInicio: TEdit;
    lblFim: TLabel;
    edtFim: TEdit;
    btnExibir: TButton;
    procedure btnExibirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade52: TfrmAtividade52;

implementation

{$R *.dfm}

procedure TfrmAtividade52.btnExibirClick(Sender: TObject);
var
  ValorInicial, ValorFinal: Integer;
  I, J: Integer;
begin
  // Limpa o Memo
  mmoValores.Clear;

  // Lê os valores digitados
  ValorInicial := StrToInt(edtInicio.Text);
  ValorFinal := StrToInt(edtFim.Text);

  // Verifica se o valor inicial é maior que o valor final
  if ValorInicial > ValorFinal then
  begin
    ShowMessage('O valor inicial deve ser menor ou igual ao valor final.');
    Exit;
  end;

  // Gera as tabuadas do valor inicial até o valor final
  for I := ValorInicial to ValorFinal do
  begin
    // Título da tabuada
    mmoValores.Lines.Add('Tabuada do ' + IntToStr(I));

    // Multiplicação de 1 até 10
    for J := 1 to 10 do
    begin
      mmoValores.Lines.Add(
        IntToStr(I) + ' X ' +
        IntToStr(J) + ' = ' +
        IntToStr(I * J)
      );
    end;

    // Linha em branco entre as tabuadas
    mmoValores.Lines.Add('');
  end;
end;

end.
