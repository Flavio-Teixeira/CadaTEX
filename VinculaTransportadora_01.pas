unit VinculaTransportadora_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls, AppEvnts;

type
  TVinculaTransportadora01 = class(TForm)
    Panel7: TPanel;
    Panel2: TPanel;
    DBGrid_Transportadoras: TDBGrid;
    Panel3: TPanel;
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
    Label4: TLabel;
    Cliente_Nome: TEdit;
    Formulario_Anterior: TEdit;
    ApplicationEvents1: TApplicationEvents;
    procedure BT_SairClick(Sender: TObject);   
    procedure DBGrid_TransportadorasCellClick(Column: TColumn);
    procedure BT_ProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
  private
    { Private declarations }

  public
    { Public declarations }
    Btn: String;
    Form: String;
  end;

var
  VinculaTransportadora01: TVinculaTransportadora01;


implementation

uses VinculaTransportadora_02, Conexao_BD, Rotinas_Gerais, Cliente_01;

{$R *.dfm}

procedure TVinculaTransportadora01.BT_SairClick(Sender: TObject);
begin
  VinculaTransportadora01.Close;
end;

procedure TVinculaTransportadora01.DBGrid_TransportadorasCellClick(
  Column: TColumn);
var
   Numero_Transportadora, Nome_Transportadora : String;

begin
     If DBGrid_Transportadoras.Fields[0].Text <> '' Then
        Begin

        VinculaTransportadora01.Visible := False;

        Ampulheta();
        Application.CreateForm(TVinculaTransportadora02,VinculaTransportadora02);

        //*** Obtem os Dados da Transportadora ***

        Numero_Transportadora    := DBGrid_Transportadoras.Fields[0].Text;
        Nome_Transportadora      := DBGrid_Transportadoras.Fields[2].Text;

        ConexaoBD.SQL_Transportadoras.Close;
        ConexaoBD.SQL_Transportadoras.SQL.Clear;

        ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_Numero = ' + Trim(Numero_Transportadora) );

        ConexaoBD.SQL_Transportadoras.Open;

        //*** Carrega os Dados Obtidos ***

        VinculaTransportadora02.Transportadora_Selecionada.Caption  := ConexaoBD.SQL_TransportadorasTransportadora_Nome.Text;
        VinculaTransportadora02.Cliente_Selecionado.Caption         := Cliente_Nome.Text;
        VinculaTransportadora02.Transportadora_Numero.Text          := DBGrid_Transportadoras.Fields[0].Text;
        VinculaTransportadora02.Transportadora_CNPJ.Text            := DBGrid_Transportadoras.Fields[1].Text;
        VinculaTransportadora02.Transportadora_Nome.Text            := DBGrid_Transportadoras.Fields[2].Text;
        VinculaTransportadora02.Transportadora_Endereco.Text        := DBGrid_Transportadoras.Fields[6].Text;
        VinculaTransportadora02.Transportadora_Complemento.Text     := DBGrid_Transportadoras.Fields[7].Text;
        VinculaTransportadora02.Transportadora_Bairro.Text          := DBGrid_Transportadoras.Fields[8].Text;
        VinculaTransportadora02.Transportadora_Cidade.Text          := DBGrid_Transportadoras.Fields[9].Text;
        VinculaTransportadora02.Transportadora_Estado.Text          := DBGrid_Transportadoras.Fields[10].Text;
        VinculaTransportadora02.Transportadora_Cep.Text             := DBGrid_Transportadoras.Fields[11].Text;
        VinculaTransportadora02.Transportadora_Pais.Text            := DBGrid_Transportadoras.Fields[12].Text;
        VinculaTransportadora02.Transportadora_Contato.Text         := DBGrid_Transportadoras.Fields[13].Text;
        VinculaTransportadora02.Transportadora_DDD.Text             := DBGrid_Transportadoras.Fields[14].Text;
        VinculaTransportadora02.Transportadora_Fone.Text            := DBGrid_Transportadoras.Fields[15].Text;
        VinculaTransportadora02.Transportadora_Fax.Text             := DBGrid_Transportadoras.Fields[16].Text;
        VinculaTransportadora02.Transportadora_Ramal.Text           := DBGrid_Transportadoras.Fields[17].Text;
        VinculaTransportadora02.Transportadora_Email.Text           := DBGrid_Transportadoras.Fields[18].Text;

        VinculaTransportadora02.Formulario_Anterior.Text            := Formulario_Anterior.Text;

        //*** Fecha SQL ***

        ConexaoBD.SQL_Transportadoras.Close;

        Seta();

        VinculaTransportadora02.ShowModal;
        VinculaTransportadora02.Destroy;

        If Btn = 'Sim' Then
           Begin
           VinculaTransportadora01.Close;
           End
        Else
           Begin
           VinculaTransportadora01.Visible := True;
        End;
     End;
End;

procedure TVinculaTransportadora01.BT_ProcurarClick(Sender: TObject);
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
        Else If Opcoes_Procura.Text = 'Raz�o Social' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_razao_social Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Transportadora_razao_social');
           End
        Else If Opcoes_Procura.Text = 'Inscri��o Municipal' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_inscricao_municipal Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Transportadora_inscricao_municipal');
           End
        Else If Opcoes_Procura.Text = 'Inscri��o Estadual' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_inscricao_estadual Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Transportadora_inscricao_estadual');
           End
        Else If Opcoes_Procura.Text = 'Endere�o' Then
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
        Else If Opcoes_Procura.Text = 'Pa�s' Then
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
        Else If Opcoes_Procura.Text = 'Raz�o Social' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_razao_social');
           End
        Else If Opcoes_Procura.Text = 'Inscri��o Municipal' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_Inscricao_Municipal');
           End
        Else If Opcoes_Procura.Text = 'Inscri��o Estadual' Then
           Begin
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_Inscricao_Estadual');
           End
        Else If Opcoes_Procura.Text = 'Endere�o' Then
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
        Else If Opcoes_Procura.Text = 'Pa�s' Then
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

procedure TVinculaTransportadora01.FormShow(Sender: TObject);
begin
     Ampulheta();

     ConexaoBD.SQL_Transportadoras.Close;
     ConexaoBD.SQL_Transportadoras.SQL.Clear;
     ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Order By Transportadora_Nome');
     ConexaoBD.SQL_Transportadoras.Open;

     Total_Transportadoras.Caption := IntToStr(ConexaoBD.SQL_Transportadoras.RecordCount);

     Seta();
end;

procedure TVinculaTransportadora01.FormCreate(Sender: TObject);
begin
     ShortDateFormat := 'dd/mm/yyyy';
end;

procedure TVinculaTransportadora01.ApplicationEvents1Message(
  var Msg: tagMSG; var Handled: Boolean);

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
