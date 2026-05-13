program Componentes;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UExemplo01 in 'UExemplo01.pas' {frmExemplo01},
  UAtividade01 in 'UAtividade01.pas' {frmAtividade01},
  UAtividade02 in 'UAtividade02.pas' {frmAtividade02},
  Vcl.Themes,
  Vcl.Styles,
  UAtividade43 in 'UAtividade43.pas' {Atividade43: TFrame},
  UAtividade46 in 'UAtividade46.pas' {FrmAtivivdade46},
  UAtividade47 in 'UAtividade47.pas' {frmAtividade47},
  UAtividade48 in 'UAtividade48.pas' {frmAtividade48},
  UAtividade49 in 'UAtividade49.pas' {frmAtividade49},
  UAtividade50 in 'UAtividade50.pas' {frmAtividade50},
  UAtividade51 in 'UAtividade51.pas' {frmAtividade51},
  UAtividade52 in 'UAtividade52.pas' {frmAtividade52};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmExemplo01, frmExemplo01);
  Application.CreateForm(TfrmAtividade01, frmAtividade01);
  Application.CreateForm(TfrmAtividade02, frmAtividade02);
  Application.CreateForm(TFrmAtivivdade46, FrmAtivivdade46);
  Application.CreateForm(TfrmAtividade47, frmAtividade47);
  Application.CreateForm(TfrmAtividade48, frmAtividade48);
  Application.CreateForm(TfrmAtividade49, frmAtividade49);
  Application.CreateForm(TfrmAtividade50, frmAtividade50);
  Application.CreateForm(TfrmAtividade51, frmAtividade51);
  Application.CreateForm(TfrmAtividade52, frmAtividade52);
  Application.Run;
end.
