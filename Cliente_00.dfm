object Cliente00: TCliente00
  Left = 456
  Top = 281
  Width = 422
  Height = 432
  Caption = 'CadaTEX - Cadastro de Clientes'
  Color = clAppWorkSpace
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
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel7: TPanel
    Left = 7
    Top = 7
    Width = 399
    Height = 363
    TabOrder = 0
    object Panel2: TPanel
      Left = 7
      Top = 108
      Width = 384
      Height = 163
      TabOrder = 0
      object DBGrid_Clientes: TDBGrid
        Left = 8
        Top = 8
        Width = 368
        Height = 146
        Ctl3D = False
        DataSource = ConexaoBD.DS_Clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid_ClientesCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Cliente_Codigo'
            Title.Caption = 'C'#243'digo'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Codigo_Tipo'
            Title.Caption = 'C'#243'digo Tipo'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Nome'
            Title.Caption = 'Nome'
            Width = 155
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Razao_Social'
            Title.Caption = 'Raz'#227'o Social'
            Width = 168
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Inscricao_Municipal'
            Title.Caption = 'Inscri'#231#227'o Municipal'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Inscricao_Estadual'
            Title.Caption = 'Inscri'#231#227'o Estadual'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Tipo_Pessoa'
            Title.Caption = 'Tipo Pessoa'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Endereco'
            Title.Caption = 'Endere'#231'o'
            Width = 260
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Complemento'
            Title.Caption = 'Complemento'
            Width = 158
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Bairro'
            Title.Caption = 'Bairro'
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Cidade'
            Title.Caption = 'Cidade'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Estado'
            Title.Caption = 'Estado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Cep'
            Title.Caption = 'Cep'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Pais'
            Title.Caption = 'Pa'#237's'
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Fone'
            Title.Caption = 'Fone'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Fax'
            Title.Caption = 'Fax'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Email'
            Title.Caption = ' E-mail'
            Width = 149
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Endereco_Cobranca'
            Title.Caption = 'Endereco Cobran'#231'a'
            Width = 155
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Complemento_Cobranca'
            Title.Caption = 'Complemento Cobran'#231'a'
            Width = 147
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Bairro_Cobranca'
            Title.Caption = 'Bairro Cobran'#231'a'
            Width = 148
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Cidade_Cobranca'
            Title.Caption = 'Cidade Cobran'#231'a'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Estado_Cobranca'
            Title.Caption = 'Estado Cobran'#231'a'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Cep_Cobranca'
            Title.Caption = 'Cep Cobran'#231'a'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Pais_Cobranca'
            Title.Caption = 'Pa'#237's Cobran'#231'a'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Opcao_Cobranca'
            Title.Caption = 'Op'#231#227'o Cobran'#231'a'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Fone_Cobranca'
            Title.Caption = 'Fone Cobran'#231'a'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Fax_Cobranca'
            Title.Caption = 'Fax Cobran'#231'a'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Valor_Credito'
            Title.Caption = 'Valor Cr'#233'dito'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Status_Credito'
            Title.Caption = 'Status Cr'#233'dito'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Data_Inclusao'
            Title.Caption = 'Data Inclus'#227'o'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Data_Visita'
            Title.Caption = 'Data Visita'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Data_Alteracao'
            Title.Caption = 'Data Altera'#231#227'o'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Data_Ultima_Compra'
            Title.Caption = 'Data '#218'ltima Compra'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Ultimo_Valor'
            Title.Caption = #218'timo Valor'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contato1_Nome'
            Title.Caption = 'Contato1 Nome'
            Width = 199
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contato1_Depto'
            Title.Caption = 'Contato1 Depto'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contato1_Fone'
            Title.Caption = 'Contato1 Fone'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contato1_Fax'
            Title.Caption = 'Contato1 Fax'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contato1_Email'
            Title.Caption = 'Contato1 Email'
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contato2_Nome'
            Title.Caption = 'Contato2 Nome'
            Width = 175
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contato2_Depto'
            Title.Caption = 'Contato2 Depto'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contato2_Fone'
            Title.Caption = 'Contato2 Fone'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contato2_Fax'
            Title.Caption = 'Contato2 Fax'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contato2_Email'
            Title.Caption = 'Contato2 Email'
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contato3_Nome'
            Title.Caption = 'Contato3 Nome'
            Width = 186
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contato3_Depto'
            Title.Caption = 'Contato3 Depto'
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contato3_Fone'
            Title.Caption = 'Contato3 Fone'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contato3_Fax'
            Title.Caption = 'Contato3 Fax'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Contato3_Email'
            Title.Caption = 'Contato3 Email'
            Width = 134
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Observacao'
            Title.Caption = 'Observa'#231#245'es'
            Width = 135
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 7
      Top = 314
      Width = 384
      Height = 41
      TabOrder = 1
      object BT_Incluir: TBitBtn
        Left = 154
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
        Left = 301
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
      object DBG_Cliente_Observacao: TDBMemo
        Left = 6
        Top = 6
        Width = 8
        Height = 19
        Ctl3D = False
        DataField = 'Cliente_Observacao'
        DataSource = ConexaoBD.DS_Clientes
        ParentCtl3D = False
        TabOrder = 2
        Visible = False
      end
      object Posicao_1: TEdit
        Left = 16
        Top = 6
        Width = 9
        Height = 19
        Ctl3D = False
        MaxLength = 13
        ParentCtl3D = False
        TabOrder = 3
        Visible = False
      end
      object Conectado: TEdit
        Left = 27
        Top = 6
        Width = 9
        Height = 19
        Ctl3D = False
        MaxLength = 13
        ParentCtl3D = False
        TabOrder = 4
        Visible = False
      end
    end
    object Panel1: TPanel
      Left = 7
      Top = 50
      Width = 384
      Height = 53
      TabOrder = 2
      object Label1: TLabel
        Left = 6
        Top = 8
        Width = 95
        Height = 13
        Caption = 'Dados para Procura'
      end
      object Label2: TLabel
        Left = 152
        Top = 8
        Width = 37
        Height = 13
        Caption = 'Op'#231#245'es'
      end
      object Dados_Procura: TEdit
        Left = 6
        Top = 23
        Width = 141
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnKeyPress = Dados_ProcuraKeyPress
      end
      object BT_Procurar: TBitBtn
        Left = 302
        Top = 20
        Width = 75
        Height = 25
        Caption = '&Procurar'
        TabOrder = 1
        OnClick = BT_ProcurarClick
        Glyph.Data = {
          36050000424D360500000000000036040000280000000E000000100000000100
          08000000000000010000CA0E0000C30E00000001000000000000000000003300
          00006600000099000000CC000000FF0000000033000033330000663300009933
          0000CC330000FF33000000660000336600006666000099660000CC660000FF66
          000000990000339900006699000099990000CC990000FF99000000CC000033CC
          000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
          0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
          330000333300333333006633330099333300CC333300FF333300006633003366
          33006666330099663300CC663300FF6633000099330033993300669933009999
          3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
          330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
          66006600660099006600CC006600FF0066000033660033336600663366009933
          6600CC336600FF33660000666600336666006666660099666600CC666600FF66
          660000996600339966006699660099996600CC996600FF99660000CC660033CC
          660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
          6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
          990000339900333399006633990099339900CC339900FF339900006699003366
          99006666990099669900CC669900FF6699000099990033999900669999009999
          9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
          990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
          CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
          CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
          CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
          CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
          CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
          FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
          FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
          FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
          FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000ACACACACACAC
          ACACACAC0000ACAC0000ACACACACACACACACAC02230500AC0000ACAC00000000
          00000223050500000000ACAC56ACACACAC02230505ACAC000000ACAC56D7D7D7
          02230505ACD7AC000000ACAC56000056AC0505ACD7D7AC000000AC56AC23AC00
          5656ACD7D7D7AC00000056D723AC23AC00ACD7D7D7D7AC0000005623D723AC23
          00ACD7D7D7D7AC00000056D723D723AC00ACD7D7D7D7AC000000AC56D723D700
          ACD7D7D7D7D7AC000000ACAC565600ACD7D7D7D7D7D7AC000000ACAC56D7D7D7
          D7D7D7D700000000FFFFACAC56D7D7D7D7D7D7D7ACD756AC0000ACAC56D7D7D7
          D7D7D7D7AC56ACAC0000ACAC565656565656565656ACACAC0000}
      end
      object Opcoes_Procura: TComboBox
        Left = 152
        Top = 23
        Width = 136
        Height = 19
        BevelInner = bvNone
        BevelKind = bkSoft
        Style = csOwnerDrawFixed
        Ctl3D = False
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 2
        Text = 'Nome'
        OnKeyPress = Opcoes_ProcuraKeyPress
        Items.Strings = (
          'Nome'
          'C'#243'digo'
          'Tipo do C'#243'digo'
          'Raz'#227'o Social'
          'Inscri'#231#227'o Municipal'
          'Inscri'#231#227'o Estadual'
          'Endere'#231'o'
          'Bairro'
          'Cidade'
          'Estado'
          'CEP'
          'Pa'#237's'
          'Endere'#231'o (Cobran'#231'a)'
          'Bairro (Cobran'#231'a)'
          'Cidade (Cobran'#231'a)'
          'Estado (Cobran'#231'a)'
          'CEP (Cobran'#231'a)'
          'Pa'#237's (Cobran'#231'a)'
          'Contato'
          'DDD'
          'Ramal'
          'Fone Comercial'
          'Fone Residencial'
          'Fone Celular'
          'Fone Fax'
          'Valor do Cr'#233'dito'
          'Status do Cr'#233'dito'
          'Tipo da Pessoa'
          'Data de Inclus'#227'o'
          'Data da Visita'
          'Data de Altera'#231#227'o'
          'Data da '#218'ltima Compra'
          #218'ltimo Valor'
          'Op'#231#227'o de Cobran'#231'a'
          'E-Mail')
      end
    end
    object Panel4: TPanel
      Left = 7
      Top = 278
      Width = 384
      Height = 31
      TabOrder = 3
      object Panel5: TPanel
        Left = 4
        Top = 4
        Width = 376
        Height = 23
        BevelOuter = bvLowered
        TabOrder = 0
        object Label3: TLabel
          Left = 6
          Top = 5
          Width = 180
          Height = 13
          Caption = 'Quantidade de Clientes Selecionados:'
        end
        object Total_Clientes: TLabel
          Left = 191
          Top = 5
          Width = 8
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object Panel6: TPanel
      Left = 7
      Top = 7
      Width = 384
      Height = 39
      TabOrder = 4
      object Label4: TLabel
        Left = 64
        Top = 4
        Width = 256
        Height = 13
        Caption = 'CadaTEX - Cadastro de Clientes - Vers'#227'o 7.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Nro_Licenca: TLabel
        Left = 86
        Top = 21
        Width = 3
        Height = 13
        Color = clBtnFace
        ParentColor = False
      end
      object Registro_ConsulTEX: TLabel
        Left = 3
        Top = 21
        Width = 76
        Height = 13
        Caption = 'Nro.Registro:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 87
    Top = 324
    object Relatrios1: TMenuItem
      Caption = '&Relat'#243'rios'
      object ListagemdeClientes1: TMenuItem
        Caption = '&Listagem de Clientes'
        OnClick = ListagemdeClientes1Click
      end
      object RegistrodeLigaes1: TMenuItem
        Caption = '&Registro de Liga'#231#245'es'
        OnClick = RegistrodeLigaes1Click
      end
      object FichadeClientes1: TMenuItem
        Caption = '&Ficha de Clientes'
        OnClick = FichadeClientes1Click
      end
      object Etiquetas1: TMenuItem
        Caption = '&Etiquetas'
        OnClick = Etiquetas1Click
      end
      object EtiquetasPIMACO1: TMenuItem
        Caption = 'Etiquetas - &PIMACO'
        OnClick = EtiquetasPIMACO1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Cotao1: TMenuItem
        Caption = '&Cota'#231#227'o'
        OnClick = Cotao1Click
      end
      object Locao1: TMenuItem
        Caption = 'L&oca'#231#227'o'
        OnClick = Locao1Click
      end
      object Manuteno1: TMenuItem
        Caption = '&Manuten'#231#227'o'
        OnClick = Manuteno1Click
      end
      object Com7pras1: TMenuItem
        Caption = 'Com&pras'
        OnClick = Com7pras1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Equipamentos1: TMenuItem
        Caption = 'E&quipamentos'
        OnClick = Equipamentos1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object NotaFiscalProdutos1: TMenuItem
        Caption = 'Nota-Fiscal - &Produtos'
        OnClick = NotaFiscalProdutos1Click
      end
      object NotaFiscal1: TMenuItem
        Caption = '&Nota-Fiscal - Servi'#231'os'
        OnClick = NotaFiscal1Click
      end
    end
    object Transportadora1: TMenuItem
      Caption = '&Transportadora'
      OnClick = Transportadora1Click
    end
    object Rede1: TMenuItem
      Caption = 'Re&de'
      OnClick = Rede1Click
    end
    object BackupReparao1: TMenuItem
      Caption = '&Backup/Repara'#231#227'o'
      OnClick = BackupReparao1Click
    end
    object Sair1: TMenuItem
      Caption = '&Sair'
      OnClick = Sair1Click
    end
  end
  object Imprimir: TImpMat
    Linhas = 6
    Colunas = 70
    TipoImp = tiBobina
    ControleServico = False
    ArqDestino = 'LPT1'
    ImprimeLinhasFinais = True
    ImprimeEspDireita = False
    Acentuacao = acANSI
    Left = 55
    Top = 324
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 30
    Top = 219
  end
end
