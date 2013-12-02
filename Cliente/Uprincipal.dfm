object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Exemplo WebService Soap'
  ClientHeight = 127
  ClientWidth = 552
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
    Left = 16
    Top = 12
    Width = 44
    Height = 13
    Caption = 'Valor A : '
  end
  object Label2: TLabel
    Left = 16
    Top = 35
    Width = 43
    Height = 13
    Caption = 'Valor B : '
  end
  object Label3: TLabel
    Left = 16
    Top = 93
    Width = 55
    Height = 13
    Caption = 'Resultado :'
  end
  object panelsoma: TPanel
    Left = 0
    Top = 0
    Width = 257
    Height = 127
    Align = alLeft
    Alignment = taLeftJustify
    TabOrder = 4
  end
  object edValorA: TEdit
    Left = 80
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edValorB: TEdit
    Left = 80
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnCalcular: TButton
    Left = 103
    Top = 59
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
  object edResultado: TEdit
    Left = 77
    Top = 90
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object panelBanco: TPanel
    Left = 295
    Top = 0
    Width = 257
    Height = 127
    Align = alRight
    Alignment = taRightJustify
    TabOrder = 5
    object Label4: TLabel
      Left = 16
      Top = 16
      Width = 21
      Height = 13
      Caption = 'ID : '
    end
    object Label5: TLabel
      Left = 16
      Top = 35
      Width = 37
      Height = 13
      Caption = 'Nome : '
    end
    object Label6: TLabel
      Left = 16
      Top = 93
      Width = 48
      Height = 13
      Caption = 'Resultado'
    end
    object edId: TEdit
      Left = 71
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edNome: TEdit
      Left = 71
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object btnInserir: TButton
      Left = 95
      Top = 59
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 2
      OnClick = btnInserirClick
    end
    object edResultadoBanco: TEdit
      Left = 70
      Top = 90
      Width = 121
      Height = 21
      TabOrder = 3
    end
  end
  object httpRioSoma: THTTPRIO
    URL = 'http://localhost/ws/WS.dll/soap/Iinterface'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 216
    Top = 8
  end
  object httpRioBanco: THTTPRIO
    WSDLLocation = 'http://localhost/ws/WS.dll/wsdl/IDmWsSoap'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 504
    Top = 9
  end
end
