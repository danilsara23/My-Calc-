object frmCalculator: TfrmCalculator
  Left = 0
  Top = 0
  ActiveControl = eCalculo
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Calculator'
  ClientHeight = 280
  ClientWidth = 219
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 219
    Height = 20
    Align = alTop
    ParentBackground = False
    TabOrder = 0
    object lblView: TLabel
      Left = 6
      Top = 3
      Width = 27
      Height = 14
      Caption = 'View'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = cl3DDkShadow
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblEdit: TLabel
      Left = 47
      Top = 3
      Width = 21
      Height = 14
      Caption = 'Edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = cl3DDkShadow
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblHelp: TLabel
      Left = 80
      Top = 3
      Width = 24
      Height = 14
      Caption = 'Help'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = cl3DDkShadow
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object pnlCalc: TPanel
    Left = 0
    Top = 20
    Width = 219
    Height = 260
    Align = alClient
    TabOrder = 1
    object bMC: TButton
      Left = 6
      Top = 62
      Width = 40
      Height = 30
      Caption = 'MC'
      TabOrder = 0
      OnClick = bMCClick
    end
    object bMR: TButton
      Left = 48
      Top = 63
      Width = 40
      Height = 30
      Caption = 'MR'
      TabOrder = 1
      OnClick = bMRClick
    end
    object bMS: TButton
      Left = 88
      Top = 63
      Width = 40
      Height = 30
      Caption = 'MS'
      TabOrder = 2
    end
    object bMMas: TButton
      Left = 129
      Top = 63
      Width = 40
      Height = 30
      Caption = 'M+'
      TabOrder = 3
      OnClick = bMMasClick
    end
    object bMMenos: TButton
      Left = 170
      Top = 63
      Width = 40
      Height = 30
      Caption = 'M-'
      TabOrder = 4
      OnClick = bMMenosClick
    end
    object bDeshacer: TButton
      Left = 6
      Top = 96
      Width = 40
      Height = 30
      Caption = #8592
      TabOrder = 5
      OnClick = bDeshacerClick
    end
    object bClearE: TButton
      Left = 48
      Top = 96
      Width = 40
      Height = 30
      Caption = 'CE'
      TabOrder = 6
      OnClick = bClearEClick
    end
    object bClear: TButton
      Left = 90
      Top = 96
      Width = 40
      Height = 30
      Caption = 'C'
      TabOrder = 7
      OnClick = bClearClick
    end
    object bMasMenos: TButton
      Left = 129
      Top = 96
      Width = 40
      Height = 30
      Caption = #177
      TabOrder = 8
    end
    object bRaiz: TButton
      Left = 170
      Top = 96
      Width = 40
      Height = 30
      Caption = #8730
      TabOrder = 9
      OnClick = bRaizClick
    end
    object bDiv: TButton
      Left = 129
      Top = 128
      Width = 40
      Height = 30
      Caption = '/'
      TabOrder = 10
      OnClick = bDivClick
    end
    object bPorciento: TButton
      Left = 170
      Top = 128
      Width = 40
      Height = 30
      Caption = '%'
      TabOrder = 11
      OnClick = bPorcientoClick
    end
    object b9: TButton
      Left = 88
      Top = 128
      Width = 40
      Height = 30
      Caption = '9'
      TabOrder = 12
      OnClick = b9Click
    end
    object b8: TButton
      Left = 48
      Top = 128
      Width = 40
      Height = 30
      Caption = '8'
      TabOrder = 13
      OnClick = b8Click
    end
    object b7: TButton
      Left = 6
      Top = 128
      Width = 40
      Height = 30
      Caption = '7'
      TabOrder = 14
      OnClick = b7Click
    end
    object b6: TButton
      Left = 88
      Top = 159
      Width = 40
      Height = 30
      Caption = '6'
      TabOrder = 15
      OnClick = b6Click
    end
    object b5: TButton
      Left = 47
      Top = 160
      Width = 40
      Height = 30
      Caption = '5'
      TabOrder = 16
      OnClick = b5Click
    end
    object bUnoX: TButton
      Left = 170
      Top = 160
      Width = 40
      Height = 30
      Caption = '1/x'
      TabOrder = 17
      OnClick = bUnoXClick
    end
    object bMultip: TButton
      Left = 129
      Top = 159
      Width = 40
      Height = 30
      Caption = '*'
      TabOrder = 18
      OnClick = bMultipClick
    end
    object b1: TButton
      Left = 6
      Top = 193
      Width = 40
      Height = 30
      Caption = '1'
      TabOrder = 19
      OnClick = b1Click
    end
    object b2: TButton
      Left = 47
      Top = 193
      Width = 40
      Height = 30
      Caption = '2'
      TabOrder = 20
      OnClick = b2Click
    end
    object b3: TButton
      Left = 88
      Top = 193
      Width = 40
      Height = 30
      Caption = '3'
      TabOrder = 21
      OnClick = b3Click
    end
    object bMenos: TButton
      Left = 129
      Top = 192
      Width = 40
      Height = 30
      Caption = '-'
      TabOrder = 22
      OnClick = bMenosClick
    end
    object eResultado: TEdit
      Left = 7
      Top = 29
      Width = 204
      Height = 25
      Alignment = taRightJustify
      BorderStyle = bsNone
      TabOrder = 23
    end
    object eCalculo: TEdit
      Left = 7
      Top = 6
      Width = 204
      Height = 24
      Alignment = taRightJustify
      BorderStyle = bsNone
      TabOrder = 24
    end
    object b4: TButton
      Left = 6
      Top = 160
      Width = 40
      Height = 30
      Caption = '4'
      TabOrder = 25
      OnClick = b4Click
    end
    object b0: TButton
      Left = 7
      Top = 224
      Width = 78
      Height = 30
      Caption = '0'
      TabOrder = 26
      OnClick = b0Click
    end
    object bPunto: TButton
      Left = 87
      Top = 224
      Width = 40
      Height = 30
      Caption = '.'
      TabOrder = 27
      OnClick = bPuntoClick
    end
    object bMas: TButton
      Left = 129
      Top = 224
      Width = 40
      Height = 30
      Caption = '+'
      TabOrder = 28
      OnClick = bMasClick
    end
    object bIgual: TButton
      Left = 171
      Top = 193
      Width = 40
      Height = 60
      Caption = '='
      TabOrder = 29
      OnClick = bIgualClick
    end
  end
end
