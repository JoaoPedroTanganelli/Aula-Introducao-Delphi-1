unit UAtividade46;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFrmAtivivdade46 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAtivivdade46: TFrmAtivivdade46;

implementation

{$R *.dfm}

procedure TFrmAtivivdade46.FormCreate(Sender: TObject);
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
      end;
    end;

  until senha = senhaCorreta;

  if tentativas < 3 then
    ShowMessage('Senha correta! Acesso liberado.');
end;

end.
