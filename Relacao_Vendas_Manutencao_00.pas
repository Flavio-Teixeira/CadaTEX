unit Relacao_Vendas_Manutencao_00;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls, Mask,
  AppEvnts;

type
  TVendasManutencao00 = class(TForm)
    Panel7: TPanel;
    Panel2: TPanel;
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
    Panel8: TPanel;
    Label_Nome_Cliente: TLabel;
    Label_Cliente: TLabel;
    Cliente_Codigo: TEdit;
    Cliente_Codigo_Tipo: TEdit;
    DBGrid_Relacao: TDBGrid;
    ApplicationEvents1: TApplicationEvents;
    Label7: TLabel;
    Opcoes_Procura_Tipo: TComboBox;
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
  VendasManutencao00: TVendasManutencao00;

implementation

uses Conexao_BD, Rotinas_Gerais, Relacao_Vendas_Manutencao_01,
  Relacao_Vendas_Manutencao_02;

{$R *.dfm}

procedure TVendasManutencao00.BT_SairClick(Sender: TObject);
begin
     VendasManutencao00.Close;
end;

procedure TVendasManutencao00.BT_IncluirClick(Sender: TObject);
begin
     VendasManutencao00.Visible := False;

     Application.CreateForm(TVendasManutencao01,VendasManutencao01);

     VendasManutencao01.Cliente_Codigo.Text := Cliente_Codigo.Text;

     VendasManutencao01.ShowModal;
     VendasManutencao01.Destroy;

     VendasManutencao00.Visible := True;
end;

procedure TVendasManutencao00.Dados_ProcuraKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TVendasManutencao00.Opcoes_ProcuraKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TVendasManutencao00.Data_Procura_EntradaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TVendasManutencao00.Data_Procura_SaidaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TVendasManutencao00.Opcoes_Procura_DataKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TVendasManutencao00.FormShow(Sender: TObject);
begin
     Ampulheta();

     ConexaoBD.SQL_Vendas_Manutencao.Close;
     ConexaoBD.SQL_Vendas_Manutencao.SQL.Clear;
     ConexaoBD.SQL_Vendas_Manutencao.SQL.Add('Select * from vendas_manutencao Where venda_manutencao_cliente_codigo = ' + #39 + Trim(Cliente_Codigo.Text) + #39 + ' Order By venda_manutencao_numero Desc');
     ConexaoBD.SQL_Vendas_Manutencao.Open;

     Total_Venda.Caption := IntToStr(ConexaoBD.SQL_Vendas_Manutencao.RecordCount);

     Seta();
end;

procedure TVendasManutencao00.FormCreate(Sender: TObject);
begin
     ShortDateFormat := 'dd/mm/yyyy';
end;

procedure TVendasManutencao00.BT_ProcurarClick(Sender: TObject);
begin
     Ampulheta();

     ConexaoBD.SQL_Vendas_Manutencao.Close;
     ConexaoBD.SQL_Vendas_Manutencao.SQL.Clear;

     If Trim(Dados_Procura.Text) <> '' Then
        Begin

        If Opcoes_Procura.Text = 'Serviço' Then
           Begin
           ConexaoBD.SQL_Vendas_Manutencao.SQL.Add('Select * from vendas_manutencao Where venda_manutencao_cliente_codigo = ' + #39 + Trim(Cliente_Codigo.Text) + #39 + ' and venda_manutencao_servico Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+' Order By venda_manutencao_servico');
           End
        Else If Opcoes_Procura.Text = 'Tipo' Then
           Begin
           ConexaoBD.SQL_Vendas_Manutencao.SQL.Add('Select * from vendas_manutencao Where venda_manutencao_cliente_codigo = ' + #39 + Trim(Cliente_Codigo.Text) + #39 + ' and venda_manutencao_tipo Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+' Order By venda_manutencao_tipo');
           End
        Else If Opcoes_Procura.Text = 'Nro. Equipamento' Then
           Begin
           ConexaoBD.SQL_Vendas_Manutencao.SQL.Add('Select * from vendas_manutencao Where venda_manutencao_cliente_codigo = ' + #39 + Trim(Cliente_Codigo.Text) + #39 + ' and venda_manutencao_nro_equipamento Like ' +#39+'%' + Trim(Dados_Procura.Text) + '%'+#39+' Order By venda_manutencao_nro_equipamento');
           End
        Else If Opcoes_Procura.Text = 'Relação' Then
           Begin
           ConexaoBD.SQL_Vendas_Manutencao.SQL.Add('Select * from vendas_manutencao Where venda_manutencao_cliente_codigo = ' + #39 + Trim(Cliente_Codigo.Text) + #39 + ' and venda_manutencao_relacao_pecas Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+' Order By venda_manutencao_relacao_pecas');
        End;

        End
     Else
        Begin

        If Opcoes_Procura.Text = 'Serviço' Then
           Begin
           ConexaoBD.SQL_Vendas_Manutencao.SQL.Add('Select * from vendas_manutencao Where venda_manutencao_cliente_codigo = ' + #39 + Trim(Cliente_Codigo.Text) + #39 + ' Order By venda_manutencao_servico');
           End
        Else If Opcoes_Procura.Text = 'Tipo' Then
           Begin
           ConexaoBD.SQL_Vendas_Manutencao.SQL.Add('Select * from vendas_manutencao Where venda_manutencao_cliente_codigo = ' + #39 + Trim(Cliente_Codigo.Text) + #39 + ' Order By venda_manutencao_tipo');
           End
        Else If Opcoes_Procura.Text = 'Nro. Equipamento' Then
           Begin
           ConexaoBD.SQL_Vendas_Manutencao.SQL.Add('Select * from vendas_manutencao Where venda_manutencao_cliente_codigo = ' + #39 + Trim(Cliente_Codigo.Text) + #39 + ' Order By venda_manutencao_nro_equipamento');
           End
        Else If Opcoes_Procura.Text = 'Relação' Then
           Begin
           ConexaoBD.SQL_Vendas_Manutencao.SQL.Add('Select * from vendas_manutencao Where venda_manutencao_cliente_codigo = ' + #39 + Trim(Cliente_Codigo.Text) + #39 + ' Order By venda_manutencao_relacao_pecas');
        End;

     End;

     ConexaoBD.SQL_Vendas_Manutencao.Open;

     Total_Venda.Caption := IntToStr(ConexaoBD.SQL_Vendas_Manutencao.RecordCount);

     Seta();
end;

procedure TVendasManutencao00.BT_Procurar_DataClick(Sender: TObject);

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

        ConexaoBD.SQL_Vendas_Manutencao.Close;
        ConexaoBD.SQL_Vendas_Manutencao.SQL.Clear;

        If Opcoes_Procura_Data.Text = 'Entrada' Then
           Begin
             If Opcoes_Procura_Tipo.Text = '- -Todos- -' Then
               Begin
                 Comando_SQL := 'Select * from vendas_manutencao Where venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '# Order By venda_manutencao_entrada Desc';
               End
             Else
               Begin
                 Comando_SQL := 'Select * from vendas_manutencao Where venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_entrada <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '# and venda_manutencao_servico Like ' +#39+'%' + Trim(Opcoes_Procura_Tipo.Text) + '%'+#39+' Order By venda_manutencao_entrada Desc';
               End;
            End
        Else
           Begin

             If Opcoes_Procura_Tipo.Text = '- -Todos- -' Then
               Begin
                 Comando_SQL := 'Select * from vendas_manutencao Where venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '# Order By venda_manutencao_saida Desc';
               End
             Else
               Begin
                 Comando_SQL := 'Select * from vendas_manutencao Where venda_manutencao_entrada >= #' + Inverte_Data_Plus(Trim(Data_Procura_Entrada.Text),'amd','-') + '# And venda_manutencao_saida <= #' + Inverte_Data_Plus(Trim(Data_Procura_Saida.Text),'amd','-') + '# and venda_manutencao_servico Like ' +#39+'%' + Trim(Opcoes_Procura_Tipo.Text) + '%'+#39+' Order By venda_manutencao_saida Desc';
             End;

        End;

        ConexaoBD.SQL_Vendas_Manutencao.SQL.Add(Comando_SQL);
        ConexaoBD.SQL_Vendas_Manutencao.Open;

        Total_Venda.Caption := IntToStr(ConexaoBD.SQL_Vendas_Manutencao.RecordCount);

        Seta();

     End;
end;

procedure TVendasManutencao00.DBGrid_RelacaoCellClick(Column: TColumn);

var
   Nro_Manutencao: String;

begin
     If DBGrid_Relacao.Fields[0].Text <> '' Then
        Begin

        VendasManutencao00.Visible := False;

        Ampulheta();

        Application.CreateForm(TVendasManutencao02,VendasManutencao02);

        //*** Obtem os Dados do Cliente ***

        Nro_Manutencao := DBGrid_Relacao.Fields[8].Text;

        ConexaoBD.SQL_Vendas_Manutencao.Close;
        ConexaoBD.SQL_Vendas_Manutencao.SQL.Clear;
        ConexaoBD.SQL_Vendas_Manutencao.SQL.Add('Select * from vendas_manutencao Where venda_manutencao_numero = ' + Trim(Nro_Manutencao) );
        ConexaoBD.SQL_Vendas_Manutencao.Open;

        //*** Carrega os Dados Obtidos ***

        VendasManutencao02.Venda_Manutencao_Numero.Text := Nro_Manutencao;

        If Trim(ConexaoBD.SQL_Vendas_Manutencaovenda_manutencao_servico.Text) = 'Cotação' Then
           Begin
           VendasManutencao02.Venda_Manutencao_Servico.ItemIndex := 0;
           End
        Else If Trim(ConexaoBD.SQL_Vendas_Manutencaovenda_manutencao_servico.Text) = 'Locação' Then
           Begin
           VendasManutencao02.Venda_Manutencao_Servico.ItemIndex := 1;
           End
        Else If Trim(ConexaoBD.SQL_Vendas_Manutencaovenda_manutencao_servico.Text) = 'Manutenção' Then
           Begin
           VendasManutencao02.Venda_Manutencao_Servico.ItemIndex := 2;
           End
        Else If Trim(ConexaoBD.SQL_Vendas_Manutencaovenda_manutencao_servico.Text) = 'Nota' Then
           Begin
           VendasManutencao02.Venda_Manutencao_Servico.ItemIndex := 3;
           End
        Else If Trim(ConexaoBD.SQL_Vendas_Manutencaovenda_manutencao_servico.Text) = 'Venda' Then
           Begin
           VendasManutencao02.Venda_Manutencao_Servico.ItemIndex := 4;
        End;

        VendasManutencao02.Venda_Manutencao_Tipo.Text            := Trim(ConexaoBD.SQL_Vendas_Manutencaovenda_manutencao_tipo.Text);
        VendasManutencao02.venda_Manutencao_Nro_Equipamento.Text := Trim(ConexaoBD.SQL_Vendas_Manutencaovenda_manutencao_nro_equipamento.Text);
        VendasManutencao02.Venda_Manutencao_Entrada.Text         := Trim(ConexaoBD.SQL_Vendas_Manutencaovenda_manutencao_entrada.Text);
        VendasManutencao02.Venda_Manutencao_Saida.Text           := Trim(ConexaoBD.SQL_Vendas_Manutencaovenda_manutencao_saida.Text);
        VendasManutencao02.Venda_Manutencao_Relacao_Pecas.Text   := Trim(ConexaoBD.SQL_Vendas_Manutencaovenda_manutencao_relacao_pecas.Text);
        VendasManutencao02.Venda_Manutencao_Valor.Text           := Trim(ConexaoBD.SQL_Vendas_Manutencaovenda_manutencao_valor.Text);

        ConexaoBD.SQL_Vendas_Manutencaovenda_manutencao_descricao.SaveToFile('C:\CadaTEX\Swap\Swap.RTF');
        VendasManutencao02.Venda_Manutencao_Descricao.Lines.Clear;
        VendasManutencao02.Venda_Manutencao_Descricao.Lines.LoadFromFile('C:\CadaTEX\Swap\Swap.RTF');

        //*** Fecha SQL ***

        ConexaoBD.SQL_Vendas_Manutencao.Close;

        Seta();

        VendasManutencao02.ShowModal;
        VendasManutencao02.Destroy;

        VendasManutencao00.Visible := True;
     End
end;

procedure TVendasManutencao00.ApplicationEvents1Message(var Msg: tagMSG;
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
