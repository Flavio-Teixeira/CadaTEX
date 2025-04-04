unit NF_Datatex_Pro_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, JvRichEdit, JvExStdCtrls;

type
  TNF_DatatexPro01 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Natureza_Operacao: TComboBox;
    Data_Emissao: TMaskEdit;
    GroupBox1: TGroupBox;
    Classificacao_1: TEdit;
    Descricao_1: TEdit;
    Vlr_Unitario_1: TEdit;
    Vlr_Total_1: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Cliente: TEdit;
    Label4: TLabel;
    Endereco: TEdit;
    Label7: TLabel;
    Estado: TEdit;
    Label8: TLabel;
    Cep: TEdit;
    Label9: TLabel;
    Cnpj: TEdit;
    Label10: TLabel;
    Inscricao_Estadual: TEdit;
    Cidade: TEdit;
    Label6: TLabel;
    Bairro: TEdit;
    Label5: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Classificacao_2: TEdit;
    Descricao_2: TEdit;
    Vlr_Unitario_2: TEdit;
    Vlr_Total_2: TEdit;
    Classificacao_4: TEdit;
    Descricao_4: TEdit;
    Vlr_Unitario_4: TEdit;
    Vlr_Total_4: TEdit;
    Classificacao_5: TEdit;
    Descricao_5: TEdit;
    Vlr_Unitario_5: TEdit;
    Vlr_Total_5: TEdit;
    Classificacao_6: TEdit;
    Descricao_6: TEdit;
    Vlr_Unitario_6: TEdit;
    Vlr_Total_6: TEdit;
    Classificacao_7: TEdit;
    Descricao_7: TEdit;
    Vlr_Unitario_7: TEdit;
    Vlr_Total_7: TEdit;
    Classificacao_8: TEdit;
    Descricao_8: TEdit;
    Vlr_Unitario_8: TEdit;
    Vlr_Total_8: TEdit;
    Classificacao_9: TEdit;
    Descricao_9: TEdit;
    Vlr_Unitario_9: TEdit;
    Vlr_Total_9: TEdit;
    Classificacao_10: TEdit;
    Descricao_10: TEdit;
    Vlr_Unitario_10: TEdit;
    Vlr_Total_10: TEdit;
    Classificacao_11: TEdit;
    Descricao_11: TEdit;
    Vlr_Unitario_11: TEdit;
    Vlr_Total_11: TEdit;
    Classificacao_12: TEdit;
    Descricao_12: TEdit;
    Vlr_Unitario_12: TEdit;
    Vlr_Total_12: TEdit;
    BT_Imprimir: TBitBtn;
    BT_Sair: TBitBtn;
    Label18: TLabel;
    Vlr_Total_Nota: TEdit;
    Classificacao_3: TEdit;
    Descricao_3: TEdit;
    Vlr_Unitario_3: TEdit;
    Vlr_Total_3: TEdit;
    Label15: TLabel;
    Fatura_1: TEdit;
    Label19: TLabel;
    Vencimento_1: TEdit;
    Empresa: TEdit;
    Label16: TLabel;
    Codigo_1: TEdit;
    Codigo_2: TEdit;
    Codigo_3: TEdit;
    Codigo_4: TEdit;
    Codigo_5: TEdit;
    Codigo_6: TEdit;
    Codigo_7: TEdit;
    Codigo_8: TEdit;
    Codigo_9: TEdit;
    Codigo_10: TEdit;
    Codigo_11: TEdit;
    Codigo_12: TEdit;
    Servico: TEdit;
    Label17: TLabel;
    Observacoes_Servico_1: TEdit;
    Label21: TLabel;
    Nota_Fiscal: TEdit;
    Venda_Manutencao_Descricao: TJvRichEdit;
    Label22: TLabel;
    CFOP: TEdit;
    Label23: TLabel;
    Inscricao_Estadual_Substituto: TEdit;
    Tipo_Nota_Saida: TRadioButton;
    Tipo_Nota_Entrada: TRadioButton;
    Label24: TLabel;
    Fatura_2: TEdit;
    Vencimento_2: TEdit;
    Fatura_3: TEdit;
    Vencimento_3: TEdit;
    Fatura_4: TEdit;
    Vencimento_4: TEdit;
    Label20: TLabel;
    Endereco_Cobranca: TEdit;
    Label25: TLabel;
    Situacao_1: TEdit;
    Situacao_2: TEdit;
    Situacao_3: TEdit;
    Situacao_4: TEdit;
    Situacao_5: TEdit;
    Situacao_6: TEdit;
    Situacao_7: TEdit;
    Situacao_8: TEdit;
    Situacao_9: TEdit;
    Situacao_10: TEdit;
    Situacao_11: TEdit;
    Situacao_12: TEdit;
    Label26: TLabel;
    Qtde_1: TEdit;
    Qtde_2: TEdit;
    Qtde_3: TEdit;
    Qtde_4: TEdit;
    Qtde_5: TEdit;
    Qtde_6: TEdit;
    Qtde_7: TEdit;
    Qtde_8: TEdit;
    Qtde_9: TEdit;
    Qtde_10: TEdit;
    Qtde_11: TEdit;
    Qtde_12: TEdit;
    Label27: TLabel;
    ICMS_1: TEdit;
    ICMS_2: TEdit;
    ICMS_3: TEdit;
    ICMS_4: TEdit;
    ICMS_5: TEdit;
    ICMS_6: TEdit;
    ICMS_7: TEdit;
    ICMS_8: TEdit;
    ICMS_9: TEdit;
    ICMS_10: TEdit;
    ICMS_11: TEdit;
    ICMS_12: TEdit;
    IPI_12: TEdit;
    IPI_11: TEdit;
    IPI_10: TEdit;
    IPI_9: TEdit;
    IPI_8: TEdit;
    IPI_7: TEdit;
    IPI_6: TEdit;
    IPI_5: TEdit;
    IPI_4: TEdit;
    IPI_3: TEdit;
    IPI_2: TEdit;
    IPI_1: TEdit;
    Label28: TLabel;
    Label29: TLabel;
    Vlr_IPI_1: TEdit;
    Vlr_IPI_2: TEdit;
    Vlr_IPI_3: TEdit;
    Vlr_IPI_4: TEdit;
    Vlr_IPI_5: TEdit;
    Vlr_IPI_6: TEdit;
    Vlr_IPI_7: TEdit;
    Vlr_IPI_8: TEdit;
    Vlr_IPI_9: TEdit;
    Vlr_IPI_10: TEdit;
    Vlr_IPI_11: TEdit;
    Vlr_IPI_12: TEdit;
    Observacoes_Servico_2: TEdit;
    Observacoes_Servico_3: TEdit;
    Label30: TLabel;
    Vlr_ISS: TEdit;
    Label31: TLabel;
    Vlr_Total_Servicos: TEdit;
    Label32: TLabel;
    Vlr_Total_Produto: TEdit;
    Label33: TLabel;
    B_Calculo_ICMS: TEdit;
    Label34: TLabel;
    Vlr_ICMS: TEdit;
    Label35: TLabel;
    B_Calculo_ICMS_Sub: TEdit;
    Label36: TLabel;
    Vlr_ICMS_Sub: TEdit;
    Label39: TLabel;
    Vlr_Frete: TEdit;
    Label40: TLabel;
    Vlr_Seguro: TEdit;
    Label41: TLabel;
    Outras_Despesas: TEdit;
    Vlr_Total_IPI: TEdit;
    Label42: TLabel;
    Label43: TLabel;
    Frete_Emitente: TRadioButton;
    Frete_Destinatario: TRadioButton;
    Label44: TLabel;
    Transportadora_Nome: TEdit;
    Label45: TLabel;
    Transportadora_Qtde: TEdit;
    Label46: TLabel;
    Transportadora_Nro: TEdit;
    Label47: TLabel;
    Transportadora_Especie: TEdit;
    Label49: TLabel;
    Label50: TLabel;
    Transportadora_Marca: TEdit;
    Label48: TLabel;
    Transportadora_Peso_Bruto: TEdit;
    Label51: TLabel;
    Transportadora_Peso_Liquido: TEdit;
    Label52: TLabel;
    Pedido_Nota: TEdit;
    Label53: TLabel;
    OS_Nota: TEdit;
    Label37: TLabel;
    Valor_1: TEdit;
    Valor_2: TEdit;
    Valor_3: TEdit;
    Valor_4: TEdit;
    Label38: TLabel;
    Unidade_1: TEdit;
    Unidade_2: TEdit;
    Unidade_3: TEdit;
    Unidade_4: TEdit;
    Unidade_5: TEdit;
    Unidade_6: TEdit;
    Unidade_7: TEdit;
    Unidade_8: TEdit;
    Unidade_9: TEdit;
    Unidade_10: TEdit;
    Unidade_11: TEdit;
    Unidade_12: TEdit;
    procedure BT_ImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Data_EmissaoKeyPress(Sender: TObject; var Key: Char);
    procedure Natureza_OperacaoKeyPress(Sender: TObject; var Key: Char);
    procedure ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure BairroKeyPress(Sender: TObject; var Key: Char);
    procedure EnderecoKeyPress(Sender: TObject; var Key: Char);
    procedure CidadeKeyPress(Sender: TObject; var Key: Char);
    procedure EstadoKeyPress(Sender: TObject; var Key: Char);
    procedure CepKeyPress(Sender: TObject; var Key: Char);
    procedure CnpjKeyPress(Sender: TObject; var Key: Char);
    procedure Inscricao_EstadualKeyPress(Sender: TObject; var Key: Char);
    procedure Classificacao_1KeyPress(Sender: TObject; var Key: Char);
    procedure Classificacao_2KeyPress(Sender: TObject; var Key: Char);
    procedure Classificacao_3KeyPress(Sender: TObject; var Key: Char);
    procedure Qtde_4KeyPress(Sender: TObject; var Key: Char);
    procedure Qtde_5KeyPress(Sender: TObject; var Key: Char);
    procedure Qtde_6KeyPress(Sender: TObject; var Key: Char);
    procedure Qtde_7KeyPress(Sender: TObject; var Key: Char);
    procedure Qtde_8KeyPress(Sender: TObject; var Key: Char);
    procedure Qtde_9KeyPress(Sender: TObject; var Key: Char);
    procedure Qtde_10KeyPress(Sender: TObject; var Key: Char);
    procedure Qtde_11KeyPress(Sender: TObject; var Key: Char);
    procedure Qtde_12KeyPress(Sender: TObject; var Key: Char);
    procedure Qtde_13KeyPress(Sender: TObject; var Key: Char);
    procedure Descricao_1KeyPress(Sender: TObject; var Key: Char);
    procedure Descricao_2KeyPress(Sender: TObject; var Key: Char);
    procedure Descricao_3KeyPress(Sender: TObject; var Key: Char);
    procedure Descricao_4KeyPress(Sender: TObject; var Key: Char);
    procedure Descricao_5KeyPress(Sender: TObject; var Key: Char);
    procedure Descricao_6KeyPress(Sender: TObject; var Key: Char);
    procedure Descricao_7KeyPress(Sender: TObject; var Key: Char);
    procedure Descricao_8KeyPress(Sender: TObject; var Key: Char);
    procedure Descricao_9KeyPress(Sender: TObject; var Key: Char);
    procedure Descricao_10KeyPress(Sender: TObject; var Key: Char);
    procedure Descricao_11KeyPress(Sender: TObject; var Key: Char);
    procedure Descricao_12KeyPress(Sender: TObject; var Key: Char);
    procedure Descricao_13KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Unitario_1KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Unitario_2KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Unitario_3KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Unitario_4KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Unitario_5KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Unitario_6KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Unitario_7KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Unitario_8KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Unitario_9KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Unitario_10KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Unitario_11KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Unitario_12KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Unitario_13KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_1KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_2KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_3KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_4KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_5KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_6KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_7KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_8KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_9KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_10KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_11KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_12KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_13KeyPress(Sender: TObject; var Key: Char);
    procedure BT_SairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Codigo_1KeyPress(Sender: TObject; var Key: Char);
    procedure Codigo_2KeyPress(Sender: TObject; var Key: Char);
    procedure Codigo_3KeyPress(Sender: TObject; var Key: Char);
    procedure Codigo_4KeyPress(Sender: TObject; var Key: Char);
    procedure Codigo_5KeyPress(Sender: TObject; var Key: Char);
    procedure Codigo_6KeyPress(Sender: TObject; var Key: Char);
    procedure Codigo_7KeyPress(Sender: TObject; var Key: Char);
    procedure Codigo_8KeyPress(Sender: TObject; var Key: Char);
    procedure Codigo_9KeyPress(Sender: TObject; var Key: Char);
    procedure Codigo_10KeyPress(Sender: TObject; var Key: Char);
    procedure Codigo_11KeyPress(Sender: TObject; var Key: Char);
    procedure Codigo_12KeyPress(Sender: TObject; var Key: Char);
    procedure Unidade_13KeyPress(Sender: TObject; var Key: Char);
    procedure Tipo_Nota_SaidaKeyPress(Sender: TObject; var Key: Char);
    procedure Tipo_Nota_EntradaKeyPress(Sender: TObject; var Key: Char);
    procedure CFOPKeyPress(Sender: TObject; var Key: Char);
    procedure Inscricao_Estadual_SubstitutoKeyPress(Sender: TObject;
      var Key: Char);
    procedure Nota_FiscalKeyPress(Sender: TObject; var Key: Char);
    procedure Endereco_CobrancaKeyPress(Sender: TObject; var Key: Char);
    procedure Fatura_1KeyPress(Sender: TObject; var Key: Char);
    procedure Vencimento_1KeyPress(Sender: TObject; var Key: Char);
    procedure Fatura_2KeyPress(Sender: TObject; var Key: Char);
    procedure Vencimento_2KeyPress(Sender: TObject; var Key: Char);
    procedure Fatura_3KeyPress(Sender: TObject; var Key: Char);
    procedure Vencimento_3KeyPress(Sender: TObject; var Key: Char);
    procedure Fatura_4KeyPress(Sender: TObject; var Key: Char);
    procedure Vencimento_4KeyPress(Sender: TObject; var Key: Char);
    procedure Situacao_1KeyPress(Sender: TObject; var Key: Char);
    procedure Qtde_1KeyPress(Sender: TObject; var Key: Char);
    procedure ICMS_1KeyPress(Sender: TObject; var Key: Char);
    procedure IPI_1KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_IPI_1KeyPress(Sender: TObject; var Key: Char);
    procedure Situacao_2KeyPress(Sender: TObject; var Key: Char);
    procedure Qtde_2KeyPress(Sender: TObject; var Key: Char);
    procedure Classificacao_4KeyPress(Sender: TObject; var Key: Char);
    procedure Classificacao_5KeyPress(Sender: TObject; var Key: Char);
    procedure Classificacao_6KeyPress(Sender: TObject; var Key: Char);
    procedure Classificacao_7KeyPress(Sender: TObject; var Key: Char);
    procedure Classificacao_8KeyPress(Sender: TObject; var Key: Char);
    procedure Classificacao_9KeyPress(Sender: TObject; var Key: Char);
    procedure Classificacao_10KeyPress(Sender: TObject; var Key: Char);
    procedure Classificacao_11KeyPress(Sender: TObject; var Key: Char);
    procedure Classificacao_12KeyPress(Sender: TObject; var Key: Char);
    procedure Situacao_3KeyPress(Sender: TObject; var Key: Char);
    procedure Situacao_4KeyPress(Sender: TObject; var Key: Char);
    procedure Situacao_5KeyPress(Sender: TObject; var Key: Char);
    procedure Situacao_6KeyPress(Sender: TObject; var Key: Char);
    procedure Situacao_7KeyPress(Sender: TObject; var Key: Char);
    procedure Situacao_8KeyPress(Sender: TObject; var Key: Char);
    procedure Situacao_9KeyPress(Sender: TObject; var Key: Char);
    procedure Situacao_10KeyPress(Sender: TObject; var Key: Char);
    procedure Situacao_11KeyPress(Sender: TObject; var Key: Char);
    procedure Situacao_12KeyPress(Sender: TObject; var Key: Char);
    procedure Qtde_3KeyPress(Sender: TObject; var Key: Char);
    procedure ICMS_2KeyPress(Sender: TObject; var Key: Char);
    procedure ICMS_3KeyPress(Sender: TObject; var Key: Char);
    procedure ICMS_4KeyPress(Sender: TObject; var Key: Char);
    procedure ICMS_5KeyPress(Sender: TObject; var Key: Char);
    procedure ICMS_6KeyPress(Sender: TObject; var Key: Char);
    procedure ICMS_7KeyPress(Sender: TObject; var Key: Char);
    procedure ICMS_8KeyPress(Sender: TObject; var Key: Char);
    procedure ICMS_9KeyPress(Sender: TObject; var Key: Char);
    procedure ICMS_10KeyPress(Sender: TObject; var Key: Char);
    procedure ICMS_11KeyPress(Sender: TObject; var Key: Char);
    procedure ICMS_12KeyPress(Sender: TObject; var Key: Char);
    procedure IPI_2KeyPress(Sender: TObject; var Key: Char);
    procedure IPI_3KeyPress(Sender: TObject; var Key: Char);
    procedure IPI_4KeyPress(Sender: TObject; var Key: Char);
    procedure IPI_5KeyPress(Sender: TObject; var Key: Char);
    procedure IPI_6KeyPress(Sender: TObject; var Key: Char);
    procedure IPI_7KeyPress(Sender: TObject; var Key: Char);
    procedure IPI_8KeyPress(Sender: TObject; var Key: Char);
    procedure IPI_9KeyPress(Sender: TObject; var Key: Char);
    procedure IPI_10KeyPress(Sender: TObject; var Key: Char);
    procedure IPI_11KeyPress(Sender: TObject; var Key: Char);
    procedure IPI_12KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_IPI_2KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_IPI_3KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_IPI_4KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_IPI_5KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_IPI_6KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_IPI_7KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_IPI_8KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_IPI_9KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_IPI_10KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_IPI_11KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_IPI_12KeyPress(Sender: TObject; var Key: Char);
    procedure Observacoes_Servico_1KeyPress(Sender: TObject;
      var Key: Char);
    procedure Observacoes_Servico_2KeyPress(Sender: TObject;
      var Key: Char);
    procedure Observacoes_Servico_3KeyPress(Sender: TObject;
      var Key: Char);
    procedure Vlr_ISSKeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_ServicosKeyPress(Sender: TObject; var Key: Char);
    procedure B_Calculo_ICMSKeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_ICMSKeyPress(Sender: TObject; var Key: Char);
    procedure B_Calculo_ICMS_SubKeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_ICMS_SubKeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_FreteKeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_SeguroKeyPress(Sender: TObject; var Key: Char);
    procedure Outras_DespesasKeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_IPIKeyPress(Sender: TObject; var Key: Char);
    procedure Frete_EmitenteKeyPress(Sender: TObject; var Key: Char);
    procedure Frete_DestinatarioKeyPress(Sender: TObject; var Key: Char);
    procedure Transportadora_NomeKeyPress(Sender: TObject; var Key: Char);
    procedure Transportadora_QtdeKeyPress(Sender: TObject; var Key: Char);
    procedure Transportadora_EspecieKeyPress(Sender: TObject;
      var Key: Char);
    procedure Transportadora_MarcaKeyPress(Sender: TObject; var Key: Char);
    procedure Transportadora_NroKeyPress(Sender: TObject; var Key: Char);
    procedure Transportadora_Peso_BrutoKeyPress(Sender: TObject;
      var Key: Char);
    procedure Transportadora_Peso_LiquidoKeyPress(Sender: TObject;
      var Key: Char);
    procedure Pedido_NotaKeyPress(Sender: TObject; var Key: Char);
    procedure OS_NotaKeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_ProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Total_NotaKeyPress(Sender: TObject; var Key: Char);
    procedure Valor_1KeyPress(Sender: TObject; var Key: Char);
    procedure Valor_2KeyPress(Sender: TObject; var Key: Char);
    procedure Valor_3KeyPress(Sender: TObject; var Key: Char);
    procedure Valor_4KeyPress(Sender: TObject; var Key: Char);
    procedure Unidade_1KeyPress(Sender: TObject; var Key: Char);
    procedure Unidade_2KeyPress(Sender: TObject; var Key: Char);
    procedure Unidade_3KeyPress(Sender: TObject; var Key: Char);
    procedure Unidade_4KeyPress(Sender: TObject; var Key: Char);
    procedure Unidade_5KeyPress(Sender: TObject; var Key: Char);
    procedure Unidade_6KeyPress(Sender: TObject; var Key: Char);
    procedure Unidade_7KeyPress(Sender: TObject; var Key: Char);
    procedure Unidade_8KeyPress(Sender: TObject; var Key: Char);
    procedure Unidade_9KeyPress(Sender: TObject; var Key: Char);
    procedure Unidade_10KeyPress(Sender: TObject; var Key: Char);
    procedure Unidade_11KeyPress(Sender: TObject; var Key: Char);
    procedure Unidade_12KeyPress(Sender: TObject; var Key: Char);
    procedure Vlr_Unitario_1Exit(Sender: TObject);
    procedure Vlr_Unitario_2Exit(Sender: TObject);
    procedure Vlr_Unitario_3Exit(Sender: TObject);
    procedure Vlr_Unitario_4Exit(Sender: TObject);
    procedure Vlr_Unitario_5Exit(Sender: TObject);
    procedure Vlr_Unitario_6Exit(Sender: TObject);
    procedure Vlr_Unitario_7Exit(Sender: TObject);
    procedure Vlr_Unitario_8Exit(Sender: TObject);
    procedure Vlr_Unitario_9Exit(Sender: TObject);
    procedure Vlr_Unitario_10Exit(Sender: TObject);
    procedure Vlr_Unitario_11Exit(Sender: TObject);
    procedure Vlr_Unitario_12Exit(Sender: TObject);
  private
    { Private declarations }
    function ConversaoRecursiva(N: LongWord): string;
    function Extenso(parmNumero: Real): string;
    procedure Totaliza();

  public
    { Public declarations }
  end;
  TNumeroStr = string;

const
  Unidades: array[1..19] of TNumeroStr = ('um', 'dois', 'três', 'quatro','cinco', 'seis', 'sete', 'oito', 'nove', 'dez', 'onze', 'doze', 'treze', 'quatorze', 'quinze', 'dezesseis', 'dezessete', 'dezoito','dezenove');
  Dezenas: array[1..9] of TNumeroStr = ('dez', 'vinte', 'trinta', 'quarenta','cinqüenta', 'sessenta', 'setenta', 'oitenta', 'noventa');
  Centenas: array[1..9] of TNumeroStr = ('cem', 'duzentos', 'trezentos','quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos','novecentos');
  ErrorString = 'Valor fora da faixa';
  Min = 0.01;
  Max = 4294967295.99;
  Moeda = ' real ';
  Moedas = ' reais ';
  Centesimo = ' centavo ';
  Centesimos = ' centavos ';

var
  NF_DatatexPro01: TNF_DatatexPro01;

implementation

uses Rotinas_Gerais, Conexao_BD;

{$R *.dfm}

procedure TNF_DatatexPro01.BT_ImprimirClick(Sender: TObject);

var
   Impressora: TextFile;
   Linha1, Linha2, Linha3, Linha4, Linha5, Linha6, Linha7, Linha8, Linha9, Linha10, Linha11, Linha12, Linha13, Linha14, Linha15, Linha16, Linha17, Linha18, Linha19: String;
   Linha20, Linha21, Linha22, Linha23, Linha24, Linha25, Linha26, Linha27, Linha28, Linha29, Linha30, Linha31, Linha32, Linha33, Linha34, Linha35, Linha36, Linha37: String;
   Linha38, Linha39, Linha40, Linha41, Linha42, Linha43, Linha44, Linha45, Linha46, Linha47, Linha48, Linha49, Linha50, Linha51, Linha52, Linha53, Linha54, Linha55: String;
   Linha56, Linha57, Linha58, Linha59, Linha60, Linha61, Linha62, Linha63, Linha64, Linha65, Linha66, Linha67, Linha68, Linha69, Linha70, Linha71, Linha72: String;
   Vlr_Texto, Valor_Extenso, Vlr_Manutencao, Comando_SQL: String;
   Vlr_Total_Nota_Nro, Vlr_ISSQN_Nro: Real;
   Erro: Integer;

begin
     //*** Posiciona a Nota Fiscal ***

     AssignFile(Impressora,'LPT1');
     Rewrite(Impressora);
     Write(Impressora,#27#15 + '*'#8);
     CloseFile(Impressora);

     While Confirma('A Posição está Correta ?') <> 6 Do
           Begin
           AssignFile(Impressora,'LPT1');
           Rewrite(Impressora);
           Write(Impressora,#27#15 + '*'#8);
           CloseFile(Impressora);
     End;

     AssignFile(Impressora,'LPT1');
     Rewrite(Impressora);
     Write(Impressora,#27#15 + '*'#8);
     CloseFile(Impressora);

     While Confirma('Desejá imprimir novamente ?') = 6 Do
           Begin
           AssignFile(Impressora,'LPT1');
           Rewrite(Impressora);
           Write(Impressora,#27#15 + '*'#8);
           CloseFile(Impressora);
     End;
          
     If Trim(Servico.Text) = 'EQUIPAMENTO' Then
        Begin

        //*** Prepara o Corpo da Nota Fiscal ***

        Valor_Extenso := Extenso(StrToFloat(Vlr_Total_Nota.Text));
        Valor_Extenso := UpperCase(Valor_Extenso);

        Linha1  := #27#15 + Espacos(122) + '';
        Linha2  := #27#15 + '';

        If Tipo_Nota_Saida.Checked Then
           Begin
           Linha3 := #27#15 + Espacos(83) + 'X';
           End
        Else
           Begin
           Linha3 := #27#15 + Espacos(93) + 'X';
        End;

        Linha4  := #27#15 + '';
        Linha5  := #27#15 + '';
        Linha6  := #27#15 + '';

        Linha7  := #27#15 + Espacos(4) + Espacos(34) + Espacos(3) + Tamanho(CFOP.Text,11) + Espacos(3) + Tamanho(Inscricao_Estadual_Substituto.Text,30);
        Linha8  := #27#15 + '';
        Linha9  := #27#15 + '';

        Linha10 := #27#15 + Espacos(4) + Tamanho(Cliente.Text,78) + Espacos(3) + Tamanho(CNPJ.Text,34) + Espacos(5) + Trim(Data_Emissao.Text);
        Linha11 := #27#15 + '';
        Linha12 := #27#15 + Espacos(4) + Tamanho(Endereco.Text,67) + Espacos(2) + Tamanho(Bairro.Text,28) + Espacos(3) + Trim(Cep.Text);
        Linha13 := #27#15 + '';
        Linha14 := #27#15 + Espacos(4) + Tamanho(Cidade.Text,46) + Espacos(26) + Tamanho(Estado.Text,2) + Espacos(5) + Trim(Inscricao_Estadual.Text);

        Linha15 := #27#15 + '';
        Linha16 := #27#15 + '';
        Linha17 := #27#15 + '';

        Linha18 := #27#15 + Espacos(20) + Tamanho(Fatura_1.Text,13) + Espacos(3) + Tamanho(Valor_1.Text,20) + Espacos(3) + Tamanho(Vencimento_1.Text,15) + Espacos(3) + Tamanho(Fatura_3.Text,13) + Espacos(3) + Tamanho(Valor_3.Text,20) + Espacos(3) + Tamanho(Vencimento_3.Text,15);
        Linha19 := #27#15 + Espacos(23) + Tamanho(Fatura_2.Text,13) + Espacos(3) + Tamanho(Valor_2.Text,23) + Espacos(3) + Tamanho(Vencimento_2.Text,15) + Espacos(3) + Tamanho(Fatura_4.Text,13) + Espacos(3) + Tamanho(Valor_4.Text,23) + Espacos(3) + Tamanho(Vencimento_4.Text,15);

        Linha19 := #27#15 + '';

        Linha20:= #27#15 + Espacos(4) + Trim(Endereco_Cobranca.Text);

        Linha21 := #27#15 + '';
        Linha22 := #27#15 + '';
        Linha23 := #27#15 + '';

        Linha24 := #27#15 + Espacos(4) + Tamanho(Codigo_1.Text,6) + Espacos(2) + Tamanho(Descricao_1.Text,45) + Espacos(1) + Tamanho(Classificacao_1.Text,4) + Espacos(1) + Tamanho(Situacao_1.Text,5) + Espacos(1) + Tamanho(Unidade_1.Text,5) + Espacos(1) + Tamanho(Qtde_1.Text,6) + Espacos(1) + Tamanho(Vlr_Unitario_1.Text,08) + Espacos(6) + Tamanho(Vlr_Total_1.Text,11) + Espacos(5) + Tamanho(ICMS_1.Text,4) + Espacos(1) + Tamanho(IPI_1.Text,3) + Espacos(1) + Tamanho(Vlr_IPI_1.Text,5);
        Linha25 := #27#15 + Espacos(4) + Tamanho(Codigo_2.Text,6) + Espacos(2) + Tamanho(Descricao_2.Text,45) + Espacos(1) + Tamanho(Classificacao_2.Text,4) + Espacos(1) + Tamanho(Situacao_2.Text,5) + Espacos(1) + Tamanho(Unidade_2.Text,5) + Espacos(1) + Tamanho(Qtde_2.Text,6) + Espacos(1) + Tamanho(Vlr_Unitario_2.Text,08) + Espacos(6) + Tamanho(Vlr_Total_2.Text,11) + Espacos(5) + Tamanho(ICMS_2.Text,4) + Espacos(1) + Tamanho(IPI_2.Text,3) + Espacos(1) + Tamanho(Vlr_IPI_2.Text,5);
        Linha26 := #27#15 + Espacos(4) + Tamanho(Codigo_3.Text,6) + Espacos(2) + Tamanho(Descricao_3.Text,45) + Espacos(1) + Tamanho(Classificacao_3.Text,4) + Espacos(1) + Tamanho(Situacao_3.Text,5) + Espacos(1) + Tamanho(Unidade_3.Text,5) + Espacos(1) + Tamanho(Qtde_3.Text,6) + Espacos(1) + Tamanho(Vlr_Unitario_3.Text,08) + Espacos(6) + Tamanho(Vlr_Total_3.Text,11) + Espacos(5) + Tamanho(ICMS_3.Text,4) + Espacos(1) + Tamanho(IPI_3.Text,3) + Espacos(1) + Tamanho(Vlr_IPI_3.Text,5);
        Linha27 := #27#15 + Espacos(4) + Tamanho(Codigo_4.Text,6) + Espacos(2) + Tamanho(Descricao_4.Text,45) + Espacos(1) + Tamanho(Classificacao_4.Text,4) + Espacos(1) + Tamanho(Situacao_4.Text,5) + Espacos(1) + Tamanho(Unidade_4.Text,5) + Espacos(1) + Tamanho(Qtde_4.Text,6) + Espacos(1) + Tamanho(Vlr_Unitario_4.Text,08) + Espacos(6) + Tamanho(Vlr_Total_4.Text,11) + Espacos(5) + Tamanho(ICMS_4.Text,4) + Espacos(1) + Tamanho(IPI_4.Text,3) + Espacos(1) + Tamanho(Vlr_IPI_4.Text,5);
        Linha28 := #27#15 + Espacos(4) + Tamanho(Codigo_5.Text,6) + Espacos(2) + Tamanho(Descricao_5.Text,45) + Espacos(1) + Tamanho(Classificacao_5.Text,4) + Espacos(1) + Tamanho(Situacao_5.Text,5) + Espacos(1) + Tamanho(Unidade_5.Text,5) + Espacos(1) + Tamanho(Qtde_5.Text,6) + Espacos(1) + Tamanho(Vlr_Unitario_5.Text,08) + Espacos(6) + Tamanho(Vlr_Total_5.Text,11) + Espacos(5) + Tamanho(ICMS_5.Text,4) + Espacos(1) + Tamanho(IPI_5.Text,3) + Espacos(1) + Tamanho(Vlr_IPI_5.Text,5);
        Linha29 := #27#15 + Espacos(4) + Tamanho(Codigo_6.Text,6) + Espacos(2) + Tamanho(Descricao_6.Text,45) + Espacos(1) + Tamanho(Classificacao_6.Text,4) + Espacos(1) + Tamanho(Situacao_6.Text,5) + Espacos(1) + Tamanho(Unidade_6.Text,5) + Espacos(1) + Tamanho(Qtde_6.Text,6) + Espacos(1) + Tamanho(Vlr_Unitario_6.Text,08) + Espacos(6) + Tamanho(Vlr_Total_6.Text,11) + Espacos(5) + Tamanho(ICMS_6.Text,4) + Espacos(1) + Tamanho(IPI_6.Text,3) + Espacos(1) + Tamanho(Vlr_IPI_6.Text,5);
        Linha30 := #27#15 + Espacos(4) + Tamanho(Codigo_7.Text,6) + Espacos(2) + Tamanho(Descricao_7.Text,45) + Espacos(1) + Tamanho(Classificacao_7.Text,4) + Espacos(1) + Tamanho(Situacao_7.Text,5) + Espacos(1) + Tamanho(Unidade_7.Text,5) + Espacos(1) + Tamanho(Qtde_7.Text,6) + Espacos(1) + Tamanho(Vlr_Unitario_7.Text,08) + Espacos(6) + Tamanho(Vlr_Total_7.Text,11) + Espacos(5) + Tamanho(ICMS_7.Text,4) + Espacos(1) + Tamanho(IPI_7.Text,3) + Espacos(1) + Tamanho(Vlr_IPI_7.Text,5);
        Linha31 := #27#15 + Espacos(4) + Tamanho(Codigo_8.Text,6) + Espacos(2) + Tamanho(Descricao_8.Text,45) + Espacos(1) + Tamanho(Classificacao_8.Text,4) + Espacos(1) + Tamanho(Situacao_8.Text,5) + Espacos(1) + Tamanho(Unidade_8.Text,5) + Espacos(1) + Tamanho(Qtde_8.Text,6) + Espacos(1) + Tamanho(Vlr_Unitario_8.Text,08) + Espacos(6) + Tamanho(Vlr_Total_8.Text,11) + Espacos(5) + Tamanho(ICMS_8.Text,4) + Espacos(1) + Tamanho(IPI_8.Text,3) + Espacos(1) + Tamanho(Vlr_IPI_8.Text,5);
        Linha32 := #27#15 + Espacos(4) + Tamanho(Codigo_9.Text,6) + Espacos(2) + Tamanho(Descricao_9.Text,45) + Espacos(1) + Tamanho(Classificacao_9.Text,4) + Espacos(1) + Tamanho(Situacao_9.Text,5) + Espacos(1) + Tamanho(Unidade_9.Text,5) + Espacos(1) + Tamanho(Qtde_9.Text,6) + Espacos(1) + Tamanho(Vlr_Unitario_9.Text,08) + Espacos(6) + Tamanho(Vlr_Total_9.Text,11) + Espacos(5) + Tamanho(ICMS_9.Text,4) + Espacos(1) + Tamanho(IPI_9.Text,3) + Espacos(1) + Tamanho(Vlr_IPI_9.Text,5);
        Linha33 := #27#15 + Espacos(4) + Tamanho(Codigo_10.Text,6) + Espacos(2) + Tamanho(Descricao_10.Text,45) + Espacos(1) + Tamanho(Classificacao_10.Text,4) + Espacos(1) + Tamanho(Situacao_10.Text,5) + Espacos(1) + Tamanho(Unidade_10.Text,5) + Espacos(1) + Tamanho(Qtde_10.Text,6) + Espacos(1) + Tamanho(Vlr_Unitario_10.Text,08) + Espacos(6) + Tamanho(Vlr_Total_10.Text,11) + Espacos(5) + Tamanho(ICMS_10.Text,4) + Espacos(1) + Tamanho(IPI_10.Text,3) + Espacos(1) + Tamanho(Vlr_IPI_10.Text,5);
        Linha34 := #27#15 + Espacos(4) + Tamanho(Codigo_11.Text,6) + Espacos(2) + Tamanho(Descricao_11.Text,45) + Espacos(1) + Tamanho(Classificacao_11.Text,4) + Espacos(1) + Tamanho(Situacao_11.Text,5) + Espacos(1) + Tamanho(Unidade_11.Text,5) + Espacos(1) + Tamanho(Qtde_11.Text,6) + Espacos(1) + Tamanho(Vlr_Unitario_11.Text,08) + Espacos(6) + Tamanho(Vlr_Total_11.Text,11) + Espacos(5) + Tamanho(ICMS_11.Text,4) + Espacos(1) + Tamanho(IPI_11.Text,3) + Espacos(1) + Tamanho(Vlr_IPI_11.Text,5);
        Linha35 := #27#15 + Espacos(4) + Tamanho(Codigo_12.Text,6) + Espacos(2) + Tamanho(Descricao_12.Text,45) + Espacos(1) + Tamanho(Classificacao_12.Text,4) + Espacos(1) + Tamanho(Situacao_12.Text,5) + Espacos(1) + Tamanho(Unidade_12.Text,5) + Espacos(1) + Tamanho(Qtde_12.Text,6) + Espacos(1) + Tamanho(Vlr_Unitario_12.Text,08) + Espacos(6) + Tamanho(Vlr_Total_12.Text,11) + Espacos(5) + Tamanho(ICMS_12.Text,4) + Espacos(1) + Tamanho(IPI_12.Text,3) + Espacos(1) + Tamanho(Vlr_IPI_12.Text,5);
        Linha36 := #27#15 + '';
        Linha37 := #27#15 + '';
        Linha38 := #27#15 + '';
        Linha39 := #27#15 + '';
        Linha40 := #27#15 + '';

        Linha41 := #27#15 + Espacos(4) + Tamanho(Observacoes_Servico_1.Text,110);
        Linha42 := #27#15 + Espacos(4) + Tamanho(Observacoes_Servico_2.Text,110);
        Linha43 := #27#15 + Espacos(4) + Tamanho(Observacoes_Servico_3.Text,110);

        Linha44 := #27#15 + Espacos(124) + Tamanho(Vlr_ISS.Text,10);
        Linha45 := #27#15 + '';
        Linha46 := #27#15 + Espacos(124) + Tamanho(Vlr_Total_Servicos.Text,10);
        Linha47 := #27#15 + '';
        Linha48 := #27#15 + '';
        Linha49 := #27#15 + '';

        Linha50 := #27#15 + Espacos(4) + Tamanho(B_Calculo_ICMS.Text,26) + Espacos(1) + Tamanho(Vlr_ICMS.Text,29) + Espacos(1) + Tamanho(B_Calculo_ICMS_Sub.Text,25) + Espacos(1) + Tamanho(Vlr_ICMS_Sub.Text,26) + Espacos(1) + Tamanho(Vlr_Total_Produto.Text,20);
        Linha51 := #27#15 + Espacos(4) + Tamanho(Vlr_Frete.Text,26) + Espacos(1) + Tamanho(Vlr_Seguro.Text,29) + Espacos(1) + Tamanho(Outras_Despesas.Text,25) + Espacos(1) + Tamanho(Vlr_Total_IPI.Text,26) + Espacos(1) + Tamanho(Vlr_Total_Nota.Text,20);
        Linha52 := #27#15 + '';

        If Frete_Emitente.Checked Then
           Begin
           Linha53 := #27#15 + Espacos(4) + Tamanho(Transportadora_Nome.Text,55) + Espacos(3) + '1';
           End
        Else
           Begin
           Linha53 := #27#15 + Espacos(4) + Tamanho(Transportadora_Nome.Text,55) + Espacos(3) + '2';
        End;

        Linha54 := #27#15 + '';
        Linha55 := #27#15 + '';
        Linha56 := #27#15 + '';

        Linha57 := #27#15 + Espacos(4) + Tamanho(Transportadora_Qtde.Text,9) + Espacos(1) + Tamanho(Transportadora_Especie.Text,23) + Espacos(1) + Tamanho(Transportadora_Marca.Text,25) + Espacos(1) + Tamanho(Transportadora_Nro.Text,25) + Espacos(1) + Tamanho(Transportadora_Peso_Bruto.Text,26) + Espacos(1) + Tamanho(Transportadora_Peso_Liquido.Text,25);

        Linha58 := #27#15 + '';
        Linha59 := #27#15 + '';

        Linha60 := #27#15 + Espacos(74) + Tamanho(Pedido_Nota.Text,15);

        Linha61 := #27#15 + '';
        Linha62 := #27#15 + '';

        Linha63 := #27#15 + Espacos(74) + Tamanho(OS_Nota.Text,15);

        Linha64 := #27#15 + '';
        Linha65 := #27#15 + '';
        Linha66 := #27#15 + '';
        Linha67 := #27#15 + '';
        Linha68 := #27#15 + '';
        Linha69 := #27#15 + '';

        Linha70 := #27#15 + Espacos(120) + Espacos(10);

        //*** Grava na Tabela de Vendas_Manutenção ***

        //*** Obtem os Valores e Datas ***

        Vlr_Manutencao := Trim(Virgula_Ponto(Vlr_Total_Nota.Text));

        If Trim(Vlr_Manutencao) = '' Then
           Begin
           Vlr_Manutencao := '0';
        End;

        //*** Efetua a Inserção ***

        Comando_SQL := 'Insert Into vendas_manutencao(';
        Comando_SQL := Comando_SQL + 'venda_manutencao_cliente_codigo, ';
        Comando_SQL := Comando_SQL + 'venda_manutencao_servico, ';
        Comando_SQL := Comando_SQL + 'venda_manutencao_tipo, ';

        If Trim(Data_Emissao.Text) <> '/  /' Then
           Begin
           Comando_SQL := Comando_SQL + 'venda_manutencao_saida, ';
        End;

        Comando_SQL := Comando_SQL + 'venda_manutencao_relacao_pecas, ';
        Comando_SQL := Comando_SQL + 'venda_manutencao_nro_equipamento, ';
        Comando_SQL := Comando_SQL + 'venda_manutencao_valor) ';
        Comando_SQL := Comando_SQL + ' Values(';

        Comando_SQL := Comando_SQL + #39 + Trim(Cnpj.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + 'Nota' + #39 + ',';

        If Tipo_Nota_Saida.Checked Then
           Begin
           Comando_SQL := Comando_SQL + #39 + 'Emissão de Nota - Saída' + #39 + ',';
           End
        Else
           Begin
           Comando_SQL := Comando_SQL + #39 + 'Emissão de Nota - Entrada' + #39 + ',';
        End;

        If Trim(Data_Emissao.Text) <> '/  /' Then
           Begin
           Comando_SQL := Comando_SQL + #39 + Inverte_Data_Plus(Trim(Data_Emissao.Text),'amd','/') + #39 + ',';
        End;

        Comando_SQL := Comando_SQL + #39 + 'Nota-Fiscal Nro.: ' + Trim(Nota_Fiscal.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Nota_Fiscal.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + Trim(Vlr_Manutencao) + ')';

        ConexaoBD.SQL_Comunitario.SQL.Clear;
        ConexaoBD.SQL_Comunitario.SQL.Add(Comando_SQL);
        ConexaoBD.SQL_Comunitario.ExecSQL;

        //*** Insere as Linhas da Nota-Fiscal ***

        Venda_Manutencao_Descricao.Lines.Clear;
        Venda_Manutencao_Descricao.Lines.Add(Linha1);
        Venda_Manutencao_Descricao.Lines.Add(Linha2);
        Venda_Manutencao_Descricao.Lines.Add(Linha3);
        Venda_Manutencao_Descricao.Lines.Add(Linha4);
        Venda_Manutencao_Descricao.Lines.Add(Linha5);
        Venda_Manutencao_Descricao.Lines.Add(Linha6);
        Venda_Manutencao_Descricao.Lines.Add(Linha7);
        Venda_Manutencao_Descricao.Lines.Add(Linha8);
        Venda_Manutencao_Descricao.Lines.Add(Linha9);
        Venda_Manutencao_Descricao.Lines.Add(Linha10);
        Venda_Manutencao_Descricao.Lines.Add(Linha11);
        Venda_Manutencao_Descricao.Lines.Add(Linha12);
        Venda_Manutencao_Descricao.Lines.Add(Linha13);
        Venda_Manutencao_Descricao.Lines.Add(Linha14);
        Venda_Manutencao_Descricao.Lines.Add(Linha15);
        Venda_Manutencao_Descricao.Lines.Add(Linha16);
        Venda_Manutencao_Descricao.Lines.Add(Linha17);
        Venda_Manutencao_Descricao.Lines.Add(Linha18);
        Venda_Manutencao_Descricao.Lines.Add(Linha19);
        Venda_Manutencao_Descricao.Lines.Add(Linha20);
        Venda_Manutencao_Descricao.Lines.Add(Linha21);
        Venda_Manutencao_Descricao.Lines.Add(Linha22);
        Venda_Manutencao_Descricao.Lines.Add(Linha23);
        Venda_Manutencao_Descricao.Lines.Add(Linha24);
        Venda_Manutencao_Descricao.Lines.Add(Linha25);
        Venda_Manutencao_Descricao.Lines.Add(Linha26);
        Venda_Manutencao_Descricao.Lines.Add(Linha27);
        Venda_Manutencao_Descricao.Lines.Add(Linha28);
        Venda_Manutencao_Descricao.Lines.Add(Linha29);
        Venda_Manutencao_Descricao.Lines.Add(Linha30);
        Venda_Manutencao_Descricao.Lines.Add(Linha31);
        Venda_Manutencao_Descricao.Lines.Add(Linha32);
        Venda_Manutencao_Descricao.Lines.Add(Linha33);
        Venda_Manutencao_Descricao.Lines.Add(Linha34);
        Venda_Manutencao_Descricao.Lines.Add(Linha35);
        Venda_Manutencao_Descricao.Lines.Add(Linha36);
        Venda_Manutencao_Descricao.Lines.Add(Linha37);
        Venda_Manutencao_Descricao.Lines.Add(Linha38);
        Venda_Manutencao_Descricao.Lines.Add(Linha39);
        Venda_Manutencao_Descricao.Lines.Add(Linha40);
        Venda_Manutencao_Descricao.Lines.Add(Linha41);
        Venda_Manutencao_Descricao.Lines.Add(Linha42);
        Venda_Manutencao_Descricao.Lines.Add(Linha43);
        Venda_Manutencao_Descricao.Lines.Add(Linha44);
        Venda_Manutencao_Descricao.Lines.Add(Linha45);
        Venda_Manutencao_Descricao.Lines.Add(Linha46);
        Venda_Manutencao_Descricao.Lines.Add(Linha47);
        Venda_Manutencao_Descricao.Lines.Add(Linha48);
        Venda_Manutencao_Descricao.Lines.Add(Linha49);
        Venda_Manutencao_Descricao.Lines.Add(Linha50);
        Venda_Manutencao_Descricao.Lines.Add(Linha51);
        Venda_Manutencao_Descricao.Lines.Add(Linha52);
        Venda_Manutencao_Descricao.Lines.Add(Linha53);
        Venda_Manutencao_Descricao.Lines.Add(Linha54);
        Venda_Manutencao_Descricao.Lines.Add(Linha55);
        Venda_Manutencao_Descricao.Lines.Add(Linha56);
        Venda_Manutencao_Descricao.Lines.Add(Linha57);
        Venda_Manutencao_Descricao.Lines.Add(Linha58);
        Venda_Manutencao_Descricao.Lines.Add(Linha59);
        Venda_Manutencao_Descricao.Lines.Add(Linha60);
        Venda_Manutencao_Descricao.Lines.Add(Linha61);
        Venda_Manutencao_Descricao.Lines.Add(Linha62);
        Venda_Manutencao_Descricao.Lines.Add(Linha63);
        Venda_Manutencao_Descricao.Lines.Add(Linha64);
        Venda_Manutencao_Descricao.Lines.Add(Linha65);
        Venda_Manutencao_Descricao.Lines.Add(Linha66);
        Venda_Manutencao_Descricao.Lines.Add(Linha67);
        Venda_Manutencao_Descricao.Lines.Add(Linha68);
        Venda_Manutencao_Descricao.Lines.Add(Linha69);
        Venda_Manutencao_Descricao.Lines.Add(Linha70);
        //Venda_Manutencao_Descricao.Lines.Add(Linha71);
        //Venda_Manutencao_Descricao.Lines.Add(Linha72);

        //*** Inclusão do Campo de Descrição ***

        Comando_SQL := 'Select * from vendas_manutencao Order by venda_manutencao_numero Desc';

        ConexaoBD.SQL_Vendas_Manutencao.Close;
        ConexaoBD.SQL_Vendas_Manutencao.SQL.Clear;
        ConexaoBD.SQL_Vendas_Manutencao.SQL.Add(Comando_SQL);
        ConexaoBD.SQL_Vendas_Manutencao.Open;

        If ConexaoBD.SQL_Vendas_Manutencao.RecordCount > 0 Then
           Begin
           Venda_Manutencao_Descricao.Lines.SaveToFile('C:\CadaTEX\Swap\Swap.RTF');

           ConexaoBD.SQL_Vendas_Manutencao.First;
           ConexaoBD.SQL_Vendas_Manutencao.Edit;
           ConexaoBD.SQL_Vendas_Manutencaovenda_manutencao_descricao.LoadFromFile('C:\CadaTEX\Swap\Swap.RTF');
           ConexaoBD.SQL_Vendas_Manutencao.Post;
           ConexaoBD.SQL_Vendas_Manutencao.Close;

           DeleteFile('C:\CadaTEX\Swap\Swap.RTF');
        End;

        //*** Imprime o Corpo da Nota Fiscal ***

        AssignFile(Impressora,'LPT1');
        Rewrite(Impressora);

        Writeln(Impressora,Linha1);
        Writeln(Impressora,Linha2);
        Writeln(Impressora,Linha3);
        Writeln(Impressora,Linha4);
        Writeln(Impressora,Linha5);
        Writeln(Impressora,Linha6);
        Writeln(Impressora,Linha7);
        Writeln(Impressora,Linha8);
        Writeln(Impressora,Linha9);
        Writeln(Impressora,Linha10);
        Writeln(Impressora,Linha11);
        Writeln(Impressora,Linha12);
        Writeln(Impressora,Linha13);
        Writeln(Impressora,Linha14);
        Writeln(Impressora,Linha15);
        Writeln(Impressora,Linha16);
        Writeln(Impressora,Linha17);
        Writeln(Impressora,Linha18);
        Writeln(Impressora,Linha19);
        Writeln(Impressora,Linha20);
        Writeln(Impressora,Linha21);
        Writeln(Impressora,Linha22);
        Writeln(Impressora,Linha23);
        Writeln(Impressora,Linha24);
        Writeln(Impressora,Linha25);
        Writeln(Impressora,Linha26);
        Writeln(Impressora,Linha27);
        Writeln(Impressora,Linha28);
        Writeln(Impressora,Linha29);
        Writeln(Impressora,Linha30);
        Writeln(Impressora,Linha31);

        Writeln(Impressora,Linha32);
        Writeln(Impressora,Linha33);
        Writeln(Impressora,Linha34);
        Writeln(Impressora,Linha35);
        Writeln(Impressora,Linha36);
        Writeln(Impressora,Linha37);
        Writeln(Impressora,Linha38);
        Writeln(Impressora,Linha39);
        Writeln(Impressora,Linha40);
        Writeln(Impressora,Linha41);
        Writeln(Impressora,Linha42);
        Writeln(Impressora,Linha43);
        Writeln(Impressora,Linha44);
        Writeln(Impressora,Linha45);
        Writeln(Impressora,Linha46);
        Writeln(Impressora,Linha47);
        Writeln(Impressora,Linha48);
        Writeln(Impressora,Linha49);
        Writeln(Impressora,Linha50);
        Writeln(Impressora,Linha51);
        Writeln(Impressora,Linha52);

        Writeln(Impressora,Linha53);
        Writeln(Impressora,Linha54);
        Writeln(Impressora,Linha55);
        Writeln(Impressora,Linha56);
        Writeln(Impressora,Linha57);
        Writeln(Impressora,Linha58);
        Writeln(Impressora,Linha59);
        Writeln(Impressora,Linha60);
        Writeln(Impressora,Linha61);
        Writeln(Impressora,Linha62);
        Writeln(Impressora,Linha63);
        Writeln(Impressora,Linha64);
        Writeln(Impressora,Linha65);
        Writeln(Impressora,Linha66);
        Writeln(Impressora,Linha67);
        Writeln(Impressora,Linha68);
        Writeln(Impressora,Linha69);
        Writeln(Impressora,Linha70);
       // Writeln(Impressora,Linha71);
       // Writeln(Impressora,Linha72);

        CloseFile(Impressora);

     End;

     //*** Fecha o Programa de Impressão ***

     NF_DatatexPro01.Close;
end;

procedure TNF_DatatexPro01.FormCreate(Sender: TObject);
begin
     //*** Trabalha com o Ano de 4 Dígitos ***

     ShortDateFormat := 'dd/mm/yyyy';
end;

procedure TNF_DatatexPro01.Data_EmissaoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Natureza_OperacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.ClienteKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.BairroKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.EnderecoKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.CidadeKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.EstadoKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.CepKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.CnpjKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Inscricao_EstadualKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Classificacao_1KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Classificacao_2KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Classificacao_3KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Qtde_4KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Qtde_5KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Qtde_6KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Qtde_7KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Qtde_8KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Qtde_9KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Qtde_10KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Qtde_11KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Qtde_12KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Qtde_13KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Descricao_1KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Descricao_2KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Descricao_3KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Descricao_4KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Descricao_5KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Descricao_6KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Descricao_7KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Descricao_8KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Descricao_9KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Descricao_10KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Descricao_11KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Descricao_12KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Descricao_13KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Unitario_1KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Unitario_2KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Unitario_3KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Unitario_4KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Unitario_5KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Unitario_6KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Unitario_7KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Unitario_8KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Unitario_9KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Unitario_10KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Unitario_11KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Unitario_12KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Unitario_13KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_1KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_2KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_3KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_4KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_5KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_6KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_7KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_8KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_9KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_10KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_11KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_12KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_13KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.BT_SairClick(Sender: TObject);
begin
     NF_DatatexPro01.Close;
end;

procedure TNF_DatatexPro01.FormShow(Sender: TObject);
begin
     NF_DatatexPro01.Caption        := 'Nota Fiscal - NS Equipamentos - IMPRESSÃO';
     Servico.Text                := 'EQUIPAMENTO';
     Natureza_Operacao.ItemIndex := 0;

     CFOP.SetFocus;
end;

procedure TNF_DatatexPro01.Codigo_1KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Codigo_2KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Codigo_3KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Codigo_4KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Codigo_5KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Codigo_6KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Codigo_7KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Codigo_8KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Codigo_9KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Codigo_10KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Codigo_11KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Codigo_12KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Unidade_13KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

//****************
//**** Funções ***
//****************

function TNF_DatatexPro01.ConversaoRecursiva(N: LongWord): string;
begin
     case N of
          1..19: Result := Unidades[N];
          20, 30, 40, 50, 60, 70, 80, 90: Result := Dezenas[N div 10] + ' ';
          21..29, 31..39, 41..49, 51..59, 61..69, 71..79, 81..89, 91..99: Result := Dezenas[N div 10] + ' e ' + ConversaoRecursiva(N mod 10);
          100, 200, 300, 400, 500, 600, 700, 800, 900: Result := Centenas[N div 100] + ' ';
          101..199: Result := ' cento e ' + ConversaoRecursiva(N mod 100);
          201..299, 301..399, 401..499, 501..599, 601..699, 701..799, 801..899, 901..999: Result := Centenas[N div 100] + ' e ' + ConversaoRecursiva(N mod 100);
          1000..999999: Result := ConversaoRecursiva(N div 1000) + ' mil ' + ConversaoRecursiva(N mod 1000);
          1000000..1999999: Result := ConversaoRecursiva(N div 1000000) + ' milhão '+ ConversaoRecursiva(N mod 1000000);
          2000000..999999999: Result := ConversaoRecursiva(N div 1000000) + ' milhões '+ ConversaoRecursiva(N mod 1000000);
          1000000000..1999999999: Result := ConversaoRecursiva(N div 1000000000) + ' bilhão ' + ConversaoRecursiva(N mod 1000000000);
          2000000000..4294967295: Result := ConversaoRecursiva(N div 1000000000) + ' bilhões ' + ConversaoRecursiva(N mod 1000000000);
     end;
end;

function TNF_DatatexPro01.Extenso(parmNumero: Real): string;
begin
     if (parmNumero >= Min) and (parmNumero <= Max) then
        begin
        Result := ConversaoRecursiva(Round(Int(parmNumero)));

        if Round(Int(parmNumero)) = 1 then

           {Tratar Reais}

           begin
           Result := Result + Moeda
           end
        else
           begin

           {Tratar Reais}

           if Round(Int(parmNumero)) <> 0 then
              begin
              Result := Result + Moedas;
           end;

           {Tratar centavos}

           if not(Frac(parmNumero) = 0.00) then
              begin
              if Round(Int(parmNumero)) <> 0 then
                 begin
                 Result := Result + ' e ';
                 Result := Result + ConversaoRecursiva(Round(Frac(parmNumero) * 100));
                 if (Round(Frac(parmNumero) * 100) = 1) then
                    begin
                    Result := Result + centesimo
                    end
                 else
                    begin
                    Result := Result + centesimos;
                 end;
                 end
              else
                 begin
                 raise ERangeError.CreateFmt('%g ' + ErrorString + ' %g..%g',[parmNumero, Min, Max]);
              end;
           end;
        end;
     end;
end;

procedure TNF_DatatexPro01.Tipo_Nota_SaidaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Tipo_Nota_EntradaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.CFOPKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Inscricao_Estadual_SubstitutoKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Nota_FiscalKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Endereco_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Fatura_1KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vencimento_1KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Fatura_2KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vencimento_2KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Fatura_3KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vencimento_3KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Fatura_4KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vencimento_4KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Situacao_1KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Qtde_1KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.ICMS_1KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.IPI_1KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_IPI_1KeyPress(Sender: TObject; var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Situacao_2KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Qtde_2KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Classificacao_4KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Classificacao_5KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Classificacao_6KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Classificacao_7KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Classificacao_8KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Classificacao_9KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Classificacao_10KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Classificacao_11KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Classificacao_12KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Situacao_3KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Situacao_4KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Situacao_5KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Situacao_6KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Situacao_7KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Situacao_8KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Situacao_9KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Situacao_10KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Situacao_11KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Situacao_12KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Qtde_3KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.ICMS_2KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.ICMS_3KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.ICMS_4KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.ICMS_5KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.ICMS_6KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.ICMS_7KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.ICMS_8KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.ICMS_9KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.ICMS_10KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.ICMS_11KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.ICMS_12KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.IPI_2KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.IPI_3KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.IPI_4KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.IPI_5KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.IPI_6KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.IPI_7KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.IPI_8KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.IPI_9KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.IPI_10KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.IPI_11KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.IPI_12KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_IPI_2KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_IPI_3KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_IPI_4KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_IPI_5KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_IPI_6KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_IPI_7KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_IPI_8KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_IPI_9KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_IPI_10KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_IPI_11KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_IPI_12KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Observacoes_Servico_1KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Observacoes_Servico_2KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Observacoes_Servico_3KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_ISSKeyPress(Sender: TObject; var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_ServicosKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.B_Calculo_ICMSKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_ICMSKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.B_Calculo_ICMS_SubKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_ICMS_SubKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_FreteKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_SeguroKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Outras_DespesasKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_IPIKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Frete_EmitenteKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Frete_DestinatarioKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Transportadora_NomeKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Transportadora_QtdeKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Transportadora_EspecieKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Transportadora_MarcaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Transportadora_NroKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Transportadora_Peso_BrutoKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Transportadora_Peso_LiquidoKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Pedido_NotaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.OS_NotaKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_ProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Vlr_Total_NotaKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Valor_1KeyPress(Sender: TObject; var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Valor_2KeyPress(Sender: TObject; var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Valor_3KeyPress(Sender: TObject; var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Valor_4KeyPress(Sender: TObject; var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Unidade_1KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Unidade_2KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Unidade_3KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Unidade_4KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Unidade_5KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Unidade_6KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Unidade_7KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Unidade_8KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Unidade_9KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Unidade_10KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Unidade_11KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Unidade_12KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_DatatexPro01.Totaliza();

var Q_1, Q_2, Q_3, Q_4, Q_5, Q_6, Q_7, Q_8, Q_9, Q_10, Q_11, Q_12, Erro: Integer;
    Vlr_Unit_1, Vlr_Unit_2, Vlr_Unit_3, Vlr_Unit_4, Vlr_Unit_5, Vlr_Unit_6, Vlr_Unit_7, Vlr_Unit_8, Vlr_Unit_9, Vlr_Unit_10, Vlr_Unit_11, Vlr_Unit_12: Real;
    V_Total_1, V_Total_2, V_Total_3, V_Total_4, V_Total_5, V_Total_6, V_Total_7, V_Total_8, V_Total_9, V_Total_10, V_Total_11, V_Total_12: Real;
    Vlr_Texto: String;
    Vlr_Total, V_ISSQN: Real;

begin
    //*** Converte a Quantidade **

    If (Trim(Qtde_1.Text) <> '') and (Trim(Vlr_Unitario_1.Text) <> '') Then
       Begin
       Q_1 := StrToInt(Qtde_1.Text);
       End
    Else
       Begin
       Q_1 := 0;
    End;

    If (Trim(Qtde_2.Text) <> '') and (Trim(Vlr_Unitario_2.Text) <> '') Then
       Begin
       Q_2 := StrToInt(Qtde_2.Text);
       End
    Else
       Begin
       Q_2 := 0;
    End;

    If (Trim(Qtde_3.Text) <> '') and (Trim(Vlr_Unitario_3.Text) <> '') Then
       Begin
       Q_3 := StrToInt(Qtde_3.Text);
       End
    Else
       Begin
       Q_3 := 0;
    End;

    If (Trim(Qtde_4.Text) <> '') and (Trim(Vlr_Unitario_4.Text) <> '') Then
       Begin
       Q_4 := StrToInt(Qtde_4.Text);
       End
    Else
       Begin
       Q_4 := 0;
    End;

    If (Trim(Qtde_5.Text) <> '') and (Trim(Vlr_Unitario_5.Text) <> '') Then
       Begin
       Q_5 := StrToInt(Qtde_5.Text);
       End
    Else
       Begin
       Q_5 := 0;
    End;

    If (Trim(Qtde_6.Text) <> '') and (Trim(Vlr_Unitario_6.Text) <> '') Then
       Begin
       Q_6 := StrToInt(Qtde_6.Text);
       End
    Else
       Begin
       Q_6 := 0;
    End;

    If (Trim(Qtde_7.Text) <> '') and (Trim(Vlr_Unitario_7.Text) <> '') Then
       Begin
       Q_7 := StrToInt(Qtde_7.Text);
       End
    Else
       Begin
       Q_7 := 0;
    End;

    If (Trim(Qtde_8.Text) <> '') and (Trim(Vlr_Unitario_8.Text) <> '') Then
       Begin
       Q_8 := StrToInt(Qtde_8.Text);
       End
    Else
       Begin
       Q_8 := 0;
    End;

    If (Trim(Qtde_9.Text) <> '') and (Trim(Vlr_Unitario_9.Text) <> '') Then
       Begin
       Q_9 := StrToInt(Qtde_9.Text);
       End
    Else
       Begin
       Q_9 := 0;
    End;

    If (Trim(Qtde_10.Text) <> '') and (Trim(Vlr_Unitario_10.Text) <> '') Then
       Begin
       Q_10 := StrToInt(Qtde_10.Text);
       End
    Else
       Begin
       Q_10 := 0;
    End;

    If (Trim(Qtde_11.Text) <> '') and (Trim(Vlr_Unitario_11.Text) <> '') Then
       Begin
       Q_11 := StrToInt(Qtde_11.Text);
       End
    Else
       Begin
       Q_11 := 0;
    End;

    If (Trim(Qtde_12.Text) <> '') and (Trim(Vlr_Unitario_12.Text) <> '') Then
       Begin
       Q_12 := StrToInt(Qtde_12.Text);
       End
    Else
       Begin
       Q_12 := 0;
    End;


    //*** Converte a Unidade ***

    If Trim(Vlr_Unitario_1.Text ) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_1.Text);
       Val(Vlr_Texto, Vlr_Unit_1, Erro);
       End
    Else
       Begin
       Vlr_Unit_1 := 0;
    End;

    If Trim(Vlr_Unitario_2.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_2.Text);
       Val(Vlr_Texto, Vlr_Unit_2, Erro);
       End
    Else
       Begin
       Vlr_Unit_2 := 0;
    End;

    If Trim(Vlr_Unitario_3.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_3.Text);
       Val(Vlr_Texto, Vlr_Unit_3, Erro);
       End
    Else
       Begin
       Vlr_Unit_3 := 0;
    End;

    If Trim(Vlr_Unitario_4.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_4.Text);
       Val(Vlr_Texto, Vlr_Unit_4, Erro);
       End
    Else
       Begin
       Vlr_Unit_4 := 0;
    End;

    If Trim(Vlr_Unitario_5.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_5.Text);
       Val(Vlr_Texto, Vlr_Unit_5, Erro);
       End
    Else
       Begin
       Vlr_Unit_5 := 0;
    End;

    If Trim(Vlr_Unitario_6.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_6.Text);
       Val(Vlr_Texto, Vlr_Unit_6, Erro);
       End
    Else
       Begin
       Vlr_Unit_6 := 0;
    End;

    If Trim(Vlr_Unitario_7.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_7.Text);
       Val(Vlr_Texto, Vlr_Unit_7, Erro);
       End
    Else
       Begin
       Vlr_Unit_7 := 0;
    End;

    If Trim(Vlr_Unitario_8.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_8.Text);
       Val(Vlr_Texto, Vlr_Unit_8, Erro);
       End
    Else
       Begin
       Vlr_Unit_8 := 0;
    End;

    If Trim(Vlr_Unitario_9.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_9.Text);
       Val(Vlr_Texto, Vlr_Unit_9, Erro);
       End
    Else
       Begin
       Vlr_Unit_9 := 0;
    End;

    If Trim(Vlr_Unitario_10.Text) <> '' Then
       Begin
        Vlr_Texto := Virgula_Ponto(Vlr_Unitario_10.Text);
        Val(Vlr_Texto, Vlr_Unit_10, Erro);
       End
    Else
       Begin
       Vlr_Unit_10 := 0;
    End;

    If Trim(Vlr_Unitario_11.Text) <> '' Then
       Begin
        Vlr_Texto := Virgula_Ponto(Vlr_Unitario_11.Text);
        Val(Vlr_Texto, Vlr_Unit_11, Erro);
       End
    Else
       Begin
       Vlr_Unit_11 := 0;
    End;

    If Trim(Vlr_Unitario_12.Text) <> '' Then
       Begin
        Vlr_Texto := Virgula_Ponto(Vlr_Unitario_12.Text);
        Val(Vlr_Texto, Vlr_Unit_12, Erro);
       End
    Else
       Begin
       Vlr_Unit_12 := 0;
    End;


    //*** Calcula o Total ***

    If (Trim(Qtde_1.Text) <> '') and (Trim(Vlr_Unitario_1.Text) <> '') Then
       Begin
    V_Total_1 := Q_1 * Vlr_Unit_1;
    Str(V_Total_1:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_1.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_2.Text) <> '') and (Trim(Vlr_Unitario_2.Text) <> '') Then
       Begin
    V_Total_2 := Q_2 * Vlr_Unit_2;
    Str(V_Total_2:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_2.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_3.Text) <> '') and (Trim(Vlr_Unitario_3.Text) <> '') Then
       Begin
    V_Total_3 := Q_3 * Vlr_Unit_3;
    Str(V_Total_3:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_3.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_4.Text) <> '') and (Trim(Vlr_Unitario_4.Text) <> '') Then
       Begin
    V_Total_4 := Q_4 * Vlr_Unit_4;
    Str(V_Total_4:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_4.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_5.Text) <> '') and (Trim(Vlr_Unitario_5.Text) <> '') Then
       Begin
    V_Total_5 := Q_5 * Vlr_Unit_5;
    Str(V_Total_5:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_5.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_6.Text) <> '') and (Trim(Vlr_Unitario_6.Text) <> '') Then
       Begin
    V_Total_6 := Q_6 * Vlr_Unit_6;
    Str(V_Total_6:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_6.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_7.Text) <> '') and (Trim(Vlr_Unitario_7.Text) <> '') Then
       Begin
    V_Total_7 := Q_7 * Vlr_Unit_7;
    Str(V_Total_7:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_7.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_8.Text) <> '') and (Trim(Vlr_Unitario_8.Text) <> '') Then
       Begin
    V_Total_8 := Q_8 * Vlr_Unit_8;
    Str(V_Total_8:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_8.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_9.Text) <> '') and (Trim(Vlr_Unitario_9.Text) <> '') Then
       Begin
    V_Total_9 := Q_9 * Vlr_Unit_9;
    Str(V_Total_9:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_9.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_10.Text) <> '') and (Trim(Vlr_Unitario_10.Text) <> '') Then
       Begin
    V_Total_10 := Q_10 * Vlr_Unit_10;
    Str(V_Total_10:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_10.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_11.Text) <> '') and (Trim(Vlr_Unitario_11.Text) <> '') Then
       Begin
    V_Total_11 := Q_11 * Vlr_Unit_11;
    Str(V_Total_11:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_11.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_12.Text) <> '') and (Trim(Vlr_Unitario_12.Text) <> '') Then
       Begin
    V_Total_12 := Q_12 * Vlr_Unit_12;
    Str(V_Total_12:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_12.Text := Trim(Vlr_Texto);
    End;

    //*** Total Geral ***

    Vlr_Total := V_Total_1 + V_Total_2 + V_Total_3 + V_Total_4 + V_Total_5 + V_Total_6 + V_Total_7 + V_Total_8 + V_Total_9 + V_Total_10 + V_Total_11 + V_Total_12;
   // V_ISSQN := (Vlr_Total * 2) / 100;

    Str(Vlr_Total:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_Produto.Text := Trim(Vlr_Texto);
    Vlr_Total_Nota.Text := Trim(Vlr_Texto);

   // Str(V_ISSQN:13:2,Vlr_Texto);
   // Vlr_Texto := Ponto_Virgula(Vlr_Texto);
end;


procedure TNF_DatatexPro01.Vlr_Unitario_1Exit(Sender: TObject);
begin
    Totaliza();
end;

procedure TNF_DatatexPro01.Vlr_Unitario_2Exit(Sender: TObject);
begin
    Totaliza();
end;

procedure TNF_DatatexPro01.Vlr_Unitario_3Exit(Sender: TObject);
begin
    Totaliza();
end;

procedure TNF_DatatexPro01.Vlr_Unitario_4Exit(Sender: TObject);
begin
    Totaliza();
end;

procedure TNF_DatatexPro01.Vlr_Unitario_5Exit(Sender: TObject);
begin
    Totaliza();
end;

procedure TNF_DatatexPro01.Vlr_Unitario_6Exit(Sender: TObject);
begin
    Totaliza();
end;

procedure TNF_DatatexPro01.Vlr_Unitario_7Exit(Sender: TObject);
begin
    Totaliza();
end;

procedure TNF_DatatexPro01.Vlr_Unitario_8Exit(Sender: TObject);
begin
    Totaliza();
end;

procedure TNF_DatatexPro01.Vlr_Unitario_9Exit(Sender: TObject);
begin
    Totaliza();
end;

procedure TNF_DatatexPro01.Vlr_Unitario_10Exit(Sender: TObject);
begin
    Totaliza();
end;

procedure TNF_DatatexPro01.Vlr_Unitario_11Exit(Sender: TObject);
begin
    Totaliza();
end;

procedure TNF_DatatexPro01.Vlr_Unitario_12Exit(Sender: TObject);
begin
    Totaliza();
end;

end.
