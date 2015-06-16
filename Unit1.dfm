object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 202
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 38
    Top = 32
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 23
    Top = 67
    Width = 42
    Height = 13
    Caption = 'Telefone'
  end
  object Label3: TLabel
    Left = 46
    Top = 100
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Button1: TButton
    Left = 240
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object EdtNome: TEdit
    Left = 71
    Top = 26
    Width = 164
    Height = 25
    TabOrder = 1
  end
  object EdtTelefone: TEdit
    Left = 70
    Top = 57
    Width = 121
    Height = 25
    TabOrder = 2
  end
  object EdtCPF: TEdit
    Left = 70
    Top = 88
    Width = 121
    Height = 25
    TabOrder = 3
  end
  object Button2: TButton
    Left = 104
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 4
    OnClick = Button2Click
  end
  object cxImage1: TcxImage
    Left = 323
    Top = 94
    TabOrder = 5
    Height = 100
    Width = 106
  end
  object PgConnection1: TPgConnection
    Username = 'postgres'
    Password = 'bbfp362'
    Server = '127.0.0.1'
    Connected = True
    LoginPrompt = False
    Database = 'casaoleiro'
    Left = 392
    Top = 16
  end
  object PgQuery1: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO teste'
      '  (nome, telefone, "CPF")'
      'VALUES'
      '  (:nome, :telefone, :"CPF")')
    Connection = PgConnection1
    SQL.Strings = (
      'select * from teste')
    Active = True
    Left = 352
    Top = 16
  end
  object OpenDialog: TOpenDialog
    Left = 296
    Top = 152
  end
end
