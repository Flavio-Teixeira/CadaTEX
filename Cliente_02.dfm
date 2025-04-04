object Cliente02: TCliente02
  Left = 274
  Top = 190
  BorderStyle = bsDialog
  Caption = 'Cadastro de Clientes - ALTERA'#199#195'O / EXCLUS'#195'O'
  ClientHeight = 554
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000000000000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000078000000000000
    0000000000000000777888000000000000000000000000777977888800000000
    00000000000877797FF8888888000000000000000008727FF000778888803333
    3333333333387FF00B330077888087B7B7B7B7B7B7B8F00BBB3333007780877B
    7B7B7B7B7B7B0BBBBF733333007087B7B000000000003BBFFBB73333330F877B
    74CCC46EEEE53FFB37BB7333000087B7B4CCC46666653B73737BB7303330877B
    74FFF4677775D3B73737BB703BB087B7B46664677775DD3B737B80B0BBB3877B
    746664677775DD000BB00308BB3087B7B46664677775DD3BB0B03BBBB300877B
    746664666665DD3BB808BBB3300087B7B4FFF46EEEE5DDD33BBBB3373000877B
    74CCC4666665DDD553333B7B300087B7B4CCC4C6FF75DDD55557B7B73000877B
    744444CC6FF55555555B7B7B300087B7B74FF74CC6885FF75557B7B73000877B
    7B74FF74CB7B75FF755B7B7B300087B7B7B7488847B7B7588857B7B73000877B
    7B7B7B7B7B7B7B7B7B7B7B7B300087B7B7B7B7B7B7B7B7B7B7B7B7B7300087FF
    FFFFFFFFFFFFFFFFFFFFFFFF00008F77777777777777888888888888000008FB
    7B7B7B7B7B780000000000000000008FB7B7B7B7B78000000000000000000008
    FFFFFFFFF800000000000000000000008888888880000000000000000000FFFF
    FCFFFFFFF03FFFFFC00FFFFF0003FFFE00008000000000000000000000000000
    0000000000000000000000000000000000000000000000000001000000030000
    0003000000030000000300000003000000030000000300000003000000030000
    000300000003000000070000000F8000FFFFC001FFFFE003FFFFF007FFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 2
    Top = 2
    Width = 774
    Height = 550
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 6
      Top = 4
      Width = 760
      Height = 538
      Caption = '  Dados do Cliente  '
      TabOrder = 0
      object Label1: TLabel
        Left = 74
        Top = 12
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 8
        Top = 12
        Width = 21
        Height = 13
        Caption = 'Tipo'
      end
      object Label3: TLabel
        Left = 8
        Top = 46
        Width = 28
        Height = 13
        Caption = 'Nome'
      end
      object Label4: TLabel
        Left = 387
        Top = 46
        Width = 63
        Height = 13
        Caption = 'Raz'#227'o Social'
      end
      object Label6: TLabel
        Left = 297
        Top = 12
        Width = 74
        Height = 13
        Caption = 'Tipo de Pessoa'
      end
      object Label7: TLabel
        Left = 449
        Top = 12
        Width = 91
        Height = 13
        Caption = 'Inscri'#231#227'o Municipal'
      end
      object Label8: TLabel
        Left = 602
        Top = 12
        Width = 87
        Height = 13
        Caption = 'Inscri'#231#227'o Estadual'
      end
      object Cliente_Mensagem_Mascara: TLabel
        Left = 121
        Top = 15
        Width = 137
        Height = 13
        Caption = 'Cliente_Mensagem_Mascara'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label36: TLabel
        Left = 384
        Top = 311
        Width = 96
        Height = 13
        Caption = 'Observa'#231#245'es Gerais'
      end
      object Cliente_Codigo_Tipo: TComboBox
        Left = 8
        Top = 27
        Width = 57
        Height = 19
        BevelInner = bvNone
        BevelKind = bkSoft
        Style = csOwnerDrawFixed
        Ctl3D = False
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 0
        Text = 'CNPJ'
        OnChange = Cliente_Codigo_TipoChange
        OnKeyPress = Cliente_Codigo_TipoKeyPress
        Items.Strings = (
          'CNPJ'
          'CPF'
          'RG'
          'E-Mail')
      end
      object Cliente_Nome: TEdit
        Left = 8
        Top = 61
        Width = 370
        Height = 19
        Ctl3D = False
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 6
        OnKeyPress = Cliente_NomeKeyPress
      end
      object Cliente_Razao_Social: TEdit
        Left = 387
        Top = 61
        Width = 365
        Height = 19
        Ctl3D = False
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 7
        OnKeyPress = Cliente_Razao_SocialKeyPress
      end
      object Cliente_Tipo_Pessoa: TComboBox
        Left = 296
        Top = 27
        Width = 148
        Height = 19
        BevelInner = bvNone
        BevelKind = bkSoft
        Style = csOwnerDrawFixed
        Ctl3D = False
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 5
        Text = 'Pessoa Jur'#237'dica'
        OnKeyPress = Cliente_Tipo_PessoaKeyPress
        Items.Strings = (
          'Pessoa Jur'#237'dica'
          'Pessoa F'#237'sica')
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 80
        Width = 576
        Height = 88
        Caption = '  Faturamento '
        TabOrder = 10
        object Label13: TLabel
          Left = 8
          Top = 12
          Width = 150
          Height = 13
          Caption = 'Logradouro (Rua, Avenida, Etc)'
        end
        object Label14: TLabel
          Left = 281
          Top = 12
          Width = 64
          Height = 13
          Caption = 'Complemento'
        end
        object Label15: TLabel
          Left = 8
          Top = 46
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object Label16: TLabel
          Left = 185
          Top = 46
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label19: TLabel
          Left = 352
          Top = 46
          Width = 33
          Height = 13
          Caption = 'Estado'
        end
        object Label17: TLabel
          Left = 402
          Top = 46
          Width = 21
          Height = 13
          Caption = 'CEP'
        end
        object Label20: TLabel
          Left = 466
          Top = 46
          Width = 22
          Height = 13
          Caption = 'Pa'#237's'
        end
        object Label5: TLabel
          Left = 386
          Top = 12
          Width = 24
          Height = 13
          Caption = 'Fone'
        end
        object Label40: TLabel
          Left = 456
          Top = 12
          Width = 17
          Height = 13
          Caption = 'Fax'
        end
        object DDD: TLabel
          Left = 353
          Top = 12
          Width = 24
          Height = 13
          Caption = 'DDD'
        end
        object Label66: TLabel
          Left = 529
          Top = 12
          Width = 30
          Height = 13
          Caption = 'Ramal'
        end
        object Cliente_Endereco: TEdit
          Left = 8
          Top = 27
          Width = 270
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = Cliente_EnderecoKeyPress
        end
        object Cliente_Complemento: TEdit
          Left = 280
          Top = 27
          Width = 70
          Height = 19
          Ctl3D = False
          MaxLength = 80
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = Cliente_ComplementoKeyPress
        end
        object Cliente_Bairro: TEdit
          Left = 8
          Top = 61
          Width = 170
          Height = 19
          Ctl3D = False
          MaxLength = 80
          ParentCtl3D = False
          TabOrder = 6
          OnKeyPress = Cliente_BairroKeyPress
        end
        object Cliente_Cidade: TEdit
          Left = 185
          Top = 61
          Width = 160
          Height = 19
          Ctl3D = False
          MaxLength = 80
          ParentCtl3D = False
          TabOrder = 7
          OnKeyPress = Cliente_CidadeKeyPress
        end
        object Cliente_Estado: TComboBox
          Left = 352
          Top = 61
          Width = 43
          Height = 19
          BevelInner = bvNone
          BevelKind = bkSoft
          Style = csOwnerDrawFixed
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 24
          ParentCtl3D = False
          TabOrder = 8
          Text = 'SP'
          OnKeyPress = Cliente_EstadoKeyPress
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
        object Cliente_Cep: TMaskEdit
          Left = 402
          Top = 61
          Width = 57
          Height = 19
          Ctl3D = False
          EditMask = '00000\-999;1;_'
          MaxLength = 9
          ParentCtl3D = False
          TabOrder = 9
          Text = '     -   '
          OnKeyPress = Cliente_CepKeyPress
        end
        object Cliente_Pais: TComboBox
          Left = 466
          Top = 61
          Width = 103
          Height = 19
          BevelInner = bvNone
          BevelKind = bkSoft
          Style = csOwnerDrawFixed
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 10
          Text = 'Brasil'
          OnKeyPress = Cliente_PaisKeyPress
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
        object Cliente_Fone: TEdit
          Left = 385
          Top = 27
          Width = 70
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = Cliente_FoneKeyPress
        end
        object Cliente_Fax: TEdit
          Left = 457
          Top = 27
          Width = 70
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 4
          OnKeyPress = Cliente_FaxKeyPress
        end
        object Cliente_DDD: TEdit
          Left = 352
          Top = 27
          Width = 31
          Height = 19
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = Cliente_ComplementoKeyPress
        end
        object Cliente_Ramal: TEdit
          Left = 529
          Top = 27
          Width = 39
          Height = 19
          Ctl3D = False
          MaxLength = 5
          ParentCtl3D = False
          TabOrder = 5
          OnKeyPress = Cliente_ComplementoKeyPress
        end
      end
      object Cliente_Inscricao_Municipal: TEdit
        Left = 449
        Top = 27
        Width = 148
        Height = 19
        Ctl3D = False
        MaxLength = 20
        ParentCtl3D = False
        TabOrder = 8
        OnKeyPress = Cliente_Inscricao_MunicipalKeyPress
      end
      object Cliente_Inscricao_Estadual: TEdit
        Left = 602
        Top = 27
        Width = 150
        Height = 19
        Ctl3D = False
        MaxLength = 20
        ParentCtl3D = False
        TabOrder = 9
        OnKeyPress = Cliente_Inscricao_EstadualKeyPress
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 168
        Width = 576
        Height = 87
        Caption = '  Cobran'#231'a  '
        TabOrder = 11
        object Label18: TLabel
          Left = 85
          Top = 11
          Width = 150
          Height = 13
          Caption = 'Logradouro (Rua, Avenida, Etc)'
        end
        object Label21: TLabel
          Left = 302
          Top = 11
          Width = 64
          Height = 13
          Caption = 'Complemento'
        end
        object Label22: TLabel
          Left = 8
          Top = 45
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object Label23: TLabel
          Left = 183
          Top = 45
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label24: TLabel
          Left = 348
          Top = 45
          Width = 33
          Height = 13
          Caption = 'Estado'
        end
        object Label25: TLabel
          Left = 397
          Top = 45
          Width = 21
          Height = 13
          Caption = 'CEP'
        end
        object Label26: TLabel
          Left = 460
          Top = 45
          Width = 22
          Height = 13
          Caption = 'Pa'#237's'
        end
        object Label27: TLabel
          Left = 8
          Top = 11
          Width = 32
          Height = 13
          Caption = 'Op'#231#227'o'
        end
        object Label48: TLabel
          Left = 407
          Top = 11
          Width = 24
          Height = 13
          Caption = 'Fone'
        end
        object Label49: TLabel
          Left = 468
          Top = 11
          Width = 17
          Height = 13
          Caption = 'Fax'
        end
        object Label67: TLabel
          Left = 375
          Top = 11
          Width = 24
          Height = 13
          Caption = 'DDD'
        end
        object Label68: TLabel
          Left = 531
          Top = 11
          Width = 30
          Height = 13
          Caption = 'Ramal'
        end
        object Cliente_Endereco_Cobranca: TEdit
          Left = 85
          Top = 26
          Width = 215
          Height = 19
          Ctl3D = False
          MaxLength = 100
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = Cliente_Endereco_CobrancaKeyPress
        end
        object Cliente_Complemento_Cobranca: TEdit
          Left = 302
          Top = 26
          Width = 70
          Height = 19
          Ctl3D = False
          MaxLength = 80
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = Cliente_Complemento_CobrancaKeyPress
        end
        object Cliente_Bairro_Cobranca: TEdit
          Left = 8
          Top = 60
          Width = 170
          Height = 19
          Ctl3D = False
          MaxLength = 80
          ParentCtl3D = False
          TabOrder = 7
          OnKeyPress = Cliente_Bairro_CobrancaKeyPress
        end
        object Cliente_Cidade_Cobranca: TEdit
          Left = 183
          Top = 60
          Width = 160
          Height = 19
          Ctl3D = False
          MaxLength = 80
          ParentCtl3D = False
          TabOrder = 8
          OnKeyPress = Cliente_Cidade_CobrancaKeyPress
        end
        object Cliente_Estado_Cobranca: TComboBox
          Left = 349
          Top = 60
          Width = 42
          Height = 19
          BevelInner = bvNone
          BevelKind = bkSoft
          Style = csOwnerDrawFixed
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 24
          ParentCtl3D = False
          TabOrder = 9
          Text = 'SP'
          OnKeyPress = Cliente_Estado_CobrancaKeyPress
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
        object Cliente_Cep_Cobranca: TMaskEdit
          Left = 397
          Top = 60
          Width = 57
          Height = 19
          Ctl3D = False
          EditMask = '00000\-999;1;_'
          MaxLength = 9
          ParentCtl3D = False
          TabOrder = 10
          Text = '     -   '
          OnKeyPress = Cliente_Cep_CobrancaKeyPress
        end
        object Cliente_Pais_Cobranca: TComboBox
          Left = 460
          Top = 60
          Width = 100
          Height = 19
          BevelInner = bvNone
          BevelKind = bkSoft
          Style = csOwnerDrawFixed
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 11
          Text = 'Brasil'
          OnKeyPress = Cliente_Pais_CobrancaKeyPress
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
        object Cliente_Opcao_Cobranca: TComboBox
          Left = 8
          Top = 26
          Width = 75
          Height = 19
          BevelInner = bvNone
          BevelKind = bkSoft
          Style = csOwnerDrawFixed
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 0
          Text = 'O Mesmo'
          OnChange = Cliente_Opcao_CobrancaChange
          OnKeyPress = Cliente_Opcao_CobrancaKeyPress
          Items.Strings = (
            'O Mesmo'
            'Outro')
        end
        object Cliente_Fone_Cobranca: TEdit
          Left = 407
          Top = 26
          Width = 60
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 4
          OnKeyPress = Cliente_Fone_CobrancaKeyPress
        end
        object Cliente_Fax_Cobranca: TEdit
          Left = 469
          Top = 26
          Width = 60
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 5
          OnKeyPress = Cliente_Fax_CobrancaKeyPress
        end
        object Cliente_DDD_Cobranca: TEdit
          Left = 374
          Top = 26
          Width = 31
          Height = 19
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = Cliente_ComplementoKeyPress
        end
        object Cliente_Ramal_Cobranca: TEdit
          Left = 531
          Top = 26
          Width = 39
          Height = 19
          Ctl3D = False
          MaxLength = 5
          ParentCtl3D = False
          TabOrder = 6
          OnKeyPress = Cliente_ComplementoKeyPress
        end
      end
      object GroupBox5: TGroupBox
        Left = 590
        Top = 168
        Width = 162
        Height = 86
        Caption = '  Datas  '
        TabOrder = 12
        object Label9: TLabel
          Left = 10
          Top = 11
          Width = 40
          Height = 13
          Caption = 'Inclus'#227'o'
        end
        object Label10: TLabel
          Left = 88
          Top = 12
          Width = 57
          Height = 13
          Caption = #218'ltima Visita'
        end
        object Label11: TLabel
          Left = 10
          Top = 47
          Width = 64
          Height = 13
          Caption = #218'lt. Altera'#231#227'o'
        end
        object Label12: TLabel
          Left = 88
          Top = 47
          Width = 55
          Height = 13
          Caption = #218'lt. Compra'
        end
        object Cliente_Data_Inclusao: TMaskEdit
          Left = 9
          Top = 27
          Width = 57
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1;_'
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 0
          Text = '  /  /    '
          OnKeyPress = Cliente_Data_InclusaoKeyPress
        end
        object Cliente_Data_Visita: TMaskEdit
          Left = 88
          Top = 27
          Width = 57
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1;_'
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 1
          Text = '  /  /    '
          OnKeyPress = Cliente_Data_VisitaKeyPress
        end
        object Cliente_Data_Alteracao: TMaskEdit
          Left = 10
          Top = 62
          Width = 57
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1;_'
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 2
          Text = '  /  /    '
          OnKeyPress = Cliente_Data_AlteracaoKeyPress
        end
        object Cliente_Data_Ultima_Compra: TMaskEdit
          Left = 88
          Top = 62
          Width = 57
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1;_'
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 3
          Text = '  /  /    '
          OnKeyPress = Cliente_Data_Ultima_CompraKeyPress
        end
      end
      object GroupBox6: TGroupBox
        Left = 589
        Top = 80
        Width = 163
        Height = 88
        Caption = '  Valores  '
        TabOrder = 13
        object Label37: TLabel
          Left = 78
          Top = 13
          Width = 74
          Height = 13
          Caption = 'Vlr. Cr'#233'dito (R$)'
        end
        object Label38: TLabel
          Left = 9
          Top = 13
          Width = 33
          Height = 13
          Caption = 'Cr'#233'dito'
        end
        object Label39: TLabel
          Left = 44
          Top = 49
          Width = 109
          Height = 13
          Caption = 'Vlr. '#218'ltima Compra (R$)'
        end
        object Cliente_Valor_Credito: TEdit
          Left = 71
          Top = 28
          Width = 83
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = Cliente_Valor_CreditoKeyPress
        end
        object Cliente_Status_Credito: TComboBox
          Left = 9
          Top = 28
          Width = 46
          Height = 19
          BevelInner = bvNone
          BevelKind = bkSoft
          Style = csOwnerDrawFixed
          Ctl3D = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 0
          Text = 'N'#227'o'
          OnKeyPress = Cliente_Status_CreditoKeyPress
          Items.Strings = (
            'N'#227'o'
            'Sim')
        end
        object Cliente_Ultimo_Valor: TEdit
          Left = 71
          Top = 63
          Width = 83
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = Cliente_Ultimo_ValorKeyPress
        end
      end
      object Cliente_Codigo_CNPJ: TMaskEdit
        Left = 74
        Top = 27
        Width = 110
        Height = 19
        Ctl3D = False
        EditMask = '!99\.999\.999\/9999\-99;1;_'
        MaxLength = 18
        ParentCtl3D = False
        TabOrder = 1
        Text = '  .   .   /    -  '
        Visible = False
        OnKeyPress = Cliente_Codigo_CNPJKeyPress
      end
      object Cliente_Codigo_CPF: TMaskEdit
        Left = 74
        Top = 27
        Width = 85
        Height = 19
        Ctl3D = False
        EditMask = '!999\.999\.999\-99;1;_'
        MaxLength = 14
        ParentCtl3D = False
        TabOrder = 2
        Text = '   .   .   -  '
        Visible = False
        OnKeyPress = Cliente_Codigo_CPFKeyPress
      end
      object Cliente_Codigo_RG: TEdit
        Left = 74
        Top = 27
        Width = 112
        Height = 19
        Ctl3D = False
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 4
        Visible = False
        OnKeyPress = Cliente_Codigo_RGKeyPress
      end
      object Cliente_Codigo_EMail: TEdit
        Left = 74
        Top = 27
        Width = 215
        Height = 19
        Ctl3D = False
        MaxLength = 100
        ParentCtl3D = False
        TabOrder = 3
        Visible = False
        OnKeyPress = Cliente_Codigo_EMailKeyPress
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 255
        Width = 370
        Height = 56
        Caption = '  Contato 1 '
        TabOrder = 14
        object Label28: TLabel
          Left = 8
          Top = 15
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label31: TLabel
          Left = 90
          Top = 15
          Width = 32
          Height = 13
          Caption = 'Depto.'
        end
        object Label32: TLabel
          Left = 170
          Top = 15
          Width = 24
          Height = 13
          Caption = 'Fone'
        end
        object Label33: TLabel
          Left = 233
          Top = 15
          Width = 17
          Height = 13
          Caption = 'Fax'
        end
        object Label44: TLabel
          Left = 295
          Top = 15
          Width = 29
          Height = 13
          Caption = 'E-Mail'
        end
        object Label70: TLabel
          Left = 142
          Top = 16
          Width = 24
          Height = 13
          Caption = 'DDD'
        end
        object Contato1_Nome: TEdit
          Left = 8
          Top = 30
          Width = 80
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = Contato1_NomeKeyPress
        end
        object Contato1_Fone: TEdit
          Left = 170
          Top = 30
          Width = 60
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = Contato1_FoneKeyPress
        end
        object Contato1_Fax: TEdit
          Left = 232
          Top = 30
          Width = 60
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 4
          OnKeyPress = Contato1_FaxKeyPress
        end
        object Contato1_Email: TEdit
          Left = 294
          Top = 30
          Width = 70
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 5
          OnKeyPress = Contato1_EmailKeyPress
        end
        object Contato1_Depto: TEdit
          Left = 90
          Top = 30
          Width = 50
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = Contato1_DeptoKeyPress
        end
        object Contato1_DDD: TEdit
          Left = 142
          Top = 30
          Width = 26
          Height = 19
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = Contato1_DDDKeyPress
        end
      end
      object GroupBox7: TGroupBox
        Left = 383
        Top = 255
        Width = 370
        Height = 56
        Caption = '  Contato 2 '
        TabOrder = 15
        object Label29: TLabel
          Left = 8
          Top = 15
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label30: TLabel
          Left = 90
          Top = 15
          Width = 32
          Height = 13
          Caption = 'Depto.'
        end
        object Label34: TLabel
          Left = 170
          Top = 15
          Width = 24
          Height = 13
          Caption = 'Fone'
        end
        object Label35: TLabel
          Left = 233
          Top = 15
          Width = 17
          Height = 13
          Caption = 'Fax'
        end
        object Label41: TLabel
          Left = 295
          Top = 15
          Width = 29
          Height = 13
          Caption = 'E-Mail'
        end
        object Label69: TLabel
          Left = 142
          Top = 16
          Width = 24
          Height = 13
          Caption = 'DDD'
        end
        object Contato2_Nome: TEdit
          Left = 8
          Top = 30
          Width = 80
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = Contato2_NomeKeyPress
        end
        object Contato2_Fone: TEdit
          Left = 170
          Top = 30
          Width = 60
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = Contato2_FoneKeyPress
        end
        object Contato2_Fax: TEdit
          Left = 232
          Top = 30
          Width = 60
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 4
          OnKeyPress = Contato2_FaxKeyPress
        end
        object Contato2_Email: TEdit
          Left = 294
          Top = 30
          Width = 70
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 5
          OnKeyPress = Contato2_EmailKeyPress
        end
        object Contato2_Depto: TEdit
          Left = 90
          Top = 30
          Width = 50
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = Contato2_DeptoKeyPress
        end
        object Contato2_DDD: TEdit
          Left = 142
          Top = 30
          Width = 26
          Height = 19
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = Contato2_DDDKeyPress
        end
      end
      object GroupBox8: TGroupBox
        Left = 8
        Top = 311
        Width = 370
        Height = 56
        Caption = '  Contato 3 '
        TabOrder = 16
        object Label42: TLabel
          Left = 8
          Top = 15
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label43: TLabel
          Left = 90
          Top = 15
          Width = 32
          Height = 13
          Caption = 'Depto.'
        end
        object Label45: TLabel
          Left = 170
          Top = 15
          Width = 24
          Height = 13
          Caption = 'Fone'
        end
        object Label46: TLabel
          Left = 233
          Top = 15
          Width = 17
          Height = 13
          Caption = 'Fax'
        end
        object Label47: TLabel
          Left = 295
          Top = 15
          Width = 29
          Height = 13
          Caption = 'E-Mail'
        end
        object Label71: TLabel
          Left = 142
          Top = 16
          Width = 24
          Height = 13
          Caption = 'DDD'
        end
        object Contato3_Nome: TEdit
          Left = 8
          Top = 30
          Width = 80
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = Contato3_NomeKeyPress
        end
        object Contato3_Fone: TEdit
          Left = 170
          Top = 30
          Width = 60
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = Contato3_FoneKeyPress
        end
        object Contato3_Fax: TEdit
          Left = 232
          Top = 30
          Width = 60
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 4
          OnKeyPress = Contato3_FaxKeyPress
        end
        object Contato3_Email: TEdit
          Left = 294
          Top = 30
          Width = 70
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 5
          OnKeyPress = Contato3_EmailKeyPress
        end
        object Contato3_Depto: TEdit
          Left = 90
          Top = 30
          Width = 50
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          OnKeyPress = Contato3_DeptoKeyPress
        end
        object Contato3_DDD: TEdit
          Left = 142
          Top = 30
          Width = 26
          Height = 19
          Ctl3D = False
          MaxLength = 3
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = Contato3_DDDKeyPress
        end
      end
      object Cliente_Observacoes: TMemo
        Left = 384
        Top = 326
        Width = 369
        Height = 41
        Ctl3D = False
        ParentCtl3D = False
        ScrollBars = ssVertical
        TabOrder = 17
      end
      object GroupBox9: TGroupBox
        Left = 8
        Top = 367
        Width = 745
        Height = 121
        Caption = '  Transportadora '
        TabOrder = 18
        object Label50: TLabel
          Left = 164
          Top = 11
          Width = 28
          Height = 13
          Caption = 'Nome'
        end
        object Label51: TLabel
          Left = 47
          Top = 12
          Width = 27
          Height = 13
          Caption = 'CNPJ'
        end
        object Label52: TLabel
          Left = 8
          Top = 46
          Width = 57
          Height = 13
          Caption = 'Logradouro '
        end
        object Label53: TLabel
          Left = 238
          Top = 46
          Width = 64
          Height = 13
          Caption = 'Complemento'
        end
        object Label54: TLabel
          Left = 344
          Top = 46
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object Label55: TLabel
          Left = 521
          Top = 46
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label56: TLabel
          Left = 696
          Top = 46
          Width = 33
          Height = 13
          Caption = 'Estado'
        end
        object Label57: TLabel
          Left = 9
          Top = 80
          Width = 21
          Height = 13
          Caption = 'CEP'
        end
        object Label58: TLabel
          Left = 74
          Top = 80
          Width = 22
          Height = 13
          Caption = 'Pa'#237's'
        end
        object Label59: TLabel
          Left = 179
          Top = 80
          Width = 37
          Height = 13
          Caption = 'Contato'
        end
        object Label60: TLabel
          Left = 306
          Top = 80
          Width = 24
          Height = 13
          Caption = 'DDD'
        end
        object Label61: TLabel
          Left = 421
          Top = 80
          Width = 24
          Height = 13
          Caption = 'Fone'
        end
        object Label62: TLabel
          Left = 495
          Top = 80
          Width = 17
          Height = 13
          Caption = 'Fax'
        end
        object Label63: TLabel
          Left = 571
          Top = 81
          Width = 29
          Height = 13
          Caption = 'E-Mail'
        end
        object Label64: TLabel
          Left = 10
          Top = 11
          Width = 20
          Height = 13
          Caption = 'Nro.'
        end
        object Label65: TLabel
          Left = 345
          Top = 80
          Width = 30
          Height = 13
          Caption = 'Ramal'
        end
        object VTransportadora_Nome: TEdit
          Left = 163
          Top = 27
          Width = 442
          Height = 19
          Ctl3D = False
          Enabled = False
          MaxLength = 50
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          OnKeyPress = Contato3_NomeKeyPress
        end
        object VTransportadora_CNPJ: TEdit
          Left = 48
          Top = 27
          Width = 109
          Height = 19
          Ctl3D = False
          Enabled = False
          MaxLength = 80
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          OnKeyPress = Contato3_DeptoKeyPress
        end
        object BT_VincularTransportadora: TButton
          Left = 611
          Top = 21
          Width = 124
          Height = 25
          Caption = 'Vincular Transportadora'
          TabOrder = 2
          OnClick = BT_VincularTransportadoraClick
        end
        object VTransportadora_Endereco: TEdit
          Left = 8
          Top = 61
          Width = 224
          Height = 19
          Ctl3D = False
          Enabled = False
          MaxLength = 100
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
          OnKeyPress = Cliente_EnderecoKeyPress
        end
        object VTransportadora_Complemento: TEdit
          Left = 238
          Top = 61
          Width = 100
          Height = 19
          Ctl3D = False
          Enabled = False
          MaxLength = 80
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
          OnKeyPress = Cliente_ComplementoKeyPress
        end
        object VTransportadora_Bairro: TEdit
          Left = 345
          Top = 61
          Width = 170
          Height = 19
          Ctl3D = False
          Enabled = False
          MaxLength = 80
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
          OnKeyPress = Cliente_Bairro_CobrancaKeyPress
        end
        object VTransportadora_Cidade: TEdit
          Left = 521
          Top = 61
          Width = 170
          Height = 19
          Ctl3D = False
          Enabled = False
          MaxLength = 80
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
          OnKeyPress = Cliente_Cidade_CobrancaKeyPress
        end
        object VTransportadora_Estado: TComboBox
          Left = 696
          Top = 61
          Width = 42
          Height = 19
          BevelInner = bvNone
          BevelKind = bkSoft
          Style = csOwnerDrawFixed
          Ctl3D = False
          Enabled = False
          ItemHeight = 13
          ItemIndex = 24
          ParentCtl3D = False
          TabOrder = 7
          Text = 'SP'
          OnKeyPress = Cliente_Estado_CobrancaKeyPress
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
        object VTransportadora_CEP: TMaskEdit
          Left = 9
          Top = 95
          Width = 58
          Height = 19
          Ctl3D = False
          Enabled = False
          EditMask = '00000\-999;1;_'
          MaxLength = 9
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
          Text = '     -   '
          OnKeyPress = Cliente_Cep_CobrancaKeyPress
        end
        object VTransportadora_Pais: TComboBox
          Left = 74
          Top = 95
          Width = 100
          Height = 19
          BevelInner = bvNone
          BevelKind = bkSoft
          Style = csOwnerDrawFixed
          Ctl3D = False
          Enabled = False
          ItemHeight = 13
          ItemIndex = 0
          ParentCtl3D = False
          TabOrder = 9
          Text = 'Brasil'
          OnKeyPress = Cliente_Pais_CobrancaKeyPress
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
        object VTransportadora_Contato: TEdit
          Left = 180
          Top = 95
          Width = 121
          Height = 19
          Ctl3D = False
          Enabled = False
          MaxLength = 80
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 10
          OnKeyPress = Cliente_Bairro_CobrancaKeyPress
        end
        object VTransportadora_DDD: TEdit
          Left = 306
          Top = 95
          Width = 33
          Height = 19
          Ctl3D = False
          Enabled = False
          MaxLength = 80
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 11
          OnKeyPress = Cliente_Bairro_CobrancaKeyPress
        end
        object VTransportadora_Fone: TEdit
          Left = 421
          Top = 95
          Width = 70
          Height = 19
          Ctl3D = False
          Enabled = False
          MaxLength = 50
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 12
          OnKeyPress = Contato2_FoneKeyPress
        end
        object VTransportadora_Fax: TEdit
          Left = 496
          Top = 95
          Width = 70
          Height = 19
          Ctl3D = False
          Enabled = False
          MaxLength = 50
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 13
          OnKeyPress = Contato2_FaxKeyPress
        end
        object VTransportadora_Email: TEdit
          Left = 571
          Top = 95
          Width = 165
          Height = 19
          Ctl3D = False
          Enabled = False
          MaxLength = 80
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 14
        end
        object VTransportadora_Numero: TEdit
          Left = 9
          Top = 27
          Width = 34
          Height = 19
          Ctl3D = False
          Enabled = False
          MaxLength = 80
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 15
          OnKeyPress = Cliente_Bairro_CobrancaKeyPress
        end
        object VTransportadora_Ramal: TEdit
          Left = 345
          Top = 95
          Width = 70
          Height = 19
          Ctl3D = False
          Enabled = False
          MaxLength = 50
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 16
          OnKeyPress = Contato2_FoneKeyPress
        end
      end
      object Panel2: TPanel
        Left = 8
        Top = 490
        Width = 745
        Height = 41
        TabOrder = 19
        object BT_RelacaoVendas: TButton
          Left = 9
          Top = 8
          Width = 212
          Height = 25
          Caption = 'Rela'#231#227'o de Vendas e Manuten'#231#227'o'
          TabOrder = 0
          OnClick = BT_RelacaoVendasClick
        end
        object BT_Alterar: TBitBtn
          Left = 294
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Alterar'
          TabOrder = 1
          OnClick = BT_AlterarClick
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
        object BT_Excluir: TBitBtn
          Left = 375
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Excluir'
          TabOrder = 2
          OnClick = BT_ExcluirClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
            3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
            03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
            33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
            0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
            3333333337FFF7F3333333333000003333333333377777333333}
          NumGlyphs = 2
        end
        object BT_Sair: TBitBtn
          Left = 660
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Sair'
          TabOrder = 3
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
  end
end
