unit NF_Datatex_Pro_00;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, AppEvnts;

type
  TNF_DatatexPro00 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Procurar: TEdit;
    BT_Procurar: TBitBtn;
    Opcoes: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    DBG_Cliente_NF: TDBGrid;
    BT_Sair: TBitBtn;
    Empresa: TEdit;
    ApplicationEvents1: TApplicationEvents;
    procedure BT_SairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BT_ProcurarClick(Sender: TObject);
    procedure DBG_Cliente_NFCellClick(Column: TColumn);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NF_DatatexPro00: TNF_DatatexPro00;

implementation

uses Rotinas_Gerais, NF_Datatex_Pro_01, Conexao_BD;

{$R *.dfm}

procedure TNF_DatatexPro00.BT_SairClick(Sender: TObject);
begin
     NF_DatatexPro00.Close;
end;

procedure TNF_DatatexPro00.FormShow(Sender: TObject);
begin
     If Empresa.Text = 'NS Equipamentos' Then
        Begin
        NF_DatatexPro00.Caption := 'Nota Fiscal - NS Equipamentos';
     End;

     ConexaoBD.SQL_Clientes.Close;
     ConexaoBD.SQL_Clientes.SQL.Clear;
     ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_Nome, Cliente_Razao_Social');
     ConexaoBD.SQL_Clientes.Open;
end;

procedure TNF_DatatexPro00.BT_ProcurarClick(Sender: TObject);
begin
     If Trim(Procurar.Text) <> '' Then
        Begin
        If Opcoes.Text = 'Raz�o Social' Then
           Begin
           ConexaoBD.SQL_Clientes.Close;
           ConexaoBD.SQL_Clientes.SQL.Clear;
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_Razao_Social Like '+#39+'%'+ Trim(Procurar.Text) +'%'+#39+' Order By Cliente_Razao_Social');
           ConexaoBD.SQL_Clientes.Open;
           End
        Else If Opcoes.Text = 'Nome Fantasia' Then
           Begin
           ConexaoBD.SQL_Clientes.Close;
           ConexaoBD.SQL_Clientes.SQL.Clear;
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_Nome Like '+#39+'%'+ Trim(Procurar.Text) +'%'+#39+' Order By Cliente_Nome');
           ConexaoBD.SQL_Clientes.Open;
           End
        Else If Opcoes.Text = 'CNPJ' Then
           Begin
           ConexaoBD.SQL_Clientes.Close;
           ConexaoBD.SQL_Clientes.SQL.Clear;
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_Codigo Like '+#39+'%'+ Trim(Procurar.Text) +'%'+#39+' Order By Cliente_Codigo');
           ConexaoBD.SQL_Clientes.Open;
        End
        End
     Else
        Begin
        If Opcoes.Text = 'Raz�o Social' Then
           Begin
           ConexaoBD.SQL_Clientes.Close;
           ConexaoBD.SQL_Clientes.SQL.Clear;
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_Razao_Social');
           ConexaoBD.SQL_Clientes.Open;
           End
        Else If Opcoes.Text = 'Nome Fantasia' Then
           Begin
           ConexaoBD.SQL_Clientes.Close;
           ConexaoBD.SQL_Clientes.SQL.Clear;
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_Nome');
           ConexaoBD.SQL_Clientes.Open;
           End
        Else If Opcoes.Text = 'CNPJ' Then
           Begin
           ConexaoBD.SQL_Clientes.Close;
           ConexaoBD.SQL_Clientes.SQL.Clear;
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_Codigo');
           ConexaoBD.SQL_Clientes.Open;
        End
     End;
end;

procedure TNF_DatatexPro00.DBG_Cliente_NFCellClick(Column: TColumn);
begin
     If DBG_Cliente_NF.Fields[0].Text <> '' Then
        Begin
        Application.CreateForm(TNF_DatatexPro01,NF_DatatexPro01);

        NF_DatatexPro01.Empresa.Text := Empresa.Text;

        NF_DatatexPro01.Data_Emissao.Text       := DateToStr(Date());
        NF_DatatexPro01.Cliente.Text            := ConexaoBD.SQL_ClientesCliente_Razao_Social.Text;

        If Trim(ConexaoBD.SQL_ClientesCliente_Complemento.Text) <> '' Then
           Begin
           NF_DatatexPro01.Endereco.Text        := Trim(ConexaoBD.SQL_ClientesCliente_Endereco.Text) + ' - ' + Trim(ConexaoBD.SQL_ClientesCliente_Complemento.Text);
           End
        Else
           Begin
           NF_DatatexPro01.Endereco.Text        := ConexaoBD.SQL_ClientesCliente_Endereco.Text;
        End;

        NF_DatatexPro01.Bairro.Text             := ConexaoBD.SQL_ClientesCliente_Bairro.Text;
        NF_DatatexPro01.Cidade.Text             := ConexaoBD.SQL_ClientesCliente_Cidade.Text;
        NF_DatatexPro01.Estado.Text             := ConexaoBD.SQL_ClientesCliente_Estado.Text;
        NF_DatatexPro01.Cep.Text                := ConexaoBD.SQL_ClientesCliente_CEP.Text;
        NF_DatatexPro01.Cnpj.Text               := ConexaoBD.SQL_ClientesCliente_Codigo.Text;
        NF_DatatexPro01.Inscricao_Estadual.Text := ConexaoBD.SQL_ClientesCliente_Inscricao_Estadual.Text;

        If Trim(ConexaoBD.SQL_ClientesCliente_Complemento_Cobranca.Text) <> '' Then
           Begin
           NF_DatatexPro01.Endereco_Cobranca.Text := Trim(ConexaoBD.SQL_ClientesCliente_Endereco_Cobranca.Text) + ' - ' + Trim(ConexaoBD.SQL_ClientesCliente_Complemento_Cobranca.Text) + ' - ' + Trim(ConexaoBD.SQL_ClientesCliente_Bairro_Cobranca.Text) + ' - ' + Trim(ConexaoBD.SQL_ClientesCliente_Cidade_Cobranca.Text) + ' - ' + Trim(ConexaoBD.SQL_ClientesCliente_Estado_Cobranca.Text) + ' - CEP: ' + Trim(ConexaoBD.SQL_ClientesCliente_Cep_Cobranca.Text);
           End
        Else
           Begin
           NF_DatatexPro01.Endereco_Cobranca.Text := Trim(ConexaoBD.SQL_ClientesCliente_Endereco_Cobranca.Text) + ' - ' + Trim(ConexaoBD.SQL_ClientesCliente_Bairro_Cobranca.Text) + ' - ' + Trim(ConexaoBD.SQL_ClientesCliente_Cidade_Cobranca.Text) + ' - ' + Trim(ConexaoBD.SQL_ClientesCliente_Estado_Cobranca.Text) + ' - CEP: ' + Trim(ConexaoBD.SQL_ClientesCliente_Cep_Cobranca.Text);
        End;

        NF_DatatexPro01.Transportadora_Nome.Text := '';

        If ( Trim(ConexaoBD.SQL_ClientesCliente_Transportadora_Numero.Text) <> '' ) Then
           Begin
           ConexaoBD.SQL_Transportadoras.Close;
           ConexaoBD.SQL_Transportadoras.SQL.Clear;
           ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_Numero = ' + Trim(ConexaoBD.SQL_ClientesCliente_Transportadora_Numero.Text) );
           ConexaoBD.SQL_Transportadoras.Open;

           NF_DatatexPro01.Transportadora_Nome.Text := Trim(ConexaoBD.SQL_TransportadorasTransportadora_Razao_Social.Text);
        End;

        NF_DatatexPro01.ShowModal;
        NF_DatatexPro01.Destroy;
     End;
end;

procedure TNF_DatatexPro00.ApplicationEvents1Message(var Msg: tagMSG;
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
