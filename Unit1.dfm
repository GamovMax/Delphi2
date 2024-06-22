object Form1: TForm1
  Left = 189
  Top = 117
  Width = 426
  Height = 277
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 64
    Width = 170
    Height = 16
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1080#1084#1077#1088#1086#1074':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 24
    Width = 48
    Height = 16
    Caption = 'Label2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object ComboBox1: TComboBox
    Left = 32
    Top = 24
    Width = 105
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = #1054#1087#1077#1088#1072#1094#1080#1103
    Items.Strings = (
      '+'
      '-'
      '*'
      '/')
  end
  object Edit1: TEdit
    Left = 32
    Top = 88
    Width = 137
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 32
    Top = 120
    Width = 105
    Height = 25
    Caption = #1044#1072#1083#1077#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object ComboBox2: TComboBox
    Left = 232
    Top = 24
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = #1056#1072#1079#1088#1103#1076#1085#1086#1089#1090#1100' '#1086#1087#1077#1088#1072#1085#1076#1086#1074
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5')
  end
  object MainMenu1: TMainMenu
    Left = 392
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1044#1072#1083#1077#1077
        OnClick = Button1Click
      end
      object N3: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N3Click
      end
    end
    object N4: TMenuItem
      Caption = #1055#1088#1072#1074#1082#1072
      object N5: TMenuItem
        Caption = #1047#1072#1085#1086#1074#1086
        OnClick = N5Click
      end
    end
    object N6: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object N7: TMenuItem
        Caption = #1054#1073' '#1072#1074#1090#1086#1088#1077
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N8Click
      end
    end
  end
end
