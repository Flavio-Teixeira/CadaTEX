object RelEquipamentos00: TRelEquipamentos00
  Left = 196
  Top = 106
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Equipamentos'
  ClientHeight = 324
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
  object Panel7: TPanel
    Left = 3
    Top = 3
    Width = 772
    Height = 317
    TabOrder = 0
    object Panel2: TPanel
      Left = 7
      Top = 66
      Width = 758
      Height = 163
      TabOrder = 0
      object DBGrid_Relacao: TDBGrid
        Left = 8
        Top = 8
        Width = 743
        Height = 146
        Ctl3D = False
        DataSource = ConexaoBD.DS_Rel_Vendas
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
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'venda_manutencao_numero'
            Title.Alignment = taCenter
            Title.Caption = 'Nro.'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente_Nome'
            Title.Caption = 'Cliente'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'venda_manutencao_servico'
            Title.Caption = 'Servi'#231'o'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'venda_manutencao_tipo'
            Title.Caption = 'Tipo'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'venda_manutencao_nro_equipamento'
            Title.Alignment = taCenter
            Title.Caption = 'Nro. Equipamento'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'venda_manutencao_entrada'
            Title.Caption = 'Entrada'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'venda_manutencao_saida'
            Title.Caption = 'Sa'#237'da'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'venda_manutencao_relacao_pecas'
            Title.Caption = 'Rela'#231#227'o de Pe'#231'as'
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'venda_manutencao_valor'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'venda_manutencao_numero'
            Visible = False
          end>
      end
    end
    object Panel3: TPanel
      Left = 7
      Top = 268
      Width = 758
      Height = 41
      TabOrder = 1
      object BT_Sair: TBitBtn
        Left = 676
        Top = 8
        Width = 75
        Height = 25
        Caption = '&Sair'
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
      object Imprimir: TBitBtn
        Left = 331
        Top = 8
        Width = 97
        Height = 25
        Caption = '&Imprimir'
        TabOrder = 1
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
    end
    object Panel4: TPanel
      Left = 7
      Top = 233
      Width = 758
      Height = 31
      TabOrder = 2
      object Panel5: TPanel
        Left = 4
        Top = 4
        Width = 750
        Height = 23
        BevelOuter = bvLowered
        TabOrder = 0
        object Label3: TLabel
          Left = 6
          Top = 5
          Width = 143
          Height = 13
          Caption = 'Quantidade de Equipamentos:'
        end
        object Total_Venda: TLabel
          Left = 155
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
        object Label9: TLabel
          Left = 630
          Top = 6
          Width = 27
          Height = 13
          Caption = 'Total:'
        end
        object Total_Valor_Venda: TLabel
          Left = 663
          Top = 6
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
      Left = 8
      Top = 8
      Width = 757
      Height = 53
      TabOrder = 3
      object Label4: TLabel
        Left = 298
        Top = 8
        Width = 38
        Height = 13
        Caption = 'Per'#237'odo'
      end
      object Label5: TLabel
        Left = 461
        Top = 8
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object Label6: TLabel
        Left = 369
        Top = 26
        Width = 16
        Height = 13
        Caption = 'At'#233
      end
      object Label1: TLabel
        Left = 7
        Top = 8
        Width = 98
        Height = 13
        Caption = 'Pe'#231'a / Equipamento'
      end
      object Label2: TLabel
        Left = 535
        Top = 8
        Width = 36
        Height = 13
        Caption = 'Servi'#231'o'
      end
      object BT_Procurar_Data: TBitBtn
        Left = 672
        Top = 20
        Width = 75
        Height = 25
        Caption = '&Procurar'
        TabOrder = 5
        OnClick = BT_Procurar_DataClick
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
      object Opcoes_Procura_Data: TComboBox
        Left = 461
        Top = 23
        Width = 70
        Height = 19
        BevelInner = bvNone
        BevelKind = bkSoft
        Style = csOwnerDrawFixed
        Ctl3D = False
        ItemHeight = 13
        ItemIndex = 1
        ParentCtl3D = False
        TabOrder = 3
        Text = 'Sa'#237'da'
        OnKeyPress = Opcoes_Procura_DataKeyPress
        Items.Strings = (
          'Entrada'
          'Sa'#237'da')
      end
      object Data_Procura_Entrada: TMaskEdit
        Left = 299
        Top = 23
        Width = 61
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 1
        Text = '  /  /    '
        OnKeyPress = Data_Procura_EntradaKeyPress
      end
      object Data_Procura_Saida: TMaskEdit
        Left = 392
        Top = 23
        Width = 61
        Height = 19
        Ctl3D = False
        EditMask = '!99/99/9999;1;_'
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 2
        Text = '  /  /    '
        OnKeyPress = Data_Procura_SaidaKeyPress
      end
      object Dados_Procura: TEdit
        Left = 7
        Top = 23
        Width = 286
        Height = 19
        Ctl3D = False
        MaxLength = 255
        ParentCtl3D = False
        TabOrder = 0
        OnKeyPress = Dados_ProcuraKeyPress
      end
      object Opcoes_Procura_Servico: TComboBox
        Left = 535
        Top = 23
        Width = 127
        Height = 19
        BevelInner = bvNone
        BevelKind = bkSoft
        Style = csOwnerDrawFixed
        Ctl3D = False
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 4
        Text = 'Todos'
        OnKeyPress = Opcoes_Procura_ServicoKeyPress
        Items.Strings = (
          'Todos'
          'Cota'#231#227'o'
          'Loca'#231#227'o'
          'Manuten'#231#227'o'
          'Nota'
          'Venda')
      end
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 26
    Top = 189
  end
end
