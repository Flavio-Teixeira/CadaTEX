object CriaPDF: TCriaPDF
  Left = 427
  Top = 110
  BorderStyle = bsDialog
  Caption = 'Cria Arquivo RTF'
  ClientHeight = 512
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 465
    Width = 729
    Height = 41
    TabOrder = 0
    object BT_Sair: TBitBtn
      Left = 646
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = BT_SairClick
      OnKeyPress = BT_SairKeyPress
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
    object BT_Ok: TBitBtn
      Left = 338
      Top = 8
      Width = 53
      Height = 25
      Caption = '&Ok'
      TabOrder = 1
      OnClick = BT_OkClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object Opcao_Anterior: TEdit
      Left = 7
      Top = 11
      Width = 9
      Height = 21
      TabOrder = 2
      Text = 'Opcao_Anterior'
      Visible = False
    end
    object Cliente_Email: TEdit
      Left = 18
      Top = 11
      Width = 9
      Height = 21
      TabOrder = 3
      Text = 'Opcao_Anterior'
      Visible = False
    end
    object Servico: TEdit
      Left = 30
      Top = 11
      Width = 9
      Height = 21
      TabOrder = 4
      Text = 'Opcao_Anterior'
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 729
    Height = 452
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 713
      Height = 436
      Caption = '   Visualiza'#231#227'o   '
      TabOrder = 0
      object RTF_Texto: TJvRichEdit
        Left = 6
        Top = 15
        Width = 700
        Height = 415
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object PrintDialog1: TPrintDialog
    Left = 53
    Top = 473
  end
end
