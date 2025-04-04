unit Rel_Equipamentos_00;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls, Mask,
  AppEvnts;

type
  TRelEquipamentos00 = class(TForm)
    Panel7: TPanel;
    Panel2: TPanel;
    DBGrid_Relacao: TDBGrid;
    Panel3: TPanel;
    BT_Sair: TBitBtn;
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
    Label1: TLabel;
    Dados_Procura: TEdit;
    Label2: TLabel;
    Opcoes_Procura_Servico: TComboBox;
    Imprimir: TBitBtn;
    Label9: TLabel;
    Total_Valor_Venda: TLabel;
    ApplicationEvents1: TApplicationEvents;
    procedure BT_SairClick(Sender: TObject);
    procedure Dados_ProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure Opcoes_ProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure Data_Procura_EntradaKeyPress(Sender: TObject; var Key: Char);
    procedure Data_Procura_SaidaKeyPress(Sender: TObject; var Key: Char);
    procedure Opcoes_Procura_DataKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BT_Procurar_DataClick(Sender: TObject);
    procedure Opcoes_Procura_ServicoKeyPress(Sender: TObject;
      var Key: Char);
    procedure ImprimirClick(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelEquipamentos00: TRelEquipamentos00;

implementation

uses Conexao_BD, Rotinas_Gerais, Rel_Equipamentos_01, DB;

{$R *.dfm}

procedure TRelEquipamentos00.BT_SairClick(Sender: TObject);
begin
     RelEquipamentos00.Close;
end;

procedure TRelEquipamentos00.Dados_ProcuraKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelEquipamentos00.Opcoes_ProcuraKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelEquipamentos00.Data_Procura_EntradaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelEquipamentos00.Data_Procura_SaidaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelEquipamentos00.Opcoes_Procura_DataKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelEquipamentos00.FormShow(Sender: TObject);

var
   Vlr_Total: Real;
   Vlr_Str: String;

begin
     Ampulheta();

     ConexaoBD.SQL_Comunitario.Close;
     ConexaoBD.SQL_Comunitario.SQL.Clear;
     ConexaoBD.SQL_Comunitario.SQL.Add('Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo');
     ConexaoBD.SQL_Comunitario.Open;

     If Not ConexaoBD.SQL_Comunitario.Eof Then
        Begin

        If ConexaoBD.SQL_Comunitario.FieldValues['venda_manutencao_total'] = Null Then
           Begin
           Vlr_Total := 0;
           End
        Else
           Begin
           Vlr_Total := ConexaoBD.SQL_Comunitario.FieldValues['venda_manutencao_total'];
        End;

        Str(Vlr_Total:13:2, Vlr_Str);

        End
     Else
        Begin
        Vlr_Str := '0,00'
     End;

     Total_Valor_Venda.Caption := 'R$ ' + Trim(Vlr_Str);

     ConexaoBD.SQL_Rel_Vendas.Close;
     ConexaoBD.SQL_Rel_Vendas.SQL.Clear;
     ConexaoBD.SQL_Rel_Vendas.SQL.Add('Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo Order By venda_manutencao_numero Desc');
     ConexaoBD.SQL_Rel_Vendas.Open;

     Total_Venda.Caption := IntToStr(ConexaoBD.SQL_Rel_Vendas.RecordCount);

     Seta();
end;

procedure TRelEquipamentos00.FormCreate(Sender: TObject);
begin
     ShortDateFormat := 'dd/mm/yyyy';
end;

procedure TRelEquipamentos00.BT_Procurar_DataClick(Sender: TObject);

var
   Comando_SQL, Comando_SQL_Total: String;
   Vlr_Total: Real;
   Vlr_Str: String;

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

           If Trim(Dados_Procura.Text) = '' Then
              Begin

              If Trim(Opcoes_Procura_Servico.Text) = 'Todos' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) Order By venda_manutencao_entrada Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#)';
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Cota��o' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Cota��o' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) Order By venda_manutencao_entrada Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Cota��o' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#)';
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Loca��o' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Loca��o' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) Order By venda_manutencao_entrada Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Loca��o' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#)';
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Manuten��o' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manuten��o' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) Order By venda_manutencao_entrada Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manuten��o' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#)';
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Nota' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Nota' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) Order By venda_manutencao_entrada Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Nota' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#)';
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Venda' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Venda' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) Order By venda_manutencao_entrada Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Venda' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#)';
              End;

              End
           Else
              Begin

              If Trim(Opcoes_Procura_Servico.Text) = 'Todos' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39 + ' Order By venda_manutencao_entrada Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39;
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Cota��o' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Cota��o' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39 + ' Order By venda_manutencao_entrada Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Cota��o' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39;
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Loca��o' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Loca��o' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39 + ' Order By venda_manutencao_entrada Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Loca��o' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39;
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Manuten��o' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manuten��o' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39 + ' Order By venda_manutencao_entrada Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manuten��o' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39;
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Nota' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Nota' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39 + ' Order By venda_manutencao_entrada Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Nota' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39;
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Venda' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Venda' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39 + ' Order By venda_manutencao_entrada Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Venda' + #39 + ' And (venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39;
              End;

           End;

           End
        Else
           Begin

           If Trim(Dados_Procura.Text) = '' Then
              Begin

              If Trim(Opcoes_Procura_Servico.Text) = 'Todos' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) Order By venda_manutencao_saida Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#)';
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Cota��o' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Cota��o' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) Order By venda_manutencao_saida Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Cota��o' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#)';
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Loca��o' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Loca��o' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) Order By venda_manutencao_saida Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Loca��o' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#)';
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Manuten��o' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manuten��o' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) Order By venda_manutencao_saida Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manuten��o' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#)';
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Nota' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Nota' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) Order By venda_manutencao_saida Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Nota' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#)';
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Venda' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Venda' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) Order By venda_manutencao_saida Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Venda' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#)';
              End;

              End
           Else
              Begin

              If Trim(Opcoes_Procura_Servico.Text) = 'Todos' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39 + ' Order By venda_manutencao_saida Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39;
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Cota��o' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Cota��o' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39 + ' Order By venda_manutencao_saida Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Cota��o' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39;
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Loca��o' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Loca��o' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39 + ' Order By venda_manutencao_saida Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Loca��o' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39;
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Manuten��o' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manuten��o' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39 + ' Order By venda_manutencao_saida Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Manuten��o' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39;
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Nota' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Nota' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39 + ' Order By venda_manutencao_saida Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Nota' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39;
                 End
              Else If Trim(Opcoes_Procura_Servico.Text) = 'Venda' Then
                 Begin
                 Comando_SQL       := 'Select * from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Venda' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39 + ' Order By venda_manutencao_saida Desc';
                 Comando_SQL_Total := 'Select Sum(venda_manutencao_valor) as venda_manutencao_total from Vendas_Manutencao, Clientes Where venda_manutencao_cliente_codigo = cliente_codigo And venda_manutencao_servico = ' + #39 + 'Venda' + #39 + ' And (venda_manutencao_saida >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '#) And venda_manutencao_relacao_pecas Like ' + #39 + '%' + Trim(Dados_Procura.Text) + '%' + #39;
              End;

           End;

        End;

        ConexaoBD.SQL_Rel_Vendas.SQL.Add(Comando_SQL);
        ConexaoBD.SQL_Rel_Vendas.Open;

        Total_Venda.Caption := IntToStr(ConexaoBD.SQL_Rel_Vendas.RecordCount);

        ConexaoBD.SQL_Comunitario.Close;
        ConexaoBD.SQL_Comunitario.SQL.Clear;
        ConexaoBD.SQL_Comunitario.SQL.Add(Comando_SQL_Total);
        ConexaoBD.SQL_Comunitario.Open;

        If Not ConexaoBD.SQL_Comunitario.Eof Then
           Begin

           If ConexaoBD.SQL_Comunitario.FieldValues['venda_manutencao_total'] = Null Then
              Begin
              Vlr_Total := 0;
              End
           Else
              Begin
              Vlr_Total := ConexaoBD.SQL_Comunitario.FieldValues['venda_manutencao_total'];
           End;

           Str(Vlr_Total:13:2, Vlr_Str);
           End
        Else
           Begin
           Vlr_Str := '0,00'
        End;

        Total_Valor_Venda.Caption := 'R$ ' + Trim(Vlr_Str);

        Seta();

     End;
end;

procedure TRelEquipamentos00.Opcoes_Procura_ServicoKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelEquipamentos00.ImprimirClick(Sender: TObject);
begin
     Application.CreateForm(TRelEquipamentos01,RelEquipamentos01);

     RelEquipamentos01.lblPeriodo.Caption       := 'Per�odo de ' + Trim(Data_Procura_Entrada.Text) + ' at� ' + Trim(Data_Procura_Entrada.Text);
     RelEquipamentos01.lblTipoRelatorio.Caption := 'Servi�o: ' + Trim(Opcoes_Procura_Servico.Text) + '        Data: ' + Trim(Opcoes_Procura_Data.Text);

     RelEquipamentos01.QR_Rel_Equipamentos.Preview;
     RelEquipamentos01.Destroy;
end;

procedure TRelEquipamentos00.ApplicationEvents1Message(var Msg: tagMSG;
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
