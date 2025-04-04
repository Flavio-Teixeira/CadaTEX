unit Transportadora03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls;

type
  TTransportadora3 = class(TForm)
    Panel3: TPanel;
    BT_Sair: TBitBtn;
    BT_Excluir: TBitBtn;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Transportadora_Nome: TEdit;
    Transportadora_Razao_Social: TEdit;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Transportadora_Endereco: TEdit;
    Transportadora_Complemento: TEdit;
    Transportadora_Bairro: TEdit;
    Transportadora_Cidade: TEdit;
    Transportadora_Estado: TComboBox;
    Transportadora_Cep: TMaskEdit;
    Transportadora_Pais: TComboBox;
    Transportadora_Inscricao_Municipal: TEdit;
    Transportadora_Inscricao_Estadual: TEdit;
    GroupBox4: TGroupBox;
    Label28: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label44: TLabel;
    Label6: TLabel;
    Transportadora_Contato: TEdit;
    Transportadora_Fone: TEdit;
    Transportadora_Fax: TEdit;
    Transportadora_Email: TEdit;
    Transportadora_DDD: TEdit;
    Transportadora_Ramal: TEdit;
    Transportadora_CNPJ: TMaskEdit;
    Transportadora_Numero: TEdit;
    BT_Alterar: TBitBtn;
    procedure BT_SairClick(Sender: TObject);
    procedure BT_ExcluirClick(Sender: TObject);
    procedure BT_AlterarClick(Sender: TObject);
    procedure Transportadora_NumeroKeyPress(Sender: TObject;
      var Key: Char);
    procedure Transportadora_CNPJKeyPress(Sender: TObject; var Key: Char);
    procedure Transportadora_NomeKeyPress(Sender: TObject; var Key: Char);
    procedure Transportadora_Razao_SocialKeyPress(Sender: TObject;
      var Key: Char);
    procedure Transportadora_Inscricao_MunicipalKeyPress(Sender: TObject;
      var Key: Char);
    procedure Transportadora_Inscricao_EstadualKeyPress(Sender: TObject;
      var Key: Char);
    procedure Transportadora_EnderecoKeyPress(Sender: TObject;
      var Key: Char);
    procedure Transportadora_ComplementoKeyPress(Sender: TObject;
      var Key: Char);
    procedure Transportadora_BairroKeyPress(Sender: TObject;
      var Key: Char);
    procedure Transportadora_CidadeKeyPress(Sender: TObject;
      var Key: Char);
    procedure Transportadora_EstadoKeyPress(Sender: TObject;
      var Key: Char);
    procedure Transportadora_CepKeyPress(Sender: TObject; var Key: Char);
    procedure Transportadora_PaisKeyPress(Sender: TObject; var Key: Char);
    procedure Transportadora_ContatoKeyPress(Sender: TObject;
      var Key: Char);
    procedure Transportadora_DDDKeyPress(Sender: TObject; var Key: Char);
    procedure Transportadora_FoneKeyPress(Sender: TObject; var Key: Char);
    procedure Transportadora_FaxKeyPress(Sender: TObject; var Key: Char);
    procedure Transportadora_RamalKeyPress(Sender: TObject; var Key: Char);
    procedure Transportadora_EmailKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function Valida_Dados(): Boolean;

  public
    { Public declarations }
  end;

var
  Transportadora3: TTransportadora3;

implementation

uses Conexao_BD, Rotinas_Gerais;

{$R *.dfm}

function TTransportadora3.Valida_Dados(): Boolean;
var
   Erro, Campo_Retorno: String;
   Resultado: Boolean;

begin
     Resultado     := True;
     Campo_Retorno := '';

     Ampulheta();

     If Trim(Transportadora_Nome.Text) = '' Then
        Begin
        Erro          := 'O Nome da Transportadora não foi informado';
        Campo_Retorno := 'Transportadora_Nome';
     End;

     Seta();

     If Trim(Erro) <> '' Then
        Begin
        MSG_Erro(Erro);
        Resultado := False;
     End;

     If Campo_Retorno <> '' Then
        Begin
        If Campo_Retorno = 'Transportadora_Nome' Then
           Begin
           Transportadora_Nome.SetFocus;
        End
     End;

     Result := Resultado;
end;

//******************
//*** Procedures ***
//******************

procedure TTransportadora3.BT_SairClick(Sender: TObject);
begin
  Transportadora3.Close;
end;

procedure TTransportadora3.BT_ExcluirClick(Sender: TObject);
begin
If Confirma('Confirma a Exclusão?') = 6 Then
        Begin
        Ampulheta();

        ConexaoBD.SQL_Comunitario.SQL.Clear;
        ConexaoBD.SQL_Comunitario.SQL.Add('Delete from Transportadoras Where Transportadora_Numero = ' + Trim(Transportadora_Numero.Text));
        ConexaoBD.SQL_Comunitario.ExecSQL;

        ConexaoBD.SQL_Comunitario.SQL.Clear;
        ConexaoBD.SQL_Comunitario.SQL.Add('Update Clientes Set Cliente_Transportadora_Numero = 0 Where Cliente_Transportadora_Numero = ' + Trim(Transportadora_Numero.Text));
        ConexaoBD.SQL_Comunitario.ExecSQL;

        Seta();

        Transportadora3.Close;
     End;
end;



procedure TTransportadora3.BT_AlterarClick(Sender: TObject);
var
   Comando_SQL: String;
begin

     If Valida_Dados() Then
        Begin

        Ampulheta();

        //*** Efetua a Inserção ***
        Comando_SQL := 'Update Transportadoras Set ';
        Comando_SQL := Comando_SQL + 'Transportadora_CNPJ = '                + #39 + Trim(Transportadora_CNPJ.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_nome = '                + #39 + Trim(Transportadora_Nome.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_razao_social = '        + #39 + Trim(Transportadora_Razao_Social.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_inscricao_municipal = ' + #39 + Trim(Transportadora_Inscricao_Municipal.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_inscricao_estadual = '  + #39 + Trim(Transportadora_Inscricao_Estadual.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_endereco = '            + #39 + Trim(Transportadora_Endereco.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_complemento = '         + #39 + Trim(Transportadora_Complemento.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_bairro = '              + #39 + Trim(Transportadora_Bairro.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_cidade = '              + #39 + Trim(Transportadora_Cidade.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_estado = '              + #39 + Trim(Transportadora_Estado.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_cep = '                 + #39 + Trim(Transportadora_Cep.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_Pais = '                + #39 + Trim(Transportadora_Pais.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_Contato = '             + #39 + Trim(Transportadora_Contato.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_DDD = '                 + #39 + Trim(Transportadora_DDD.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_Fone = '                + #39 + Trim(Transportadora_Fone.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_Fax = '                 + #39 + Trim(Transportadora_Fax.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_Ramal = '               + #39 + Trim(Transportadora_Ramal.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + 'Transportadora_Email = '               + #39 + Trim(Transportadora_Email.Text) + #39;

        Comando_SQL := Comando_SQL + ' Where Transportadora_Numero = ' + Trim(Transportadora_Numero.Text);


        ConexaoBD.SQL_Comunitario.SQL.Clear;
        ConexaoBD.SQL_Comunitario.SQL.Add(Comando_SQL);
        ConexaoBD.SQL_Comunitario.ExecSQL;

        Seta();
        
        MSG_Erro('Alteração Efetuada...');

        Transportadora3.Close;
     End;
End;

procedure TTransportadora3.Transportadora_NumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_CNPJKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_NomeKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_Razao_SocialKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_Inscricao_MunicipalKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_Inscricao_EstadualKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_EnderecoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_ComplementoKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_BairroKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_EstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_CepKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_PaisKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_ContatoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_DDDKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_FoneKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_FaxKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_RamalKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora3.Transportadora_EmailKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

end.
