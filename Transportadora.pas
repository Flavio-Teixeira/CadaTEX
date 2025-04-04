unit Transportadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImpMat, StdCtrls, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls,
  AppEvnts;

type
  TTransportadora01 = class(TForm)
    Panel7: TPanel;
    Panel2: TPanel;
    DBGrid_Transportadoras: TDBGrid;
    Panel3: TPanel;
    BT_Incluir: TBitBtn;
    BT_Sair: TBitBtn;
    DBG_Cliente_Observacao: TDBMemo;
    Posicao_1: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Dados_Procura: TEdit;
    BT_Procurar: TBitBtn;
    Opcoes_Procura: TComboBox;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    Total_Transportadoras: TLabel;
    ApplicationEvents1: TApplicationEvents;
    procedure BT_SairClick(Sender: TObject);
    procedure BT_ProcurarClick(Sender: TObject);
    procedure BT_IncluirClick(Sender: TObject);
    procedure DBGrid_TransportadorasCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Dados_ProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Transportadora01: TTransportadora01;

implementation

uses Rotinas_Gerais, Conexao_BD, Transportadora02, Transportadora03;  

{$R *.dfm}

procedure TTransportadora01.BT_SairClick(Sender: TObject);
begin
  Transportadora01.Close;
end;

procedure TTransportadora01.BT_ProcurarClick(Sender: TObject);
begin
     Ampulheta();

     ConexaoBD.SQL_Transportadoras.SQL.Clear;

     If Trim(Dados_Procura.Text) <> '' Then
        Begin

        If Opcoes_Procura.Text = 'Numero' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_Numero Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+' Order By Transportadora_Numero');
           End
        Else If Opcoes_Procura.Text = 'CNPJ' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_CNPJ Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Transportadora_CNPJ');
           End
        Else If Opcoes_Procura.Text = 'Nome' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_Nome = ' +#39+ Trim(Dados_Procura.Text) +#39+ ' Order By Transportadora_Nome');
           End
        Else If Opcoes_Procura.Text = 'Razão Social' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_razao_social Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Transportadora_razao_social');
           End
        Else If Opcoes_Procura.Text = 'Inscrição Municipal' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_inscricao_municipal Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Transportadora_inscricao_municipal');
           End
        Else If Opcoes_Procura.Text = 'Inscrição Estadual' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_inscricao_estadual Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Transportadora_inscricao_estadual');
           End
        Else If Opcoes_Procura.Text = 'Endereço' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_endereco Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Transportadora_endereco');
           End
        Else If Opcoes_Procura.Text = 'Complemento' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_Complemento = ' +#39+ Trim(Dados_Procura.Text) +#39+ ' Order By Transportadora_Complemento');
           End
        Else If Opcoes_Procura.Text = 'Bairro' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_bairro Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Transportadora_bairro');
           End
        Else If Opcoes_Procura.Text = 'Cidade' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_cidade Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Transportadora_cidade');
           End
        Else If Opcoes_Procura.Text = 'Estado' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_estado = ' +#39+ Trim(Dados_Procura.Text) +#39+ ' Order By Transportadora_estado');
           End
        Else If Opcoes_Procura.Text = 'CEP' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_cep Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Transportadora_cep');
           End
        Else If Opcoes_Procura.Text = 'País' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_Pais Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Transportadora_Pais');
           End
        Else If Opcoes_Procura.Text = 'Contato' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_contato Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Transportadora_contato');
           End
        Else If Opcoes_Procura.Text = 'DDD' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_ddd = ' +#39+ Trim(Dados_Procura.Text) +#39+ ' Order By Transportadora_ddd');
           End
        Else If Opcoes_Procura.Text = 'Fone' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_Fone = ' +#39+ Trim(Dados_Procura.Text) +#39+ ' Order By Transportadora_Fone');
           End
        Else If Opcoes_Procura.Text = 'Fax' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_Fax = ' +#39+ Trim(Dados_Procura.Text) +#39+ ' Order By Transportadora_Fax');
           End
        Else If Opcoes_Procura.Text = 'Ramal' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_Ramal = ' +#39+ Trim(Dados_Procura.Text) +#39+ ' Order By Transportadora_Ramal');
           End
        Else If Opcoes_Procura.Text = 'Email' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_Email = ' +#39+ Trim(Dados_Procura.Text) +#39+ ' Order By Transportadora_Email');
        End;

        End
     Else
        Begin

        If Opcoes_Procura.Text = 'Numero' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_Numero');
           End
        Else If Opcoes_Procura.Text = 'CNPJ' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_CNPJ');
           End
        Else If Opcoes_Procura.Text = 'Nome' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_Nome');
           End
        Else If Opcoes_Procura.Text = 'Razão Social' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_razao_social');
           End
        Else If Opcoes_Procura.Text = 'Inscrição Municipal' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_Inscricao_Municipal');
           End
        Else If Opcoes_Procura.Text = 'Inscrição Estadual' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_Inscricao_Estadual');
           End
        Else If Opcoes_Procura.Text = 'Endereço' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_endereco');
           End
        Else If Opcoes_Procura.Text = 'Complemento' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_Complemento');
           End
        Else If Opcoes_Procura.Text = 'Bairro' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_bairro');
           End
        Else If Opcoes_Procura.Text = 'Cidade' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_cidade');
           End
        Else If Opcoes_Procura.Text = 'Estado' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_estado');
           End
        Else If Opcoes_Procura.Text = 'CEP' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_cep');
           End
        Else If Opcoes_Procura.Text = 'País' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_Pais');
           End
        Else If Opcoes_Procura.Text = 'Contato' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_contato');
           End
        Else If Opcoes_Procura.Text = 'DDD' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_ddd');
           End
        Else If Opcoes_Procura.Text = 'Fone' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_Fone');
           End
        Else If Opcoes_Procura.Text = 'Fax' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_Fax');
           End
        Else If Opcoes_Procura.Text = 'Ramal' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_Ramal');
           End
        Else If Opcoes_Procura.Text = 'E-mail' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_Email');
           End
        End;

     ConexaoBD.SQL_Transportadoras.Open;

     Total_Transportadoras.Caption := IntToStr(ConexaoBD.SQL_Transportadoras.RecordCount);

     Seta();
end;


procedure TTransportadora01.BT_IncluirClick(Sender: TObject);
begin
    Transportadora01.Visible := False;

    Application.CreateForm(TTransportadora2,Transportadora2);
    Transportadora2.ShowModal;
    Transportadora2.Destroy;

    Transportadora01.Visible := True;
end;

//*** ABRE O FORMULÁRIO DE EXCLUSÃO / ALTERAÇÃO ***

procedure TTransportadora01.DBGrid_TransportadorasCellClick(
  Column: TColumn);
var
   Numero_Transportadora: String;

begin
  If DBGrid_Transportadoras.Fields[0].Text <> '' Then
        Begin

           Transportadora01.Visible := False;

           Ampulheta();
           Application.CreateForm(TTransportadora3,Transportadora3);

           //*** Obtem os Dados do Transportadora ***

           Numero_Transportadora      := DBGrid_Transportadoras.Fields[0].Text;

           ConexaoBD.SQL_Transportadoras.Close;
           ConexaoBD.SQL_Transportadoras.SQL.Clear;


           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_Numero = ' + Trim(Numero_Transportadora) );


           ConexaoBD.SQL_Transportadoras.Open;

           //*** Carrega os Dados Obtidos ***

           Transportadora3.Transportadora_Numero.Text               := ConexaoBD.SQL_TransportadorasTransportadora_Numero.Text;
           Transportadora3.Transportadora_CNPJ.Text                 := ConexaoBD.SQL_TransportadorasTransportadora_CNPJ.Text;
           Transportadora3.Transportadora_Nome.Text                 := ConexaoBD.SQL_TransportadorasTransportadora_nome.Text;
           Transportadora3.Transportadora_Razao_Social.Text         := ConexaoBD.SQL_TransportadorasTransportadora_razao_social.Text;
           Transportadora3.Transportadora_Inscricao_Municipal.Text  := ConexaoBD.SQL_TransportadorasTransportadora_inscricao_municipal.Text;
           Transportadora3.Transportadora_Inscricao_Estadual.Text   := ConexaoBD.SQL_TransportadorasTransportadora_inscricao_estadual.Text;
           Transportadora3.Transportadora_Endereco.Text             := ConexaoBD.SQL_TransportadorasTransportadora_endereco.Text;
           Transportadora3.Transportadora_Complemento.Text          := ConexaoBD.SQL_TransportadorasTransportadora_complemento.Text;
           Transportadora3.Transportadora_Bairro.Text               := ConexaoBD.SQL_TransportadorasTransportadora_bairro.Text;
           Transportadora3.Transportadora_Cidade.Text               := ConexaoBD.SQL_TransportadorasTransportadora_cidade.Text;
           Transportadora3.Transportadora_Estado.ItemIndex          := Obtem_Nro_Estado(ConexaoBD.SQL_TransportadorasTransportadora_estado.Text);
           Transportadora3.Transportadora_Cep.Text                  := ConexaoBD.SQL_TransportadorasTransportadora_cep.Text;
           Transportadora3.Transportadora_Pais.ItemIndex            := Obtem_Nro_Pais(ConexaoBD.SQL_TransportadorasTransportadora_pais.Text);
           Transportadora3.Transportadora_Contato.Text              := ConexaoBD.SQL_TransportadorasTransportadora_Contato.Text;
           Transportadora3.Transportadora_DDD.Text                  := ConexaoBD.SQL_TransportadorasTransportadora_DDD.Text;
           Transportadora3.Transportadora_Fone.Text                 := ConexaoBD.SQL_TransportadorasTransportadora_Fone.Text;
           Transportadora3.Transportadora_Fax.Text                  := ConexaoBD.SQL_TransportadorasTransportadora_Fax.Text;
           Transportadora3.Transportadora_Ramal.Text                := ConexaoBD.SQL_TransportadorasTransportadora_Ramal.Text;
           Transportadora3.Transportadora_Email.Text                := ConexaoBD.SQL_TransportadorasTransportadora_Email.Text;


           //*** Fecha SQL ***

           ConexaoBD.SQL_Transportadoras.Close;

           Seta();

           Transportadora3.ShowModal;
           Transportadora3.Destroy;

           Transportadora01.Visible := True;

           End

end;

procedure TTransportadora01.FormCreate(Sender: TObject);
begin
     ShortDateFormat := 'dd/mm/yyyy';
end;

procedure TTransportadora01.FormShow(Sender: TObject);
begin
     Ampulheta();

     ConexaoBD.SQL_Transportadoras.Close;
     ConexaoBD.SQL_Transportadoras.SQL.Clear;
     ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_Nome');
     ConexaoBD.SQL_Transportadoras.Open;

     Total_Transportadoras.Caption := IntToStr(ConexaoBD.SQL_Transportadoras.RecordCount);

     Seta();
end;

procedure TTransportadora01.Dados_ProcuraKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TTransportadora01.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);

var
  i: SmallInt;

begin
     //*********************************
     //*** Corrige o Scroll do Mouse ***
     //*********************************

     If Msg.message = WM_MOUSEWHEEL then
        Begin
        Msg.message := WM_KEYDOWN;
        Msg.lParam := 0;
        i := HiWord(Msg.wParam) ;
        If i > 0 then
           Begin
           Msg.wParam := VK_UP
           End
        Else
           Begin
           Msg.wParam := VK_DOWN;
        End;
        Handled := False;
     End;
end;

end.
