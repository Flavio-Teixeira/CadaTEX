unit NF_Datatex_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, JvRichEdit, JvExStdCtrls;

type
  TNF_Datatex01 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Natureza_Operacao: TComboBox;
    Data_Emissao: TMaskEdit;
    GroupBox1: TGroupBox;
    Qtde_1: TEdit;
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
    Qtde_2: TEdit;
    Descricao_2: TEdit;
    Vlr_Unitario_2: TEdit;
    Vlr_Total_2: TEdit;
    Qtde_4: TEdit;
    Descricao_4: TEdit;
    Vlr_Unitario_4: TEdit;
    Vlr_Total_4: TEdit;
    Qtde_5: TEdit;
    Descricao_5: TEdit;
    Vlr_Unitario_5: TEdit;
    Vlr_Total_5: TEdit;
    Qtde_6: TEdit;
    Descricao_6: TEdit;
    Vlr_Unitario_6: TEdit;
    Vlr_Total_6: TEdit;
    Qtde_7: TEdit;
    Descricao_7: TEdit;
    Vlr_Unitario_7: TEdit;
    Vlr_Total_7: TEdit;
    Qtde_8: TEdit;
    Descricao_8: TEdit;
    Vlr_Unitario_8: TEdit;
    Vlr_Total_8: TEdit;
    Qtde_9: TEdit;
    Descricao_9: TEdit;
    Vlr_Unitario_9: TEdit;
    Vlr_Total_9: TEdit;
    Qtde_10: TEdit;
    Descricao_10: TEdit;
    Vlr_Unitario_10: TEdit;
    Vlr_Total_10: TEdit;
    Qtde_11: TEdit;
    Descricao_11: TEdit;
    Vlr_Unitario_11: TEdit;
    Vlr_Total_11: TEdit;
    Qtde_12: TEdit;
    Descricao_12: TEdit;
    Vlr_Unitario_12: TEdit;
    Vlr_Total_12: TEdit;
    Qtde_13: TEdit;
    Descricao_13: TEdit;
    Vlr_Unitario_13: TEdit;
    Vlr_Total_13: TEdit;
    BT_Imprimir: TBitBtn;
    BT_Sair: TBitBtn;
    Label18: TLabel;
    Vlr_Total_Nota: TEdit;
    Qtde_3: TEdit;
    Descricao_3: TEdit;
    Vlr_Unitario_3: TEdit;
    Vlr_Total_3: TEdit;
    Label15: TLabel;
    Fatura: TEdit;
    Label19: TLabel;
    Vencimento: TEdit;
    Empresa: TEdit;
    Label20: TLabel;
    Ordem: TEdit;
    Label16: TLabel;
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
    Unidade_13: TEdit;
    Servico: TEdit;
    Label17: TLabel;
    Observacoes_Gerais: TEdit;
    Label21: TLabel;
    Nota_Fiscal: TEdit;
    Venda_Manutencao_Descricao: TJvRichEdit;
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
    procedure Qtde_1KeyPress(Sender: TObject; var Key: Char);
    procedure Qtde_2KeyPress(Sender: TObject; var Key: Char);
    procedure Qtde_3KeyPress(Sender: TObject; var Key: Char);
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
    procedure Vlr_Unitario_13Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
    procedure Unidade_13KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure Totaliza();

    function ConversaoRecursiva(N: LongWord): string;
    function Extenso(parmNumero: Real): string;

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
  NF_Datatex01: TNF_Datatex01;

implementation

uses Rotinas_Gerais, Conexao_BD;

{$R *.dfm}

procedure TNF_Datatex01.Totaliza();

var Q_1, Q_2, Q_3, Q_4, Q_5, Q_6, Q_7, Q_8, Q_9, Q_10, Q_11, Q_12, Q_13, Erro: Integer;
    V_Unit_1, V_Unit_2, V_Unit_3, V_Unit_4, V_Unit_5, V_Unit_6, V_Unit_7, V_Unit_8, V_Unit_9, V_Unit_10, V_Unit_11, V_Unit_12, V_Unit_13: Real;
    V_Total_1, V_Total_2, V_Total_3, V_Total_4, V_Total_5, V_Total_6, V_Total_7, V_Total_8, V_Total_9, V_Total_10, V_Total_11, V_Total_12, V_Total_13: Real;
    Vlr_Texto: String;
    V_Total, V_ISSQN: Real;

begin
    //*** Converte a Quantidade **

    If Trim(Qtde_1.Text) <> '' Then
       Begin
       Q_1 := StrToInt(Qtde_1.Text);
       End
    Else
       Begin
       Q_1 := 0;
    End;

    If Trim(Qtde_2.Text) <> '' Then
       Begin
       Q_2 := StrToInt(Qtde_2.Text);
       End
    Else
       Begin
       Q_2 := 0;
    End;

    If Trim(Qtde_3.Text) <> '' Then
       Begin
       Q_3 := StrToInt(Qtde_3.Text);
       End
    Else
       Begin
       Q_3 := 0;
    End;

    If Trim(Qtde_4.Text) <> '' Then
       Begin
       Q_4 := StrToInt(Qtde_4.Text);
       End
    Else
       Begin
       Q_4 := 0;
    End;

    If Trim(Qtde_5.Text) <> '' Then
       Begin
       Q_5 := StrToInt(Qtde_5.Text);
       End
    Else
       Begin
       Q_5 := 0;
    End;

    If Trim(Qtde_6.Text) <> '' Then
       Begin
       Q_6 := StrToInt(Qtde_6.Text);
       End
    Else
       Begin
       Q_6 := 0;
    End;

    If Trim(Qtde_7.Text) <> '' Then
       Begin
       Q_7 := StrToInt(Qtde_7.Text);
       End
    Else
       Begin
       Q_7 := 0;
    End;

    If Trim(Qtde_8.Text) <> '' Then
       Begin
       Q_8 := StrToInt(Qtde_8.Text);
       End
    Else
       Begin
       Q_8 := 0;
    End;

    If Trim(Qtde_9.Text) <> '' Then
       Begin
       Q_9 := StrToInt(Qtde_9.Text);
       End
    Else
       Begin
       Q_9 := 0;
    End;

    If Trim(Qtde_10.Text) <> '' Then
       Begin
       Q_10 := StrToInt(Qtde_10.Text);
       End
    Else
       Begin
       Q_10 := 0;
    End;

    If Trim(Qtde_11.Text) <> '' Then
       Begin
       Q_11 := StrToInt(Qtde_11.Text);
       End
    Else
       Begin
       Q_11 := 0;
    End;

    If Trim(Qtde_12.Text) <> '' Then
       Begin
       Q_12 := StrToInt(Qtde_12.Text);
       End
    Else
       Begin
       Q_12 := 0;
    End;

    If Trim(Qtde_13.Text) <> '' Then
       Begin
       Q_13 := StrToInt(Qtde_13.Text);
       End
    Else
       Begin
       Q_13 := 0;
    End;

    //*** Converte a Unidade ***

    If Trim(Vlr_Unitario_1.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_1.Text);
       Val(Vlr_Texto, V_Unit_1, Erro);
       End
    Else
       Begin
       V_Unit_1 := 0;
    End;

    If Trim(Vlr_Unitario_2.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_2.Text);
       Val(Vlr_Texto, V_Unit_2, Erro);
       End
    Else
       Begin
       V_Unit_2 := 0;
    End;

    If Trim(Vlr_Unitario_3.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_3.Text);
       Val(Vlr_Texto, V_Unit_3, Erro);
       End
    Else
       Begin
       V_Unit_3 := 0;
    End;

    If Trim(Vlr_Unitario_4.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_4.Text);
       Val(Vlr_Texto, V_Unit_4, Erro);
       End
    Else
       Begin
       V_Unit_4 := 0;
    End;

    If Trim(Vlr_Unitario_5.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_5.Text);
       Val(Vlr_Texto, V_Unit_5, Erro);
       End
    Else
       Begin
       V_Unit_5 := 0;
    End;

    If Trim(Vlr_Unitario_6.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_6.Text);
       Val(Vlr_Texto, V_Unit_6, Erro);
       End
    Else
       Begin
       V_Unit_6 := 0;
    End;

    If Trim(Vlr_Unitario_7.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_7.Text);
       Val(Vlr_Texto, V_Unit_7, Erro);
       End
    Else
       Begin
       V_Unit_7 := 0;
    End;

    If Trim(Vlr_Unitario_8.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_8.Text);
       Val(Vlr_Texto, V_Unit_8, Erro);
       End
    Else
       Begin
       V_Unit_8 := 0;
    End;

    If Trim(Vlr_Unitario_9.Text) <> '' Then
       Begin
       Vlr_Texto := Virgula_Ponto(Vlr_Unitario_9.Text);
       Val(Vlr_Texto, V_Unit_9, Erro);
       End
    Else
       Begin
       V_Unit_9 := 0;
    End;

    If Trim(Vlr_Unitario_10.Text) <> '' Then
       Begin
        Vlr_Texto := Virgula_Ponto(Vlr_Unitario_10.Text);
        Val(Vlr_Texto, V_Unit_10, Erro);
       End
    Else
       Begin
       V_Unit_10 := 0;
    End;

    If Trim(Vlr_Unitario_11.Text) <> '' Then
       Begin
        Vlr_Texto := Virgula_Ponto(Vlr_Unitario_11.Text);
        Val(Vlr_Texto, V_Unit_11, Erro);
       End
    Else
       Begin
       V_Unit_11 := 0;
    End;

    If Trim(Vlr_Unitario_12.Text) <> '' Then
       Begin
        Vlr_Texto := Virgula_Ponto(Vlr_Unitario_12.Text);
        Val(Vlr_Texto, V_Unit_12, Erro);
       End
    Else
       Begin
       V_Unit_12 := 0;
    End;

    If Trim(Vlr_Unitario_13.Text) <> '' Then
       Begin
        Vlr_Texto := Virgula_Ponto(Vlr_Unitario_13.Text);
        Val(Vlr_Texto, V_Unit_13, Erro);
       End
    Else
       Begin
       V_Unit_13 := 0;
    End;

    //*** Calcula o Total ***

    If (Trim(Qtde_1.Text) <> '') and (Trim(Vlr_Unitario_1.Text) <> '') Then
       Begin
    V_Total_1 := Q_1 * V_Unit_1;
    Str(V_Total_1:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_1.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_2.Text) <> '') and (Trim(Vlr_Unitario_2.Text) <> '') Then
       Begin
    V_Total_2 := Q_2 * V_Unit_2;
    Str(V_Total_2:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_2.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_3.Text) <> '') and (Trim(Vlr_Unitario_3.Text) <> '') Then
       Begin
    V_Total_3 := Q_3 * V_Unit_3;
    Str(V_Total_3:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_3.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_4.Text) <> '') and (Trim(Vlr_Unitario_4.Text) <> '') Then
       Begin
    V_Total_4 := Q_4 * V_Unit_4;
    Str(V_Total_4:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_4.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_5.Text) <> '') and (Trim(Vlr_Unitario_5.Text) <> '') Then
       Begin
    V_Total_5 := Q_5 * V_Unit_5;
    Str(V_Total_5:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_5.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_6.Text) <> '') and (Trim(Vlr_Unitario_6.Text) <> '') Then
       Begin
    V_Total_6 := Q_6 * V_Unit_6;
    Str(V_Total_6:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_6.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_7.Text) <> '') and (Trim(Vlr_Unitario_7.Text) <> '') Then
       Begin
    V_Total_7 := Q_7 * V_Unit_7;
    Str(V_Total_7:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_7.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_8.Text) <> '') and (Trim(Vlr_Unitario_8.Text) <> '') Then
       Begin
    V_Total_8 := Q_8 * V_Unit_8;
    Str(V_Total_8:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_8.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_9.Text) <> '') and (Trim(Vlr_Unitario_9.Text) <> '') Then
       Begin
    V_Total_9 := Q_9 * V_Unit_9;
    Str(V_Total_9:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_9.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_10.Text) <> '') and (Trim(Vlr_Unitario_10.Text) <> '') Then
       Begin
    V_Total_10 := Q_10 * V_Unit_10;
    Str(V_Total_10:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_10.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_11.Text) <> '') and (Trim(Vlr_Unitario_11.Text) <> '') Then
       Begin
    V_Total_11 := Q_11 * V_Unit_11;
    Str(V_Total_11:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_11.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_12.Text) <> '') and (Trim(Vlr_Unitario_12.Text) <> '') Then
       Begin
    V_Total_12 := Q_12 * V_Unit_12;
    Str(V_Total_12:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_12.Text := Trim(Vlr_Texto);
    End;

    If (Trim(Qtde_13.Text) <> '') and (Trim(Vlr_Unitario_13.Text) <> '') Then
       Begin
    V_Total_13 := Q_13 * V_Unit_13;
    Str(V_Total_13:12:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_13.Text := Trim(Vlr_Texto);
    End;
    
    //*** Total Geral ***

    V_Total := V_Total_1 + V_Total_2 + V_Total_3 + V_Total_4 + V_Total_5 + V_Total_6 + V_Total_7 + V_Total_8 + V_Total_9 + V_Total_10 + V_Total_11 + V_Total_12 + V_Total_13;
    V_ISSQN := (V_Total * 2) / 100;

    Str(V_Total:13:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
    Vlr_Total_Nota.Text := Trim(Vlr_Texto);

    Str(V_ISSQN:13:2,Vlr_Texto);
    Vlr_Texto := Ponto_Virgula(Vlr_Texto);
end;

procedure TNF_Datatex01.BT_ImprimirClick(Sender: TObject);

var
   Impressora: TextFile;
   Linha1, Linha2, Linha3, Linha4, Linha5, Linha6, Linha7, Linha8, Linha9, Linha10, Linha11, Linha12, Linha13, Linha14, Linha15, Linha16, Linha17, Linha18, Linha19: String;
   Linha20, Linha21, Linha22, Linha23, Linha24, Linha25, Linha26, Linha27, Linha28, Linha29, Linha30, Linha31, Linha32, Linha33, Linha34, Linha35, Linha36, Linha37: String;
   Linha38, Linha39, Linha40, Linha41, Linha42, Linha43, Linha44, Linha45, Linha46, Linha47, Linha48, Linha49, Linha50, Linha51, Linha52: String;
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

     If Trim(Servico.Text) = 'PINTURA' Then
        Begin

        //*** Prepara o Corpo da Nota Fiscal ***

        Valor_Extenso := Extenso(StrToFloat(Vlr_Total_Nota.Text));
        Valor_Extenso := UpperCase(Valor_Extenso);

        Linha1  := #27#15 + Espacos(93) + Trim(Natureza_Operacao.Text);
        Linha2  := #27#15 + Espacos(93) + Trim(Servico.Text);
        Linha3  := #27#15 + Espacos(93) + Trim(Data_Emissao.Text);
        Linha4  := #27#15 + '';
        Linha5  := #27#15 + '';
        Linha6  := #27#15 + Espacos(8) + Tamanho(Fatura.Text,18) + Espacos(10) + 'R$ ' + Tamanho(Vlr_Total_Nota.Text,12) + Espacos(10) + Tamanho(Ordem.Text,18) + Espacos(5) + Tamanho(Vencimento.Text,18);
        Linha7  := #27#15 + '';
        Linha8  := #27#15 + '';
        Linha9  := #27#15 + '';
        Linha10 := #27#15 + Espacos(45) + Trim(Cliente.Text);
        Linha11 := #27#15 + Espacos(45) + Tamanho(Endereco.Text,50) + Espacos(6) + Tamanho(Bairro.Text,28);
        Linha12 := #27#15 + '';
        Linha13 := #27#15 + Espacos(45) + Tamanho(Cidade.Text,21) + Espacos(30) + Tamanho(Estado.Text,2) + Espacos(10) + 'CEP: ' + Trim(Cep.Text);
        Linha14 := #27#15 + Espacos(45) + Tamanho(Cidade.Text,21);
        Linha15 := #27#15 + '';
        Linha16 := #27#15 + Espacos(45) + Tamanho(Cnpj.Text,21) + Espacos(35) + Inscricao_Estadual.Text;
        Linha17 := #27#15 + '';
        Linha18 := #27#15 + Espacos(36) + Trim(Valor_Extenso);
        Linha19 := #27#15 + '';
        Linha20 := #27#15 + '';
        Linha21 := #27#15 + '';
        Linha22 := #27#15 + '';
        Linha23 := #27#15 + '';
        Linha24 := #27#15 + '';

        If Trim(Qtde_1.Text) <> '' Then
           Begin
           Linha25 := #27#15 + Espacos(6) + Tamanho(Unidade_1.Text,6) + Espacos(3) + Tamanho(Qtde_1.Text,10) + Espacos(3) + Tamanho(Descricao_1.Text,58) + Espacos(7) + 'R$ ' + Tamanho(Vlr_Unitario_1.Text,10) + Espacos(3) + 'R$ ' + Tamanho(Vlr_Total_1.Text,12);
           End
        Else
           Begin
           Linha25 := #27#15 + '';
        End;

        If Trim(Qtde_2.Text) <> '' Then
           Begin
           Linha26 := #27#15 + Espacos(6) + Tamanho(Unidade_2.Text,6) + Espacos(3) + Tamanho(Qtde_2.Text,10) + Espacos(3) + Tamanho(Descricao_2.Text,58) + Espacos(7) + 'R$ ' + Tamanho(Vlr_Unitario_2.Text,10) + Espacos(3) + 'R$ ' + Tamanho(Vlr_Total_2.Text,12);
           End
        Else
           Begin
           Linha26 := #27#15 + '';
        End;

        If Trim(Qtde_3.Text) <> '' Then
           Begin
           Linha27 := #27#15 + Espacos(6) + Tamanho(Unidade_3.Text,6) + Espacos(3) + Tamanho(Qtde_3.Text,10) + Espacos(3) + Tamanho(Descricao_3.Text,58) + Espacos(7) + 'R$ ' + Tamanho(Vlr_Unitario_3.Text,10) + Espacos(3) + 'R$ ' + Tamanho(Vlr_Total_3.Text,12);
           End
        Else
           Begin
           Linha27 := #27#15 + '';
        End;

        If Trim(Qtde_4.Text) <> '' Then
           Begin
           Linha28 := #27#15 + Espacos(6) + Tamanho(Unidade_4.Text,6) + Espacos(3) + Tamanho(Qtde_4.Text,10) + Espacos(3) + Tamanho(Descricao_4.Text,58) + Espacos(7) + 'R$ ' + Tamanho(Vlr_Unitario_4.Text,10) + Espacos(3) + 'R$ ' + Tamanho(Vlr_Total_4.Text,12);
           End
        Else
           Begin
           Linha28 := #27#15 + '';
        End;

        If Trim(Qtde_5.Text) <> '' Then
           Begin
           Linha29 := #27#15 + Espacos(6) + Tamanho(Unidade_5.Text,6) + Espacos(3) + Tamanho(Qtde_5.Text,10) + Espacos(3) + Tamanho(Descricao_5.Text,58) + Espacos(7) + 'R$ ' + Tamanho(Vlr_Unitario_5.Text,10) + Espacos(3) + 'R$ ' + Tamanho(Vlr_Total_5.Text,12);
           End
        Else
           Begin
           Linha29 := #27#15 + '';
        End;

        If Trim(Qtde_6.Text) <> '' Then
           Begin
           Linha30 := #27#15 + Espacos(6) + Tamanho(Unidade_6.Text,6) + Espacos(3) + Tamanho(Qtde_6.Text,10) + Espacos(3) + Tamanho(Descricao_6.Text,58) + Espacos(7) + 'R$ ' + Tamanho(Vlr_Unitario_6.Text,10) + Espacos(3) + 'R$ ' + Tamanho(Vlr_Total_6.Text,12);
           End
        Else
           Begin
           Linha30 := #27#15 + '';
        End;

        If Trim(Qtde_7.Text) <> '' Then
           Begin
           Linha31 := #27#15 + Espacos(6) + Tamanho(Unidade_7.Text,6) + Espacos(3) + Tamanho(Qtde_7.Text,10) + Espacos(3) + Tamanho(Descricao_7.Text,58) + Espacos(7) + 'R$ ' + Tamanho(Vlr_Unitario_7.Text,10) + Espacos(3) + 'R$ ' + Tamanho(Vlr_Total_7.Text,12);
           End
        Else
           Begin
           Linha31 := #27#15 + '';
        End;

        If Trim(Qtde_8.Text) <> '' Then
           Begin
           Linha32 := #27#15 + Espacos(6) + Tamanho(Unidade_8.Text,6) + Espacos(3) + Tamanho(Qtde_8.Text,10) + Espacos(3) + Tamanho(Descricao_8.Text,58) + Espacos(7) + 'R$ ' + Tamanho(Vlr_Unitario_8.Text,10) + Espacos(3) + 'R$ ' + Tamanho(Vlr_Total_8.Text,12);
           End
        Else
           Begin
           Linha32 := #27#15 + '';
        End;

        If Trim(Qtde_9.Text) <> '' Then
           Begin
           Linha33 := #27#15 + Espacos(6) + Tamanho(Unidade_9.Text,6) + Espacos(3) + Tamanho(Qtde_9.Text,10) + Espacos(3) + Tamanho(Descricao_9.Text,58) + Espacos(7) + 'R$ ' + Tamanho(Vlr_Unitario_9.Text,10) + Espacos(3) + 'R$ ' + Tamanho(Vlr_Total_9.Text,12);
           End
        Else
           Begin
           Linha33 := #27#15 + '';
        End;

        If Trim(Qtde_10.Text) <> '' Then
           Begin
           Linha34 := #27#15 + Espacos(6) + Tamanho(Unidade_10.Text,6) + Espacos(3) + Tamanho(Qtde_10.Text,10) + Espacos(3) + Tamanho(Descricao_10.Text,58) + Espacos(7) + 'R$ ' + Tamanho(Vlr_Unitario_10.Text,10) + Espacos(3) + 'R$ ' + Tamanho(Vlr_Total_10.Text,12);
           End
        Else
           Begin
           Linha34 := #27#15 + '';
        End;

        If Trim(Qtde_11.Text) <> '' Then
           Begin
           Linha35 := #27#15 + Espacos(6) + Tamanho(Unidade_11.Text,6) + Espacos(3) + Tamanho(Qtde_11.Text,10) + Espacos(3) + Tamanho(Descricao_11.Text,58) + Espacos(7) + 'R$ ' + Tamanho(Vlr_Unitario_11.Text,10) + Espacos(3) + 'R$ ' + Tamanho(Vlr_Total_11.Text,12);
           End
        Else
           Begin
           Linha35 := #27#15 + '';
        End;

        If Trim(Qtde_12.Text) <> '' Then
           Begin
           Linha36 := #27#15 + Espacos(6) + Tamanho(Unidade_12.Text,6) + Espacos(3) + Tamanho(Qtde_12.Text,10) + Espacos(3) + Tamanho(Descricao_12.Text,58) + Espacos(7) + 'R$ ' + Tamanho(Vlr_Unitario_12.Text,10) + Espacos(3) + 'R$ ' + Tamanho(Vlr_Total_12.Text,12);
           End
        Else
           Begin
           Linha36 := #27#15 + '';
        End;

        If Trim(Qtde_13.Text) <> '' Then
           Begin
           Linha37 := #27#15 + Espacos(6) + Tamanho(Unidade_13.Text,6) + Espacos(3) + Tamanho(Qtde_13.Text,10) + Espacos(3) + Tamanho(Descricao_13.Text,58) + Espacos(7) + 'R$ ' + Tamanho(Vlr_Unitario_13.Text,10) + Espacos(3) + 'R$ ' + Tamanho(Vlr_Total_13.Text,12);
           End
        Else
           Begin
           Linha37 := #27#15 + '';
        End;

        Linha38  := #27#15 + '';
        Linha39  := #27#15 + '';
        Linha40  := #27#15 + '';
        Linha41  := #27#15 + '';
        Linha42  := #27#15 + Espacos(28) + Tamanho(Observacoes_Gerais.Text,70);
        Linha43  := #27#15 + '';
        Linha44  := #27#15 + '';
        Linha45  := #27#15 + '';
        Linha46  := #27#15 + '';
        Linha47  := #27#15 + '';
        Linha48  := #27#15 + '';
        Linha49  := #27#15 + '';
        Linha50  := #27#15 + '';

        Linha51  := #27#15 + Espacos(112) + 'R$ ' + Tamanho(Vlr_Total_Nota.Text,12);
        Linha52  := #27#15 + '';

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
        Comando_SQL := Comando_SQL + #39 + 'Emissão de Nota-Fiscal' + #39 + ',';

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

        CloseFile(Impressora);

        End
     Else
        Begin
     End;

     //*** Fecha o Programa de Impressão ***

     NF_Datatex01.Close;
end;

procedure TNF_Datatex01.FormCreate(Sender: TObject);
begin
     //*** Trabalha com o Ano de 4 Dígitos ***

     ShortDateFormat := 'dd/mm/yyyy';
end;

procedure TNF_Datatex01.Data_EmissaoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Natureza_OperacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.ClienteKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.BairroKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.EnderecoKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.CidadeKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.EstadoKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.CepKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.CnpjKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Inscricao_EstadualKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Qtde_1KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Qtde_2KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Qtde_3KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Qtde_4KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Qtde_5KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Qtde_6KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Qtde_7KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Qtde_8KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Qtde_9KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Qtde_10KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Qtde_11KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Qtde_12KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Qtde_13KeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Descricao_1KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Descricao_2KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Descricao_3KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Descricao_4KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Descricao_5KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Descricao_6KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Descricao_7KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Descricao_8KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Descricao_9KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Descricao_10KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Descricao_11KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Descricao_12KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Descricao_13KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Unitario_1KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Unitario_2KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Unitario_3KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Unitario_4KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Unitario_5KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Unitario_6KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Unitario_7KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Unitario_8KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Unitario_9KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Unitario_10KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Unitario_11KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Unitario_12KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Unitario_13KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Total_1KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Total_2KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Total_3KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Total_4KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Total_5KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Total_6KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Total_7KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Total_8KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Total_9KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Total_10KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Total_11KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Total_12KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Vlr_Total_13KeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.BT_SairClick(Sender: TObject);
begin
     NF_Datatex01.Close;
end;

procedure TNF_Datatex01.Vlr_Unitario_1Exit(Sender: TObject);
begin
     Totaliza();
end;

procedure TNF_Datatex01.Vlr_Unitario_2Exit(Sender: TObject);
begin
     Totaliza();
end;

procedure TNF_Datatex01.Vlr_Unitario_3Exit(Sender: TObject);
begin
     Totaliza();
end;

procedure TNF_Datatex01.Vlr_Unitario_4Exit(Sender: TObject);
begin
     Totaliza();
end;

procedure TNF_Datatex01.Vlr_Unitario_5Exit(Sender: TObject);
begin
     Totaliza();
end;

procedure TNF_Datatex01.Vlr_Unitario_6Exit(Sender: TObject);
begin
     Totaliza();
end;

procedure TNF_Datatex01.Vlr_Unitario_7Exit(Sender: TObject);
begin
     Totaliza();
end;

procedure TNF_Datatex01.Vlr_Unitario_8Exit(Sender: TObject);
begin
     Totaliza();
end;

procedure TNF_Datatex01.Vlr_Unitario_9Exit(Sender: TObject);
begin
     Totaliza();
end;

procedure TNF_Datatex01.Vlr_Unitario_10Exit(Sender: TObject);
begin
     Totaliza();
end;

procedure TNF_Datatex01.Vlr_Unitario_11Exit(Sender: TObject);
begin
     Totaliza();
end;

procedure TNF_Datatex01.Vlr_Unitario_12Exit(Sender: TObject);
begin
     Totaliza();
end;

procedure TNF_Datatex01.Vlr_Unitario_13Exit(Sender: TObject);
begin
     Totaliza();
end;

procedure TNF_Datatex01.FormShow(Sender: TObject);
begin
     If Empresa.Text = 'NS Equipamentos - Serviços' Then
        Begin
        NF_Datatex01.Caption        := 'Nota Fiscal - NS Serviços - IMPRESSÃO';
        Servico.Text                := 'PINTURA';
        Natureza_Operacao.ItemIndex := 0;
        End
     Else If Empresa.Text = 'NS Equipamentos - Produtos' Then
        Begin
        NF_Datatex01.Caption        := 'Nota Fiscal - NS Equipamentos - IMPRESSÃO';
        Servico.Text                := 'EQUIPAMENTO';
        Natureza_Operacao.ItemIndex := 1;
     End;

     Nota_Fiscal.SetFocus;
end;

procedure TNF_Datatex01.Unidade_1KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Unidade_2KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Unidade_3KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Unidade_4KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Unidade_5KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Unidade_6KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Unidade_7KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Unidade_8KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Unidade_9KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Unidade_10KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Unidade_11KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Unidade_12KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TNF_Datatex01.Unidade_13KeyPress(Sender: TObject; var Key: Char);
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

function TNF_Datatex01.ConversaoRecursiva(N: LongWord): string;
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

function TNF_Datatex01.Extenso(parmNumero: Real): string;
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

end.
