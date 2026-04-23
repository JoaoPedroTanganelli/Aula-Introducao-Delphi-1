unit UAtividade43;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade43 = class(TForm)
    lblNome: TLabel;
    lblHora: TLabel;
    lblHoras: TLabel;
    edtNome: TEdit;
    edtHora: TEdit;
    edtHoras: TEdit;
    btncalcular: TButton;
    procedure btncalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade43: TfrmAtividade43;

implementation

{$R *.dfm}

procedure TfrmAtividade43.btncalcularClick(Sender: TObject);
var
  nome: string;
  valorHora, horasMes: Double;
  salarioBruto, inss, ir, sindicato, fgts, salarioLiquido: Double;
begin
  if (edtNome.Text = '') or (edtHora.Text = '') or (edtHoras.Text = '') then
  begin
    ShowMessage('Preencha todos os campos!');
    Exit;
  end;

  nome := edtNome.Text;
  valorHora := StrToFloat(edtHora.Text);
  horasMes := StrToFloat(edtHoras.Text);

  salarioBruto := valorHora * horasMes;

  inss := salarioBruto * 0.10;
  sindicato := salarioBruto * 0.03;
  fgts := salarioBruto * 0.11;

  if salarioBruto <= 1900 then
    ir := 0
  else if salarioBruto <= 3500 then
    ir := salarioBruto * 0.05
  else if salarioBruto <= 7500 then
    ir := salarioBruto * 0.10
  else
    ir := salarioBruto * 0.20;

  salarioLiquido := salarioBruto - inss - ir - sindicato;

  ShowMessage(
    'Funcionário: ' + nome + sLineBreak +
    'Salário Bruto: R$ ' + FloatToStrF(salarioBruto, ffCurrency, 10, 2) + sLineBreak +
    'INSS: R$ ' + FloatToStrF(inss, ffCurrency, 10, 2) + sLineBreak +
    'IR: R$ ' + FloatToStrF(ir, ffCurrency, 10, 2) + sLineBreak +
    'Sindicato: R$ ' + FloatToStrF(sindicato, ffCurrency, 10, 2) + sLineBreak +
    'FGTS: R$ ' + FloatToStrF(fgts, ffCurrency, 10, 2) + sLineBreak +
    'Salário Líquido: R$ ' + FloatToStrF(salarioLiquido, ffCurrency, 10, 2)
  );
 end;
 end.
