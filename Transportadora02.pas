unit Transportadora02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls;

type
  TTransportadora2 = class(TForm)
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
    Transportadora_Contato: TEdit;
    Transportadora_Fone: TEdit;
    Transportadora_Fax: TEdit;
    Transportadora_Email: TEdit;
    Transportadora_DDD: TEdit;
    Transportadora_CNPJ: TMaskEdit;
    Panel3: TPanel;
    BT_Incluir: TBitBtn;
    BT_Sair: TBitBtn;
    Transportadora_Ramal: TEdit;
    Label6: TLabel;
    procedure BT_SairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BT_IncluirClick(Sender: TObject);
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
  Transportadora2: TTransportadora2;

implementation

uses Conexao_BD, Rotinas_Gerais;

{$R *.dfm}

// * VALIDA DADOS * //

function TTransportadora2.Valida_Dados(): Boolean;

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


procedure TTransportadora2.BT_SairClick(Sender: TObject);
begin
  Transportadora2.Close;
end;

procedure TTransportadora2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.BT_IncluirClick(Sender: TObject);

var Comando_SQL: String;

begin
      If Valida_Dados() Then
        Begin

        Ampulheta();

        //*** Efetua a Inserção ***

        Comando_SQL := 'Insert Into Transportadoras(';
        Comando_SQL := Comando_SQL + 'Transportadora_CNPJ,';
        Comando_SQL := Comando_SQL + 'Transportadora_Nome,';
        Comando_SQL := Comando_SQL + 'Transportadora_Razao_Social,';
        Comando_SQL := Comando_SQL + 'Transportadora_Inscricao_Municipal,';
        Comando_SQL := Comando_SQL + 'Transportadora_Inscricao_Estadual,';
        Comando_SQL := Comando_SQL + 'Transportadora_Endereco,';
        Comando_SQL := Comando_SQL + 'Transportadora_Complemento,';
        Comando_SQL := Comando_SQL + 'Transportadora_Bairro,';
        Comando_SQL := Comando_SQL + 'Transportadora_Cidade,';
        Comando_SQL := Comando_SQL + 'Transportadora_Estado,';
        Comando_SQL := Comando_SQL + 'Transportadora_Cep,';
        Comando_SQL := Comando_SQL + 'Transportadora_Pais,';
        Comando_SQL := Comando_SQL + 'Transportadora_Contato,';
        Comando_SQL := Comando_SQL + 'Transportadora_DDD,';
        Comando_SQL := Comando_SQL + 'Transportadora_Fone,';
        Comando_SQL := Comando_SQL + 'Transportadora_Fax,';
        Comando_SQL := Comando_SQL + 'Transportadora_Ramal,';
        Comando_SQL := Comando_SQL + 'Transportadora_Email)';
        Comando_SQL := Comando_SQL + ' Values(';


        
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_CNPJ.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_Nome.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_Razao_Social.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_Inscricao_Municipal.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_Inscricao_Estadual.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_Endereco.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_Complemento.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_Bairro.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_Cidade.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_Estado.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_Cep.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_Pais.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_Contato.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_DDD.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_Fone.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_Fax.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_Ramal.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Transportadora_Email.Text) + #39 + ')';
        
        ConexaoBD.SQL_Comunitario.SQL.Clear;
        ConexaoBD.SQL_Comunitario.SQL.Add(Comando_SQL);
        ConexaoBD.SQL_Comunitario.ExecSQL;

        MSG_Erro('Inclusão Efetuada...');

        Seta();

        //*** Atualiza a Tela de Pedidos ***

           If Confirma('Incluir Outra Transportadora?') = 6 Then
              Begin
              Transportadora_CNPJ.Text                    := '';
              Transportadora_Nome.Text                    := '';
              Transportadora_Razao_Social.Text            := '';
              Transportadora_Inscricao_Municipal.Text     := '';
              Transportadora_Inscricao_Estadual.Text      := '';
              Transportadora_Endereco.Text                := '';
              Transportadora_Complemento.Text             := '';
              Transportadora_Bairro.Text                  := '';
              Transportadora_Cidade.Text                  := '';
              Transportadora_Estado.Text                  := '';
              Transportadora_Cep.Text                     := '';
              Transportadora_Pais.Text                    := '';
              Transportadora_Contato.Text                 := '';
              Transportadora_DDD.Text                     := '';
              Transportadora_Fone.Text                    := '';
              Transportadora_Fax.Text                     := '';
              Transportadora_Ramal.Text                   := '';
              Transportadora_Email.Text                   := '';

              Transportadora_CNPJ.SetFocus;
              End
           Else
              Begin
              Transportadora2.Close;
           End;
     End;
end;

procedure TTransportadora2.Transportadora_CNPJKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_NomeKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_Razao_SocialKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_Inscricao_MunicipalKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_Inscricao_EstadualKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_EnderecoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_ComplementoKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_BairroKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_CidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_EstadoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_CepKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_PaisKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_ContatoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_DDDKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_FoneKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_FaxKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_RamalKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora2.Transportadora_EmailKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

end.
