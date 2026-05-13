unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnExemplo01: TButton;
    btnAtividade01: TButton;
    btnAtividade02: TButton;
    btnAtividade26: TButton;
    btnAtividade43: TButton;
    btnAtividade46: TButton;
    btnAtividade47: TButton;
    btnAtivdade48: TButton;
    btnAtividade49: TButton;
    btnAtividade50: TButton;
    btnAtividade51: TButton;
    btnAtividade52: TButton;
    procedure btnExemplo01Click(Sender: TObject);
    procedure btnAtividade01Click(Sender: TObject);
    procedure btnAtividade02Click(Sender: TObject);
    procedure btnAtividade26Click(Sender: TObject);
    procedure btnAtividade43Click(Sender: TObject);
    procedure btnAtividade46Click(Sender: TObject);
    procedure btnAtividade47Click(Sender: TObject);
    procedure btnAtivdade48Click(Sender: TObject);
    procedure btnAtividade49Click(Sender: TObject);
    procedure btnAtividade50Click(Sender: TObject);
    procedure btnAtividade51Click(Sender: TObject);
    procedure btnAtividade52Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UExemplo01, UAtividade01, UAtividade02, UAtividade26,UAtividade43, UAtividadee27,
  UAtividade46, UAtividade47, UAtividade48, UAtividade49, UAtividade50,
  UAtividade51, UAtividade52;





procedure TfrmPrincipal.btnAtividade01Click(Sender: TObject);
begin
  frmAtividade01.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade02Click(Sender: TObject);
begin
  frmAtividade02.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade26Click(Sender: TObject);
var
  f: TfrmAtividade26;
begin
  f := TfrmAtividade26.Create(Self);
  try
    f.ShowModal;
  finally
    f.Free;
  end;
end;

procedure TfrmPrincipal.btnExemplo01Click(Sender: TObject);
begin
  frmExemplo01.ShowModal;
end;

procedure TfrmPrincipal.btnAtividade43Click(Sender: TObject);
var
  f: TfrmAtividade43;
begin
  f := TfrmAtividade43.Create(Self);
  try
    f.ShowModal;
  finally
    f.Free;
  end;
end;

procedure TfrmPrincipal.btnAtividade46Click(Sender: TObject);
var
  f: TFrmAtivivdade46;
begin
  f := TFrmAtivivdade46.Create(Self);

  try
    f.ShowModal;
  finally
    f.Free;
  end;
end;

procedure TfrmPrincipal.btnAtividade47Click(Sender: TObject);
begin
  frmAtividade47.showModal;
end;

procedure TfrmPrincipal.btnAtividade49Click(Sender: TObject);
begin
 frmAtividade49.showModal;
end;

procedure TfrmPrincipal.btnAtividade50Click(Sender: TObject);
begin
 frmAtividade50.showModal;
end;

procedure TfrmPrincipal.btnAtividade51Click(Sender: TObject);
begin
 frmAtividade51.showModal;
end;

procedure TfrmPrincipal.btnAtividade52Click(Sender: TObject);
begin
 frmAtividade52.showModal;
end;

procedure TfrmPrincipal.btnAtivdade48Click(Sender: TObject);
begin
   frmAtividade48.showModal;
end;

end.
