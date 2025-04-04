object Transportadora2: TTransportadora2
  Left = 273
  Top = 191
  BorderStyle = bsDialog
  Caption = 'Cadastro de Transportadoras - INCLUS'#195'O'
  ClientHeight = 320
  ClientWidth = 613
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 4
    Top = 4
    Width = 606
    Height = 267
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 4
      Width = 588
      Height = 254
      Caption = '  Dados da Transportadora  '
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 15
        Width = 27
        Height = 13
        Caption = 'CNPJ'
      end
      object Label3: TLabel
        Left = 125
        Top = 15
        Width = 28
        Height = 13
        Caption = 'Nome'
      end
      object Label4: TLabel
        Left = 355
        Top = 15
        Width = 63
        Height = 13
        Caption = 'Raz'#227'o Social'
      end
      object Label7: TLabel
        Left = 356
        Top = 52
        Width = 91
        Height = 13
        Caption = 'Inscri'#231#227'o Municipal'
      end
      object Label8: TLabel
        Left = 481
        Top = 53
        Width = 87
        Height = 13
        Caption = 'Inscri'#231#227'o Estadual'
      end
      object Transportadora_Nome: TEdit
        Left = 125
        Top = 30
        Width = 225
        Height = 19
        Ctl3D = False
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 1
        OnKeyPress = Transportadora_NomeKeyPress
      end
      object Transportadora_Razao_Social: TEdit
        Left = 355
        Top = 30
        Width = 225
        Height = 19
        Ctl3D = False
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 2
        OnKeyPress = Transportadora_Razao_SocialKeyPress
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 88
        Width = 569
        Height = 97
        Caption = '  Endere'#231'o '
        TabOrder = 5
        object Label13: TLabel
          Left = 8
          Top = 17
          Width = 150
          Height = 13
          Caption = 'Logradouro (Rua, Avenida, Etc)'
        end
        object Label14: TLabel
          Left = 394
          Top = 17
          Width = 64
          Height = 13
          Caption = 'Complemento'
        end
        object Label15: TLabel
          Left = 8
          Top = 53
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object Label16: TLabel
          Left = 176
          Top = 53
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label19: TLabel
          Left = 344
          Top = 53
          Width = 33
          Height = 13
          Caption = 'Estado'
        end
        object Label17: TLabel
          Left = 394
          Top = 53
          Width = 21
          Height = 13
          Caption = 'CEP'
        end
        object Label20: TLabel
          Left = 459
          Top = 53
          Width = 22
          Height = 13
          Caption = 'Pa'#237's'
        end
        object Transportadora_Endereco: TEdit
          Left = 8
          Top = 32
          Width = 380
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = Transportadora_EnderecoKeyPress
        end
        object Transportadora_Complemento: TEdit
          Left = 394
          Top = 32
          Width = 165
          Height = 19
          Ctl3D = False
          MaxLength = 80
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = Transportadora_ComplementoKeyPress
        end
        object Transportadora_Bairro: TEdit
          Left = 8
          Top = 68
          Width = 160
          Height = 19
          Ctl3D = False
          MaxLength = 80
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = Transportadora_BairroKeyPress
        end
        object Transportadora_Cidade: TEdit
          Left = 176
          Top = 68
          Width = 160
          Height = 19
          Ctl3D = False
          MaxLength = 80
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = Transportadora_CidadeKeyPress
        end
        object Transportadora_Estado: TComboBox
          Left = 345
          Top = 68
          Width = 43
          Height = 19
          BevelInner = bvNone
          BevelKind = bkSoft
          Style = csOwnerDrawFixed
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 24
          ParentCtl3D = False
          TabOrder = 4
          Text = 'SP'
          OnKeyPress = Transportadora_EstadoKeyPress
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RN'
            'RS'
            'RJ'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO'
            '--')
        end
        object Transportadora_Cep: TMaskEdit
          Left = 395
          Top = 68
          Width = 57
          Height = 19
          Ctl3D = False
          EditMask = '00000\-999;1;_'
          MaxLength = 9
          ParentCtl3D = False
          TabOrder = 5
          Text = '     -   '
          OnKeyPress = Transportadora_CepKeyPress
        end
        object Transportadora_Pais: TComboBox
          Left = 460
          Top = 68
          Width = 100
          Height = 19
          BevelInner = bvNone
          BevelKind = bkSoft
          Style = csOwnerDrawFixed
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 6
          Text = 'Brasil'
          OnKeyPress = Transportadora_PaisKeyPress
          Items.Strings = (
            'Brasil'
            'Argentina'
            'Am'#233'rica Central'
            'Bol'#237'via'
            'Canad'#225
            'Chile'
            'Col'#244'mbia'
            'Equador'
            'Estados Unidos'
            'Paraguai'
            'Portugal'
            'Uruguai')
        end
      end
      object Transportadora_Inscricao_Municipal: TEdit
        Left = 356
        Top = 67
        Width = 100
        Height = 19
        Ctl3D = False
        MaxLength = 20
        ParentCtl3D = False
        TabOrder = 3
        OnKeyPress = Transportadora_Inscricao_MunicipalKeyPress
      end
      object Transportadora_Inscricao_Estadual: TEdit
        Left = 480
        Top = 67
        Width = 100
        Height = 19
        Ctl3D = False
        MaxLength = 20
        ParentCtl3D = False
        TabOrder = 4
        OnKeyPress = Transportadora_Inscricao_EstadualKeyPress
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 188
        Width = 569
        Height = 57
        Caption = '  Contato '
        TabOrder = 6
        object Label28: TLabel
          Left = 8
          Top = 15
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label31: TLabel
          Left = 155
          Top = 15
          Width = 24
          Height = 13
          Caption = 'DDD'
        end
        object Label32: TLabel
          Left = 196
          Top = 15
          Width = 24
          Height = 13
          Caption = 'Fone'
        end
        object Label33: TLabel
          Left = 273
          Top = 15
          Width = 17
          Height = 13
          Caption = 'Fax'
        end
        object Label44: TLabel
          Left = 424
          Top = 15
          Width = 29
          Height = 13
          Caption = 'E-Mail'
        end
        object Label6: TLabel
          Left = 348
          Top = 15
          Width = 30
          Height = 13
          Caption = 'Ramal'
        end
        object Transportadora_Contato: TEdit
          Left = 8
          Top = 30
          Width = 141
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = Transportadora_ContatoKeyPress
        end
        object Transportadora_Fone: TEdit
          Left = 196
          Top = 30
          Width = 70
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = Transportadora_FoneKeyPress
        end
        object Transportadora_Fax: TEdit
          Left = 272
          Top = 30
          Width = 70
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = Transportadora_FaxKeyPress
        end
        object Transportadora_Email: TEdit
          Left = 424
          Top = 30
          Width = 137
          Height = 19
          Ctl3D = False
          MaxLength = 80
          ParentCtl3D = False
          TabOrder = 5
          OnKeyPress = Transportadora_EmailKeyPress
        end
        object Transportadora_DDD: TEdit
          Left = 155
          Top = 30
          Width = 36
          Height = 19
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = Transportadora_DDDKeyPress
        end
        object Transportadora_Ramal: TEdit
          Left = 348
          Top = 30
          Width = 70
          Height = 19
          Ctl3D = False
          MaxLength = 5
          ParentCtl3D = False
          TabOrder = 4
          OnKeyPress = Transportadora_RamalKeyPress
        end
      end
      object Transportadora_CNPJ: TMaskEdit
        Left = 8
        Top = 30
        Width = 110
        Height = 19
        Ctl3D = False
        EditMask = '!99\.999\.999\/9999\-99;1;_'
        MaxLength = 18
        ParentCtl3D = False
        TabOrder = 0
        Text = '  .   .   /    -  '
        OnKeyPress = Transportadora_CNPJKeyPress
      end
    end
  end
  object Panel3: TPanel
    Left = 4
    Top = 275
    Width = 606
    Height = 41
    TabOrder = 1
    object BT_Incluir: TBitBtn
      Left = 265
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = BT_IncluirClick
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
    object BT_Sair: TBitBtn
      Left = 524
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
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
  end
end
