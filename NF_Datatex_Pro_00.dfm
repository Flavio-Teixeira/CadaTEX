object NF_DatatexPro00: TNF_DatatexPro00
  Left = 192
  Top = 107
  BorderStyle = bsDialog
  Caption = 'Nota Fiscal - NS'
  ClientHeight = 326
  ClientWidth = 565
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 6
    Width = 550
    Height = 79
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 3
      Width = 533
      Height = 67
      Caption = '  Dados para a Procura  '
      TabOrder = 0
      object Label1: TLabel
        Left = 217
        Top = 38
        Width = 16
        Height = 13
        Caption = 'Por'
      end
      object Label2: TLabel
        Left = 8
        Top = 20
        Width = 40
        Height = 13
        Caption = 'Procurar'
      end
      object Procurar: TEdit
        Left = 8
        Top = 35
        Width = 200
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object BT_Procurar: TBitBtn
        Left = 448
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Procurar'
        TabOrder = 1
        OnClick = BT_ProcurarClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888800000888880000080F000888880F00080F000888880F
          0008000000080000000800F000000F00000800F000800F00000800F000800F00
          00088000000000000088880F00080F0008888800000800000888888000888000
          88888880F08880F0888888800088800088888888888888888888}
      end
      object Opcoes: TComboBox
        Left = 240
        Top = 34
        Width = 200
        Height = 21
        BevelInner = bvNone
        BevelKind = bkSoft
        Ctl3D = False
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 2
        Text = 'Raz'#227'o Social'
        Items.Strings = (
          'Raz'#227'o Social'
          'Nome Fantasia'
          'CNPJ')
      end
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 90
    Width = 550
    Height = 182
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 8
      Top = 4
      Width = 534
      Height = 169
      Caption = '  Clientes Encontrados  '
      TabOrder = 0
      object DBG_Cliente_NF: TDBGrid
        Left = 8
        Top = 15
        Width = 517
        Height = 146
        Ctl3D = False
        DataSource = ConexaoBD.DS_Clientes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBG_Cliente_NFCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Cliente_Codigo'
            Title.Caption = 'CNPJ'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Nome'
            Title.Caption = 'Nome Fantasia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Razao_Social'
            Title.Caption = 'Raz'#227'o Social'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 179
            Visible = True
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 277
    Width = 550
    Height = 41
    TabOrder = 2
    object BT_Sair: TBitBtn
      Left = 238
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = BT_SairClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
    object Empresa: TEdit
      Left = 4
      Top = 3
      Width = 8
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Visible = False
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 32
    Top = 222
  end
end
