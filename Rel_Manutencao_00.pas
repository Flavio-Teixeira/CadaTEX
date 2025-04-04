unit Rel_Manutencao_00;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls, Mask,
  AppEvnts;

type
  TRelManutencao00 = class(TForm)
    Panel7: TPanel;
    Panel2: TPanel;
    DBGrid_Relacao: TDBGrid;
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
    Total_Venda: TLabel;
    Panel6: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    BT_Procurar_Data: TBitBtn;
    Opcoes_Procura_Data: TComboBox;
    Data_Procura_Entrada: TMaskEdit;
    Data_Procura_Saida: TMaskEdit;
    Label6: TLabel;
    Cliente_Codigo: TEdit;
    Cliente_Codigo_Tipo: TEdit;
    ApplicationEvents1: TApplicationEvents;
    procedure BT_SairClick(Sender: TObject);
    procedure BT_IncluirClick(Sender: TObject);
    procedure Dados_ProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure Opcoes_ProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure Data_Procura_EntradaKeyPress(Sender: TObject; var Key: Char);
    procedure Data_Procura_SaidaKeyPress(Sender: TObject; var Key: Char);
    procedure Opcoes_Procura_DataKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BT_ProcurarClick(Sender: TObject);
    procedure BT_Procurar_DataClick(Sender: TObject);
    procedure DBGrid_RelacaoCellClick(Column: TColumn);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelManutencao00: TRelManutencao00;

implementation

uses Conexao_BD, Rotinas_Gerais, Rel_Manutencao_01,
  Rel_Manutencao_02;

{$R *.dfm}

procedure TRelManutencao00.BT_SairClick(Sender: TObject);
begin
     RelManutencao00.Close;
end;

procedure TRelManutencao00.BT_IncluirClick(Sender: TObject);
begin
     RelManutencao00.Visible := False;

     Application.CreateForm(TRelManutencao01,RelManutencao01);

     //RelManutencao01.Cliente_Codigo.Text := Cliente_Codigo.Text;

     RelManutencao01.ShowModal;
     RelManutencao01.Destroy;

     RelManutencao00.Visible := True;
end;

procedure TRelManutencao00.Dados_ProcuraKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelManutencao00.Opcoes_ProcuraKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelManutencao00.Data_Procura_EntradaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelManutencao00.Data_Procura_SaidaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelManutencao00.Opcoes_Procura_DataKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelManutencao00.FormShow(Sender: TObject);
begin
     Ampulheta();

     ConexaoBD.SQL_Rel_Vendas.Close;
     ConexaoBD.SQL_Rel_Vendas.SQL.Clear;
     ConexaoBD.SQL_Rel_Vendas.SQL.Add('Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manutenção' + #39 + ' Order By venda_manutencao_numero Desc');
     ConexaoBD.SQL_Rel_Vendas.Open;

     Total_Venda.Caption := IntToStr(ConexaoBD.SQL_Rel_Vendas.RecordCount);

     Seta();
end;

procedure TRelManutencao00.FormCreate(Sender: TObject);
begin
     ShortDateFormat := 'dd/mm/yyyy';
end;

procedure TRelManutencao00.BT_ProcurarClick(Sender: TObject);
begin
     Ampulheta();

     ConexaoBD.SQL_Rel_Vendas.Close;
     ConexaoBD.SQL_Rel_Vendas.SQL.Clear;

     If Trim(Dados_Procura.Text) <> '' Then
        Begin

        If Opcoes_Procura.Text = 'Cliente' Then
           Begin
           ConexaoBD.SQL_Rel_Vendas.SQL.Add('Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manutenção' + #39 + ' And Cliente_Nome Like ' +#39+ '%' + Trim(Dados_Procura.Text) + '%' + #39 + ' Order By Cliente_Nome');
           End
        Else If Opcoes_Procura.Text = 'Tipo' Then
           Begin
           ConexaoBD.SQL_Rel_Vendas.SQL.Add('Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manutenção' + #39 + ' And venda_manutencao_tipo Like ' +#39+ '%' + Trim(Dados_Procura.Text) + '%' + #39 + ' Order By venda_manutencao_tipo');
           End
        Else If Opcoes_Procura.Text = 'Nro. Equipamento' Then
           Begin
           ConexaoBD.SQL_Rel_Vendas.SQL.Add('Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manutenção' + #39 + ' And venda_manutencao_nro_equipamento Like ' +#39+ '%' + Trim(Dados_Procura.Text) + '%' + #39 + ' Order By venda_manutencao_nro_equipamento');
           End
        Else If Opcoes_Procura.Text = 'Relação' Then
           Begin
           ConexaoBD.SQL_Rel_Vendas.SQL.Add('Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manutenção' + #39 + ' And venda_manutencao_relacao_pecas Like ' +#39+ '%' + Trim(Dados_Procura.Text) + '%' + #39 + ' Order By venda_manutencao_relacao_pecas');
        End;

        End
     Else
        Begin

        If Opcoes_Procura.Text = 'Cliente' Then
           Begin
           ConexaoBD.SQL_Rel_Vendas.SQL.Add('Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manutenção' + #39 + ' Order By Cliente_Nome');
           End
        Else If Opcoes_Procura.Text = 'Tipo' Then
           Begin
           ConexaoBD.SQL_Rel_Vendas.SQL.Add('Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manutenção' + #39 + ' Order By venda_manutencao_tipo');
           End
        Else If Opcoes_Procura.Text = 'Nro. Equipamento' Then
           Begin
           ConexaoBD.SQL_Rel_Vendas.SQL.Add('Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manutenção' + #39 + ' Order By venda_manutencao_nro_equipamento');
           End
        Else If Opcoes_Procura.Text = 'Relação' Then
           Begin
           ConexaoBD.SQL_Rel_Vendas.SQL.Add('Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manutenção' + #39 + ' Order By venda_manutencao_relacao_pecas');
        End;

     End;

     ConexaoBD.SQL_Rel_Vendas.Open;

     Total_Venda.Caption := IntToStr(ConexaoBD.SQL_Rel_Vendas.RecordCount);

     Seta();
end;

procedure TRelManutencao00.BT_Procurar_DataClick(Sender: TObject);

var
   Comando_SQL: String;

begin
     If Trim(Data_Procura_Entrada.Text) = '/  /' Then
        Begin
        MSG_Erro('A Data Inicial deve ser preenchida...');
        Data_Procura_Entrada.SetFocus;
        End
     Else If Trim(Data_Procura_Saida.Text) = '/  /' Then
        Begin
        MSG_Erro('A Data Final deve ser preenchida...');
        Data_Procura_Saida.SetFocus;
        End
     Else If (StrToDate(Trim(Data_Procura_Saida.Text)) < StrToDate(Trim(Data_Procura_Entrada.Text))) Then
        Begin
        MSG_Erro('A Data Final deve ser Maior do que a Data de Entrada...');
        Data_Procura_Saida.SetFocus;
        End
     Else
        Begin

        Ampulheta();

        ConexaoBD.SQL_Rel_Vendas.Close;
        ConexaoBD.SQL_Rel_Vendas.SQL.Clear;

        If Opcoes_Procura_Data.Text = 'Entrada' Then
           Begin
           Comando_SQL := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manutenção' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) Order By venda_manutencao_entrada Desc';
           End
        Else
           Begin
           Comando_SQL := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manutenção' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) Order By venda_manutencao_saida Desc';
        End;

        ConexaoBD.SQL_Rel_Vendas.SQL.Add(Comando_SQL);
        ConexaoBD.SQL_Rel_Vendas.Open;

        Total_Venda.Caption := IntToStr(ConexaoBD.SQL_Rel_Vendas.RecordCount);

        Seta();

     End;
end;

procedure TRelManutencao00.DBGrid_RelacaoCellClick(Column: TColumn);

var
   Nro_Manutencao: String;

begin
     If DBGrid_Relacao.Fields[0].Text <> '' Then
        Begin

        RelManutencao00.Visible := False;

        Ampulheta();

        Application.CreateForm(TRelManutencao02,RelManutencao02);

        //*** Obtem os Dados do Cliente ***

        Nro_Manutencao := DBGrid_Relacao.Fields[8].Text;

        ConexaoBD.SQL_Rel_Vendas.Close;
        ConexaoBD.SQL_Rel_Vendas.SQL.Clear;
        ConexaoBD.SQL_Rel_Vendas.SQL.Add('Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manutenção' + #39 + ' And venda_manutencao_numero = ' + Trim(Nro_Manutencao) );
        ConexaoBD.SQL_Rel_Vendas.Open;

        //*** Carrega os Dados Obtidos ***

        RelManutencao02.Venda_Manutencao_Numero.Text := Nro_Manutencao;

        RelManutencao02.Cliente_Codigo.Caption := Trim(ConexaoBD.SQL_Rel_Vendasvenda_manutencao_cliente_codigo.Text);
        RelManutencao02.Cliente_Nome.Caption   := Trim(ConexaoBD.SQL_Rel_VendasCliente_Nome.Text);
        RelManutencao02.Cliente_EMail.Text     := Trim(ConexaoBD.SQL_Rel_VendasContato1_Email.Text);

        RelManutencao02.Venda_Manutencao_Tipo.Text            := Trim(ConexaoBD.SQL_Rel_Vendasvenda_manutencao_tipo.Text);
        RelManutencao02.Venda_Manutencao_Entrada.Text         := Trim(ConexaoBD.SQL_Rel_Vendasvenda_manutencao_entrada.Text);
        RelManutencao02.Venda_Manutencao_Saida.Text           := Trim(ConexaoBD.SQL_Rel_Vendasvenda_manutencao_saida.Text);
        RelManutencao02.Venda_Manutencao_Relacao_Pecas.Text   := Trim(ConexaoBD.SQL_Rel_Vendasvenda_manutencao_relacao_pecas.Text);
        RelManutencao02.Venda_Manutencao_Valor.Text           := Trim(ConexaoBD.SQL_Rel_Vendasvenda_manutencao_valor.Text);
        RelManutencao02.Venda_Manutencao_Nro_Equipamento.Text := Trim(ConexaoBD.SQL_Rel_Vendasvenda_manutencao_nro_equipamento.Text);

        ConexaoBD.SQL_Rel_Vendasvenda_manutencao_descricao.SaveToFile('C:\CadaTEX\Swap\Swap.RTF');
        RelManutencao02.Venda_Manutencao_Descricao.Lines.Clear;
        RelManutencao02.Venda_Manutencao_Descricao.Lines.LoadFromFile('C:\CadaTEX\Swap\Swap.RTF');

        //*** Fecha SQL ***

        ConexaoBD.SQL_Rel_Vendas.Close;

        Seta();

        RelManutencao02.ShowModal;
        RelManutencao02.Destroy;

        RelManutencao00.Visible := True;
     End
end;

procedure TRelManutencao00.ApplicationEvents1Message(var Msg: tagMSG;
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
