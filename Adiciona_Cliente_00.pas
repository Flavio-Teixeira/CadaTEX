unit Adiciona_Cliente_00;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls, AppEvnts;

type
  TAdicionaCliente00 = class(TForm)
    Panel7: TPanel;
    Panel2: TPanel;
    DBGrid_Clientes: TDBGrid;
    Panel3: TPanel;
    BT_Sair: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Dados_Procura: TEdit;
    BT_Procurar: TBitBtn;
    Opcoes_Procura: TComboBox;
    Panel4: TPanel;
    Panel5: TPanel;
    Label3: TLabel;
    Total_Clientes: TLabel;
    Cliente_Codigo: TEdit;
    Cliente_Nome: TEdit;
    Formulario_Anterior: TEdit;
    ApplicationEvents1: TApplicationEvents;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BT_SairClick(Sender: TObject);
    procedure BT_ProcurarClick(Sender: TObject);
    procedure DBGrid_ClientesCellClick(Column: TColumn);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdicionaCliente00: TAdicionaCliente00;

implementation

uses Conexao_BD, Rotinas_Gerais, Rel_Locacao_01, Rel_Locacao_02,
  Rel_Cotacao_01, Rel_Manutencao_01, Rel_Compras_01;

{$R *.dfm}

procedure TAdicionaCliente00.FormCreate(Sender: TObject);
begin
     ShortDateFormat := 'dd/mm/yyyy';
end;

procedure TAdicionaCliente00.FormShow(Sender: TObject);
begin
     Ampulheta();

     ConexaoBD.SQL_Clientes.SQL.Clear;
     ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_Nome');
     ConexaoBD.SQL_Clientes.Open;

     Total_Clientes.Caption := IntToStr(ConexaoBD.SQL_Clientes.RecordCount);

     Seta();
end;

procedure TAdicionaCliente00.BT_SairClick(Sender: TObject);
begin
     AdicionaCliente00.Close;
end;

procedure TAdicionaCliente00.BT_ProcurarClick(Sender: TObject);
begin
     Ampulheta();

     ConexaoBD.SQL_Clientes.SQL.Clear;

     If Trim(Dados_Procura.Text) <> '' Then
        Begin

        If Opcoes_Procura.Text = 'Nome' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_nome Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+' Order By Cliente_nome');
           End
        Else If Opcoes_Procura.Text = 'C�digo' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_codigo Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Cliente_codigo');
           End
        Else If Opcoes_Procura.Text = 'Tipo do C�digo' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_codigo_tipo = ' +#39+ Trim(Dados_Procura.Text) +#39+ ' Order By Cliente_codigo_tipo');
           End
        Else If Opcoes_Procura.Text = 'Raz�o Social' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_razao_social Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Cliente_razao_social');
           End
        Else If Opcoes_Procura.Text = 'Inscri��o Municipal' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_inscricao_municipal Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Cliente_inscricao_municipal');
           End
        Else If Opcoes_Procura.Text = 'Inscri��o Estadual' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_inscricao_estadual Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Cliente_inscricao_estadual');
           End
        Else If Opcoes_Procura.Text = 'Endere�o' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_endereco Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Cliente_endereco');
           End
        Else If Opcoes_Procura.Text = 'Bairro' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_bairro Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Cliente_bairro');
           End
        Else If Opcoes_Procura.Text = 'Cidade' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_cidade Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Cliente_cidade');
           End
        Else If Opcoes_Procura.Text = 'Estado' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_estado = ' +#39+ Trim(Dados_Procura.Text) +#39+ ' Order By Cliente_estado');
           End                                      
        Else If Opcoes_Procura.Text = 'CEP' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_cep Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Cliente_cep');
           End
        Else If Opcoes_Procura.Text = 'Fone' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_fone Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Cliente_fone');
           End
        Else If Opcoes_Procura.Text = 'Fax' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_fax Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Cliente_fax');
           End
        Else If Opcoes_Procura.Text = 'Endere�o (Cobran�a)' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_endereco_cobranca Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Cliente_endereco_cobranca');
           End
        Else If Opcoes_Procura.Text = 'Bairro (Cobran�a)' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_bairro_cobranca Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Cliente_bairro_cobranca');
           End
        Else If Opcoes_Procura.Text = 'Cidade (Cobran�a)' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_cidade_cobranca Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Cliente_cidade_cobranca');
           End
        Else If Opcoes_Procura.Text = 'Estado (Cobran�a)' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_estado_cobranca = ' +#39+ Trim(Dados_Procura.Text) +#39+ ' Order By Cliente_estado_cobranca');
           End
        Else If Opcoes_Procura.Text = 'CEP (Cobran�a)' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_cep_cobranca Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Cliente_cep_cobranca');
           End
        Else If Opcoes_Procura.Text = 'Fone (Cobran�a)' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_fone_cobranca Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Cliente_fone_cobranca');
           End
        Else If Opcoes_Procura.Text = 'Fax (Cobran�a)' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_fax_cobranca Like ' +#39+'%'+ Trim(Dados_Procura.Text) +'%'+#39+ ' Order By Cliente_fax_cobranca');
           End
        Else If Opcoes_Procura.Text = 'Valor do Cr�dito' Then
           Begin
              If StrToFloat(Dados_Procura.Text)>0 Then
                Begin
                  Dados_Procura.Text:= '0';
              End;
              ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_valor_credito = ' + Trim(Dados_Procura.Text) + ' Order By Cliente_valor_credito');
           End
        Else If Opcoes_Procura.Text = 'Status do Cr�dito' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_status_credito = ' +#39+ Trim(Dados_Procura.Text) +#39+ ' Order By Cliente_status_credito');
           End
        Else If Opcoes_Procura.Text = 'Tipo da Pessoa' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_tipo_pessoa = ' +#39+ Trim(Dados_Procura.Text) +#39+ ' Order By Cliente_tipo_pessoa');
           End
        Else If Opcoes_Procura.Text = 'Data da Visita' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_data_visita = #' + Inverte_Data_Plus(Trim(Dados_Procura.Text),'amd','-') + '# Order By Cliente_data_visita');
           End
        Else If Opcoes_Procura.Text = 'Data de Inclus�o' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_data_alteracao = #' + Inverte_Data_Plus(Trim(Dados_Procura.Text),'amd','-') + '# Order By Cliente_data_inclusao');
           End
        Else If Opcoes_Procura.Text = 'Data de Altera��o' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_data_alteracao = #' + Inverte_Data_Plus(Trim(Dados_Procura.Text),'amd','-') + '# Order By Cliente_data_alteracao');
           End
        Else If Opcoes_Procura.Text = 'Data da �ltima Compra' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_data_ultima_compra = #' + Inverte_Data_Plus(Trim(Dados_Procura.Text),'amd','-') + '# Order By Cliente_data_ultima_compra');
           End
        Else If Opcoes_Procura.Text = '�ltimo Valor' Then
           Begin
              If StrToFloat(Dados_Procura.Text)>0 Then
                Begin
                  Dados_Procura.Text:= '0';
              End;
              ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_ultimo_valor = ' + Trim(Dados_Procura.Text) + ' Order By Cliente_ultimo_valor');
           End
        Else If Opcoes_Procura.Text = 'Pa�s' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_pais = ' +#39+ Trim(Dados_Procura.Text) +#39+' Order By Cliente_pais');
           End
        Else If Opcoes_Procura.Text = 'Pa�s (Cobran�a)' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_pais_cobranca = ' +#39+ Trim(Dados_Procura.Text) +#39+' Order By Cliente_pais_cobranca');
           End
        Else If Opcoes_Procura.Text = 'Op��o de Cobran�a' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_opcao_cobranca = ' +#39+ Trim(Dados_Procura.Text) +#39+' Order By Cliente_opcao_cobranca');
           End
        Else If Opcoes_Procura.Text = 'E-Mail' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_email = ' +#39+ Trim(Dados_Procura.Text) +#39+' Order By Cliente_email');
        End;

        End
     Else
        Begin

        If Opcoes_Procura.Text = 'Nome' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_nome');
           End
        Else If Opcoes_Procura.Text = 'C�digo' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_codigo');
           End
        Else If Opcoes_Procura.Text = 'Tipo do C�digo' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_codigo_tipo');
           End
        Else If Opcoes_Procura.Text = 'Raz�o Social' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_razao_social');
           End
        Else If Opcoes_Procura.Text = 'Inscri��o Municipal' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_Inscricao_Municipal');
           End
        Else If Opcoes_Procura.Text = 'Inscri��o Estadual' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_Inscricao_Estadual');
           End
        Else If Opcoes_Procura.Text = 'Endere�o' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_endereco');
           End
        Else If Opcoes_Procura.Text = 'Bairro' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_bairro');
           End
        Else If Opcoes_Procura.Text = 'Cidade' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_cidade');
           End
        Else If Opcoes_Procura.Text = 'Estado' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_estado');
           End
        Else If Opcoes_Procura.Text = 'CEP' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_cep');
           End
        Else If Opcoes_Procura.Text = 'Endere�o (Cobran�a)' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_endereco_cobranca');
           End
        Else If Opcoes_Procura.Text = 'Bairro (Cobran�a)' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_bairro_cobranca');
           End
        Else If Opcoes_Procura.Text = 'Cidade (Cobran�a)' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_cidade_cobranca');
           End
        Else If Opcoes_Procura.Text = 'Estado (Cobran�a)' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_estado_cobranca');
           End
        Else If Opcoes_Procura.Text = 'CEP (Cobran�a)' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_cep_cobranca');
           End
        Else If Opcoes_Procura.Text = 'Contato' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_contato');
           End
        Else If Opcoes_Procura.Text = 'DDD' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_ddd');
           End
        Else If Opcoes_Procura.Text = 'Ramal' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_fone_ramal');
           End
        Else If Opcoes_Procura.Text = 'Fone Comercial' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_fone_comercial');
           End
        Else If Opcoes_Procura.Text = 'Fone Residencial' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_fone_residencial');
           End
        Else If Opcoes_Procura.Text = 'Fone Celular' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_fone_celular');
           End
        Else If Opcoes_Procura.Text = 'Fone Fax' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_fone_celular');
           End
        Else If Opcoes_Procura.Text = 'Valor do Cr�dito' Then
           Begin
              If StrToFloat(Dados_Procura.Text)>0 Then
                Begin
                  Dados_Procura.Text:= '0';
              End;
              ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_valor_credito');
           End
        Else If Opcoes_Procura.Text = 'Status do Cr�dito' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_status_credito');
           End
        Else If Opcoes_Procura.Text = 'Tipo da Pessoa' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_tipo_pessoa');
           End
        Else If Opcoes_Procura.Text = 'Data da Visita' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_data_visita');
           End
        Else If Opcoes_Procura.Text = 'Data de Inclus�o' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_data_inclusao');
           End
        Else If Opcoes_Procura.Text = 'Data de Altera��o' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_data_alteracao');
           End
        Else If Opcoes_Procura.Text = 'Data da �ltima Compra' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_data_ultima_compra');
           End
        Else If Opcoes_Procura.Text = '�ltimo Valor' Then
           Begin
              If StrToInt(Dados_Procura.Text)>0 Then
                Begin
                  Dados_Procura.Text:= '0';
              End;
              ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_ultimo_valor');
           End
        Else If Opcoes_Procura.Text = 'Pa�s' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_pais');
           End
        Else If Opcoes_Procura.Text = 'Pa�s (Cobran�a)' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_pais_cobranca');
           End
        Else If Opcoes_Procura.Text = 'Op��o de Cobran�a' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_opcao_cobranca');
           End
        Else If Opcoes_Procura.Text = 'E-Mail' Then
           Begin
           ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_email');
        End;

     End;

     ConexaoBD.SQL_Clientes.Open;

     Total_Clientes.Caption := IntToStr(ConexaoBD.SQL_Clientes.RecordCount);

     Seta();
end;

procedure TAdicionaCliente00.DBGrid_ClientesCellClick(Column: TColumn);

var
   Arquivo_Leitura, Arquivo_Gravacao: TextFile;
   MSG_Cliente, Linha: String;
   TXT_Data, TXT_Nome, TXT_Fone, TXT_Contato, Data_STR, TXT_Faturamento, TXT_Bairro, TXT_Cidade, TXT_UF, TXT_CEP, TXT_Codigo, TXT_IE, TXT_Cobranca, TXT_Depto: String;

begin
     If DBGrid_Clientes.Fields[0].Text <> '' Then
        Begin

        If Trim(Formulario_Anterior.Text) = 'RelLocacao01' Then
           Begin
           MSG_Cliente := 'Adicionar o Cliente: ' + UpperCase(Trim(DBGrid_Clientes.Fields[2].Text)) + ' na Loca��o?';
           End
        Else If Trim(Formulario_Anterior.Text) = 'RelCotacao01' Then
           Begin
           MSG_Cliente := 'Adicionar o Cliente: ' + UpperCase(Trim(DBGrid_Clientes.Fields[2].Text)) + ' na Cota��o?';
           End
        Else If Trim(Formulario_Anterior.Text) = 'RelManutencao01' Then
           Begin
           MSG_Cliente := 'Adicionar o Cliente: ' + UpperCase(Trim(DBGrid_Clientes.Fields[2].Text)) + ' na Manuten��o?';
           End
        Else If Trim(Formulario_Anterior.Text) = 'RelCompras01' Then
           Begin
           MSG_Cliente := 'Adicionar o Cliente: ' + UpperCase(Trim(DBGrid_Clientes.Fields[2].Text)) + ' na Compras?';
           End
        Else
           Begin
           MSG_Cliente := '';
        End;

        If Confirma(MSG_Cliente) = 6 Then
           Begin

           If Trim(Formulario_Anterior.Text) = 'RelLocacao01' Then
              Begin

              //*** Adiciona o Cliente e Traz a Locac��o ***

              RelLocacao01.Cliente_Codigo.Caption := DBGrid_Clientes.Fields[0].Text;
              RelLocacao01.Cliente_Nome.Caption   := DBGrid_Clientes.Fields[2].Text;
              RelLocacao01.Cliente_EMail.Text     := DBGrid_Clientes.Fields[38].Text;

              //*** Prepara o Arquivo de Locaca��o ***

              Data_STR        := DateToStr(Date());
              TXT_Data        := MostraData_Extenso();
              TXT_Nome        := DBGrid_Clientes.Fields[2].Text;
              TXT_Fone        := DBGrid_Clientes.Fields[14].Text;
              TXT_Contato     := DBGrid_Clientes.Fields[34].Text;

              TXT_Faturamento := DBGrid_Clientes.Fields[7].Text;
              TXT_Bairro      := DBGrid_Clientes.Fields[9].Text;
              TXT_Cidade      := DBGrid_Clientes.Fields[10].Text;
              TXT_UF          := DBGrid_Clientes.Fields[11].Text;
              TXT_CEP         := DBGrid_Clientes.Fields[12].Text;
              TXT_Codigo      := DBGrid_Clientes.Fields[0].Text;
              TXT_IE          := DBGrid_Clientes.Fields[5].Text;
              TXT_Cobranca    := Trim(DBGrid_Clientes.Fields[17].Text) + ' ' + Trim(DBGrid_Clientes.Fields[18].Text);
              TXT_Depto       := DBGrid_Clientes.Fields[35].Text;

              If FileExists('C:\CadaTEX\Swap\Locacao.RTF') Then
                 Begin
                 DeleteFile('C:\CadaTEX\Swap\Locacao.RTF');
              End;

              AssignFile( Arquivo_Gravacao, 'C:\CadaTEX\Swap\Locacao.RTF');
              ReWrite( Arquivo_Gravacao );

              AssignFile( Arquivo_Leitura, 'C:\CadaTEX\Modelos\Locacao.RTF');
              Reset( Arquivo_Leitura );

              While Not Eof( Arquivo_Leitura ) Do
                    Begin
                    ReadLn ( Arquivo_Leitura, Linha );

                    Linha := FindReplace('<DATA>', TXT_Data, Linha);
                    Linha := FindReplace('<CLIENTE_NOME>', TXT_Nome, Linha);
                    Linha := FindReplace('<CLIENTE_FONE>', TXT_Fone, Linha);
                    Linha := FindReplace('<CLIENTE_CONTATO>', TXT_Contato, Linha);

                    Linha := FindReplace('<CLIENTE_FATURAMENTO>', TXT_Faturamento, Linha);
                    Linha := FindReplace('<CLIENTE_BAIRRO>', TXT_Bairro, Linha);
                    Linha := FindReplace('<CLIENTE_CIDADE>', TXT_Cidade, Linha);
                    Linha := FindReplace('<CLIENTE_UF>', TXT_UF, Linha);
                    Linha := FindReplace('<CLIENTE_CEP>', TXT_CEP, Linha);
                    Linha := FindReplace('<CLIENTE_CODIGO>', TXT_Codigo, Linha);
                    Linha := FindReplace('<CLIENTE_IE>', TXT_IE, Linha);
                    Linha := FindReplace('<CLIENTE_COBRANCA>', TXT_Cobranca, Linha);
                    Linha := FindReplace('<CLIENTE_DEPTO>', TXT_Depto, Linha);

                    WriteLn( Arquivo_Gravacao, Linha );
              End;

              CloseFile ( Arquivo_Gravacao );
              CloseFile ( Arquivo_Leitura );

              RelLocacao01.Venda_Manutencao_Descricao.Lines.Clear;
              RelLocacao01.Venda_Manutencao_Descricao.Lines.LoadFromFile('C:\CadaTEX\Swap\Locacao.RTF');

              AdicionaCliente00.Close;
              End
           Else If Trim(Formulario_Anterior.Text) = 'RelCotacao01' Then
              Begin

              //*** Adiciona o Cliente e Traz a Locac��o ***

              RelCotacao01.Cliente_Codigo.Caption := DBGrid_Clientes.Fields[0].Text;
              RelCotacao01.Cliente_Nome.Caption   := DBGrid_Clientes.Fields[2].Text;
              RelCotacao01.Cliente_EMail.Text     := DBGrid_Clientes.Fields[38].Text;

              //*** Prepara o Arquivo de Locaca��o ***

              Data_STR    := DateToStr(Date());
              TXT_Data    := MostraData_Extenso();
              TXT_Nome    := DBGrid_Clientes.Fields[2].Text;
              TXT_Fone    := DBGrid_Clientes.Fields[14].Text;
              TXT_Contato := DBGrid_Clientes.Fields[34].Text;

              If FileExists('C:\CadaTEX\Swap\Cotacao.RTF') Then
                 Begin
                 DeleteFile('C:\CadaTEX\Swap\Cotacao.RTF');
              End;

              AssignFile( Arquivo_Gravacao, 'C:\CadaTEX\Swap\Cotacao.RTF');
              ReWrite( Arquivo_Gravacao );

              AssignFile( Arquivo_Leitura, 'C:\CadaTEX\Modelos\Cotacao.RTF');
              Reset( Arquivo_Leitura );

              While Not Eof( Arquivo_Leitura ) Do
                    Begin
                    ReadLn ( Arquivo_Leitura, Linha );

                    Linha := FindReplace('<DATA>', TXT_Data, Linha);
                    Linha := FindReplace('<CLIENTE_NOME>', TXT_Nome, Linha);
                    Linha := FindReplace('<CLIENTE_FONE>', TXT_Fone, Linha);
                    Linha := FindReplace('<CLIENTE_CONTATO>', TXT_Contato, Linha);

                    WriteLn( Arquivo_Gravacao, Linha );
              End;

              CloseFile ( Arquivo_Gravacao );
              CloseFile ( Arquivo_Leitura );

              RelCotacao01.Venda_Manutencao_Descricao.Lines.Clear;
              RelCotacao01.Venda_Manutencao_Descricao.Lines.LoadFromFile('C:\CadaTEX\Swap\Cotacao.RTF');

              AdicionaCliente00.Close;
              End
           Else If Trim(Formulario_Anterior.Text) = 'RelManutencao01' Then
              Begin

              //*** Adiciona o Cliente e Traz a Locac��o ***

              RelManutencao01.Cliente_Codigo.Caption := DBGrid_Clientes.Fields[0].Text;
              RelManutencao01.Cliente_Nome.Caption   := DBGrid_Clientes.Fields[2].Text;
              RelManutencao01.Cliente_EMail.Text     := DBGrid_Clientes.Fields[38].Text;

              //*** Prepara o Arquivo de Locaca��o ***

              Data_STR    := DateToStr(Date());
              TXT_Data    := MostraData_Extenso();
              TXT_Nome    := DBGrid_Clientes.Fields[2].Text;
              TXT_Fone    := DBGrid_Clientes.Fields[14].Text;
              TXT_Contato := DBGrid_Clientes.Fields[34].Text;
              TXT_Depto   := DBGrid_Clientes.Fields[35].Text;

              If FileExists('C:\CadaTEX\Swap\Manutencao.RTF') Then
                 Begin
                 DeleteFile('C:\CadaTEX\Swap\Manutencao.RTF');
              End;

              AssignFile( Arquivo_Gravacao, 'C:\CadaTEX\Swap\Manutencao.RTF');
              ReWrite( Arquivo_Gravacao );

              AssignFile( Arquivo_Leitura, 'C:\CadaTEX\Modelos\Manutencao.RTF');
              Reset( Arquivo_Leitura );

              While Not Eof( Arquivo_Leitura ) Do
                    Begin
                    ReadLn ( Arquivo_Leitura, Linha );

                    Linha := FindReplace('<DATA>', TXT_Data, Linha);
                    Linha := FindReplace('<CLIENTE_NOME>', TXT_Nome, Linha);
                    Linha := FindReplace('<CLIENTE_FONE>', TXT_Fone, Linha);
                    Linha := FindReplace('<CLIENTE_CONTATO>', TXT_Contato, Linha);
                    Linha := FindReplace('<CLIENTE_DEPTO>', TXT_Depto, Linha);

                    WriteLn( Arquivo_Gravacao, Linha );
              End;

              CloseFile ( Arquivo_Gravacao );
              CloseFile ( Arquivo_Leitura );

              RelManutencao01.Venda_Manutencao_Descricao.Lines.Clear;
              RelManutencao01.Venda_Manutencao_Descricao.Lines.LoadFromFile('C:\CadaTEX\Swap\Manutencao.RTF');

              AdicionaCliente00.Close;
              End
           Else If Trim(Formulario_Anterior.Text) = 'RelCompras01' Then
              Begin

              //*** Adiciona o Cliente e Traz a Locac��o ***

              RelCompras01.Cliente_Codigo.Caption := DBGrid_Clientes.Fields[0].Text;
              RelCompras01.Cliente_Nome.Caption   := DBGrid_Clientes.Fields[2].Text;
              RelCompras01.Cliente_EMail.Text     := DBGrid_Clientes.Fields[38].Text;

              //*** Prepara o Arquivo de Locaca��o ***

              Data_STR    := DateToStr(Date());
              TXT_Data    := MostraData_Extenso();
              TXT_Nome    := DBGrid_Clientes.Fields[2].Text;
              TXT_Fone    := DBGrid_Clientes.Fields[14].Text;
              TXT_Contato := DBGrid_Clientes.Fields[34].Text;
              TXT_Depto   := DBGrid_Clientes.Fields[35].Text;

              If FileExists('C:\CadaTEX\Swap\Compras.RTF') Then
                 Begin
                 DeleteFile('C:\CadaTEX\Swap\Compras.RTF');
              End;

              AssignFile( Arquivo_Gravacao, 'C:\CadaTEX\Swap\Compras.RTF');
              ReWrite( Arquivo_Gravacao );

              AssignFile( Arquivo_Leitura, 'C:\CadaTEX\Modelos\Compras.RTF');
              Reset( Arquivo_Leitura );

              While Not Eof( Arquivo_Leitura ) Do
                    Begin
                    ReadLn ( Arquivo_Leitura, Linha );

                    Linha := FindReplace('<DATA>', TXT_Data, Linha);
                    Linha := FindReplace('<CLIENTE_NOME>', TXT_Nome, Linha);
                    Linha := FindReplace('<CLIENTE_FONE>', TXT_Fone, Linha);
                    Linha := FindReplace('<CLIENTE_CONTATO>', TXT_Contato, Linha);
                    Linha := FindReplace('<CLIENTE_DEPTO>', TXT_Depto, Linha);

                    WriteLn( Arquivo_Gravacao, Linha );
              End;

              CloseFile ( Arquivo_Gravacao );
              CloseFile ( Arquivo_Leitura );

              RelCompras01.Venda_Manutencao_Descricao.Lines.Clear;
              RelCompras01.Venda_Manutencao_Descricao.Lines.LoadFromFile('C:\CadaTEX\Swap\Compras.RTF');

              AdicionaCliente00.Close;
           End;
        End;
     End;
end;

procedure TAdicionaCliente00.ApplicationEvents1Message(var Msg: tagMSG;
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
