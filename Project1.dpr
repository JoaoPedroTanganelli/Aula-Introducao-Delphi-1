program Project1;

uses
  Vcl.Forms,
  UAtividade43 in 'UAtividade43.pas' {frmAtividade43};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmAtividade43, frmAtividade43);
  Application.Run;
end.
