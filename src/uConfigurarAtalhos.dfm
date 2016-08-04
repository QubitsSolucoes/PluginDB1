object fConfigurarAtalhos: TfConfigurarAtalhos
  Left = 195
  Top = 125
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configurar Atalhos'
  ClientHeight = 394
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object gbAtalhos: TGroupBox
    Left = 3
    Top = 2
    Width = 281
    Height = 361
    Caption = ' Atalhos '
    TabOrder = 0
    object lbAbrirServidor: TLabel
      Left = 64
      Top = 20
      Width = 70
      Height = 13
      Caption = 'Abrir Servidor:'
    end
    object lbAbrirAplicacao: TLabel
      Left = 59
      Top = 40
      Width = 75
      Height = 13
      Caption = 'Abrir Aplica��o:'
    end
    object lbAbrirDiretorioBin: TLabel
      Left = 46
      Top = 60
      Width = 88
      Height = 13
      Caption = 'Abrir Diret�rio Bin:'
    end
    object lbAbrirSpCfg: TLabel
      Left = 62
      Top = 80
      Width = 72
      Height = 13
      Caption = 'Abrir spCfg.ini:'
    end
    object lbAbrirItemRTC: TLabel
      Left = 44
      Top = 100
      Width = 90
      Height = 13
      Caption = 'Abrir Item no RTC:'
    end
    object lbAbrirVisualizaDTS: TLabel
      Left = 42
      Top = 159
      Width = 92
      Height = 13
      Caption = 'Abrir Visualiza DTS:'
    end
    object lbSpMonitor: TLabel
      Left = 57
      Top = 179
      Width = 77
      Height = 13
      Caption = 'Abrir spMonitor:'
    end
    object lbSpMonitor3: TLabel
      Left = 51
      Top = 199
      Width = 83
      Height = 13
      Caption = 'Abrir spMonitor3:'
    end
    object lbSelectSQL: TLabel
      Left = 56
      Top = 219
      Width = 78
      Height = 13
      Caption = 'Abrir SelectSQL:'
    end
    object lbWinSpy: TLabel
      Left = 68
      Top = 239
      Width = 66
      Height = 13
      Caption = 'Abrir WinSpy:'
    end
    object bvl1: TBevel
      Left = 10
      Top = 145
      Width = 250
      Height = 11
      Shape = bsTopLine
    end
    object Bevel1: TBevel
      Left = 12
      Top = 285
      Width = 250
      Height = 11
      Shape = bsTopLine
    end
    object lbVisualizarDataSet: TLabel
      Left = 44
      Top = 296
      Width = 90
      Height = 13
      Caption = 'Visualizar DataSet:'
    end
    object lblVisualizarDataSetManual: TLabel
      Left = 7
      Top = 316
      Width = 127
      Height = 13
      Caption = 'Visualizar DataSet Manual:'
    end
    object lbLerTStringList: TLabel
      Left = 62
      Top = 336
      Width = 72
      Height = 13
      Caption = 'Ler TStringList:'
    end
    object lbConsultarNoRansack: TLabel
      Left = 26
      Top = 259
      Width = 108
      Height = 13
      Caption = 'Consultar no Ransack:'
    end
    object lbExcluirCache: TLabel
      Left = 66
      Top = 120
      Width = 68
      Height = 13
      Caption = 'Excluir Cache:'
    end
    object hkServidor: THotKey
      Left = 138
      Top = 18
      Width = 110
      Height = 19
      HotKey = 0
      InvalidKeys = [hcNone, hcShift]
      Modifiers = []
      TabOrder = 0
    end
    object hkAplicacao: THotKey
      Left = 138
      Top = 38
      Width = 110
      Height = 19
      HotKey = 0
      InvalidKeys = [hcNone, hcShift]
      Modifiers = []
      TabOrder = 1
    end
    object hkDiretorioBin: THotKey
      Left = 138
      Top = 58
      Width = 110
      Height = 19
      HotKey = 0
      InvalidKeys = [hcNone, hcShift]
      Modifiers = []
      TabOrder = 2
    end
    object hkSpCfg: THotKey
      Left = 138
      Top = 78
      Width = 110
      Height = 19
      HotKey = 0
      InvalidKeys = [hcNone, hcShift]
      Modifiers = []
      TabOrder = 3
    end
    object hkItemRTC: THotKey
      Left = 138
      Top = 98
      Width = 110
      Height = 19
      HotKey = 0
      InvalidKeys = [hcNone, hcShift]
      Modifiers = []
      TabOrder = 4
    end
    object hkVisualizaDTS: THotKey
      Left = 138
      Top = 157
      Width = 110
      Height = 19
      HotKey = 0
      InvalidKeys = [hcNone, hcShift]
      Modifiers = []
      TabOrder = 6
    end
    object hkSpMonitor: THotKey
      Left = 138
      Top = 177
      Width = 110
      Height = 19
      HotKey = 0
      InvalidKeys = [hcNone, hcShift]
      Modifiers = []
      TabOrder = 7
    end
    object hkSpMonitor3: THotKey
      Left = 138
      Top = 197
      Width = 110
      Height = 19
      HotKey = 0
      InvalidKeys = [hcNone, hcShift]
      Modifiers = []
      TabOrder = 8
    end
    object hkSelectSQL: THotKey
      Left = 138
      Top = 217
      Width = 110
      Height = 19
      HotKey = 0
      InvalidKeys = [hcNone, hcShift]
      Modifiers = []
      TabOrder = 9
    end
    object hkWinSpy: THotKey
      Left = 138
      Top = 237
      Width = 110
      Height = 19
      HotKey = 0
      InvalidKeys = [hcNone, hcShift]
      Modifiers = []
      TabOrder = 10
    end
    object hkVisualizarDataSet: THotKey
      Left = 138
      Top = 296
      Width = 110
      Height = 19
      HotKey = 0
      InvalidKeys = [hcNone, hcShift]
      Modifiers = []
      TabOrder = 11
    end
    object hkVisualizarDataSetManual: THotKey
      Left = 138
      Top = 314
      Width = 110
      Height = 19
      HotKey = 0
      InvalidKeys = [hcNone, hcShift]
      Modifiers = []
      TabOrder = 12
    end
    object hkLerTStringList: THotKey
      Left = 138
      Top = 334
      Width = 110
      Height = 19
      HotKey = 0
      InvalidKeys = [hcNone, hcShift]
      Modifiers = []
      TabOrder = 13
    end
    object hkConsultarNoRansack: THotKey
      Left = 138
      Top = 257
      Width = 110
      Height = 19
      HotKey = 0
      InvalidKeys = [hcNone, hcShift]
      Modifiers = []
      TabOrder = 14
    end
    object hkExcluirCache: THotKey
      Left = 138
      Top = 118
      Width = 110
      Height = 19
      HotKey = 0
      InvalidKeys = [hcNone, hcShift]
      Modifiers = []
      TabOrder = 5
    end
  end
  object btnOK: TBitBtn
    Left = 93
    Top = 366
    Width = 100
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = btnOKClick
  end
end
