object NF_DatatexPro01: TNF_DatatexPro01
  Left = 419
  Top = 156
  BorderStyle = bsDialog
  Caption = 'Nota Fiscal - NS - IMPRESS'#195'O'
  ClientHeight = 544
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label47: TLabel
    Left = 594
    Top = 474
    Width = 72
    Height = 13
    Caption = 'Transportadora'
  end
  object Panel1: TPanel
    Left = 4
    Top = 2
    Width = 774
    Height = 42
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 56
      Height = 13
      Caption = 'Dt. Emiss'#227'o'
    end
    object Label2: TLabel
      Left = 75
      Top = 2
      Width = 108
      Height = 13
      Caption = 'Natureza de Opera'#231#227'o'
    end
    object Label22: TLabel
      Left = 262
      Top = 3
      Width = 28
      Height = 13
      Caption = 'CFOP'
    end
    object Label23: TLabel
      Left = 316
      Top = 2
      Width = 137
      Height = 13
      Caption = 'Inscri'#231#227'o Estadual Substituto'
    end
    object Label24: TLabel
      Left = 463
      Top = 2
      Width = 62
      Height = 13
      Caption = 'Tipo da Nota'
    end
    object Natureza_Operacao: TComboBox
      Left = 75
      Top = 17
      Width = 182
      Height = 21
      BevelInner = bvNone
      BevelKind = bkSoft
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 1
      Text = 'PRODUTOS / EQUIPAMENTOS'
      OnKeyPress = Natureza_OperacaoKeyPress
      Items.Strings = (
        'PRODUTOS / EQUIPAMENTOS')
    end
    object Data_Emissao: TMaskEdit
      Left = 5
      Top = 18
      Width = 64
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1;_'
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
      OnKeyPress = Data_EmissaoKeyPress
    end
    object BT_Imprimir: TBitBtn
      Left = 610
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 6
      OnClick = BT_ImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BT_Sair: TBitBtn
      Left = 690
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 7
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
    object CFOP: TEdit
      Left = 262
      Top = 18
      Width = 48
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnKeyPress = CFOPKeyPress
    end
    object Inscricao_Estadual_Substituto: TEdit
      Left = 316
      Top = 17
      Width = 138
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnKeyPress = Inscricao_Estadual_SubstitutoKeyPress
    end
    object Tipo_Nota_Saida: TRadioButton
      Left = 462
      Top = 18
      Width = 55
      Height = 17
      Caption = 'Sa'#237'da'
      Checked = True
      TabOrder = 4
      TabStop = True
      OnKeyPress = Tipo_Nota_SaidaKeyPress
    end
    object Tipo_Nota_Entrada: TRadioButton
      Left = 520
      Top = 18
      Width = 55
      Height = 17
      Caption = 'Entrada'
      TabOrder = 5
      OnKeyPress = Tipo_Nota_EntradaKeyPress
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 47
    Width = 773
    Height = 131
    TabOrder = 1
    object GroupBox2: TGroupBox
      Left = 6
      Top = 2
      Width = 760
      Height = 123
      Caption = '  Dados do Cliente  '
      TabOrder = 0
      object Label3: TLabel
        Left = 96
        Top = 13
        Width = 32
        Height = 13
        Caption = 'Cliente'
      end
      object Label4: TLabel
        Left = 8
        Top = 47
        Width = 46
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label7: TLabel
        Left = 345
        Top = 47
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object Label8: TLabel
        Left = 381
        Top = 47
        Width = 21
        Height = 13
        Caption = 'CEP'
      end
      object Label9: TLabel
        Left = 443
        Top = 12
        Width = 27
        Height = 13
        Caption = 'CNPJ'
      end
      object Label10: TLabel
        Left = 456
        Top = 47
        Width = 87
        Height = 13
        Caption = 'Inscri'#231#227'o Estadual'
      end
      object Label6: TLabel
        Left = 221
        Top = 47
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label5: TLabel
        Left = 281
        Top = 13
        Width = 27
        Height = 13
        Caption = 'Bairro'
      end
      object Label15: TLabel
        Left = 565
        Top = 12
        Width = 30
        Height = 13
        Caption = 'Fatura'
      end
      object Label19: TLabel
        Left = 689
        Top = 12
        Width = 56
        Height = 13
        Caption = 'Vencimento'
      end
      object Label21: TLabel
        Left = 8
        Top = 14
        Width = 76
        Height = 13
        Caption = 'Nro. Nota-Fiscal'
      end
      object Label20: TLabel
        Left = 8
        Top = 82
        Width = 221
        Height = 13
        Caption = 'Endere'#231'o de Cobran'#231'a / Pra'#231'a de Pagamento'
      end
      object Label37: TLabel
        Left = 620
        Top = 12
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object Cliente: TEdit
        Left = 96
        Top = 28
        Width = 181
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnKeyPress = ClienteKeyPress
      end
      object Endereco: TEdit
        Left = 8
        Top = 62
        Width = 208
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnKeyPress = EnderecoKeyPress
      end
      object Estado: TEdit
        Left = 345
        Top = 62
        Width = 34
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnKeyPress = EstadoKeyPress
      end
      object Cep: TEdit
        Left = 381
        Top = 62
        Width = 58
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        OnKeyPress = CepKeyPress
      end
      object Cnpj: TEdit
        Left = 443
        Top = 27
        Width = 105
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnKeyPress = CnpjKeyPress
      end
      object Inscricao_Estadual: TEdit
        Left = 456
        Top = 62
        Width = 91
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        OnKeyPress = Inscricao_EstadualKeyPress
      end
      object Cidade: TEdit
        Left = 219
        Top = 62
        Width = 124
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnKeyPress = CidadeKeyPress
      end
      object Bairro: TEdit
        Left = 279
        Top = 28
        Width = 161
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnKeyPress = BairroKeyPress
      end
      object Fatura_1: TEdit
        Left = 565
        Top = 26
        Width = 50
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
        OnKeyPress = Fatura_1KeyPress
      end
      object Vencimento_1: TEdit
        Left = 689
        Top = 26
        Width = 65
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 12
        OnKeyPress = Vencimento_1KeyPress
      end
      object Nota_Fiscal: TEdit
        Left = 8
        Top = 28
        Width = 86
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnKeyPress = Nota_FiscalKeyPress
      end
      object Fatura_2: TEdit
        Left = 565
        Top = 50
        Width = 50
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 13
        OnKeyPress = Fatura_2KeyPress
      end
      object Vencimento_2: TEdit
        Left = 689
        Top = 50
        Width = 65
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 15
        OnKeyPress = Vencimento_2KeyPress
      end
      object Fatura_3: TEdit
        Left = 565
        Top = 74
        Width = 50
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 16
        OnKeyPress = Fatura_3KeyPress
      end
      object Vencimento_3: TEdit
        Left = 689
        Top = 74
        Width = 65
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 18
        OnKeyPress = Vencimento_3KeyPress
      end
      object Fatura_4: TEdit
        Left = 565
        Top = 97
        Width = 50
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 19
        OnKeyPress = Fatura_4KeyPress
      end
      object Vencimento_4: TEdit
        Left = 689
        Top = 97
        Width = 65
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 21
        OnKeyPress = Vencimento_4KeyPress
      end
      object Endereco_Cobranca: TEdit
        Left = 8
        Top = 97
        Width = 538
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        OnKeyPress = Endereco_CobrancaKeyPress
      end
      object Valor_1: TEdit
        Left = 620
        Top = 26
        Width = 65
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 11
        OnKeyPress = Valor_1KeyPress
      end
      object Valor_2: TEdit
        Left = 620
        Top = 50
        Width = 65
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 14
        OnKeyPress = Valor_2KeyPress
      end
      object Valor_3: TEdit
        Left = 620
        Top = 74
        Width = 65
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 17
        OnKeyPress = Valor_3KeyPress
      end
      object Valor_4: TEdit
        Left = 620
        Top = 97
        Width = 65
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 20
        OnKeyPress = Valor_4KeyPress
      end
    end
  end
  object TPanel
    Left = 4
    Top = 180
    Width = 773
    Height = 359
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 6
      Top = 2
      Width = 761
      Height = 351
      Caption = '  Descri'#231#227'o dos Produtos  '
      TabOrder = 0
      object Label11: TLabel
        Left = 164
        Top = 16
        Width = 34
        Height = 13
        Caption = 'Cl.Fisc.'
      end
      object Label12: TLabel
        Left = 51
        Top = 16
        Width = 93
        Height = 13
        Caption = 'Desc. dos Produtos'
      end
      object Label13: TLabel
        Left = 317
        Top = 16
        Width = 54
        Height = 13
        Caption = 'Vlr. Unit'#225'rio'
      end
      object Label14: TLabel
        Left = 380
        Top = 16
        Width = 42
        Height = 13
        Caption = 'Vlr. Total'
      end
      object Label18: TLabel
        Left = 672
        Top = 310
        Width = 83
        Height = 13
        Caption = 'Vlr. Total da Nota'
      end
      object Label16: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        Caption = 'Codigo'
      end
      object Label17: TLabel
        Left = 9
        Top = 286
        Width = 68
        Height = 39
        Caption = 'Descri'#231#227'o dos Servi'#231'os Prestados'
        WordWrap = True
      end
      object Label25: TLabel
        Left = 202
        Top = 16
        Width = 36
        Height = 13
        Caption = 'Sit.Trib.'
      end
      object Label26: TLabel
        Left = 280
        Top = 16
        Width = 26
        Height = 13
        Caption = 'Qtde.'
      end
      object Label27: TLabel
        Left = 443
        Top = 16
        Width = 26
        Height = 13
        Caption = 'ICMS'
      end
      object Label28: TLabel
        Left = 481
        Top = 16
        Width = 13
        Height = 13
        Caption = 'IPI'
      end
      object Label29: TLabel
        Left = 519
        Top = 16
        Width = 46
        Height = 13
        Caption = 'Vlr. do IPI'
      end
      object Label30: TLabel
        Left = 326
        Top = 328
        Width = 50
        Height = 13
        Caption = 'Vlr. do ISS'
      end
      object Label31: TLabel
        Left = 448
        Top = 328
        Width = 68
        Height = 13
        Caption = 'Total Servi'#231'os'
      end
      object Label32: TLabel
        Left = 583
        Top = 310
        Width = 70
        Height = 13
        Caption = 'Vlr. Total Prod.'
      end
      object Label33: TLabel
        Left = 582
        Top = 16
        Width = 60
        Height = 13
        Caption = 'B.Calc.ICMS'
      end
      object Label34: TLabel
        Left = 712
        Top = 16
        Width = 41
        Height = 13
        Caption = 'Vlr.ICMS'
      end
      object Label35: TLabel
        Left = 582
        Top = 50
        Width = 85
        Height = 13
        Caption = 'B.Calc.ICMS.Sub.'
      end
      object Label36: TLabel
        Left = 688
        Top = 50
        Width = 66
        Height = 13
        Caption = 'Vlr.ICMS.Sub.'
      end
      object Label39: TLabel
        Left = 582
        Top = 87
        Width = 42
        Height = 13
        Caption = 'Vlr. Frete'
      end
      object Label40: TLabel
        Left = 701
        Top = 87
        Width = 52
        Height = 13
        Caption = 'Vlr. Seguro'
      end
      object Label41: TLabel
        Left = 582
        Top = 122
        Width = 81
        Height = 13
        Caption = 'Outras Despesas'
      end
      object Label42: TLabel
        Left = 696
        Top = 122
        Width = 58
        Height = 13
        Caption = 'Vlr. Total IPI'
      end
      object Label43: TLabel
        Left = 582
        Top = 171
        Width = 27
        Height = 13
        Caption = 'Frete:'
      end
      object Label44: TLabel
        Left = 582
        Top = 190
        Width = 72
        Height = 13
        Caption = 'Transportadora'
      end
      object Label45: TLabel
        Left = 588
        Top = 211
        Width = 23
        Height = 13
        Caption = 'Qtde'
      end
      object Label46: TLabel
        Left = 669
        Top = 210
        Width = 38
        Height = 13
        Caption = 'Esp'#233'cie'
      end
      object Label49: TLabel
        Left = 687
        Top = 230
        Width = 20
        Height = 13
        Caption = 'Nro.'
      end
      object Label50: TLabel
        Left = 582
        Top = 230
        Width = 30
        Height = 13
        Caption = 'Marca'
      end
      object Label48: TLabel
        Left = 582
        Top = 250
        Width = 35
        Height = 13
        Caption = 'P.Bruto'
      end
      object Label51: TLabel
        Left = 680
        Top = 250
        Width = 27
        Height = 13
        Caption = 'P.Liq.'
      end
      object Label52: TLabel
        Left = 583
        Top = 275
        Width = 33
        Height = 13
        Caption = 'Pedido'
      end
      object Label53: TLabel
        Left = 685
        Top = 275
        Width = 21
        Height = 13
        Caption = 'O.S.'
      end
      object Label38: TLabel
        Left = 243
        Top = 16
        Width = 25
        Height = 13
        Caption = 'Unid.'
      end
      object Classificacao_1: TEdit
        Left = 164
        Top = 31
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnKeyPress = Classificacao_1KeyPress
      end
      object Descricao_1: TEdit
        Left = 51
        Top = 31
        Width = 110
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnKeyPress = Descricao_1KeyPress
      end
      object Vlr_Unitario_1: TEdit
        Left = 317
        Top = 31
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = Vlr_Unitario_1Exit
        OnKeyPress = Vlr_Unitario_1KeyPress
      end
      object Vlr_Total_1: TEdit
        Left = 380
        Top = 31
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 7
        OnKeyPress = Vlr_Total_1KeyPress
      end
      object Classificacao_2: TEdit
        Left = 164
        Top = 51
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 13
        OnKeyPress = Classificacao_2KeyPress
      end
      object Descricao_2: TEdit
        Left = 51
        Top = 51
        Width = 110
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 12
        OnKeyPress = Descricao_2KeyPress
      end
      object Vlr_Unitario_2: TEdit
        Left = 317
        Top = 51
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 17
        OnExit = Vlr_Unitario_2Exit
        OnKeyPress = Vlr_Unitario_2KeyPress
      end
      object Vlr_Total_2: TEdit
        Left = 380
        Top = 51
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 18
        OnKeyPress = Vlr_Total_2KeyPress
      end
      object Classificacao_4: TEdit
        Left = 164
        Top = 91
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 35
        OnKeyPress = Classificacao_4KeyPress
      end
      object Descricao_4: TEdit
        Left = 51
        Top = 91
        Width = 110
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 34
        OnKeyPress = Descricao_4KeyPress
      end
      object Vlr_Unitario_4: TEdit
        Left = 317
        Top = 91
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 39
        OnExit = Vlr_Unitario_4Exit
        OnKeyPress = Vlr_Unitario_4KeyPress
      end
      object Vlr_Total_4: TEdit
        Left = 380
        Top = 91
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 40
        OnKeyPress = Vlr_Total_4KeyPress
      end
      object Classificacao_5: TEdit
        Left = 164
        Top = 111
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 46
        OnKeyPress = Classificacao_5KeyPress
      end
      object Descricao_5: TEdit
        Left = 51
        Top = 111
        Width = 110
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 45
        OnKeyPress = Descricao_5KeyPress
      end
      object Vlr_Unitario_5: TEdit
        Left = 317
        Top = 111
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 50
        OnExit = Vlr_Unitario_5Exit
        OnKeyPress = Vlr_Unitario_5KeyPress
      end
      object Vlr_Total_5: TEdit
        Left = 380
        Top = 111
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 51
        OnKeyPress = Vlr_Total_5KeyPress
      end
      object Classificacao_6: TEdit
        Left = 164
        Top = 131
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 57
        OnKeyPress = Classificacao_6KeyPress
      end
      object Descricao_6: TEdit
        Left = 51
        Top = 131
        Width = 110
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 56
        OnKeyPress = Descricao_6KeyPress
      end
      object Vlr_Unitario_6: TEdit
        Left = 317
        Top = 131
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 61
        OnExit = Vlr_Unitario_6Exit
        OnKeyPress = Vlr_Unitario_6KeyPress
      end
      object Vlr_Total_6: TEdit
        Left = 380
        Top = 131
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 62
        OnKeyPress = Vlr_Total_6KeyPress
      end
      object Classificacao_7: TEdit
        Left = 164
        Top = 151
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 68
        OnKeyPress = Classificacao_7KeyPress
      end
      object Descricao_7: TEdit
        Left = 51
        Top = 151
        Width = 110
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 67
        OnKeyPress = Descricao_7KeyPress
      end
      object Vlr_Unitario_7: TEdit
        Left = 317
        Top = 151
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 72
        OnExit = Vlr_Unitario_7Exit
        OnKeyPress = Vlr_Unitario_7KeyPress
      end
      object Vlr_Total_7: TEdit
        Left = 380
        Top = 151
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 73
        OnKeyPress = Vlr_Total_7KeyPress
      end
      object Classificacao_8: TEdit
        Left = 164
        Top = 171
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 79
        OnKeyPress = Classificacao_8KeyPress
      end
      object Descricao_8: TEdit
        Left = 51
        Top = 171
        Width = 110
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 78
        OnKeyPress = Descricao_8KeyPress
      end
      object Vlr_Unitario_8: TEdit
        Left = 317
        Top = 171
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 83
        OnExit = Vlr_Unitario_8Exit
        OnKeyPress = Vlr_Unitario_8KeyPress
      end
      object Vlr_Total_8: TEdit
        Left = 380
        Top = 171
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 84
        OnKeyPress = Vlr_Total_8KeyPress
      end
      object Classificacao_9: TEdit
        Left = 164
        Top = 191
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 90
        OnKeyPress = Classificacao_9KeyPress
      end
      object Descricao_9: TEdit
        Left = 51
        Top = 191
        Width = 110
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 89
        OnKeyPress = Descricao_9KeyPress
      end
      object Vlr_Unitario_9: TEdit
        Left = 317
        Top = 191
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 94
        OnExit = Vlr_Unitario_9Exit
        OnKeyPress = Vlr_Unitario_9KeyPress
      end
      object Vlr_Total_9: TEdit
        Left = 380
        Top = 191
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 95
        OnKeyPress = Vlr_Total_9KeyPress
      end
      object Classificacao_10: TEdit
        Left = 164
        Top = 211
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 101
        OnKeyPress = Classificacao_10KeyPress
      end
      object Descricao_10: TEdit
        Left = 51
        Top = 211
        Width = 110
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 100
        OnKeyPress = Descricao_10KeyPress
      end
      object Vlr_Unitario_10: TEdit
        Left = 317
        Top = 211
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 105
        OnExit = Vlr_Unitario_10Exit
        OnKeyPress = Vlr_Unitario_10KeyPress
      end
      object Vlr_Total_10: TEdit
        Left = 380
        Top = 211
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 106
        OnKeyPress = Vlr_Total_10KeyPress
      end
      object Classificacao_11: TEdit
        Left = 164
        Top = 231
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 112
        OnKeyPress = Classificacao_11KeyPress
      end
      object Descricao_11: TEdit
        Left = 51
        Top = 231
        Width = 110
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 111
        OnKeyPress = Descricao_11KeyPress
      end
      object Vlr_Unitario_11: TEdit
        Left = 317
        Top = 231
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 116
        OnExit = Vlr_Unitario_11Exit
        OnKeyPress = Vlr_Unitario_11KeyPress
      end
      object Vlr_Total_11: TEdit
        Left = 380
        Top = 231
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 117
        OnKeyPress = Vlr_Total_11KeyPress
      end
      object Classificacao_12: TEdit
        Left = 164
        Top = 251
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 123
        OnKeyPress = Classificacao_12KeyPress
      end
      object Descricao_12: TEdit
        Left = 51
        Top = 251
        Width = 110
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 122
        OnKeyPress = Descricao_12KeyPress
      end
      object Vlr_Unitario_12: TEdit
        Left = 317
        Top = 251
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 127
        OnExit = Vlr_Unitario_12Exit
        OnKeyPress = Vlr_Unitario_12KeyPress
      end
      object Vlr_Total_12: TEdit
        Left = 380
        Top = 251
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 128
        OnKeyPress = Vlr_Total_12KeyPress
      end
      object Vlr_Total_Nota: TEdit
        Left = 671
        Top = 325
        Width = 85
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 157
        Text = '0'
        OnKeyPress = Vlr_Total_NotaKeyPress
      end
      object Classificacao_3: TEdit
        Left = 164
        Top = 71
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 24
        OnKeyPress = Classificacao_3KeyPress
      end
      object Descricao_3: TEdit
        Left = 51
        Top = 71
        Width = 110
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 23
        OnKeyPress = Descricao_3KeyPress
      end
      object Vlr_Unitario_3: TEdit
        Left = 317
        Top = 71
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 28
        OnExit = Vlr_Unitario_3Exit
        OnKeyPress = Vlr_Unitario_3KeyPress
      end
      object Vlr_Total_3: TEdit
        Left = 380
        Top = 71
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 29
        OnKeyPress = Vlr_Total_3KeyPress
      end
      object Empresa: TEdit
        Left = 21
        Top = 318
        Width = 8
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 158
        Visible = False
      end
      object Codigo_1: TEdit
        Left = 8
        Top = 31
        Width = 40
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnKeyPress = Codigo_1KeyPress
      end
      object Codigo_2: TEdit
        Left = 8
        Top = 51
        Width = 40
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 11
        OnKeyPress = Codigo_2KeyPress
      end
      object Codigo_3: TEdit
        Left = 8
        Top = 71
        Width = 40
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 22
        OnKeyPress = Codigo_3KeyPress
      end
      object Codigo_4: TEdit
        Left = 8
        Top = 91
        Width = 40
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 33
        OnKeyPress = Codigo_4KeyPress
      end
      object Codigo_5: TEdit
        Left = 8
        Top = 111
        Width = 40
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 44
        OnKeyPress = Codigo_5KeyPress
      end
      object Codigo_6: TEdit
        Left = 8
        Top = 131
        Width = 40
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 55
        OnKeyPress = Codigo_6KeyPress
      end
      object Codigo_7: TEdit
        Left = 8
        Top = 151
        Width = 40
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 66
        OnKeyPress = Codigo_7KeyPress
      end
      object Codigo_8: TEdit
        Left = 8
        Top = 171
        Width = 40
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 77
        OnKeyPress = Codigo_8KeyPress
      end
      object Codigo_9: TEdit
        Left = 8
        Top = 191
        Width = 40
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 88
        OnKeyPress = Codigo_9KeyPress
      end
      object Codigo_10: TEdit
        Left = 8
        Top = 211
        Width = 40
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 99
        OnKeyPress = Codigo_10KeyPress
      end
      object Codigo_11: TEdit
        Left = 8
        Top = 231
        Width = 40
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 110
        OnKeyPress = Codigo_11KeyPress
      end
      object Codigo_12: TEdit
        Left = 8
        Top = 251
        Width = 40
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 121
        OnKeyPress = Codigo_12KeyPress
      end
      object Servico: TEdit
        Left = 31
        Top = 318
        Width = 8
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 159
        Visible = False
      end
      object Observacoes_Servico_1: TEdit
        Left = 82
        Top = 283
        Width = 497
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 132
        OnKeyPress = Observacoes_Servico_1KeyPress
      end
      object Venda_Manutencao_Descricao: TJvRichEdit
        Left = 9
        Top = 318
        Width = 8
        Height = 19
        AutoSize = False
        TabOrder = 160
        Visible = False
      end
      object Situacao_1: TEdit
        Left = 202
        Top = 31
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        OnKeyPress = Situacao_1KeyPress
      end
      object Situacao_2: TEdit
        Left = 202
        Top = 51
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 14
        OnKeyPress = Situacao_2KeyPress
      end
      object Situacao_3: TEdit
        Left = 202
        Top = 71
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 25
        OnKeyPress = Situacao_3KeyPress
      end
      object Situacao_4: TEdit
        Left = 202
        Top = 91
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 36
        OnKeyPress = Situacao_4KeyPress
      end
      object Situacao_5: TEdit
        Left = 202
        Top = 111
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 47
        OnKeyPress = Situacao_5KeyPress
      end
      object Situacao_6: TEdit
        Left = 202
        Top = 131
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 58
        OnKeyPress = Situacao_6KeyPress
      end
      object Situacao_7: TEdit
        Left = 202
        Top = 151
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 69
        OnKeyPress = Situacao_7KeyPress
      end
      object Situacao_8: TEdit
        Left = 202
        Top = 171
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 80
        OnKeyPress = Situacao_8KeyPress
      end
      object Situacao_9: TEdit
        Left = 202
        Top = 191
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 91
        OnKeyPress = Situacao_9KeyPress
      end
      object Situacao_10: TEdit
        Left = 202
        Top = 211
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 102
        OnKeyPress = Situacao_10KeyPress
      end
      object Situacao_11: TEdit
        Left = 202
        Top = 231
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 113
        OnKeyPress = Situacao_11KeyPress
      end
      object Situacao_12: TEdit
        Left = 202
        Top = 251
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 124
        OnKeyPress = Situacao_12KeyPress
      end
      object Qtde_1: TEdit
        Left = 280
        Top = 31
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnKeyPress = Qtde_1KeyPress
      end
      object Qtde_2: TEdit
        Left = 280
        Top = 51
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 16
        OnKeyPress = Qtde_2KeyPress
      end
      object Qtde_3: TEdit
        Left = 280
        Top = 71
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 27
        OnKeyPress = Qtde_3KeyPress
      end
      object Qtde_4: TEdit
        Left = 280
        Top = 91
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 38
        OnKeyPress = Qtde_4KeyPress
      end
      object Qtde_5: TEdit
        Left = 280
        Top = 111
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 49
        OnKeyPress = Qtde_5KeyPress
      end
      object Qtde_6: TEdit
        Left = 280
        Top = 131
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 60
        OnKeyPress = Qtde_6KeyPress
      end
      object Qtde_7: TEdit
        Left = 280
        Top = 151
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 71
        OnKeyPress = Qtde_7KeyPress
      end
      object Qtde_8: TEdit
        Left = 280
        Top = 171
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 82
        OnKeyPress = Qtde_8KeyPress
      end
      object Qtde_9: TEdit
        Left = 280
        Top = 191
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 93
        OnKeyPress = Qtde_9KeyPress
      end
      object Qtde_10: TEdit
        Left = 280
        Top = 211
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 104
        OnKeyPress = Qtde_10KeyPress
      end
      object Qtde_11: TEdit
        Left = 280
        Top = 231
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 115
        OnKeyPress = Qtde_11KeyPress
      end
      object Qtde_12: TEdit
        Left = 280
        Top = 251
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 126
        OnKeyPress = Qtde_12KeyPress
      end
      object ICMS_1: TEdit
        Left = 443
        Top = 31
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        OnKeyPress = ICMS_1KeyPress
      end
      object ICMS_2: TEdit
        Left = 443
        Top = 51
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 19
        OnKeyPress = ICMS_2KeyPress
      end
      object ICMS_3: TEdit
        Left = 443
        Top = 71
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 30
        OnKeyPress = ICMS_3KeyPress
      end
      object ICMS_4: TEdit
        Left = 443
        Top = 91
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 41
        OnKeyPress = ICMS_4KeyPress
      end
      object ICMS_5: TEdit
        Left = 443
        Top = 111
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 52
        OnKeyPress = ICMS_5KeyPress
      end
      object ICMS_6: TEdit
        Left = 443
        Top = 131
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 63
        OnKeyPress = ICMS_6KeyPress
      end
      object ICMS_7: TEdit
        Left = 443
        Top = 151
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 74
        OnKeyPress = ICMS_7KeyPress
      end
      object ICMS_8: TEdit
        Left = 443
        Top = 171
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 85
        OnKeyPress = ICMS_8KeyPress
      end
      object ICMS_9: TEdit
        Left = 443
        Top = 191
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 96
        OnKeyPress = ICMS_9KeyPress
      end
      object ICMS_10: TEdit
        Left = 443
        Top = 211
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 107
        OnKeyPress = ICMS_10KeyPress
      end
      object ICMS_11: TEdit
        Left = 443
        Top = 231
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 118
        OnKeyPress = ICMS_11KeyPress
      end
      object ICMS_12: TEdit
        Left = 443
        Top = 251
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 129
        OnKeyPress = ICMS_12KeyPress
      end
      object IPI_12: TEdit
        Left = 481
        Top = 251
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 130
        OnKeyPress = IPI_12KeyPress
      end
      object IPI_11: TEdit
        Left = 481
        Top = 231
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 119
        OnKeyPress = IPI_11KeyPress
      end
      object IPI_10: TEdit
        Left = 481
        Top = 211
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 108
        OnKeyPress = IPI_10KeyPress
      end
      object IPI_9: TEdit
        Left = 481
        Top = 191
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 97
        OnKeyPress = IPI_9KeyPress
      end
      object IPI_8: TEdit
        Left = 481
        Top = 171
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 86
        OnKeyPress = IPI_8KeyPress
      end
      object IPI_7: TEdit
        Left = 481
        Top = 151
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 75
        OnKeyPress = IPI_7KeyPress
      end
      object IPI_6: TEdit
        Left = 481
        Top = 131
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 64
        OnKeyPress = IPI_6KeyPress
      end
      object IPI_5: TEdit
        Left = 481
        Top = 111
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 53
        OnKeyPress = IPI_5KeyPress
      end
      object IPI_4: TEdit
        Left = 481
        Top = 91
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 42
        OnKeyPress = IPI_4KeyPress
      end
      object IPI_3: TEdit
        Left = 481
        Top = 71
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 31
        OnKeyPress = IPI_3KeyPress
      end
      object IPI_2: TEdit
        Left = 481
        Top = 51
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 20
        OnKeyPress = IPI_2KeyPress
      end
      object IPI_1: TEdit
        Left = 481
        Top = 31
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        OnKeyPress = IPI_1KeyPress
      end
      object Vlr_IPI_1: TEdit
        Left = 519
        Top = 31
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
        OnKeyPress = Vlr_IPI_1KeyPress
      end
      object Vlr_IPI_2: TEdit
        Left = 519
        Top = 51
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 21
        OnKeyPress = Vlr_IPI_2KeyPress
      end
      object Vlr_IPI_3: TEdit
        Left = 519
        Top = 71
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 32
        OnKeyPress = Vlr_IPI_3KeyPress
      end
      object Vlr_IPI_4: TEdit
        Left = 519
        Top = 91
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 43
        OnKeyPress = Vlr_IPI_4KeyPress
      end
      object Vlr_IPI_5: TEdit
        Left = 519
        Top = 111
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 54
        OnKeyPress = Vlr_IPI_5KeyPress
      end
      object Vlr_IPI_6: TEdit
        Left = 519
        Top = 131
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 65
        OnKeyPress = Vlr_IPI_6KeyPress
      end
      object Vlr_IPI_7: TEdit
        Left = 519
        Top = 151
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 76
        OnKeyPress = Vlr_IPI_7KeyPress
      end
      object Vlr_IPI_8: TEdit
        Left = 519
        Top = 171
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 87
        OnKeyPress = Vlr_IPI_8KeyPress
      end
      object Vlr_IPI_9: TEdit
        Left = 519
        Top = 191
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 98
        OnKeyPress = Vlr_IPI_9KeyPress
      end
      object Vlr_IPI_10: TEdit
        Left = 519
        Top = 211
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 109
        OnKeyPress = Vlr_IPI_10KeyPress
      end
      object Vlr_IPI_11: TEdit
        Left = 519
        Top = 231
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 120
        OnKeyPress = Vlr_IPI_11KeyPress
      end
      object Vlr_IPI_12: TEdit
        Left = 519
        Top = 251
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 131
        OnKeyPress = Vlr_IPI_12KeyPress
      end
      object Observacoes_Servico_2: TEdit
        Left = 82
        Top = 304
        Width = 497
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 133
        OnKeyPress = Observacoes_Servico_2KeyPress
      end
      object Observacoes_Servico_3: TEdit
        Left = 82
        Top = 325
        Width = 230
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 134
        OnKeyPress = Observacoes_Servico_3KeyPress
      end
      object Vlr_ISS: TEdit
        Left = 380
        Top = 325
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 135
        OnKeyPress = Vlr_ISSKeyPress
      end
      object Vlr_Total_Servicos: TEdit
        Left = 519
        Top = 325
        Width = 60
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 136
        OnKeyPress = Vlr_Total_ServicosKeyPress
      end
      object Vlr_Total_Produto: TEdit
        Left = 582
        Top = 325
        Width = 85
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 156
        Text = '0'
        OnKeyPress = Vlr_Total_ProdutoKeyPress
      end
      object B_Calculo_ICMS: TEdit
        Left = 582
        Top = 31
        Width = 85
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 137
        OnKeyPress = B_Calculo_ICMSKeyPress
      end
      object Vlr_ICMS: TEdit
        Left = 671
        Top = 31
        Width = 85
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 138
        OnKeyPress = Vlr_ICMSKeyPress
      end
      object B_Calculo_ICMS_Sub: TEdit
        Left = 582
        Top = 65
        Width = 85
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 139
        OnKeyPress = B_Calculo_ICMS_SubKeyPress
      end
      object Vlr_ICMS_Sub: TEdit
        Left = 671
        Top = 65
        Width = 85
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 140
        OnKeyPress = Vlr_ICMS_SubKeyPress
      end
      object Vlr_Frete: TEdit
        Left = 582
        Top = 102
        Width = 85
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 141
        OnKeyPress = Vlr_FreteKeyPress
      end
      object Vlr_Seguro: TEdit
        Left = 671
        Top = 102
        Width = 85
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 142
        OnKeyPress = Vlr_SeguroKeyPress
      end
      object Outras_Despesas: TEdit
        Left = 582
        Top = 137
        Width = 85
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 143
        OnKeyPress = Outras_DespesasKeyPress
      end
      object Vlr_Total_IPI: TEdit
        Left = 671
        Top = 137
        Width = 85
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 144
        OnKeyPress = Vlr_Total_IPIKeyPress
      end
      object Frete_Emitente: TRadioButton
        Left = 613
        Top = 171
        Width = 63
        Height = 17
        Caption = 'Emitente'
        Checked = True
        TabOrder = 145
        TabStop = True
        OnKeyPress = Frete_EmitenteKeyPress
      end
      object Frete_Destinatario: TRadioButton
        Left = 677
        Top = 171
        Width = 78
        Height = 17
        Caption = 'Destinat'#225'rio'
        TabOrder = 146
        OnKeyPress = Frete_DestinatarioKeyPress
      end
      object Transportadora_Nome: TEdit
        Left = 658
        Top = 187
        Width = 97
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 147
        OnKeyPress = Transportadora_NomeKeyPress
      end
      object Transportadora_Qtde: TEdit
        Left = 620
        Top = 207
        Width = 45
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 148
        OnKeyPress = Transportadora_QtdeKeyPress
      end
      object Transportadora_Nro: TEdit
        Left = 710
        Top = 227
        Width = 45
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 151
        OnKeyPress = Transportadora_NroKeyPress
      end
      object Transportadora_Especie: TEdit
        Left = 710
        Top = 207
        Width = 45
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 149
        OnKeyPress = Transportadora_EspecieKeyPress
      end
      object Transportadora_Marca: TEdit
        Left = 620
        Top = 227
        Width = 45
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 150
        OnKeyPress = Transportadora_MarcaKeyPress
      end
      object Transportadora_Peso_Bruto: TEdit
        Left = 620
        Top = 247
        Width = 45
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 152
        OnKeyPress = Transportadora_Peso_BrutoKeyPress
      end
      object Transportadora_Peso_Liquido: TEdit
        Left = 710
        Top = 247
        Width = 45
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 153
        OnKeyPress = Transportadora_Peso_LiquidoKeyPress
      end
      object Pedido_Nota: TEdit
        Left = 620
        Top = 272
        Width = 45
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 154
        OnKeyPress = Pedido_NotaKeyPress
      end
      object OS_Nota: TEdit
        Left = 709
        Top = 272
        Width = 45
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 155
        OnKeyPress = OS_NotaKeyPress
      end
      object Unidade_1: TEdit
        Left = 241
        Top = 31
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnKeyPress = Unidade_1KeyPress
      end
      object Unidade_2: TEdit
        Left = 241
        Top = 51
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 15
        OnKeyPress = Unidade_2KeyPress
      end
      object Unidade_3: TEdit
        Left = 241
        Top = 71
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 26
        OnKeyPress = Unidade_3KeyPress
      end
      object Unidade_4: TEdit
        Left = 241
        Top = 91
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 37
        OnKeyPress = Unidade_4KeyPress
      end
      object Unidade_5: TEdit
        Left = 241
        Top = 111
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 48
        OnKeyPress = Unidade_5KeyPress
      end
      object Unidade_6: TEdit
        Left = 241
        Top = 131
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 59
        OnKeyPress = Unidade_6KeyPress
      end
      object Unidade_7: TEdit
        Left = 241
        Top = 151
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 70
        OnKeyPress = Unidade_7KeyPress
      end
      object Unidade_8: TEdit
        Left = 241
        Top = 171
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 81
        OnKeyPress = Unidade_8KeyPress
      end
      object Unidade_9: TEdit
        Left = 241
        Top = 191
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 92
        OnKeyPress = Unidade_9KeyPress
      end
      object Unidade_10: TEdit
        Left = 241
        Top = 211
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 103
        OnKeyPress = Unidade_10KeyPress
      end
      object Unidade_11: TEdit
        Left = 241
        Top = 231
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 114
        OnKeyPress = Unidade_11KeyPress
      end
      object Unidade_12: TEdit
        Left = 241
        Top = 251
        Width = 35
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 125
        OnKeyPress = Unidade_12KeyPress
      end
    end
  end
end
