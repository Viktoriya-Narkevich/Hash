object FormAdd: TFormAdd
  Left = 230
  Top = 129
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = '����������'
  ClientHeight = 379
  ClientWidth = 379
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_Title: TLabel
    Left = 8
    Top = 24
    Width = 86
    Height = 19
    Caption = '��������:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_Director: TLabel
    Left = 8
    Top = 56
    Width = 88
    Height = 19
    Caption = '��������:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_Actors: TLabel
    Left = 8
    Top = 88
    Width = 70
    Height = 19
    Caption = '������:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_Summary: TLabel
    Left = 8
    Top = 184
    Width = 86
    Height = 19
    Caption = '��������:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit_Title: TEdit
    Left = 104
    Top = 24
    Width = 257
    Height = 21
    TabOrder = 0
    OnChange = Edit_Change
  end
  object Edit_Director: TEdit
    Left = 104
    Top = 56
    Width = 257
    Height = 21
    TabOrder = 1
    OnChange = Edit_Change
  end
  object btn_Ok: TButton
    Left = 32
    Top = 336
    Width = 75
    Height = 25
    Caption = '��'
    Default = True
    Enabled = False
    TabOrder = 4
    OnClick = btn_OkClick
  end
  object btn_Cancel: TButton
    Left = 264
    Top = 336
    Width = 75
    Height = 25
    Cancel = True
    Caption = '�������'
    ModalResult = 2
    TabOrder = 5
  end
  object mmo_Summary: TMemo
    Left = 104
    Top = 184
    Width = 257
    Height = 145
    ScrollBars = ssVertical
    TabOrder = 3
    WantReturns = False
    OnChange = Edit_Change
  end
  object mmo_Actors: TMemo
    Left = 104
    Top = 88
    Width = 257
    Height = 89
    ScrollBars = ssVertical
    TabOrder = 2
    WantReturns = False
    OnChange = Edit_Change
  end
end
