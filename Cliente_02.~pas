unit Cliente_02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls;

type
  TCliente02 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
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
    Label5: TLabel;
    Label40: TLabel;
    Cliente_Endereco: TEdit;
    Cliente_Complemento: TEdit;
    Cliente_Bairro: TEdit;
    Cliente_Cidade: TEdit;
    Cliente_Estado: TComboBox;
    Cliente_Cep: TMaskEdit;
    Cliente_Pais: TComboBox;
    Cliente_Fone: TEdit;
    Cliente_Fax: TEdit;
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
    Label48: TLabel;
    Label49: TLabel;
    Cliente_Endereco_Cobranca: TEdit;
    Cliente_Complemento_Cobranca: TEdit;
    Cliente_Bairro_Cobranca: TEdit;
    Cliente_Cidade_Cobranca: TEdit;
    Cliente_Estado_Cobranca: TComboBox;
    Cliente_Cep_Cobranca: TMaskEdit;
    Cliente_Pais_Cobranca: TComboBox;
    Cliente_Opcao_Cobranca: TComboBox;
    Cliente_Fone_Cobranca: TEdit;
    Cliente_Fax_Cobranca: TEdit;
    GroupBox5: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Cliente_Data_Inclusao: TMaskEdit;
    Cliente_Data_Visita: TMaskEdit;
    Cliente_Data_Alteracao: TMaskEdit;
    Cliente_Data_Ultima_Compra: TMaskEdit;
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
    GroupBox4: TGroupBox;
    Label28: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label44: TLabel;
    Contato1_Nome: TEdit;
    Contato1_Fone: TEdit;
    Contato1_Fax: TEdit;
    Contato1_Email: TEdit;
    Contato1_Depto: TEdit;
    GroupBox7: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label41: TLabel;
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
    Label36: TLabel;
    Cliente_Observacoes: TMemo;
    GroupBox9: TGroupBox;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    VTransportadora_Nome: TEdit;
    VTransportadora_CNPJ: TEdit;
    BT_VincularTransportadora: TButton;
    VTransportadora_Endereco: TEdit;
    VTransportadora_Complemento: TEdit;
    VTransportadora_Bairro: TEdit;
    VTransportadora_Cidade: TEdit;
    VTransportadora_Estado: TComboBox;
    VTransportadora_CEP: TMaskEdit;
    VTransportadora_Pais: TComboBox;
    VTransportadora_Contato: TEdit;
    VTransportadora_DDD: TEdit;
    VTransportadora_Fone: TEdit;
    VTransportadora_Fax: TEdit;
    VTransportadora_Email: TEdit;
    VTransportadora_Numero: TEdit;
    Panel2: TPanel;
    BT_RelacaoVendas: TButton;
    BT_Alterar: TBitBtn;
    BT_Excluir: TBitBtn;
    BT_Sair: TBitBtn;
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
    Label69: TLabel;
    Contato2_DDD: TEdit;
    Label70: TLabel;
    Contato1_DDD: TEdit;
    Label71: TLabel;
    Contato3_DDD: TEdit;
    procedure BT_SairClick(Sender: TObject);
    procedure BT_ExcluirClick(Sender: TObject);
    procedure Cliente_Codigo_TipoKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Codigo_EMailKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Codigo_RGKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Codigo_CPFKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Codigo_CNPJKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_TipoKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Tipo_PessoaKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Inscricao_MunicipalKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cliente_Inscricao_EstadualKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cliente_NomeKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Razao_SocialKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_EnderecoKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_ComplementoKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_BairroKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_CidadeKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_EstadoKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_CepKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_PaisKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Data_InclusaoKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cliente_Data_AlteracaoKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cliente_Data_VisitaKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Data_Ultima_CompraKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cliente_Status_CreditoKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cliente_Valor_CreditoKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cliente_Ultimo_ValorKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Bairro_CobrancaKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cliente_Cidade_CobrancaKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cliente_Estado_CobrancaKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cliente_Cep_CobrancaKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Pais_CobrancaKeyPress(Sender: TObject;
      var Key: Char);
    procedure Contato1_NomeKeyPress(Sender: TObject; var Key: Char);
    procedure Contato1_FoneKeyPress(Sender: TObject; var Key: Char);
    procedure Contato1_FaxKeyPress(Sender: TObject; var Key: Char);
    procedure s(Sender: TObject; var Key: Char);
    procedure Cliente_Codigo_TipoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Cliente_Opcao_CobrancaKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cliente_Opcao_CobrancaChange(Sender: TObject);
    procedure BT_AlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Cliente_Endereco_CobrancaKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cliente_Complemento_CobrancaKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cliente_FoneKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_FaxKeyPress(Sender: TObject; var Key: Char);
    procedure Cliente_Fone_CobrancaKeyPress(Sender: TObject;
      var Key: Char);
    procedure Cliente_Fax_CobrancaKeyPress(Sender: TObject; var Key: Char);
    procedure Contato1_DeptoKeyPress(Sender: TObject; var Key: Char);
    procedure Contato1_EmailKeyPress(Sender: TObject; var Key: Char);
    procedure Contato2_NomeKeyPress(Sender: TObject; var Key: Char);
    procedure Contato2_DeptoKeyPress(Sender: TObject; var Key: Char);
    procedure Contato2_FoneKeyPress(Sender: TObject; var Key: Char);
    procedure Contato2_FaxKeyPress(Sender: TObject; var Key: Char);
    procedure Contato2_EmailKeyPress(Sender: TObject; var Key: Char);
    procedure Contato3_NomeKeyPress(Sender: TObject; var Key: Char);
    procedure Contato3_DeptoKeyPress(Sender: TObject; var Key: Char);
    procedure Contato3_FoneKeyPress(Sender: TObject; var Key: Char);
    procedure Contato3_FaxKeyPress(Sender: TObject; var Key: Char);
    procedure Contato3_EmailKeyPress(Sender: TObject; var Key: Char);
    procedure BT_VincularTransportadoraClick(Sender: TObject);
    procedure BT_RelacaoVendasClick(Sender: TObject);
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
  Cliente02: TCliente02;

implementation

uses Conexao_BD, Rotinas_Gerais, Cliente_01, VinculaTransportadora_01,
  Relacao_Vendas_Manutencao_00;

{$R *.dfm}


function TCliente02.Valida_Dados(): Boolean;
var
   Erro, Campo_Retorno: String;
   Resultado: Boolean;

begin
     Resultado     := True;
     Campo_Retorno := '';

     Ampulheta();

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
        Else If Campo_Retorno = 'Cliente_Fone' Then
           Begin
           Cliente_Cep.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Fax' Then
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
        Else If Campo_Retorno = 'Cliente_Fone_Cobranca' Then
           Begin
           Cliente_Cep_Cobranca.SetFocus;
           End
        Else If Campo_Retorno = 'Cliente_Fax_Cobranca' Then
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

procedure TCliente02.O_Mesmo();
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
        Cliente_Fone_Cobranca.Text        := Cliente_Fone.Text;
        Cliente_Fax_Cobranca.Text         := Cliente_Fax.Text;
     End;
end;

procedure TCliente02.Exibe_Exemplo_Codigo();
begin
     If Cliente_Codigo_Tipo.Text = 'CNPJ' Then
        Begin
        Cliente_Mensagem_Mascara.Caption := '(Exemplo: 99.999.999/9999-99)';
        Cliente_Codigo_CNPJ.Visible  := True;
        Cliente_Codigo_CPF.Visible   := False;
        Cliente_Codigo_RG.Visible    := False;
        Cliente_Codigo_EMail.Visible := False;
        End
     Else If Cliente_Codigo_Tipo.Text = 'CPF' Then
        Begin
        Cliente_Mensagem_Mascara.Caption := '(Exemplo: 999.999.999-99)';
        Cliente_Codigo_CNPJ.Visible  := False;
        Cliente_Codigo_CPF.Visible   := True;
        Cliente_Codigo_RG.Visible    := False;
        Cliente_Codigo_EMail.Visible := False;
        End
     Else If Cliente_Codigo_Tipo.Text = 'RG' Then
        Begin
        Cliente_Mensagem_Mascara.Caption := '';
        Cliente_Codigo_CNPJ.Visible  := False;
        Cliente_Codigo_CPF.Visible   := False;
        Cliente_Codigo_RG.Visible    := True;
        Cliente_Codigo_EMail.Visible := False;
        End
     Else If Cliente_Codigo_Tipo.Text = 'E-Mail' Then
        Begin
        Cliente_Mensagem_Mascara.Caption := '';
        Cliente_Codigo_CNPJ.Visible  := False;
        Cliente_Codigo_CPF.Visible   := False;
        Cliente_Codigo_RG.Visible    := False;
        Cliente_Codigo_EMail.Visible := True;
        End
     Else
        Begin
        Cliente_Mensagem_Mascara.Caption := '';
     End;
end;

procedure TCliente02.BT_SairClick(Sender: TObject);
begin
  Cliente02.Close;
end;

procedure TCliente02.BT_ExcluirClick(Sender: TObject);

var
   Cliente_Codigo: String;

begin
     If Confirma('Confirma a Exclusão?') = 6 Then
        Begin
        Ampulheta();

        //*** Deleta o Cliente ***

        ConexaoBD.SQL_Comunitario.SQL.Clear;

        If Cliente_Codigo_Tipo.Text = 'CNPJ' Then
           Begin
           ConexaoBD.SQL_Comunitario.SQL.Add('Delete from Clientes Where Cliente_codigo = ' + #39 + Trim(Cliente_Codigo_CNPJ.Text) + #39 );
           Cliente_Codigo := Trim(Cliente_Codigo_CNPJ.Text);
           End
        Else If Cliente_Codigo_Tipo.Text = 'CPF' Then
           Begin
           ConexaoBD.SQL_Comunitario.SQL.Add('Delete from Clientes Where Cliente_codigo = ' + #39 + Trim(Cliente_Codigo_CPF.Text) + #39 );
           Cliente_Codigo := Trim(Cliente_Codigo_CPF.Text);
           End
        Else If Cliente_Codigo_Tipo.Text = 'RG' Then
           Begin
           ConexaoBD.SQL_Comunitario.SQL.Add('Delete from Clientes Where Cliente_codigo = ' + #39 + Trim(Cliente_Codigo_RG.Text) + #39 );
           Cliente_Codigo := Trim(Cliente_Codigo_RG.Text);
           End
        Else If Cliente_Codigo_Tipo.Text = 'E-Mail' Then
           Begin
           ConexaoBD.SQL_Comunitario.SQL.Add('Delete from Clientes Where Cliente_codigo = ' + #39 + Trim(Cliente_Codigo_EMail.Text) + #39 );
           Cliente_Codigo := Trim(Cliente_Codigo_EMail.Text);
        End;

        ConexaoBD.SQL_Comunitario.ExecSQL;

        //*** Deleta as Vendas e Manutenções Relacionadas ao Cliente ***

        ConexaoBD.SQL_Comunitario.SQL.Clear;
        ConexaoBD.SQL_Comunitario.SQL.Add('Delete from vendas_manutencao Where venda_manutencao_cliente_codigo = ' + #39 + Trim(Cliente_Codigo) + #39 );
        ConexaoBD.SQL_Comunitario.ExecSQL;

        Seta();

        MSG_Erro('Exclusão Efetuada...');
        Cliente02.Close;
     End;
end;
procedure TCliente02.Cliente_Codigo_TipoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Codigo_EMailKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Codigo_RGKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Codigo_CPFKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Codigo_CNPJKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_TipoKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Tipo_PessoaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Inscricao_MunicipalKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Inscricao_EstadualKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_NomeKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Razao_SocialKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_EnderecoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_ComplementoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_BairroKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_EstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_CepKeyPress(Sender: TObject; var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_PaisKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Data_InclusaoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Data_AlteracaoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Data_VisitaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Data_Ultima_CompraKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Status_CreditoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Valor_CreditoKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Ultimo_ValorKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Bairro_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Cidade_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Estado_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Cep_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     So_Numero(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Pais_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato1_NomeKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato1_FoneKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato1_FaxKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.s(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Codigo_TipoChange(Sender: TObject);
begin
     Exibe_Exemplo_Codigo();
end;

procedure TCliente02.FormShow(Sender: TObject);
begin
     Exibe_Exemplo_Codigo();
end;

procedure TCliente02.Cliente_Opcao_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     O_Mesmo();

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Opcao_CobrancaChange(Sender: TObject);
begin
     O_Mesmo();
end;

procedure TCliente02.BT_AlterarClick(Sender: TObject);
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
        Comando_SQL := 'Update Clientes Set ';
        Comando_SQL := Comando_SQL + 'Cliente_codigo_tipo = '         + #39 + Trim(Cliente_Codigo_Tipo.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_nome = '                + #39 + Trim(Cliente_Nome.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_razao_social = '        + #39 + Trim(Cliente_Razao_Social.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_inscricao_municipal = ' + #39 + Trim(Cliente_Inscricao_Municipal.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_inscricao_estadual = '  + #39 + Trim(Cliente_Inscricao_Estadual.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_endereco = '            + #39 + Trim(Cliente_Endereco.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_complemento = '         + #39 + Trim(Cliente_Complemento.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_bairro = '              + #39 + Trim(Cliente_Bairro.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_cidade = '              + #39 + Trim(Cliente_Cidade.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_estado = '              + #39 + Trim(Cliente_Estado.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_cep = '                 + #39 + Trim(Cliente_Cep.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_Fone = '                + #39 + Trim(Cliente_Fone.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_Fax = '                 + #39 + Trim(Cliente_Fax.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_endereco_cobranca = '   + #39 + Trim(Cliente_Endereco_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_complemento_cobranca = '+ #39 + Trim(Cliente_Complemento_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_bairro_cobranca = '     + #39 + Trim(Cliente_Bairro_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_cidade_cobranca = '     + #39 + Trim(Cliente_Cidade_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_estado_cobranca = '     + #39 + Trim(Cliente_Estado_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_cep_cobranca = '        + #39 + Trim(Cliente_Cep_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_Fone_cobranca = '       + #39 + Trim(Cliente_Fone_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_Fax_cobranca = '        + #39 + Trim(Cliente_Fax_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato1_Nome = '               + #39 + Trim(Contato1_Nome.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato1_Depto = '              + #39 + Trim(Contato1_Depto.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato1_DDD = '                + #39 + Trim(Contato1_DDD.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato1_Fone = '               + #39 + Trim(Contato1_Fone.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato1_Fax = '                + #39 + Trim(Contato1_Fax.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato1_Email = '              + #39 + Trim(Contato1_Email.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato2_Nome = '               + #39 + Trim(Contato2_Nome.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato2_Depto = '              + #39 + Trim(Contato2_Depto.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato2_DDD = '                + #39 + Trim(Contato2_DDD.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato2_Fone = '               + #39 + Trim(Contato2_Fone.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato2_Fax = '                + #39 + Trim(Contato2_Fax.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato2_Email = '              + #39 + Trim(Contato2_Email.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato3_Nome = '               + #39 + Trim(Contato3_Nome.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato3_Depto = '              + #39 + Trim(Contato3_Depto.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato3_DDD = '                + #39 + Trim(Contato3_DDD.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato3_Fone = '               + #39 + Trim(Contato3_Fone.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato3_Fax = '                + #39 + Trim(Contato3_Fax.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Contato3_Email = '              + #39 + Trim(Contato3_Email.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_valor_credito = '       + Trim(Vlr_Credito) + ',';
        Comando_SQL := Comando_SQL + 'Cliente_status_credito = '      + #39 + Trim(Status_Credito) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_tipo_pessoa = '         + #39 + Trim(Tipo_Pessoa) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_data_inclusao = '       + #39 + Inverte_Data_Plus(Trim(Cliente_Data_Inclusao.Text),'amd','/') + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_data_visita = '         + #39 + Inverte_Data_Plus(Trim(Cliente_Data_Visita.Text),'amd','/') + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_data_alteracao = '      + #39 + Inverte_Data_Plus(Trim(DateToStr(Date())),'amd','/') + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_data_ultima_compra = '  + #39 + Inverte_Data_Plus(Trim(Cliente_Data_Ultima_Compra.Text),'amd','/') + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_ultimo_valor = '        + Trim(Vlr_Ultima_Compra) + ',';
        Comando_SQL := Comando_SQL + 'Cliente_observacao = '          + #39 + Trim(Cliente_Observacoes.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_pais = '                + #39 + Trim(Cliente_Pais.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_pais_cobranca = '       + #39 + Trim(Cliente_Pais_Cobranca.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_opcao_cobranca = '      + #39 + Trim(Cliente_Opcao_Cobranca.Text)+ #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_DDD = '      + #39 + Trim(Cliente_DDD.Text)+ #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_Ramal = '      + #39 + Trim(Cliente_Ramal.Text)+ #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_DDD_Cobranca = '      + #39 + Trim(Cliente_DDD_Cobranca.Text)+ #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_Ramal_Cobranca = '      + #39 + Trim(Cliente_Ramal_Cobranca.Text)+ #39 + ',';
        Comando_SQL := Comando_SQL + 'Cliente_Transportadora_Numero = ' + #39 + Trim(Nro_Transportadora)+ #39;

        If Cliente_Codigo_Tipo.Text = 'CNPJ' Then
           Begin
           Comando_SQL := Comando_SQL + ' Where Cliente_codigo = ' + #39 + Trim(Cliente_Codigo_CNPJ.Text) + #39;
           End
        Else If Cliente_Codigo_Tipo.Text = 'CPF' Then
           Begin
           Comando_SQL := Comando_SQL + ' Where Cliente_codigo = ' + #39 + Trim(Cliente_Codigo_CPF.Text) + #39;
           End
        Else If Cliente_Codigo_Tipo.Text = 'RG' Then
           Begin
           Comando_SQL := Comando_SQL + ' Where Cliente_codigo = ' + #39 + Trim(Cliente_Codigo_RG.Text) + #39;
           End
        Else If Cliente_Codigo_Tipo.Text = 'E-Mail' Then
           Begin
           Comando_SQL := Comando_SQL + ' Where Cliente_codigo = ' + #39 + Trim(Cliente_Codigo_EMail.Text) + #39;
        End;

        ConexaoBD.SQL_Comunitario.SQL.Clear;
        ConexaoBD.SQL_Comunitario.SQL.Add(Comando_SQL);
        ConexaoBD.SQL_Comunitario.ExecSQL;

        MSG_Erro('Alteração Efetuada...');

        Cliente02.Close;
     End;

end;

procedure TCliente02.FormCreate(Sender: TObject);
begin
     //*** Trabalha com o Ano de 4 Dígitos ***

     ShortDateFormat := 'dd/mm/yyyy';
end;

procedure TCliente02.Cliente_Endereco_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Complemento_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_FoneKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_FaxKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Fone_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Cliente_Fax_CobrancaKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato1_DeptoKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato1_EmailKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato2_NomeKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato2_DeptoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato2_FoneKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato2_FaxKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato2_EmailKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato3_NomeKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato3_DeptoKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato3_FoneKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato3_FaxKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato3_EmailKeyPress(Sender: TObject;
  var Key: Char);
begin
If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.BT_VincularTransportadoraClick(Sender: TObject);
begin
  Application.CreateForm(TVinculaTransportadora01,VinculaTransportadora01);

  VinculaTransportadora01.Form := 'alt';
  VinculaTransportadora01.Cliente_Nome.Text        := Cliente_Nome.Text;
  VinculaTransportadora01.Formulario_Anterior.Text := 'Alteração';

  VinculaTransportadora01.ShowModal;
  VinculaTransportadora01.Destroy;
end;

procedure TCliente02.BT_RelacaoVendasClick(Sender: TObject);
begin
     Application.CreateForm(TVendasManutencao00,VendasManutencao00);

     VendasManutencao00.Cliente_Codigo_Tipo.Text := Cliente_Codigo_Tipo.Text;

     If Cliente_Codigo_Tipo.Text = 'CNPJ' Then
        Begin
        VendasManutencao00.Cliente_Codigo.Text := Cliente_Codigo_CNPJ.Text;
        End
     Else If Cliente_Codigo_Tipo.Text = 'CPF' Then
        Begin
        VendasManutencao00.Cliente_Codigo.Text := Cliente_Codigo_CPF.Text;
        End
     Else If Cliente_Codigo_Tipo.Text = 'RG' Then
        Begin
        VendasManutencao00.Cliente_Codigo.Text := Cliente_Codigo_RG.Text;
        End
     Else If Cliente_Codigo_Tipo.Text = 'E-Mail' Then
        Begin
        VendasManutencao00.Cliente_Codigo.Text := Cliente_Codigo_EMail.Text;
     End;

     VendasManutencao00.Label_Nome_Cliente.Caption := Cliente_Nome.Text;

     VendasManutencao00.ShowModal;
     VendasManutencao00.Destroy;
end;

procedure TCliente02.Contato1_DDDKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato2_DDDKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente02.Contato3_DDDKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

end.
