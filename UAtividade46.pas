unit UAtividade46;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmAtivivdade46 = class(TForm)
    btnIniciar: TButton;
    procedure btnIniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAtivivdade46: TFrmAtivivdade46;

implementation

{$R *.dfm}

procedure TFrmAtivivdade46.btnIniciarClick(Sender: TObject);
var
  senha, senhaCorreta: string;
  tentativas: Integer;
begin
  senhaCorreta := '1234';
  tentativas := 0;

  repeat
    senha := InputBox('Login', 'Digite a senha:', '');

    if senha <> senhaCorreta then
    begin
      tentativas := tentativas + 1;

      ShowMessage('Senha incorreta! Tentativa: ' +
                  IntToStr(tentativas));

      if tentativas = 3 then
      begin
        ShowMessage('Limite de tentativas excedido!');
        Close;
        Exit;
      end;
    end;

  until senha = senhaCorreta;

  ShowMessage('Senha correta! Acesso liberado.');
end;

end.
