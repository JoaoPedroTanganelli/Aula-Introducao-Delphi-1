object frmAtividade26: TfrmAtividade26
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Atividade 26'
  ClientHeight = 284
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 30
  object lblNome: TLabel
    Left = 32
    Top = 32
    Width = 62
    Height = 30
    Caption = 'Nome:'
  end
  object lblIdade: TLabel
    Left = 32
    Top = 104
    Width = 57
    Height = 30
    Caption = 'Idade:'
  end
  object lblMensagem: TLabel
    Left = 32
    Top = 192
    Width = 465
    Height = 65
    AutoSize = False
    WordWrap = True
  end
  object edtNome: TEdit
    Left = 112
    Top = 29
    Width = 201
    Height = 38
    TabOrder = 0
  end
  object edtIdade: TEdit
    Left = 112
    Top = 101
    Width = 201
    Height = 38
    TabOrder = 1
  end
  object btnExibeIdade: TButton
    Left = 352
    Top = 56
    Width = 145
    Height = 62
    Caption = 'Exibe Idade'
    TabOrder = 2
    OnClick = btnExibeIdadeClick
  end
end
