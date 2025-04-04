unit Cliente_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls;

type
  TCliente01 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label36: TLabel;
    Cliente_Mensagem_Mascara: TLabel;
    Cliente_Codigo_Tipo: TComboBox;
    Cliente_Nome: TEdit;
    Cliente_Razao_Social: TEdit;
    Cliente_Tipo_Pessoa: TComboBox;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Cliente_Endereco: TEdit;
    Cliente_Complemento: TEdit;
    Cliente_Bairro: TEdit;
    Cliente_Cidade: TEdit;
    Cliente_Estado: TComboBox;
    Cliente_Cep: TMaskEdit;
    Cliente_Pais: TComboBox;
    Cliente_Inscricao_Municipal: TEdit;
    Cliente_Inscricao_Estadual: TEdit;
    GroupBox3: TGroupBox;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Cliente_Endereco_Cobranca: TEdit;
    Cliente_Complemento_Cobranca: TEdit;
    Cliente_Bairro_Cobranca: TEdit;
    Cliente_Cidade_Cobranca: TEdit;
    Cliente_Estado_Cobranca: TComboBox;
    Cliente_Cep_Cobranca: TMaskEdit;
    Cliente_Pais_Cobranca: TComboBox;
    Cliente_Opcao_Cobranca: TComboBox;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Cliente_Data_Inclusao: TMaskEdit;
    Cliente_Data_Visita: TMaskEdit;
    Cliente_Data_Alteracao: TMaskEdit;
    Cliente_Data_Ultima_Compra: TMaskEdit;
    Cliente_Observacoes: TMemo;
    GroupBox6: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Cliente_Valor_Credito: TEdit;
    Cliente_Status_Credito: TComboBox;
    Cliente_Ultimo_Valor: TEdit;
    Cliente_Codigo_CNPJ: TMaskEdit;
    Cliente_Codigo_CPF: TMaskEdit;
    Cliente_Codigo_RG: TEdit;
    Cliente_Codigo_EMail: TEdit;
    Label5: TLabel;
    Label40: TLabel;
    Cliente_Fone: TEdit;
    Cliente_Fax: TEdit;
    Label48: TLabel;
    Label49: TLabel;
    Cliente_Fone_Cobranca: TEdit;
    Cliente_Fax_Cobranca: TEdit;
    GroupBox4: TGroupBox;
    Label28: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label44: TLabel;
    GroupBox7: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label41: TLabel;
    Contato1_Nome: TEdit;
    Contato1_Fone: TEdit;
    Contato1_Fax: TEdit;
    Contato1_Email: TEdit;
    Contato1_Depto: TEdit;
    Contato2_Nome: TEdit;
    Contato2_Fone: TEdit;
    Contato2_Fax: TEdit;
    Contato2_Email: TEdit;
    Contato2_Depto: TEdit;
    GroupBox8: TGroupBox;
    Label42: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Contato3_Nome: TEdit;
    Contato3_Fone: TEdit;
    Contato3_Fax: TEdit;
    Contato3_Email: TEdit;
    Contato3_Depto: TEdit;
    GroupBox9: TGroupBox;
    Label50: TLabel;
    Label51: TLabel;
    VTransportadora_Nome: TEdit;
    VTransportadora_CNPJ: TEdit;
    BT_VincularTransportadora: TButton;
    Label52: TLabel;
    VTransportadora_Endereco: TEdit;
    Label53: TLabel;
    VTransportadora_Complemento: TEdit;
    Label54: TLabel;
    VTransportadora_Bairro: TEdit;
    Label55: TLabel;
    VTransportadora_Cidade: TEdit;
    Label56: TLabel;
    VTransportadora_Estado: TComboBox;
    Label57: TLabel;
    VTransportadora_CEP: TMaskEdit;
    Label58: TLabel;
    VTransportadora_Pais: TComboBox;
    Label59: TLabel;
    VTransportadora_Contato: TEdit;
    VTransportadora_DDD: TEdit;
    Label60: TLabel;
    Label61: TLabel;
    VTransportadora_Fone: TEdit;
    Label62: TLabel;
    VTransportadora_Fax: TEdit;
    Label63: TLabel;
    VTransportadora_Email: TEdit;
    Label64: TLabel;
    VTransportadora_Numero: TEdit;
    Panel2: TPanel;
    BT_Sair: TBitBtn;
    BT_Incluir: TBitBtn;
    Label65: TLabel;
    VTransportadora_Ramal: TEdit;
    DDD: TLabel;
    Cliente_DDD: TEdit;
    Label66: TLabel;
    Cliente_Ramal: TEdit;
    Label67: TLabel;
    Cliente_DDD_Cobranca: TEdit;
    Label68: TLabel;
    Cliente_Ramal_Cobranca: TEdit;
    Label70: TLabel;
    Contato1_DDD: TEdit;
    Label69: TLabel;
    Contato3_DDD: TEdit;
    Label71: TLabel;
    Contato2_DDD: TEdit;
    procedure BT_SairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Cliente_Codigo_TipoKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Codigo_EMailExit(Sender: TObject);
    procedure Cliente_Codigo_RGKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Codigo_EMailKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Codigo_CNPJKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Codigo_CPFKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Tipo_PessoaKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Inscricao_MunicipalKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Inscricao_EstadualKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_NomeKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Razao_SocialKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_EnderecoKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_ComplementoKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_BairroKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_CidadeKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Endereco_CobrancaKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Complemento_CobrancaKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Bairro_CobrancaKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Cidade_CobrancaKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Data_InclusaoKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Data_VisitaKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Data_AlteracaoKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Data_Ultima_CompraKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Opcao_CobrancaKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_CepKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Cep_CobrancaKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Valor_CreditoKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Ultimo_ValorKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Status_CreditoKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_PaisKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Pais_CobrancaKeyPress(Sender: TObject; var Key: Char);
    procedure Contato1_EmailKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Opcao_CobrancaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Cliente_Codigo_TipoChange(Sender: TObject);
    procedure BT_IncluirClick(Sender: TObject);
    procedure Cliente_Estado_CobrancaKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cliente_EstadoKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_FoneKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_FaxKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Fone_CobrancaKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cliente_Fax_CobrancaKeyPress(Sender: TObject; var Key: Char);
    procedure Contato2_NomeKeyPress(Sender: TObject; var Key: Char);
    procedure Contato2_DeptoKeyPress(Sender: TObject; var Key: Char);
    procedure Contato2_FoneKeyPress(Sender: TObject; var Key: Char);
    procedure Contato2_FaxKeyPress(Sender: TObject; var Key: Char);
    procedure Contato3_NomeKeyPress(Sender: TObject; var Key: Char);
    procedure Contato3_DeptoKeyPress(Sender: TObject; var Key: Char);
    procedure Contato3_FoneKeyPress(Sender: TObject; var Key: Char);
    procedure Contato3_FaxKeyPress(Sender: TObject; var Key: Char);
    procedure Contato3_EmailKeyPress(Sender: TObject; var Key: Char);
    procedure BT_VincularTransportadoraClick(Sender: TObject);
    procedure Contato1_NomeKeyPress(Sender: TObject; var Key: Char);
    procedure Contato1_DeptoKeyPress(Sender: TObject; var Key: Char);
    procedure Contato1_FoneKeyPress(Sender: TObject; var Key: Char);
    procedure Contato1_FaxKeyPress(Sender: TObject; var Key: Char);
    procedure Contato2_EmailKeyPress(Sender: TObject; var Key: Char);
    procedure Contato1_DDDKeyPress(Sender: TObject; var Key: Char);
    procedure Contato2_DDDKeyPress(Sender: TObject; var Key: Char);
    procedure Contato3_DDDKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function Valida_Dados(): Boolean;

    procedure O_Mesmo();
    procedure Exibe_Exemplo_Codigo();
  public
    { Public declarations }
  end;
var
  Cliente01: TCliente01;

implementation

uses Conexao_BD, Rotinas_Gerais, VinculaTransportadora_01;

{$R *.dfm}

//***************
//*** Funções ***
//***************

function TCliente01.Valida_Dados(): Boolean;

var
   Erro, Campo_Retorno: String;
   Resultado: Boolean;

begin
     Resultado     := True;
     Campo_Retorno := '';

     Ampulheta();

     If Cliente_Codigo_Tipo.Text = 'CNPJ' Then
        Begin
        If Trim(Cliente_Codigo_CNPJ.Text) = '.   .   /    -' Then
           Begin
           Erro          := 'O CNPJ do Cliente não foi informado';
           Campo_Retorno := 'Cliente_Codigo_CNPJ';
           End
        Else
           Begin
           If Not Valida_CNPJ(Cliente_Codigo_CNPJ.Text) Then
              Begin
              Erro          := 'O CNPJ do Cliente não está correto';
              Campo_Retorno := 'Cliente_Codigo_CNPJ';
           End;
        End;
        End
     Else If Cliente_Codigo_Tipo.Text = 'CPF' Then
        Begin
        If Trim(Cliente_Codigo_CPF.Text) = '.   .   -' Then
           Begin
           Erro          := 'O CPF do Cliente não foi informado';
           Campo_Retorno := 'Cliente_Codigo_CPF';
           End
        Else
           Begin
           If Not Valida_CPF(Cliente_Codigo_CPF.Text) Then
              Begin
              Erro          := 'O CPF do Cliente não está correto';
              Campo_Retorno := 'Cliente_Codigo_CPF';
           End;
        End;
        End
     Else If Cliente_Codigo_Tipo.Text = 'RG' Then
        Begin
        If Trim(Cliente_Codigo_RG.Text) = '' Then
           Begin
           Erro          := 'O RG do Cliente não foi informado';
           Campo_Retorno := 'Cliente_Codigo_RG';
        End;
        End
     Else If Cliente_Codigo_Tipo.Text = 'E-Mail' Then
        Begin
        If Trim(Cliente_Codigo_EMail.Text) = '' Then
           Begin
           Erro          := 'O E-Mail do Cliente não foi informado';
           Campo_Retorno := 'Cliente_Codigo_EMail';
        End;
     End;

     If Trim(Cliente_Nome.Text) = '' Then
        Begin
        Erro          := 'O Nome do Cliente não foi informado';
        Campo_Retorno := 'Cliente_Nome';
        End
     Else If Trim(Cliente_Endereco.Text) = '' Then
        Begin
        Erro          := 'O Endereço do Cliente não foi informado';
        Campo_Retorno := 'Cliente_Endereco';
        End
     Else If Trim(Cliente_Bairro.Text) = '' Then
        Begin
        Erro          := 'O Bairro do Cliente não foi informado';
        Campo_Retorno := 'Cliente_Bairro';
        End
     Else If Trim(Cliente_Cidade.Text) = '' Then
        Begin
        Erro          := 'A Cidade do Cliente não foi informada';
        Campo_Retorno := 'Cliente_Cidade';
        End
     Else If Trim(Cliente_Cep.Text) = '-' Then
        Begin
        Erro          := 'O CEP do Cliente não foi informado';
        Campo_Retorno := 'Cliente_Cep';
        End
     Else If Trim(Cliente_Endereco_Cobranca.Text) = '' Then
        Begin
        Erro          := 'O Endereço de Cobrança do Cliente não foi informado';
        Campo_Retorno := 'Cliente_Endereco_Cobranca';
        End
     Else If Trim(Cliente_Bairro_Cobranca.Text) = '' Then
        Begin
        Erro          := 'O Bairro de Cobrança do Cliente não foi informado';
        Campo_Retorno := 'Cliente_Bairro_Cobranca';
        End
     Else If Trim(Cliente_Cidade_Cobranca.Text) = '' Then
        Begin
        Erro          := 'A Cidade de Cobrança do Cliente não foi informada';
        Campo_Retorno := 'Cliente_Cidade_Cobranca';
        End
     Else If Trim(Cliente_Cep_Cobranca.Text) = '-' Then
        Begin
        Erro          := 'O CEP de Cobrança do Cliente não foi informado';
        Campo_Retorno := 'Cliente_Cep_Cobranca';
        End
     Else If Trim(Cliente_Data_Inclusao.Text) = '/  /' Then
        Begin
        Erro          := 'A Data de Inclusão não foi informada';
        Campo_Retorno := 'Cliente_Data_Inclusao';
        End
     Else If Trim(Cliente_Data_Visita.Text) = '/  /' Then
        Begin
        Erro          := 'A Data da Última Visita não foi informada';   
        Campo_Retorno := 'Cliente_Data_Visita';
        End
     Else If Trim(Cliente_Data_Alteracao.Text) = '/  /' Then
        Begin
        Erro          := 'A Data da Última Alteração não foi informada';
        Campo_Retorno := 'Cliente_Data_Alteracao';
        End
     Else If Trim(Cliente_Data_Ultima_Compra.Text) = '/  /' Then
        Begin
        Erro          := 'A Data da Última Compra não foi informada';
        Campo_Retorno := 'Cliente_Data_Ultima_Compra';
        End
     Else
        Begin
        ConexaoBD.SQL_Clientes.SQL.Clear;

        If Cliente_Codigo_Tipo.Text = 'CNPJ' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_codigo = ' + #39 + Trim(Cliente_Codigo_CNPJ.Text) + #39 );
           End
        Else If Cliente_Codigo_Tipo.Text = 'CPF' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_codigo = ' + #39 + Trim(Cliente_Codigo_CPF.Text) + #39 );
           End
        Else If Cliente_Codigo_Tipo.Text = 'RG' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_codigo = ' + #39 + Trim(Cliente_Codigo_RG.Text) + #39 );
           End
        Else If Cliente_Codigo_Tipo.Text = 'E-Mail' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_codigo = ' + #39 + Trim(Cliente_Codigo_EMail.Text) + #39 );
        End;

        ConexaoBD.SQL_Clientes.Open;

        If ConexaoBD.SQL_Clientes.RecordCount > 0 Then
           Begin
           Erro          := 'O Código do Cliente Já existe';

           If Cliente_Codigo_Tipo.Text = 'CNPJ' Then
              Begin
              Campo_Retorno := 'Cliente_Codigo_CNPJ';
              End
           Else If Cliente_Codigo_Tipo.Text = 'CPF' Then
              Begin
              Campo_Retorno := 'Cliente_Codigo_CPF';
              End
           Else If Cliente_Codigo_Tipo.Text = 'RG' Then
              Begin
              Campo_Retorno := 'Cliente_Codigo_RG';
              End
           Else If Cliente_Codigo_Tipo.Text = 'E-Mail' Then
              Begin
              Campo_Retorno := 'Cliente_Codigo_EMail';
           End;
        End;
     End;

     Seta();

     If Trim(Erro) <> '' Then
        Begin
        MSG_Erro(Erro);
        Resultado := False;
     End;

     If Campo_Retorno <> '' Then
        Begin
        If Campo_Retorno = 'Cliente_Codigo_CNPJ' Then
           Begin
           Cliente_Codigo_CNPJ.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Codigo_CPF' Then
           Begin
           Cliente_Codigo_CPF.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Codigo_RG' Then
           Begin
           Cliente_Codigo_RG.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Codigo_EMail' Then
           Begin
           Cliente_Codigo_EMail.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Nome' Then
           Begin
           Cliente_Nome.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Endereco' Then
           Begin
           Cliente_Endereco.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Bairro' Then
           Begin
           Cliente_Bairro.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Cidade' Then
           Begin
           Cliente_Cidade.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Cep' Then
           Begin
           Cliente_Cep.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Endereco_Cobranca' Then
           Begin
           Cliente_Endereco_Cobranca.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Bairro_Cobranca' Then
           Begin
           Cliente_Bairro_Cobranca.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Cidade_Cobranca' Then
           Begin
           Cliente_Cidade_Cobranca.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Cep_Cobranca' Then
           Begin
           Cliente_Cep_Cobranca.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Data_Inclusao' Then
           Begin
           Cliente_Data_Inclusao.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Data_Visita' Then
           Begin
           Cliente_Data_Visita.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Data_Alteracao' Then
           Begin
           Cliente_Data_Alteracao.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Data_Ultima_Compra' Then
           Begin
           Cliente_Data_Ultima_Compra.SetFocus;
        End;
     End;

     Result := Resultado;

end;

//******************
//*** Procedures ***
//******************

procedure TCliente01.O_Mesmo();
begin
     If Cliente_Opcao_Cobranca.Text = 'O Mesmo' Then
        Begin
        Cliente_Endereco_Cobranca.Text    := Cliente_Endereco.Text;
        Cliente_Complemento_Cobranca.Text := Cliente_Complemento.Text;
        Cliente_Bairro_Cobranca.Text      := Cliente_Bairro.Text;
        Cliente_Cidade_Cobranca.Text      := Cliente_Cidade.Text;
        Cliente_Estado_Cobranca.ItemIndex := Cliente_Estado.ItemIndex;
        Cliente_Cep_Cobranca.Text         := Cliente_Cep.Text;
        Cliente_Pais_Cobranca.ItemIndex   := Cliente_Pais.ItemIndex;
        Cliente_Fone_Cobranca.Text         := Cliente_Fone.Text;
        Cliente_Fax_Cobranca.Text         := Cliente_Fax.Text;
     End;
end;

procedure TCliente01.Exibe_Exemplo_Codigo();
begin
     If Cliente_Codigo_Tipo.Text = 'CNPJ' Then
        Begin
        Cliente_Mensagem_Mascara.Caption := '(Exemplo: 99.999.999/9999-99)';
        Cliente_Codigo_CNPJ.Text     := '';
        Cliente_Codigo_CNPJ.Visible  := True;
        Cliente_Codigo_CPF.Visible   := False;
        Cliente_Codigo_RG.Visible    := False;
        Cliente_Codigo_EMail.Visible := False;
        Cliente_Codigo_CNPJ.SetFocus;
        End
     Else If Cliente_Codigo_Tipo.Text = 'CPF' Then
        Begin
        Cliente_Mensagem_Mascara.Caption := '(Exemplo: 999.999.999-99)';
        Cliente_Codigo_CPF.Text      := '';
        Cliente_Codigo_CNPJ.Visible  := False;
        Cliente_Codigo_CPF.Visible   := True;
        Cliente_Codigo_RG.Visible    := False;
        Cliente_Codigo_EMail.Visible := False;
        Cliente_Codigo_CPF.SetFocus;
        End
     Else If Cliente_Codigo_Tipo.Text = 'RG' Then
        Begin
        Cliente_Mensagem_Mascara.Caption := '';
        Cliente_Codigo_RG.Text       := '';
        Cliente_Codigo_CNPJ.Visible  := False;
        Cliente_Codigo_CPF.Visible   := False;
        Cliente_Codigo_RG.Visible    := True;
        Cliente_Codigo_EMail.Visible := False;
        Cliente_Codigo_RG.SetFocus;
        End
     Else If Cliente_Codigo_Tipo.Text = 'E-Mail' Then
        Begin
        Cliente_Mensagem_Mascara.Caption := '';
        Cliente_Codigo_EMail.Text    := '';
        Cliente_Codigo_CNPJ.Visible  := False;
        Cliente_Codigo_CPF.Visible   := False;
        Cliente_Codigo_RG.Visible    := False;
        Cliente_Codigo_EMail.Visible := True;
        Cliente_Codigo_EMail.SetFocus;
        End
     Else
        Begin
        Cliente_Mensagem_Mascara.Caption := '';
     End;
end;

procedure TCliente01.BT_SairClick(Sender: TObject);
begin
  Cliente01.Close;
end;

procedure TCliente01.FormCreate(Sender: TObject);
begin

     //*** Trabalha com o Ano de 4 Dígitos ***

     ShortDateFormat := 'dd/mm/yyyy';
end;

procedure TCliente01.Cliente_Codigo_TipoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Codigo_EMailExit(Sender: TObject);
begin
    Contato1_Email.Text := Cliente_Codigo_EMail.Text;
end;

procedure TCliente01.Cliente_Codigo_RGKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Codigo_EMailKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Codigo_CNPJKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Codigo_CPFKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Tipo_PessoaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Inscricao_MunicipalKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Inscricao_EstadualKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_NomeKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Razao_SocialKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_EnderecoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_ComplementoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_BairroKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Endereco_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Complemento_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Bairro_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Cidade_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;


procedure TCliente01.Cliente_Data_InclusaoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Data_VisitaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Data_AlteracaoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Data_Ultima_CompraKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Opcao_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     O_Mesmo();

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_CepKeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Cep_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Valor_CreditoKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Ultimo_ValorKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Status_CreditoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_PaisKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Pais_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Opcao_CobrancaChange(Sender: TObject);
begin
     O_Mesmo();
end;

procedure TCliente01.FormShow(Sender: TObject);
begin
     Exibe_Exemplo_Codigo();

     //*** Carrega as Datas ***
     Cliente_Data_Inclusao.Text      := DateToStr(Date());
     Cliente_Data_Visita.Text        := DateToStr(Date());
     Cliente_Data_Ultima_Compra.Text := DateToStr(Date());
     Cliente_Data_Alteracao.Text     := DateToStr(Date());
end;

procedure TCliente01.Cliente_Codigo_TipoChange(Sender: TObject);
begin
     Exibe_Exemplo_Codigo();
end;

procedure TCliente01.BT_IncluirClick(Sender: TObject);

var
   Tipo_Pessoa, Status_Credito, Vlr_Credito, Vlr_Ultima_Compra, Comando_SQL, Nro_Transportadora: String;

begin
     If Valida_Dados() Then
        Begin

        //*** Obtem o Tipo de Pessoa ***

        If Cliente_Tipo_Pessoa.Text = 'Pessoa Jurídica' Then
           Begin
           Tipo_Pessoa := 'PJ';
           End
        Else
           Begin
           Tipo_Pessoa := 'PF';
        End;

        //*** Obtem o Status do Crédito ***

        If Cliente_Status_Credito.Text = 'Sim' Then
           Begin
           Status_Credito := 'S';
           End
        Else
           Begin
           Status_Credito := 'N';
        End;

        //*** Obtem os Valores ***

        Vlr_Credito       := Trim(Virgula_Ponto(Cliente_Valor_Credito.Text));
        Vlr_Ultima_Compra := Trim(Virgula_Ponto(Cliente_Ultimo_Valor.Text));

        If Trim(Vlr_Credito) = '' Then
           Begin
           Vlr_Credito := '0';
        End;

        If Trim(Vlr_Ultima_Compra) = '' Then
           Begin
           Vlr_Ultima_Compra := '0';
        End;

        If Trim(VTransportadora_Numero.Text) = '' Then
           Begin
           Nro_Transportadora := '0';
           End
        Else
           Begin
           Nro_Transportadora := Trim(VTransportadora_Numero.Text);
        End;

        //*** Efetua a Inserção ***

        Comando_SQL := 'Insert Into Clientes(';
        Comando_SQL := Comando_SQL + 'Cliente_codigo,';
        Comando_SQL := Comando_SQL + 'Cliente_codigo_tipo,';
        Comando_SQL := Comando_SQL + 'Cliente_nome,';
        Comando_SQL := Comando_SQL + 'Cliente_razao_social,';
        Comando_SQL := Comando_SQL + 'Cliente_inscricao_municipal,';
        Comando_SQL := Comando_SQL + 'Cliente_inscricao_estadual,';
        Comando_SQL := Comando_SQL + 'Cliente_endereco,';
        Comando_SQL := Comando_SQL + 'Cliente_complemento,';
        Comando_SQL := Comando_SQL + 'Cliente_bairro,';
        Comando_SQL := Comando_SQL + 'Cliente_cidade,';
        Comando_SQL := Comando_SQL + 'Cliente_estado,';
        Comando_SQL := Comando_SQL + 'Cliente_cep,';
        Comando_SQL := Comando_SQL + 'Cliente_Fone,';
        Comando_SQL := Comando_SQL + 'Cliente_Fax,';
        Comando_SQL := Comando_SQL + 'Cliente_endereco_cobranca,';
        Comando_SQL := Comando_SQL + 'Cliente_complemento_cobranca,';
        Comando_SQL := Comando_SQL + 'Cliente_bairro_cobranca,';
        Comando_SQL := Comando_SQL + 'Cliente_cidade_cobranca,';
        Comando_SQL := Comando_SQL + 'Cliente_estado_cobranca,';
        Comando_SQL := Comando_SQL + 'Cliente_cep_cobranca,';
        Comando_SQL := Comando_SQL + 'Cliente_Fone_Cobranca,';
        Comando_SQL := Comando_SQL + 'Cliente_Fax_Cobranca,';
        Comando_SQL := Comando_SQL + 'Contato1_Nome,';
        Comando_SQL := Comando_SQL + 'Contato1_Depto,';
        Comando_SQL := Comando_SQL + 'Contato1_DDD,';
        Comando_SQL := Comando_SQL + 'Contato1_Fone,';
        Comando_SQL := Comando_SQL + 'Contato1_Fax,';
        Comando_SQL := Comando_SQL + 'Contato1_Email,';
        Comando_SQL := Comando_SQL + 'Contato2_Nome,';
        Comando_SQL := Comando_SQL + 'Contato2_Depto,';
        Comando_SQL := Comando_SQL + 'Contato2_DDD,';
        Comando_SQL := Comando_SQL + 'Contato2_Fone,';
        Comando_SQL := Comando_SQL + 'Contato2_Fax,';
        Comando_SQL := Comando_SQL + 'Contato2_Email,';
        Comando_SQL := Comando_SQL + 'Contato3_Nome,';
        Comando_SQL := Comando_SQL + 'Contato3_Depto,';
        Comando_SQL := Comando_SQL + 'Contato3_DDD,';
        Comando_SQL := Comando_SQL + 'Contato3_Fone,';
        Comando_SQL := Comando_SQL + 'Contato3_Fax,';
        Comando_SQL := Comando_SQL + 'Contato3_Email,';
        Comando_SQL := Comando_SQL + 'Cliente_valor_credito,';
        Comando_SQL := Comando_SQL + 'Cliente_status_credito,';
        Comando_SQL := Comando_SQL + 'Cliente_tipo_pessoa,';
        Comando_SQL := Comando_SQL + 'Cliente_data_inclusao,';
        Comando_SQL := Comando_SQL + 'Cliente_data_visita,';
        Comando_SQL := Comando_SQL + 'Cliente_data_alteracao,';
        Comando_SQL := Comando_SQL + 'Cliente_data_ultima_compra,';
        Comando_SQL := Comando_SQL + 'Cliente_ultimo_valor,';
        Comando_SQL := Comando_SQL + 'Cliente_observacao,';
        Comando_SQL := Comando_SQL + 'Cliente_pais,';
        Comando_SQL := Comando_SQL + 'Cliente_pais_cobranca,';
        Comando_SQL := Comando_SQL + 'Cliente_opcao_cobranca,';
        Comando_SQL := Comando_SQL + 'Cliente_DDD,';
        Comando_SQL := Comando_SQL + 'Cliente_Ramal,';
        Comando_SQL := Comando_SQL + 'Cliente_DDD_Cobranca,';
        Comando_SQL := Comando_SQL + 'Cliente_Ramal_Cobranca,';
        Comando_SQL := Comando_SQL + 'Cliente_Transportadora_Numero)';
        Comando_SQL := Comando_SQL + ' Values(';

        If Cliente_Codigo_Tipo.Text = 'CNPJ' Then
           Begin
           Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Codigo_CNPJ.Text) + #39 + ',';
           End
        Else If Cliente_Codigo_Tipo.Text = 'CPF' Then
           Begin
           Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Codigo_CPF.Text) + #39 + ',';
           End
        Else If Cliente_Codigo_Tipo.Text = 'RG' Then
           Begin
           Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Codigo_RG.Text) + #39 + ',';
           End
        Else If Cliente_Codigo_Tipo.Text = 'E-Mail' Then
           Begin
           Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Codigo_EMail.Text) + #39 + ',';
        End;

        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Codigo_Tipo.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Nome.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Razao_Social.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Inscricao_Municipal.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Inscricao_Estadual.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Endereco.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Complemento.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Bairro.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Cidade.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Estado.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Cep.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Fone.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Fax.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Endereco_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Complemento_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Bairro_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Cidade_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Estado_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Cep_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Fone_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Fax_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato1_Nome.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato1_Depto.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato1_DDD.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato1_Fone.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato1_Fax.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato1_Email.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato2_Nome.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato2_Depto.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato2_DDD.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato2_Fone.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato2_Fax.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato2_Email.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato3_Nome.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato3_Depto.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato3_DDD.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato3_Fone.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato3_Fax.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Contato3_Email.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + Trim(Vlr_Credito) + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Status_Credito) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Tipo_Pessoa) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Inverte_Data_Plus(Trim(Cliente_Data_Inclusao.Text),'amd','/') + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Inverte_Data_Plus(Trim(Cliente_Data_Visita.Text),'amd','/') + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Inverte_Data_Plus(Trim(Cliente_Data_Alteracao.Text),'amd','/') + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Inverte_Data_Plus(Trim(Cliente_Data_Ultima_Compra.Text),'amd','/') + #39 + ',';
        Comando_SQL := Comando_SQL + Trim(Vlr_Ultima_Compra) + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Observacoes.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Pais.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Pais_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Opcao_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_DDD.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Ramal.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_DDD_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Ramal_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + Trim(Nro_Transportadora) + ')';

        ConexaoBD.SQL_Comunitario.SQL.Clear;
        ConexaoBD.SQL_Comunitario.SQL.Add(Comando_SQL);
        ConexaoBD.SQL_Comunitario.ExecSQL;

         MSG_Erro('Inclusão Efetuada...');

        //*** Atualiza a Tela de Pedidos ***

           If Confirma('Incluir Outro Cliente?') = 6 Then
              Begin
              Cliente_Codigo_Tipo.ItemIndex      := 0;
              Cliente_Codigo_CNPJ.Text           := '';
              Cliente_Codigo_CPF.Text            := '';
              Cliente_Codigo_RG.Text             := '';
              Cliente_Codigo_EMail.Text          := '';
              Cliente_Codigo_Tipo.Text           := '';
              Cliente_Nome.Text                  := '';
              Cliente_Razao_Social.Text          := '';
              Cliente_Inscricao_Municipal.Text   := '';
              Cliente_Inscricao_Estadual.Text    := '';
              Cliente_Endereco.Text              := '';
              Cliente_Complemento.Text           := '';
              Cliente_Bairro.Text                := '';
              Cliente_Cidade.Text                := '';
              Cliente_Estado.Text                := '';
              Cliente_Cep.Text                   := '';
              Cliente_Fone.Text                  := '';
              Cliente_Fax.Text                   := '';
              Cliente_Endereco_Cobranca.Text     := '';
              Cliente_Complemento_Cobranca.Text  := '';
              Cliente_Bairro_Cobranca.Text       := '';
              Cliente_Cidade_Cobranca.Text       := '';
              Cliente_Estado_Cobranca.Text       := '';
              Cliente_Cep_Cobranca.Text          := '';
              Cliente_Fone_Cobranca.Text         := '';
              Cliente_Fax_Cobranca.Text          := '';
              Contato1_Nome.Text                 := '';
              Contato1_Depto.Text                := '';
              Contato1_DDD.Text                  := '';
              Contato1_Fone.Text                 := '';
              Contato1_Fax.Text                  := '';
              Contato1_Email.Text                := '';
              Contato2_Nome.Text                 := '';
              Contato2_Depto.Text                := '';
              Contato2_DDD.Text                  := '';
              Contato2_Fone.Text                 := '';
              Contato2_Fax.Text                  := '';
              Contato2_Email.Text                := '';
              Contato3_Nome.Text                 := '';
              Contato3_Depto.Text                := '';
              Contato3_DDD.Text                  := '';
              Contato3_Fone.Text                 := '';
              Contato3_Fax.Text                  := '';
              Contato3_Email.Text                := '';
              Cliente_Valor_Credito.Text         := '';
              Cliente_Status_Credito.ItemIndex   := 0;
              Cliente_Tipo_Pessoa.ItemIndex      := 0;
              Cliente_Ultimo_Valor.Text          := '';
              Cliente_Observacoes.Text           := '';
              Cliente_Pais.ItemIndex             := 0;
              Cliente_Pais_Cobranca.ItemIndex    := 0;
              Cliente_Opcao_Cobranca.ItemIndex   := 0;
              Cliente_DDD.Text                   := '';
              Cliente_Ramal.Text                 := '';
              Cliente_DDD_Cobranca.Text          := '';
              Cliente_Ramal_Cobranca.Text        := '';

              VTransportadora_Numero.Text        := '';
              VTransportadora_CNPJ.Text          := '';
              VTransportadora_Nome.Text          := '';
              VTransportadora_Endereco.Text      := '';
              VTransportadora_Complemento.Text   := '';
              VTransportadora_Bairro.Text        := '';
              VTransportadora_Cidade.Text        := '';
              VTransportadora_Estado.ItemIndex   := 24;
              VTransportadora_CEP.Text           := '';
              VTransportadora_Pais.ItemIndex     := 0;
              VTransportadora_Contato.Text       := '';
              VTransportadora_DDD.Text           := '';
              VTransportadora_Ramal.Text         := '';
              VTransportadora_Fone.Text          := '';
              VTransportadora_Fax.Text           := '';
              VTransportadora_Email.Text         := '';

              //*** Carrega as Datas ***

              Cliente_Data_Inclusao.Text      := DateToStr(Date());
              Cliente_Data_Visita.Text        := DateToStr(Date());
              Cliente_Data_Ultima_Compra.Text := DateToStr(Date());
              Cliente_Data_Alteracao.Text     := DateToStr(Date());

              Exibe_Exemplo_Codigo();
              End
           Else
              Begin
              Cliente01.Close;
           End;
     End;

end;

procedure TCliente01.Cliente_Estado_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End; 
end;

procedure TCliente01.Cliente_EstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_FoneKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_FaxKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Fone_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
       If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Cliente_Fax_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato1_EmailKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato2_NomeKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato2_DeptoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato2_FoneKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato2_FaxKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato3_NomeKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato3_DeptoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato3_FoneKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato3_FaxKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato3_EmailKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.BT_VincularTransportadoraClick(Sender: TObject);
begin
  Application.CreateForm(TVinculaTransportadora01,VinculaTransportadora01);

  VinculaTransportadora01.Cliente_Nome.Text        := Cliente_Nome.Text;
  VinculaTransportadora01.Formulario_Anterior.Text := 'Inclusão';

  VinculaTransportadora01.ShowModal;
  VinculaTransportadora01.Destroy;
end;

procedure TCliente01.Contato1_NomeKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato1_DeptoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato1_FoneKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato1_FaxKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato2_EmailKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato1_DDDKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato2_DDDKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente01.Contato3_DDDKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

end.
