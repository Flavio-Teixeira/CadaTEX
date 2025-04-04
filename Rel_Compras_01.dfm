object RelCompras01: TRelCompras01
  Left = 198
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Compras- INCLUS'#195'O'
  ClientHeight = 548
  ClientWidth = 779
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
  object Panel1: TPanel
    Left = 4
    Top = 3
    Width = 771
    Height = 496
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 7
      Top = 3
      Width = 756
      Height = 485
      Caption = '   Compras   '
      TabOrder = 0
      object Label2: TLabel
        Left = 8
        Top = 72
        Width = 36
        Height = 13
        Caption = 'Servi'#231'o'
      end
      object Label1: TLabel
        Left = 103
        Top = 72
        Width = 21
        Height = 13
        Caption = 'Tipo'
      end
      object Label4: TLabel
        Left = 348
        Top = 72
        Width = 37
        Height = 13
        Caption = 'Entrada'
      end
      object Label3: TLabel
        Left = 416
        Top = 72
        Width = 29
        Height = 13
        Caption = 'Sa'#237'da'
      end
      object Label5: TLabel
        Left = 485
        Top = 72
        Width = 162
        Height = 13
        Caption = 'Rela'#231#227'o de Pe'#231'as / Observa'#231#245'es'
      end
      object Label6: TLabel
        Left = 687
        Top = 72
        Width = 47
        Height = 13
        Caption = 'Valor (R$)'
      end
      object Label7: TLabel
        Left = 8
        Top = 121
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label11: TLabel
        Left = 226
        Top = 72
        Width = 100
        Height = 13
        Caption = 'Nro. do Equipamento'
      end
      object Venda_Manutencao_Servico: TComboBox
        Left = 8
        Top = 87
        Width = 92
        Height = 19
        BevelInner = bvNone
        BevelKind = bkSoft
        Style = csOwnerDrawFixed
        Ctl3D = False
        Enabled = False
        ItemHeight = 13
        ItemIndex = 4
        ParentCtl3D = False
        TabOrder = 0
        Text = 'Compras'
        OnKeyPress = Venda_Manutencao_ServicoKeyPress
        Items.Strings = (
          'Cota'#231#227'o'
          'Loca'#231#227'o'
          'Manuten'#231#227'o'
          'Nota'
          'Compras')
      end
      object Venda_Manutencao_Tipo: TEdit
        Left = 103
        Top = 87
        Width = 120
        Height = 19
        Ctl3D = False
        MaxLength = 50
        ParentCtl3D = False
        TabOrder = 1
        OnKeyPress = Venda_Manutencao_TipoKeyPress
      end
      object Venda_Manutencao_Entrada: TMaskEdit
        Left = 349
        Top = 87
        Width = 61
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 3
        Text = '  /  /    '
        OnKeyPress = Venda_Manutencao_EntradaKeyPress
      end
      object Venda_Manutencao_Saida: TMaskEdit
        Left = 417
        Top = 87
        Width = 61
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 4
        Text = '  /  /    '
        OnKeyPress = Venda_Manutencao_SaidaKeyPress
      end
      object Venda_Manutencao_Relacao_Pecas: TEdit
        Left = 485
        Top = 87
        Width = 199
        Height = 19
        Ctl3D = False
        MaxLength = 255
        ParentCtl3D = False
        TabOrder = 5
        OnKeyPress = Venda_Manutencao_Relacao_PecasKeyPress
      end
      object Venda_Manutencao_Valor: TEdit
        Left = 687
        Top = 87
        Width = 62
        Height = 19
        Ctl3D = False
        MaxLength = 50
        ParentCtl3D = False
        TabOrder = 6
        OnKeyPress = Venda_Manutencao_ValorKeyPress
      end
      object Panel3: TPanel
        Left = 8
        Top = 137
        Width = 740
        Height = 58
        BevelInner = bvLowered
        BevelOuter = bvNone
        TabOrder = 7
        object Transferencia: TImage
          Left = 595
          Top = 5
          Width = 17
          Height = 23
          Visible = False
        end
        object BT_Edita_Fonte: TBitBtn
          Left = 4
          Top = 4
          Width = 25
          Height = 25
          Hint = 'Editar a Fonte'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BT_Edita_FonteClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333FFF33FFFFF33333300033000
            00333337773377777333333330333300033333337FF33777F333333330733300
            0333333377FFF777F33333333700000073333333777777773333333333033000
            3333333337FF777F333333333307300033333333377F777F3333333333703007
            33333333377F7773333333333330000333333333337777F33333333333300003
            33333333337777F3333333333337007333333333337777333333333333330033
            3333333333377333333333333333033333333333333733333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object BT_Insere_Imagem: TBitBtn
          Left = 43
          Top = 4
          Width = 25
          Height = 25
          Hint = 'Inserir uma imagem'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BT_Insere_ImagemClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADA00000000
            0000ADAD077770770880DADA007707708800ADAD0F07770880B0DADA0BF070F0
            0BF0ADAD0FBF0FBFBFB0DADA0BFBFBFBFBF0ADAD0FBFBFB707B0DADA0BFBFBF0
            80F00DAD0FBFBFB707B000DA0BFBFBFBFBF0000D0000000000000000DADADADA
            DADA000DADADADADADAD00DADADADADADADA0DADADADADADADAD}
        end
        object BT_Insere_Rtf: TBitBtn
          Left = 69
          Top = 4
          Width = 25
          Height = 25
          Hint = 'Importa Arquivo RTF'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BT_Insere_RtfClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADA47
            DADAADADADADAD447DADDADADADADA4447DA000000000044447D0FFFFFFFFF44
            444A0F888888884444AD0FF888F888444ADA0F87778777440DAD0FFF7FFF774F
            0ADA0F887777778F0DAD0FFFF7F778FF0ADA0F8887F7788F0DAD0FFFFF778FFF
            0ADA0F888877888F0DAD0FFFFFFFFFFF0ADA0000000000000DAD}
        end
        object BT_Alinha_Esquerda: TBitBtn
          Left = 114
          Top = 4
          Width = 25
          Height = 25
          Hint = 'Alinha Texto '#224' Esquerda'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = BT_Alinha_EsquerdaClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777777777777777770000000000000777888888888888877777777777777
            7777777777777777777770000000007777777888888888777777777777777777
            7777777777777777777770000000000000777888888888888877777777777777
            7777777777777777777770000000007777777888888888777777777777777777
            7777777777777777777770000000000000777888888888888877777777777777
            7777777777777777777770000000007777777888888888777777777777777777
            7777777777777777777770000000000000777888888888888877777777777777
            7777777777777777777777777777777777777777777777777777}
          NumGlyphs = 2
        end
        object BT_Alinha_Centro: TBitBtn
          Left = 140
          Top = 4
          Width = 25
          Height = 25
          Hint = 'Centraliza Texto'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = BT_Alinha_CentroClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888888888888888888888800000000008888888888888888
            8888000000000000008888888888888888888800000000008888888888888888
            8888000000000000008888888888888888888800000000008888888888888888
            8888000000000000008888888888888888888888888888888888}
        end
        object BT_Alinha_Direita: TBitBtn
          Left = 192
          Top = 4
          Width = 25
          Height = 25
          Hint = 'Alinha Texto '#224' Direita'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = BT_Alinha_DireitaClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888888888888888888888888000000000088888888888888
            8888000000000000008888888888888888888888000000000088888888888888
            8888000000000000008888888888888888888888000000000088888888888888
            8888000000000000008888888888888888888888888888888888}
        end
        object BT_Inserir_Marcadores: TBitBtn
          Left = 234
          Top = 4
          Width = 25
          Height = 25
          Hint = 'Inserir Marcadores'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = BT_Inserir_MarcadoresClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000CE0E0000D80E00001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777777777777777744477777777777774447700000000077444777777777
            7777777777777777777777777777777777774447777777777777444770000000
            0077444777777777777777777777777777777777777777777777444777777777
            7777444770000000007744477777777777777777777777777777}
        end
        object BT_Aumentar_Recuo: TBitBtn
          Left = 281
          Top = 4
          Width = 25
          Height = 25
          Hint = 'Aumentar Recuo'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = BT_Aumentar_RecuoClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADA0ADADADADDADADADADADADADAAD0000A00DADADADDADADADADADA
            DADAAD0000A000000000DADADADADADADADAAD4DADA000000DADDA44DAD00000
            0ADA44444DADADADADADDA44DAD000000000AD4DADA000000000DADADADADADA
            DADAAD0000A000000000DADADADADADADADAADADADA0ADADADAD}
        end
        object BT_Diminuir_Recuo: TBitBtn
          Left = 307
          Top = 4
          Width = 25
          Height = 25
          Hint = 'Diminuir Recuo'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = BT_Diminuir_RecuoClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADA0ADADADADDADADADADADADADAAD0000A00DADADADDADADADADADA
            DADAAD0000A000000000DADADADADADADADAAD4DADA000000DADD44ADAD00000
            0ADA44444DADADADADADD44ADAD000000000AD4DADA000000000DADADADADADA
            DADAAD0000A000000000DADADADADADADADAADADADA0ADADADAD}
        end
        object BT_Imprimir: TBitBtn
          Left = 353
          Top = 4
          Width = 25
          Height = 25
          Hint = 'Imprimir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = BT_ImprimirClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            0003377777777777777308888888888888807F33333333333337088888888888
            88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
            8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
            8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
        end
        object BT_Justifica: TBitBtn
          Left = 166
          Top = 4
          Width = 25
          Height = 25
          Hint = 'Justificar o Texto'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = BT_JustificaClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000CE0E0000D80E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888888888888888888880000000000000088888888888888
            8888000000000000008888888888888888880000000000000088888888888888
            8888000000000000008888888888888888880000000000000088888888888888
            8888000000000000008888888888888888888888888888888888}
        end
        object Ruler: TPanel
          Left = 1
          Top = 31
          Width = 738
          Height = 26
          Align = alBottom
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = 'asdf'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          object FirstInd: TLabel
            Left = 2
            Top = 2
            Width = 10
            Height = 9
            AutoSize = False
            Caption = #234
            DragCursor = crArrow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Wingdings'
            Font.Style = []
            ParentFont = False
            OnMouseDown = RulerItemMouseDown
            OnMouseMove = RulerItemMouseMove
            OnMouseUp = FirstIndMouseUp
          end
          object LeftInd: TLabel
            Left = 2
            Top = 12
            Width = 10
            Height = 11
            AutoSize = False
            Caption = #233
            DragCursor = crArrow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Wingdings'
            Font.Style = []
            ParentFont = False
            OnMouseDown = RulerItemMouseDown
            OnMouseMove = RulerItemMouseMove
            OnMouseUp = LeftIndMouseUp
          end
          object RulerLine: TBevel
            Left = 4
            Top = 12
            Width = 755
            Height = 2
            Shape = bsTopLine
          end
          object RightInd: TLabel
            Left = 724
            Top = 14
            Width = 9
            Height = 12
            Caption = #241
            DragCursor = crArrow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Wingdings'
            Font.Style = []
            ParentFont = False
            OnMouseDown = RulerItemMouseDown
            OnMouseMove = RulerItemMouseMove
            OnMouseUp = RightIndMouseUp
          end
          object Bevel1: TBevel
            Left = 0
            Top = 0
            Width = 738
            Height = 2
            Align = alTop
            Shape = bsTopLine
          end
        end
      end
      object Venda_Manutencao_Descricao: TJvRichEdit
        Left = 8
        Top = 197
        Width = 739
        Height = 260
        TabOrder = 8
        OnChange = Venda_Manutencao_DescricaoChange
        OnSelectionChange = SelectionChange
      end
      object StatusBar: TStatusBar
        Left = 8
        Top = 458
        Width = 739
        Height = 19
        Align = alNone
        Panels = <
          item
            Width = 200
          end
          item
            Width = 400
          end>
      end
      object GroupBox2: TGroupBox
        Left = 7
        Top = 19
        Width = 742
        Height = 44
        Caption = '   Cliente   '
        TabOrder = 10
        object Label8: TLabel
          Left = 8
          Top = 19
          Width = 44
          Height = 13
          Caption = 'C'#243'digo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 240
          Top = 19
          Width = 37
          Height = 13
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Cliente_Codigo: TLabel
          Left = 56
          Top = 19
          Width = 170
          Height = 13
          AutoSize = False
        end
        object Cliente_Nome: TLabel
          Left = 280
          Top = 19
          Width = 325
          Height = 13
          AutoSize = False
        end
        object BT_Adiciona_Cliente: TBitBtn
          Left = 623
          Top = 12
          Width = 112
          Height = 25
          Caption = '&Adicionar Cliente'
          TabOrder = 0
          OnClick = BT_Adiciona_ClienteClick
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
        object Cliente_EMail: TEdit
          Left = 611
          Top = 15
          Width = 8
          Height = 19
          Ctl3D = False
          MaxLength = 50
          ParentCtl3D = False
          TabOrder = 1
          Visible = False
          OnKeyPress = Venda_Manutencao_ValorKeyPress
        end
      end
      object Venda_Manutencao_Nro_Equipamento: TEdit
        Left = 226
        Top = 87
        Width = 120
        Height = 19
        Ctl3D = False
        MaxLength = 50
        ParentCtl3D = False
        TabOrder = 2
        OnKeyPress = Venda_Manutencao_Nro_EquipamentoKeyPress
      end
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 503
    Width = 771
    Height = 41
    TabOrder = 1
    object BT_Incluir: TBitBtn
      Left = 242
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
      Left = 688
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
    object Imprimir: TBitBtn
      Left = 327
      Top = 8
      Width = 97
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 2
      OnClick = ImprimirClick
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
    object Enviar_Email: TBitBtn
      Left = 433
      Top = 8
      Width = 97
      Height = 25
      Caption = '&Enviar Email'
      TabOrder = 3
      OnClick = Enviar_EmailClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
        000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
        FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
        FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
        9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
        0000777777777777777733333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 519
    Top = 145
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'All (*.gif;*.jpg;*.bmp;*.ico;*.emf;*.wmf)|*.gif;*.jpg;*.bmp;*.ic' +
      'o;*.emf;*.wmf|CompuServe GIF Image (*.gif)|*.gif|JPEG Image File' +
      ' (*.jpg)|*.jpg|Bitmaps (*.bmp)|*.bmp|Icons (*.ico)|*.ico|Enhance' +
      'd Metafiles (*.emf)|*.wmf'
    Left = 550
    Top = 146
  end
  object PrintDialog1: TPrintDialog
    Left = 581
    Top = 146
  end
end
