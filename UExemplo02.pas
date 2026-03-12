unit UExemplo02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExemplo02 = class(TForm)
    edt_vlr_1: TEdit;
    edt_vlr_2: TEdit;
    lbl_sinal: TLabel;
    lbl_resultado: TLabel;
<<<<<<< Updated upstream
    btn_resultado: TButton;
    procedure btn_resultadoClick(Sender: TObject);
=======
    btl_resultado: TButton;
    procedure btl_resultadoClick(Sender: TObject);
>>>>>>> Stashed changes
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExemplo02: TfrmExemplo02;

implementation

{$R *.dfm}

<<<<<<< Updated upstream
procedure TfrmExemplo02.btn_resultadoClick(Sender: TObject);
var n1, n2, total : Integer;
begin
  n1 := StrToInt(edt_vlr_1.Text);
  n2 := StrToInt(edt_vlr_2.Text);

  total := n1 + n2;
=======
procedure TfrmExemplo02.btl_resultadoClick(Sender: TObject);
var n1, n2, total : Integer;
begin
n1 := StrToInt(edt_vlr_1.text);
n2 := StrToInt(edt_vlr_2.text);

total := n1 + n2;
>>>>>>> Stashed changes

  lbl_resultado.Caption := IntToStr(total);
end;

end.
<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
