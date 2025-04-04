unit Cliente_00;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls, Menus, Registry,
  ComOBJ, ImpMat, AppEvnts;

type
  // Conjunto de Tipos de Valores do Registro
  TKeyType = (ktString, ktBoolean, ktInteger, ktCurrency, ktDate, ktTime);

  TCliente00 = class(TForm)
    Panel7: TPanel;
    Panel2: TPanel;
    DBGrid_Clientes: TDBGrid;
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
    Total_Clientes: TLabel;
    Panel6: TPanel;
    Label4: TLabel;
    Nro_Licenca: TLabel;
    Registro_ConsulTEX: TLabel;
    MainMenu1: TMainMenu;
    Relatrios1: TMenuItem;
    ListagemdeClientes1: TMenuItem;
    RegistrodeLigaes1: TMenuItem;
    FichadeClientes1: TMenuItem;
    Etiquetas1: TMenuItem;
    BackupReparao1: TMenuItem;
    Sair1: TMenuItem;
    Imprimir: TImpMat;
    Transportadora1: TMenuItem;
    N1: TMenuItem;
    Cotao1: TMenuItem;
    Locao1: TMenuItem;
    Manuteno1: TMenuItem;
    N2: TMenuItem;
    NotaFiscal1: TMenuItem;
    N3: TMenuItem;
    Equipamentos1: TMenuItem;
    Rede1: TMenuItem;
    Conectado: TEdit;
    NotaFiscalProdutos1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    Com7pras1: TMenuItem;
    EtiquetasPIMACO1: TMenuItem;
    procedure BT_SairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BT_ProcurarClick(Sender: TObject);
    procedure BT_IncluirClick(Sender: TObject);
    procedure Dados_ProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure Opcoes_ProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_ClientesCellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Sair1Click(Sender: TObject);
    procedure ListagemdeClientes1Click(Sender: TObject);
    procedure BackupReparao1Click(Sender: TObject);
    procedure RegistrodeLigaes1Click(Sender: TObject);
    procedure FichadeClientes1Click(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure Transportadora1Click(Sender: TObject);
    procedure Locao1Click(Sender: TObject);
    procedure Cotao1Click(Sender: TObject);
    procedure Manuteno1Click(Sender: TObject);
    procedure NotaFiscal1Click(Sender: TObject);
    procedure Equipamentos1Click(Sender: TObject);
    procedure Rede1Click(Sender: TObject);
    procedure NotaFiscalProdutos1Click(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG;
      var Handled: Boolean);
    procedure Com7pras1Click(Sender: TObject);
    procedure EtiquetasPIMACO1Click(Sender: TObject);
  private
    { Private declarations }

    // Fun��es
    Function Verifica_Controle_Acessos():Boolean;
    Function Ler_Registro_Windows(const Key: String; KeyType: TKeyType; DefValue: Variant): Variant;
    Function Verifica_Registro():Boolean;

    // Procedures
    Procedure Gravar_Registro_Windows(const Key: String; const Value: Variant; KeyType: TKeyType);
    procedure Compacta_BD();

  public
    { Public declarations }
  end;

  // Tipo de Vers�o do Software

  Const Tipo_Versao_Datatex: String = 'Full';
  //Const Tipo_Versao_Datatex: String = 'Demo';

var
  Cliente00: TCliente00;
  Tela_Abertura: Boolean;
  Nro_Registro_Datatex: String;

implementation

uses Rotinas_Gerais, Conexao_BD, Cliente_01, Cliente_02, Sobre_00,
  Registra_Datatex, Rel_Listagem_Clientes_00, Rel_Registro_Ligacoes_00,
  Rel_Ficha_Cliente_00, Transportadora, Rel_Locacao_00, Rel_Cotacao_00,
  Rel_Manutencao_00, NF_Datatex_00, Rel_Equipamentos_00, Conexao_00,
  NF_Datatex_Pro_00, Rel_Compras_00, Rel_Etiquetas_Pimaco_00;

{$R *.dfm}

//***************
//*** Fun��es ***
//***************

Function TCliente00.Verifica_Controle_Acessos():Boolean;
Var
    Resultado: Boolean;
    Grava, Posicao_Inicial, Posicao_Final, DT_Maxima: String;
    Soma: Integer;
    InstalledVersion, InstalledType, InstallPath, InstallPathTables, InstallAccessControl, Developer, InstallPermission: String;
Begin
    Resultado := False;

    InstalledVersion     := Ler_Registro_Windows('InstalledVersion',ktString,'');
    InstalledType        := Ler_Registro_Windows('InstalledType',ktString,'');
    InstallPath          := Ler_Registro_Windows('InstallPath',ktString,'');
    InstallPathTables    := Ler_Registro_Windows('InstallPathTables',ktString,'');
    InstallAccessControl := Ler_Registro_Windows('InstallAccessControl',ktString,'');
    Developer            := Ler_Registro_Windows('Developer',ktString,'');
    InstallPermission    := Ler_Registro_Windows('InstallPermission',ktString,'');

    If Tipo_Versao_Datatex = 'Full' Then
      begin
      If InstalledType = 'DM' Then
        begin
        Gravar_Registro_Windows('InstalledType','FL',ktString);
        Gravar_Registro_Windows('InstallAccessControl','#STXV#77#CTRL01#',ktString);
        Gravar_Registro_Windows('InstallPermission','D',ktString);

        InstalledVersion     := Ler_Registro_Windows('InstalledVersion',ktString,'');
        InstalledType        := Ler_Registro_Windows('InstalledType',ktString,'');
        InstallPath          := Ler_Registro_Windows('InstallPath',ktString,'');
        InstallPathTables    := Ler_Registro_Windows('InstallPathTables',ktString,'');
        InstallAccessControl := Ler_Registro_Windows('InstallAccessControl',ktString,'');
        Developer            := Ler_Registro_Windows('Developer',ktString,'');
        InstallPermission    := Ler_Registro_Windows('InstallPermission',ktString,'');
      End;
    End;

    If InstalledType = 'DM' Then
      Begin
      // Verifica os Registros de Demonstra��o
      Posicao_Inicial := Copy(InstallAccessControl,1,6);
      DT_Maxima       := Copy(InstallAccessControl,7,6);
      Posicao_Final   := Copy(InstallAccessControl,13,8);

      DT_Maxima := DT_Maxima[1]+DT_Maxima[2]+'/'+DT_Maxima[3]+DT_Maxima[4]+'/'+DT_Maxima[5]+DT_Maxima[6];

      If (Trim(Posicao_Inicial) = '#STXV#') And (Trim(Posicao_Final) = '#CTRL65#') Then
        Begin
        If (Date() >= StrToDate(DT_Maxima)) Then
          Begin
          Gravar_Registro_Windows('InstallPermission','T',ktString);
          Resultado := False;
          End
        Else
          Begin
          Resultado := True;
        End;
        End
      Else
        Begin
        Resultado := False;
      End;

      If InstallPermission = 'T' Then
         Begin
         Resultado := False;
      End;

      End
    Else If InstalledType = 'FL' Then
      Begin

      // Verifica os Registros de Vers�o Full
      If ((InstallAccessControl = '#STXV#77#CTRL01#') And (InstallPermission = 'D')) Then
        begin
        Resultado := True;
      End;
      End
    Else
      Begin

      // Grava os Registros de Vers�o

      Gravar_Registro_Windows('InstalledVersion','7.0',ktString);

      If Tipo_Versao_Datatex = 'Demo' Then
        Begin
        DT_Maxima := DateToStr(Date() + 30);
        DT_Maxima := DT_Maxima[1]+DT_Maxima[2]+DT_Maxima[4]+DT_Maxima[5]+DT_Maxima[9]+DT_Maxima[10];

        Gravar_Registro_Windows('InstalledType','DM',ktString);
        Gravar_Registro_Windows('InstallAccessControl','#STXV#'+Trim(DT_Maxima)+'#CTRL65#',ktString);
        End
      Else
        Begin
        Gravar_Registro_Windows('InstalledType','FL',ktString);
        Gravar_Registro_Windows('InstallAccessControl','#STXV#77#CTRL01#',ktString);
      End;

      Gravar_Registro_Windows('InstallPath','C:\CadaTEX',ktString);
      Gravar_Registro_Windows('InstallPathTables','C:\CadaTEX\BD',ktString);
      Gravar_Registro_Windows('Developer','Datatex Inform�tica e Servi�os Ltda',ktString);
      Gravar_Registro_Windows('InstallPermission','D',ktString);

      // Verifica os Registros da Vers�o
      InstalledVersion     := Ler_Registro_Windows('InstalledVersion',ktString,'');
      InstalledType        := Ler_Registro_Windows('InstalledType',ktString,'');
      InstallPath          := Ler_Registro_Windows('InstallPath',ktString,'');
      InstallPathTables    := Ler_Registro_Windows('InstallPathTables',ktString,'');
      InstallAccessControl := Ler_Registro_Windows('InstallAccessControl',ktString,'');
      Developer            := Ler_Registro_Windows('Developer',ktString,'');
      InstallPermission    := Ler_Registro_Windows('InstallPermission',ktString,'');

      If InstalledType = 'DM' Then
        Begin

        // Verifica os Registros de Demonstra��o

        Posicao_Inicial := Copy(InstallAccessControl,1,6);
        DT_Maxima       := Copy(InstallAccessControl,7,6);
        Posicao_Final   := Copy(InstallAccessControl,13,8);

        DT_Maxima := DT_Maxima[1]+DT_Maxima[2]+'/'+DT_Maxima[3]+DT_Maxima[4]+'/'+DT_Maxima[5]+DT_Maxima[6];

        If (Trim(Posicao_Inicial) = '#STXV#') And (Trim(Posicao_Final) = '#CTRL65#') Then
          begin

          If (Date() >= StrToDate(DT_Maxima)) Then
             Begin
             Gravar_Registro_Windows('InstallPermission','T',ktString);
             Resultado := False;
             End
          Else
             Begin
             Resultado := True;
          End;

          If InstallPermission = 'T' Then
             Begin
             Resultado := False;
          End;

          end
        Else
          begin
          Resultado := False;
        end;
        end
      Else If InstalledType = 'FL' Then
        Begin

        // Verifica os Registros de Vers�o Full

        If InstallAccessControl = '#STXV#77#CTRL01#' Then
          begin
          Resultado := True;
        end;
      End;
    End;
    Verifica_Controle_Acessos := Resultado;
End;

Function TCliente00.Ler_Registro_Windows(const Key: String; KeyType: TKeyType; DefValue: Variant): Variant;
var
  r: TRegistry;
begin
  // cria o objeto TRegistry
  r := TRegistry.Create;
  // conecta ao root diferente do padr�o
  r.RootKey := HKEY_LOCAL_MACHINE;
  try
    // abre a chave (no root selecionado)
    // o segundo par�metro True, indica que se a chave n�o existir,
    // a opera��o de abertura poder� cri�-la.
    r.OpenKey('Software\Datatex\CadaTEX', True);
    Result := DefValue;
    // testa se existe o valor que se deseja ler.
    // note que, para verificar a exist�ncia de chaves, utilizados KeyExists([chave])
    // e para verificar a exist�ncia de um conjunto de chaves de uma chave,
    // utilizamos ValueExists([valor])
    if r.ValueExists(Key) then
      case KeyType of
        // l� o valor da chave em formato String
        ktString: Result := r.ReadString(Key);
        // l� o valor da chave em formato Boolean
        ktBoolean: Result := r.ReadBool(Key);
        // l� o valor da chave em formato Integer
        ktInteger: Result := r.ReadInteger(Key);
        // l� o valor da chave em formato Currency (moeda)
        ktCurrency: Result := r.ReadCurrency(Key);
        // l� o valor da chave em formato TDateTime (data)
        ktDate: Result := r.ReadDate(Key);
        // l� o valor da chave em formato TDateTime (hora)
        ktTime: Result := r.ReadTime(Key);
      end;
  finally
    // destroy o objeto criado
    r.Free;
  end;
end;

function TCliente00.Verifica_Registro():Boolean;

var
   Nro_HD: String;
   Posicao: Array[0..10] of String;
   Posicao_Nro: Array[0..10] of Real;
   Ind: Integer;

   Str_Posicao, Letra_1, Letra_2, Letra_3, Calculo_1, Calculo_2, Calculo_3, Licenca: String;

   Retorno: Boolean;

   Log_Arquivo, Linha_Arq: String;
   Arq_Log: TextFile;

begin
     Fecha_Conexao();

     Retorno := False;

     If Trim(Posicao_1.Text) = '' Then
        Begin
        Nro_HD := Numero_HD('C');
        Nro_HD := Trim(UpperCase(Nro_HD));

        //*** Registro ***

        For Ind := 1 To Length(Nro_HD) Do
            Begin
            If Nro_HD[Ind] = 'A' Then
               Begin
               Posicao[(Ind - 1)] := '01';
               End
            Else If Nro_HD[Ind] = 'B' Then
               Begin
               Posicao[(Ind - 1)] := '02';
               End
            Else If Nro_HD[Ind] = 'C' Then
               Begin
               Posicao[(Ind - 1)] := '03';
               End
            Else If Nro_HD[Ind] = 'D' Then
               Begin
               Posicao[(Ind - 1)] := '04';
               End
            Else If Nro_HD[Ind] = 'E' Then
               Begin
               Posicao[(Ind - 1)] := '05';
               End
            Else If Nro_HD[Ind] = 'F' Then
               Begin
               Posicao[(Ind - 1)] := '06';
               End
            Else If Nro_HD[Ind] = 'G' Then
               Begin
               Posicao[(Ind - 1)] := '07';
               End
            Else If Nro_HD[Ind] = 'H' Then
               Begin
               Posicao[(Ind - 1)] := '08';
               End
            Else If Nro_HD[Ind] = 'I' Then
               Begin
               Posicao[(Ind - 1)] := '09';
               End
            Else If Nro_HD[Ind] = 'J' Then
               Begin
               Posicao[(Ind - 1)] := '10';
               End
            Else If Nro_HD[Ind] = 'K' Then
               Begin
               Posicao[(Ind - 1)] := '11';
               End
            Else If Nro_HD[Ind] = 'L' Then
               Begin
               Posicao[(Ind - 1)] := '12';
               End
            Else If Nro_HD[Ind] = 'M' Then
               Begin
               Posicao[(Ind - 1)] := '13';
               End
            Else If Nro_HD[Ind] = 'N' Then
               Begin
               Posicao[(Ind - 1)] := '14';
               End
            Else If Nro_HD[Ind] = 'O' Then
               Begin
               Posicao[(Ind - 1)] := '15';
               End
            Else If Nro_HD[Ind] = 'P' Then
               Begin
               Posicao[(Ind - 1)] := '16';
               End
            Else If Nro_HD[Ind] = 'Q' Then
               Begin
               Posicao[(Ind - 1)] := '17';
               End
            Else If Nro_HD[Ind] = 'R' Then
               Begin
               Posicao[(Ind - 1)] := '18';
               End
            Else If Nro_HD[Ind] = 'S' Then
               Begin
               Posicao[(Ind - 1)] := '19';
               End
            Else If Nro_HD[Ind] = 'T' Then
               Begin
               Posicao[(Ind - 1)] := '20';
               End
            Else If Nro_HD[Ind] = 'U' Then
               Begin
               Posicao[(Ind - 1)] := '21';
               End
            Else If Nro_HD[Ind] = 'V' Then
               Begin
               Posicao[(Ind - 1)] := '22';
               End
            Else If Nro_HD[Ind] = 'W' Then
               Begin
               Posicao[(Ind - 1)] := '23';
               End
            Else If Nro_HD[Ind] = 'X' Then
               Begin
               Posicao[(Ind - 1)] := '24';
               End
            Else If Nro_HD[Ind] = 'Y' Then
               Begin
               Posicao[(Ind - 1)] := '25';
               End
            Else If Nro_HD[Ind] = 'Z' Then
               Begin
               Posicao[(Ind - 1)] := '26';
               End
            Else If Nro_HD[Ind] = '0' Then
               Begin
               Posicao[(Ind - 1)] := '00';
               End
            Else If Nro_HD[Ind] = '1' Then
               Begin
               Posicao[(Ind - 1)] := '01';
               End
            Else If Nro_HD[Ind] = '2' Then
               Begin
               Posicao[(Ind - 1)] := '02';
               End
            Else If Nro_HD[Ind] = '3' Then
               Begin
               Posicao[(Ind - 1)] := '03';
               End
            Else If Nro_HD[Ind] = '4' Then
               Begin
               Posicao[(Ind - 1)] := '04';
               End
            Else If Nro_HD[Ind] = '5' Then
               Begin
               Posicao[(Ind - 1)] := '05';
               End
            Else If Nro_HD[Ind] = '6' Then
               Begin
               Posicao[(Ind - 1)] := '06';
               End
            Else If Nro_HD[Ind] = '7' Then
               Begin
               Posicao[(Ind - 1)] := '07';
               End
            Else If Nro_HD[Ind] = '8' Then
               Begin
               Posicao[(Ind - 1)] := '08';
               End
            Else If Nro_HD[Ind] = '9' Then
               Begin
               Posicao[(Ind - 1)] := '09';
            End;
        End;

        //*** Troca e Multiplica��o de Posi��es ***

        Posicao[0] := IntToStr(StrToInt(Posicao[0]) * 3);
        Posicao[4] := IntToStr(StrToInt(Posicao[4]) * 3);
        Posicao[1] := IntToStr(StrToInt(Posicao[1]) * 3);
        Posicao[5] := IntToStr(StrToInt(Posicao[5]) * 3);
        Posicao[2] := IntToStr(StrToInt(Posicao[2]) * 3);
        Posicao[6] := IntToStr(StrToInt(Posicao[6]) * 3);
        Posicao[3] := IntToStr(StrToInt(Posicao[3]) * 3);
        Posicao[7] := IntToStr(StrToInt(Posicao[7]) * 3);

        If Length(Trim(Posicao[0])) <= 1 Then
           Begin
           Posicao[0] := '0'+Trim(Posicao[0]);
        End;

        If Length(Trim(Posicao[1])) <= 1 Then
           Begin
           Posicao[1] := '0'+Trim(Posicao[1]);
        End;

        If Length(Trim(Posicao[2])) <= 1 Then
           Begin
           Posicao[2] := '0'+Trim(Posicao[2]);
        End;

        If Length(Trim(Posicao[3])) <= 1 Then
           Begin
           Posicao[3] := '0'+Trim(Posicao[3]);
        End;

        If Length(Trim(Posicao[4])) <= 1 Then
           Begin
           Posicao[4] := '0'+Trim(Posicao[4]);
        End;

        If Length(Trim(Posicao[5])) <= 1 Then
           Begin
           Posicao[5] := '0'+Trim(Posicao[5]);
        End;

        If Length(Trim(Posicao[6])) <= 1 Then
           Begin
           Posicao[6] := '0'+Trim(Posicao[6]);
        End;

        If Length(Trim(Posicao[7])) <= 1 Then
           Begin
           Posicao[7] := '0'+Trim(Posicao[7]);
        End;

        //*** Obtem a 1a. Letra ***

        If Posicao[5]  = '01' Then
           Begin
           Letra_1 := 'A';
           End
        Else If Posicao[5]  = '02' Then
           Begin
           Letra_1 := 'B';
           End
        Else If Posicao[5]  = '03' Then
           Begin
           Letra_1 := 'C';
           End
        Else If Posicao[5]  = '04' Then
           Begin
           Letra_1 := 'D';
           End
        Else If Posicao[5]  = '05' Then
           Begin
           Letra_1 := 'E';
           End
        Else If Posicao[5]  = '06' Then
           Begin
           Letra_1 := 'F';
           End
        Else If Posicao[5]  = '07' Then
           Begin
           Letra_1 := 'G';
           End
        Else If Posicao[5]  = '08' Then
           Begin
           Letra_1 := 'H';
           End
        Else If Posicao[5]  = '09' Then
           Begin
           Letra_1 := 'I';
           End
        Else If Posicao[5]  = '10' Then
           Begin
           Letra_1 := 'J';
           End
        Else If Posicao[5]  = '11' Then
           Begin
           Letra_1 := 'K';
           End
        Else If Posicao[5]  = '12' Then
           Begin
           Letra_1 := 'L';
           End
        Else If Posicao[5]  = '13' Then
           Begin
           Letra_1 := 'M';
           End
        Else If Posicao[5]  = '14' Then
           Begin
           Letra_1 := 'N';
           End
        Else If Posicao[5]  = '15' Then
           Begin
           Letra_1 := 'O';
           End
        Else If Posicao[5]  = '16' Then
           Begin
           Letra_1 := 'P';
           End
        Else If Posicao[5]  = '17' Then
           Begin
           Letra_1 := 'Q';
           End
        Else If Posicao[5]  = '18' Then
           Begin
           Letra_1 := 'R';
           End
        Else If Posicao[5]  = '19' Then
           Begin
           Letra_1 := 'S';
           End
        Else If Posicao[5]  = '20' Then
           Begin
           Letra_1 := 'T';
           End
        Else If Posicao[5]  = '21' Then
           Begin
           Letra_1 := 'U';
           End
        Else If Posicao[5]  = '22' Then
           Begin
           Letra_1 := 'V';
           End
        Else If Posicao[5]  = '23' Then
           Begin
           Letra_1 := 'W';
           End
        Else If Posicao[5]  = '24' Then
           Begin
           Letra_1 := 'X';
           End
        Else If Posicao[5]  = '25' Then
           Begin
           Letra_1 := 'Y';
           End
        Else If Posicao[5]  = '26' Then
           Begin
           Letra_1 := 'Z';
           End
        Else
           Begin
           Letra_1 := 'A';
        End;

        //*** Obtem a 2a. Letra ***

        If Posicao[2]  = '01' Then
           Begin
           Letra_2 := 'A';
           End
        Else If Posicao[2]  = '02' Then
           Begin
           Letra_2 := 'B';
           End
        Else If Posicao[2]  = '03' Then
           Begin
           Letra_2 := 'C';
           End
        Else If Posicao[2]  = '04' Then
           Begin
           Letra_2 := 'D';
           End
        Else If Posicao[2]  = '05' Then
           Begin
           Letra_2 := 'E';
           End
        Else If Posicao[2]  = '06' Then
           Begin
           Letra_2 := 'F';
           End
        Else If Posicao[2]  = '07' Then
           Begin
           Letra_2 := 'G';
           End
        Else If Posicao[2]  = '08' Then
           Begin
           Letra_2 := 'H';
           End
        Else If Posicao[2]  = '09' Then
           Begin
           Letra_2 := 'I';
           End
        Else If Posicao[2]  = '10' Then
           Begin
           Letra_2 := 'J';
           End
        Else If Posicao[2]  = '11' Then
           Begin
           Letra_2 := 'K';
           End
        Else If Posicao[2]  = '12' Then
           Begin
           Letra_2 := 'L';
           End
        Else If Posicao[2]  = '13' Then
           Begin
           Letra_2 := 'M';
           End
        Else If Posicao[2]  = '14' Then
           Begin
           Letra_2 := 'N';
           End
        Else If Posicao[2]  = '15' Then
           Begin
           Letra_2 := 'O';
           End
        Else If Posicao[2]  = '16' Then
           Begin
           Letra_2 := 'P';
           End
        Else If Posicao[2]  = '17' Then
           Begin
           Letra_2 := 'Q';
           End
        Else If Posicao[2]  = '18' Then
           Begin
           Letra_2 := 'R';
           End
        Else If Posicao[2]  = '19' Then
           Begin
           Letra_2 := 'S';
           End
        Else If Posicao[2]  = '20' Then
           Begin
           Letra_2 := 'T';
           End
        Else If Posicao[2]  = '21' Then
           Begin
           Letra_2 := 'U';
           End
        Else If Posicao[2]  = '22' Then
           Begin
           Letra_2 := 'V';
           End
        Else If Posicao[2]  = '23' Then
           Begin
           Letra_2 := 'W';
           End
        Else If Posicao[2]  = '24' Then
           Begin
           Letra_2 := 'X';
           End
        Else If Posicao[2]  = '25' Then
           Begin
           Letra_2 := 'Y';
           End
        Else If Posicao[2]  = '26' Then
           Begin
           Letra_2 := 'Z';
           End
        Else
           Begin
           Letra_2 := 'A';
        End;

        //*** Obtem a 3a. Letra ***

        If Posicao[6]  = '01' Then
           Begin
           Letra_3 := 'A';
           End
        Else If Posicao[6]  = '02' Then
           Begin
           Letra_3 := 'B';
           End
        Else If Posicao[6]  = '03' Then
           Begin
           Letra_3 := 'C';
           End
        Else If Posicao[6]  = '04' Then
           Begin
           Letra_3 := 'D';
           End
        Else If Posicao[6]  = '05' Then
           Begin
           Letra_3 := 'E';
           End
        Else If Posicao[6]  = '06' Then
           Begin
           Letra_3 := 'F';
           End
        Else If Posicao[6]  = '07' Then
           Begin
           Letra_3 := 'G';
           End
        Else If Posicao[6]  = '08' Then
           Begin
           Letra_3 := 'H';
           End
        Else If Posicao[6]  = '09' Then
           Begin
           Letra_3 := 'I';
           End
        Else If Posicao[6]  = '10' Then
           Begin
           Letra_3 := 'J';
           End
        Else If Posicao[6]  = '11' Then
           Begin
           Letra_3 := 'K';
           End
        Else If Posicao[6]  = '12' Then
           Begin
           Letra_3 := 'L';
           End
        Else If Posicao[6]  = '13' Then
           Begin
           Letra_3 := 'M';
           End
        Else If Posicao[6]  = '14' Then
           Begin
           Letra_3 := 'N';
           End
        Else If Posicao[6]  = '15' Then
           Begin
           Letra_3 := 'O';
           End
        Else If Posicao[6]  = '16' Then
           Begin
           Letra_3 := 'P';
           End
        Else If Posicao[6]  = '17' Then
           Begin
           Letra_3 := 'Q';
           End
        Else If Posicao[6]  = '18' Then
           Begin
           Letra_3 := 'R';
           End
        Else If Posicao[6]  = '19' Then
           Begin
           Letra_3 := 'S';
           End
        Else If Posicao[6]  = '20' Then
           Begin
           Letra_3 := 'T';
           End
        Else If Posicao[6]  = '21' Then
           Begin
           Letra_3 := 'U';
           End
        Else If Posicao[6]  = '22' Then
           Begin
           Letra_3 := 'V';
           End
        Else If Posicao[6]  = '23' Then
           Begin
           Letra_3 := 'W';
           End
        Else If Posicao[6]  = '24' Then
           Begin
           Letra_3 := 'X';
           End
        Else If Posicao[6]  = '25' Then
           Begin
           Letra_3 := 'Y';
           End
        Else If Posicao[6]  = '26' Then
           Begin
           Letra_3 := 'Z';
           End
        Else
           Begin
           Letra_3 := 'A';
        End;

        Posicao_1.Text      := Posicao[0] + Posicao[4] + Posicao[1] + Posicao[5] + Posicao[2] + Posicao[6] + Posicao[3] + Posicao[7] + Letra_1 + Letra_2 + Letra_3;
        Nro_Licenca.Caption := Trim(Posicao_1.Text);
     End;

     //*** Licenca ***

     Str_Posicao := Posicao_1.Text;

     Posicao[0]  := Str_Posicao[1]+Str_Posicao[2];
     Posicao[1]  := Str_Posicao[3]+Str_Posicao[4];
     Posicao[2]  := Str_Posicao[5]+Str_Posicao[6];
     Posicao[3]  := Str_Posicao[7]+Str_Posicao[8];
     Posicao[4]  := Str_Posicao[9]+Str_Posicao[10];
     Posicao[5]  := Str_Posicao[11]+Str_Posicao[12];
     Posicao[6]  := Str_Posicao[13]+Str_Posicao[14];
     Posicao[7]  := Str_Posicao[15]+Str_Posicao[16];
     Posicao[8]  := Str_Posicao[17];
     Posicao[9]  := Str_Posicao[18];
     Posicao[10] := Str_Posicao[19];

     //*** Transforma a 1a. Letra ***

     If Posicao[8] = 'A' Then
        Begin
        Posicao[8] := '01';
        End
     Else If Posicao[8] = 'B' Then
        Begin
        Posicao[8] := '02';
        End
     Else If Posicao[8] = 'C' Then
        Begin
        Posicao[8] := '03';
        End
     Else If Posicao[8] = 'D' Then
        Begin
        Posicao[8] := '04';
        End
     Else If Posicao[8] = 'E' Then
        Begin
        Posicao[8] := '05';
        End
     Else If Posicao[8] = 'F' Then
        Begin
        Posicao[8] := '06';
        End
     Else If Posicao[8] = 'G' Then
        Begin
        Posicao[8] := '07';
        End
     Else If Posicao[8] = 'H' Then
        Begin
        Posicao[8] := '08';
        End
     Else If Posicao[8] = 'I' Then
        Begin
        Posicao[8] := '09';
        End
     Else If Posicao[8] = 'J' Then
        Begin
        Posicao[8] := '10';
        End
     Else If Posicao[8] = 'K' Then
        Begin
        Posicao[8] := '11';
        End
     Else If Posicao[8] = 'L' Then
        Begin
        Posicao[8] := '12';
        End
     Else If Posicao[8] = 'M' Then
        Begin
        Posicao[8] := '13';
        End
     Else If Posicao[8] = 'N' Then
        Begin
        Posicao[8] := '14';
        End
     Else If Posicao[8] = 'O' Then
        Begin
        Posicao[8] := '15';
        End
     Else If Posicao[8] = 'P' Then
        Begin
        Posicao[8] := '16';
        End
     Else If Posicao[8] = 'Q' Then
        Begin
        Posicao[8] := '17';
        End
     Else If Posicao[8] = 'R' Then
        Begin
        Posicao[8] := '18';
        End
     Else If Posicao[8] = 'S' Then
        Begin
        Posicao[8] := '19';
        End
     Else If Posicao[8] = 'T' Then
        Begin
        Posicao[8] := '20';
        End
     Else If Posicao[8] = 'U' Then
        Begin
        Posicao[8] := '21';
        End
     Else If Posicao[8] = 'V' Then
        Begin
        Posicao[8] := '22';
        End
     Else If Posicao[8] = 'W' Then
        Begin
        Posicao[8] := '23';
        End
     Else If Posicao[8] = 'X' Then
        Begin
        Posicao[8] := '24';
        End
     Else If Posicao[8] = 'Y' Then
        Begin
        Posicao[8] := '25';
        End
     Else If Posicao[8] = 'Z' Then
        Begin
        Posicao[8] := '26';
     End;

     //*** Transforma a 2a. Letra ***

     If Posicao[9] = 'A' Then
        Begin
        Posicao[9] := '01';
        End
     Else If Posicao[9] = 'B' Then
        Begin
        Posicao[9] := '02';
        End
     Else If Posicao[9] = 'C' Then
        Begin
        Posicao[9] := '03';
        End
     Else If Posicao[9] = 'D' Then
        Begin
        Posicao[9] := '04';
        End
     Else If Posicao[9] = 'E' Then
        Begin
        Posicao[9] := '05';
        End
     Else If Posicao[9] = 'F' Then
        Begin
        Posicao[9] := '06';
        End
     Else If Posicao[9] = 'G' Then
        Begin
        Posicao[9] := '07';
        End
     Else If Posicao[9] = 'H' Then
        Begin
        Posicao[9] := '08';
        End
     Else If Posicao[9] = 'I' Then
        Begin
        Posicao[9] := '09';
        End
     Else If Posicao[9] = 'J' Then
        Begin
        Posicao[9] := '10';
        End
     Else If Posicao[9] = 'K' Then
        Begin
        Posicao[9] := '11';
        End
     Else If Posicao[9] = 'L' Then
        Begin
        Posicao[9] := '12';
        End
     Else If Posicao[9] = 'M' Then
        Begin
        Posicao[9] := '13';
        End
     Else If Posicao[9] = 'N' Then
        Begin
        Posicao[9] := '14';
        End
     Else If Posicao[9] = 'O' Then
        Begin
        Posicao[9] := '15';
        End
     Else If Posicao[9] = 'P' Then
        Begin
        Posicao[9] := '16';
        End
     Else If Posicao[9] = 'Q' Then
        Begin
        Posicao[9] := '17';
        End
     Else If Posicao[9] = 'R' Then
        Begin
        Posicao[9] := '18';
        End
     Else If Posicao[9] = 'S' Then
        Begin
        Posicao[9] := '19';
        End
     Else If Posicao[9] = 'T' Then
        Begin
        Posicao[9] := '20';
        End
     Else If Posicao[9] = 'U' Then
        Begin
        Posicao[9] := '21';
        End
     Else If Posicao[9] = 'V' Then
        Begin
        Posicao[9] := '22';
        End
     Else If Posicao[9] = 'W' Then
        Begin
        Posicao[9] := '23';
        End
     Else If Posicao[9] = 'X' Then
        Begin
        Posicao[9] := '24';
        End
     Else If Posicao[9] = 'Y' Then
        Begin
        Posicao[9] := '25';
        End
     Else If Posicao[9] = 'Z' Then
        Begin
        Posicao[9] := '26';
     End;

     //*** Transforma a 3a. Letra ***

     If Posicao[10] = 'A' Then
        Begin
        Posicao[10] := '01';
        End
     Else If Posicao[10] = 'B' Then
        Begin
        Posicao[10] := '02';
        End
     Else If Posicao[10] = 'C' Then
        Begin
        Posicao[10] := '03';
        End
     Else If Posicao[10] = 'D' Then
        Begin
        Posicao[10] := '04';
        End
     Else If Posicao[10] = 'E' Then
        Begin
        Posicao[10] := '05';
        End
     Else If Posicao[10] = 'F' Then
        Begin
        Posicao[10] := '06';
        End
     Else If Posicao[10] = 'G' Then
        Begin
        Posicao[10] := '07';
        End
     Else If Posicao[10] = 'H' Then
        Begin
        Posicao[10] := '08';
        End
     Else If Posicao[10] = 'I' Then
        Begin
        Posicao[10] := '09';
        End
     Else If Posicao[10] = 'J' Then
        Begin
        Posicao[10] := '10';
        End
     Else If Posicao[10] = 'K' Then
        Begin
        Posicao[10] := '11';
        End
     Else If Posicao[10] = 'L' Then
        Begin
        Posicao[10] := '12';
        End
     Else If Posicao[10] = 'M' Then
        Begin
        Posicao[10] := '13';
        End
     Else If Posicao[10] = 'N' Then
        Begin
        Posicao[10] := '14';
        End
     Else If Posicao[10] = 'O' Then
        Begin
        Posicao[10] := '15';
        End
     Else If Posicao[10] = 'P' Then
        Begin
        Posicao[10] := '16';
        End
     Else If Posicao[10] = 'Q' Then
        Begin
        Posicao[10] := '17';
        End
     Else If Posicao[10] = 'R' Then
        Begin
        Posicao[10] := '18';
        End
     Else If Posicao[10] = 'S' Then
        Begin
        Posicao[10] := '19';
        End
     Else If Posicao[10] = 'T' Then
        Begin
        Posicao[10] := '20';
        End
     Else If Posicao[10] = 'U' Then
        Begin
        Posicao[10] := '21';
        End
     Else If Posicao[10] = 'V' Then
        Begin
        Posicao[10] := '22';
        End
     Else If Posicao[10] = 'W' Then
        Begin
        Posicao[10] := '23';
        End
     Else If Posicao[10] = 'X' Then
        Begin
        Posicao[10] := '24';
        End
     Else If Posicao[10] = 'Y' Then
        Begin
        Posicao[10] := '25';
        End
     Else If Posicao[10] = 'Z' Then
        Begin
        Posicao[10] := '26';
     End;

     //*** Efetua o C�lculo da Licen�a ***

     Posicao_Nro[0]  := Int(((StrToInt(Posicao[0]) / 7) * 100));
     Posicao_Nro[1]  := Int((StrToInt(Posicao[1]) / 7) * 100);
     Posicao_Nro[2]  := Int((StrToInt(Posicao[2]) / 7) * 100);
     Posicao_Nro[3]  := Int((StrToInt(Posicao[3]) / 7) * 100);
     Posicao_Nro[4]  := Int((StrToInt(Posicao[4]) / 7) * 100);
     Posicao_Nro[5]  := Int((StrToInt(Posicao[5]) / 7) * 100);
     Posicao_Nro[6]  := Int((StrToInt(Posicao[6]) / 7) * 100);
     Posicao_Nro[7]  := Int((StrToInt(Posicao[7]) / 7) * 100);
     Posicao_Nro[8]  := Int((StrToInt(Posicao[8]) / 7) * 100);
     Posicao_Nro[9]  := Int((StrToInt(Posicao[9]) / 7) * 100);
     Posicao_Nro[10] := Int((StrToInt(Posicao[10]) / 7) * 100);

     Calculo_1 := FloatToStr(Posicao_Nro[0]) + FloatToStr(Posicao_Nro[1]) + FloatToStr(Posicao_Nro[2]) + FloatToStr(Posicao_Nro[3]);
     Calculo_2 := FloatToStr(Posicao_Nro[4]) + FloatToStr(Posicao_Nro[5]) + FloatToStr(Posicao_Nro[6]) + FloatToStr(Posicao_Nro[7]);
     Calculo_3 := FloatToStr(Posicao_Nro[8]) + FloatToStr(Posicao_Nro[9]) + FloatToStr(Posicao_Nro[10]);

     Licenca   := FloatToStr((StrToFloat(Calculo_1) * 5)) + FloatToStr((StrToFloat(Calculo_3) * 5)) + FloatToStr((StrToFloat(Calculo_2) * 5));

     //*** Carrega a Connex�o da Esta��o Local ***

     {*** Prepara a Conex�o com as Tabelas e Querys ***}

     ConexaoBD.Conexao_Principal.Connected := False;
     ConexaoBD.Conexao_Principal.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\CadaTEX\BD\CadaTEX.mdb;Mode=Read|Write;Persist Security Info=False';
     ConexaoBD.Conexao_Principal.Connected := True;

     conexaoBD.SQL_Conexao.Close;
     conexaoBD.SQL_Conexao.SQL.Clear;
     conexaoBD.SQL_Conexao.SQL.Add('Select * from Conexao');
     conexaoBD.SQL_Conexao.Open;

     If conexaoBD.SQL_Conexao.RecordCount <= 0 Then
        Begin
        conexaoBD.SQL_Conexao.Close;
        conexaoBD.SQL_Conexao.SQL.Clear;
        conexaoBD.SQL_Conexao.SQL.Add('insert into Conexao(Conexao_caminho) values('+#39+'C:\CadaTEX\BD\'+#39+')');
        conexaoBD.SQL_Conexao.ExecSQL;

        conexaoBD.SQL_Conexao.Close;
        conexaoBD.SQL_Conexao.SQL.Clear;
        conexaoBD.SQL_Conexao.SQL.Add('Select * from Conexao');
        conexaoBD.SQL_Conexao.Open;
     End;

     Linha_Arq := conexaoBD.SQL_Conexao.FieldValues['conexao_registro'];
     Linha_Arq := Trim(Linha_Arq);

     //*** Fecha as Conex�es das Querys com o Access ***

     ConexaoBD.Conexao_Principal.Connected := False;

     //*** Valida o Nro do Registro ***

     If Trim(Linha_Arq) <> Trim(Licenca) Then
        Begin
        Retorno := False;
        End
     Else
        Begin
        Retorno := True;
     End;

     If Tipo_Versao_Datatex = 'Demo' Then
        Begin
        Retorno := True;
     End;

     Abre_Conexao();

     Verifica_Registro := Retorno;
end;

//******************
//*** Procedures ***
//******************

Procedure TCliente00.Gravar_Registro_Windows(const Key: String; const Value: Variant; KeyType: TKeyType);
var
  r: TRegistry;
begin
  // cria o objeto TRegistry
  r := TRegistry.Create;
  // conecta ao root diferente do padr�o
  r.RootKey := HKEY_LOCAL_MACHINE;
  try
    // abre a chave (no root selecionado)
    r.OpenKey('Software\Datatex\CadaTEX', True);
    case KeyType of
      // grava o valor da chave em formato String
      ktString: r.WriteString(Key, Value);
      // grava o valor da chave em formato Boolean
      ktBoolean: r.WriteBool(Key, Value);
      // grava o valor da chave em formato Integer
      ktInteger: r.WriteInteger(Key, Value);
      // grava o valor da chave em formato Currency (moeda)
      ktCurrency: r.WriteCurrency(Key, Value);
      // grava o valor da chave em formato TDateTime (Data)
      ktDate: r.WriteDate(Key, Value);
      // grava o valor da chave em formato TDateTime (Hora)
      ktTime: r.WriteTime(Key, Value);
    end;
  finally
    r.Free;
  end;
end;

procedure TCliente00.BT_SairClick(Sender: TObject);
begin
  Cliente00.Close;
end;

procedure TCliente00.FormCreate(Sender: TObject);
begin
     ShortDateFormat := 'dd/mm/yyyy';
     Tela_Abertura   := False;
end;

procedure TCliente00.FormShow(Sender: TObject);
begin
     Ampulheta();

     If Trim(Conectado.Text) = '' Then
        Begin

        If Verifica_Controle_Acessos() Then
           Begin

           If Verifica_Registro() Then
              Begin

              If Tela_Abertura = False Then
                 Begin
                 Application.CreateForm(TSobre00,Sobre00);
                 Sobre00.ShowModal;
                 Sobre00.Destroy;

                 Tela_Abertura := True;
              End;

              ConexaoBD.SQL_Clientes.SQL.Clear;
              ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Order By Cliente_Nome');
              ConexaoBD.SQL_Clientes.Open;

              Total_Clientes.Caption := IntToStr(ConexaoBD.SQL_Clientes.RecordCount);

              Seta();

              End
           Else
              Begin
              Seta();

              MSG_Erro('Este Sistema n�o est� autorizado a Funcionar neste Equipamento.'+Chr(13)+Chr(10)+Chr(13)+Chr(10)+'Entre em Contato com:'+Chr(13)+Chr(10)+Chr(13)+Chr(10)+'Datatex Inform�tica e Servi�os Ltda'+Chr(13)+Chr(10)+Chr(13)+Chr(10)+'Fone: (0xx11) 4476-9175'+Chr(13)+Chr(10)+'E-Mail: datatex@datatex.com.br');

              Application.CreateForm(TRegistraDatatex,RegistraDatatex);

              RegistraDatatex.Registro.Text := Trim(Nro_Licenca.Caption);

              RegistraDatatex.ShowModal;
              RegistraDatatex.Destroy;

              Cliente00.Close;
           End;

           End
        Else
           Begin
           Seta();
           MSG_Erro('Seu Tempo de Utiliza��o da Vers�o de Demonstra��o Expirou.'+Chr(13)+Chr(10)+Chr(13)+Chr(10)+'Entre em Contato com:'+Chr(13)+Chr(10)+Chr(13)+Chr(10)+'Datatex Inform�tica e Servi�os Ltda'+Chr(13)+Chr(10)+Chr(13)+Chr(10)+'Fone: (0xx11) 4476-9175'+Chr(13)+Chr(10)+'E-Mail: datatex@datatex.com.br');
           Cliente00.Close;
        End;

        End

     Else
        Begin
        Cliente00.Close;
     End;
end;

procedure TCliente00.BT_ProcurarClick(Sender: TObject);
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

procedure TCliente00.BT_IncluirClick(Sender: TObject);
begin
     Cliente00.Visible := False;

     Application.CreateForm(TCliente01,Cliente01);
     Cliente01.ShowModal;
     Cliente01.Destroy;

     Cliente00.Visible := True;
end;

procedure TCliente00.Dados_ProcuraKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente00.Opcoes_ProcuraKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TCliente00.DBGrid_ClientesCellClick(Column: TColumn);

var
   Codigo_Cliente, Tipo_Codigo_Cliente, Nro_Transportadora: String;

begin
     If DBGrid_Clientes.Fields[0].Text <> '' Then
        Begin

           Cliente00.Visible := False;

           Ampulheta();
           Application.CreateForm(TCliente02,Cliente02);

           //*** Obtem os Dados do Cliente ***

           Codigo_Cliente      := DBGrid_Clientes.Fields[0].Text;
           Tipo_Codigo_Cliente := DBGrid_Clientes.Fields[1].Text;

           ConexaoBD.SQL_Clientes.Close;
           ConexaoBD.SQL_Clientes.SQL.Clear;

           If Tipo_Codigo_Cliente = 'CNPJ' Then
              Begin
              ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_codigo = ' + #39 + Trim(Codigo_Cliente) + #39 );
              End
           Else If Tipo_Codigo_Cliente = 'CPF' Then
              Begin
              ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_codigo = ' + #39 + Trim(Codigo_Cliente) + #39 );
              End
           Else If Tipo_Codigo_Cliente = 'RG' Then
              Begin
              ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_codigo = ' + #39 + Trim(Codigo_Cliente) + #39 );
              End
           Else If Tipo_Codigo_Cliente = 'E-Mail' Then
              Begin
              ConexaoBD.SQL_Clientes.SQL.Add('Select * from Clientes Where Cliente_codigo = ' + #39 + Trim(Codigo_Cliente) + #39 );
           End;

           ConexaoBD.SQL_Clientes.Open;

           //*** Carrega os Dados Obtidos ***

           If Tipo_Codigo_Cliente = 'CNPJ' Then
              Begin
              Cliente02.Cliente_Codigo_CNPJ.Text  := ConexaoBD.SQL_ClientesCliente_codigo.AsString;
              End
           Else If Tipo_Codigo_Cliente = 'CPF' Then
              Begin
              Cliente02.Cliente_Codigo_CPF.Text   := ConexaoBD.SQL_ClientesCliente_codigo.AsString;
              End
           Else If Tipo_Codigo_Cliente = 'RG' Then
              Begin
              Cliente02.Cliente_Codigo_RG.Text    := ConexaoBD.SQL_ClientesCliente_codigo.AsString;
              End
           Else If Tipo_Codigo_Cliente = 'E-Mail' Then
              Begin
              Cliente02.Cliente_Codigo_EMail.Text := ConexaoBD.SQL_ClientesCliente_codigo.AsString;
           End;

           Cliente02.Cliente_Codigo_Tipo.ItemIndex     := Obtem_Nro_Tipo_Codigo(ConexaoBD.SQL_ClientesCliente_codigo_tipo.Text);
           Cliente02.Cliente_Nome.Text                 := ConexaoBD.SQL_ClientesCliente_nome.Text;
           Cliente02.Cliente_Razao_Social.Text         := ConexaoBD.SQL_ClientesCliente_razao_social.Text;
           Cliente02.Cliente_Inscricao_Municipal.Text  := ConexaoBD.SQL_ClientesCliente_inscricao_municipal.Text;
           Cliente02.Cliente_Inscricao_Estadual.Text   := ConexaoBD.SQL_ClientesCliente_inscricao_estadual.Text;
           Cliente02.Cliente_Endereco.Text             := ConexaoBD.SQL_ClientesCliente_endereco.Text;
           Cliente02.Cliente_Complemento.Text          := ConexaoBD.SQL_ClientesCliente_complemento.Text;
           Cliente02.Cliente_Bairro.Text               := ConexaoBD.SQL_ClientesCliente_bairro.Text;
           Cliente02.Cliente_Cidade.Text               := ConexaoBD.SQL_ClientesCliente_cidade.Text;
           Cliente02.Cliente_Estado.ItemIndex          := Obtem_Nro_Estado(ConexaoBD.SQL_ClientesCliente_estado.Text);
           Cliente02.Cliente_Cep.Text                  := ConexaoBD.SQL_ClientesCliente_cep.Text;
           Cliente02.Cliente_Fone.Text                 := ConexaoBD.SQL_ClientesCliente_Fone.Text;
           Cliente02.Cliente_Fax.Text                  := ConexaoBD.SQL_ClientesCliente_Fax.Text;
           Cliente02.Cliente_Endereco_Cobranca.Text    := ConexaoBD.SQL_ClientesCliente_endereco_cobranca.Text;
           Cliente02.Cliente_Complemento_Cobranca.Text := ConexaoBD.SQL_ClientesCliente_complemento_cobranca.Text;
           Cliente02.Cliente_Bairro_Cobranca.Text      := ConexaoBD.SQL_ClientesCliente_bairro_cobranca.Text;
           Cliente02.Cliente_Cidade_Cobranca.Text      := ConexaoBD.SQL_ClientesCliente_cidade_cobranca.Text;
           Cliente02.Cliente_Estado_Cobranca.ItemIndex := Obtem_Nro_Estado(ConexaoBD.SQL_ClientesCliente_estado_cobranca.Text);
           Cliente02.Cliente_Cep_Cobranca.Text         := ConexaoBD.SQL_ClientesCliente_cep_cobranca.Text;
           Cliente02.Cliente_Fone_Cobranca.Text        := ConexaoBD.SQL_ClientesCliente_Fone_cobranca.Text;
           Cliente02.Cliente_Fax_Cobranca.Text         := ConexaoBD.SQL_ClientesCliente_Fax_cobranca.Text;
           Cliente02.Cliente_Valor_Credito.Text        := ConexaoBD.SQL_ClientesCliente_valor_credito.Text;
           Cliente02.Cliente_Tipo_Pessoa.ItemIndex     := Obtem_Nro_Tipo_Pessoa(ConexaoBD.SQL_ClientesCliente_tipo_pessoa.Text);
           Cliente02.Cliente_Data_Inclusao.Text        := ConexaoBD.SQL_ClientesCliente_data_inclusao.Text;
           Cliente02.Cliente_Data_Visita.Text          := ConexaoBD.SQL_ClientesCliente_data_visita.Text;
           Cliente02.Cliente_Data_Alteracao.Text       := ConexaoBD.SQL_ClientesCliente_data_alteracao.Text;
           Cliente02.Cliente_Data_Ultima_Compra.Text   := ConexaoBD.SQL_ClientesCliente_data_ultima_compra.Text;
           Cliente02.Cliente_Ultimo_Valor.Text         := ConexaoBD.SQL_ClientesCliente_ultimo_valor.Text;
           Cliente02.Contato1_Nome.Text                := ConexaoBD.SQL_ClientesContato1_Nome.Text;
           Cliente02.Contato1_Depto.Text               := ConexaoBD.SQL_ClientesContato1_Depto.Text;
           Cliente02.Contato1_DDD.Text                 := ConexaoBD.SQL_ClientesContato1_DDD.Text;
           Cliente02.Contato1_Fone.Text                := ConexaoBD.SQL_ClientesContato1_Fone.Text;
           Cliente02.Contato1_Fax.Text                 := ConexaoBD.SQL_ClientesContato1_Fax.Text;
           Cliente02.Contato1_Email.Text               := ConexaoBD.SQL_ClientesContato1_Email.Text;
           Cliente02.Contato2_Nome.Text                := ConexaoBD.SQL_ClientesContato2_Nome.Text;
           Cliente02.Contato2_Depto.Text               := ConexaoBD.SQL_ClientesContato2_Depto.Text;
           Cliente02.Contato2_DDD.Text                 := ConexaoBD.SQL_ClientesContato2_DDD.Text;
           Cliente02.Contato2_Fone.Text                := ConexaoBD.SQL_ClientesContato2_Fone.Text;
           Cliente02.Contato2_Fax.Text                 := ConexaoBD.SQL_ClientesContato2_Fax.Text;
           Cliente02.Contato2_Email.Text               := ConexaoBD.SQL_ClientesContato2_Email.Text;
           Cliente02.Contato3_Nome.Text                := ConexaoBD.SQL_ClientesContato3_Nome.Text;
           Cliente02.Contato3_Depto.Text               := ConexaoBD.SQL_ClientesContato3_Depto.Text;
           Cliente02.Contato3_DDD.Text                 := ConexaoBD.SQL_ClientesContato3_DDD.Text;
           Cliente02.Contato3_Fone.Text                := ConexaoBD.SQL_ClientesContato3_Fone.Text;
           Cliente02.Contato3_Fax.Text                 := ConexaoBD.SQL_ClientesContato3_Fax.Text;
           Cliente02.Contato3_Email.Text               := ConexaoBD.SQL_ClientesContato3_Email.Text;

           Cliente02.Cliente_DDD.Text                  := ConexaoBD.SQL_ClientesCliente_DDD.Text;
           Cliente02.Cliente_Ramal.Text                := ConexaoBD.SQL_ClientesCliente_Ramal.Text;

           Cliente02.Cliente_DDD_Cobranca.Text         := ConexaoBD.SQL_ClientesCliente_DDD_Cobranca.Text;
           Cliente02.Cliente_Ramal_Cobranca.Text       := ConexaoBD.SQL_ClientesCliente_Ramal_Cobranca.Text;

           Cliente02.Cliente_Observacoes.Lines.Clear;
           Cliente02.Cliente_Observacoes.Lines.Add(DBG_Cliente_Observacao.Text);

           Cliente02.Cliente_Pais.ItemIndex := Obtem_Nro_Pais(ConexaoBD.SQL_ClientesCliente_pais.Text);
           Cliente02.Cliente_Pais_Cobranca.ItemIndex   := Obtem_Nro_Pais(ConexaoBD.SQL_ClientesCliente_pais_cobranca.Text);

           Cliente02.Cliente_Opcao_Cobranca.ItemIndex  := Obtem_Nro_Opcao_Cobranca(ConexaoBD.SQL_ClientesCliente_opcao_cobranca.Text);

           Cliente02.VTransportadora_Numero.Text       := ConexaoBD.SQL_ClientesCliente_Transportadora_Numero.Text;

           //*** Fecha SQL ***

           ConexaoBD.SQL_Clientes.Close;

           //*** Busca a Transportadora ***

           If ((Trim(Cliente02.VTransportadora_Numero.Text) <> '') And (Trim(Cliente02.VTransportadora_Numero.Text) <> '0')) Then
              Begin
              ConexaoBD.SQL_Transportadoras.Close;
              ConexaoBD.SQL_Transportadoras.SQL.Clear;
              ConexaoBD.SQL_Transportadoras.SQL.Add('Select * from Transportadoras Where Transportadora_Numero = ' + Trim(Cliente02.VTransportadora_Numero.Text) );
              ConexaoBD.SQL_Transportadoras.Open;

              Cliente02.VTransportadora_Numero.Text        := ConexaoBD.SQL_TransportadorasTransportadora_Numero.Text;
              Cliente02.VTransportadora_CNPJ.Text          := ConexaoBD.SQL_TransportadorasTransportadora_CNPJ.Text;
              Cliente02.VTransportadora_Nome.Text          := ConexaoBD.SQL_TransportadorasTransportadora_nome.Text;
              Cliente02.VTransportadora_Endereco.Text      := ConexaoBD.SQL_TransportadorasTransportadora_endereco.Text;
              Cliente02.VTransportadora_Complemento.Text   := ConexaoBD.SQL_TransportadorasTransportadora_complemento.Text;
              Cliente02.VTransportadora_Bairro.Text        := ConexaoBD.SQL_TransportadorasTransportadora_bairro.Text;
              Cliente02.VTransportadora_Cidade.Text        := ConexaoBD.SQL_TransportadorasTransportadora_cidade.Text;
              Cliente02.VTransportadora_Estado.ItemIndex   := Obtem_Nro_Estado(ConexaoBD.SQL_TransportadorasTransportadora_estado.Text);
              Cliente02.VTransportadora_CEP.Text           := ConexaoBD.SQL_TransportadorasTransportadora_cep.Text;
              Cliente02.VTransportadora_Pais.ItemIndex     := Obtem_Nro_Pais(ConexaoBD.SQL_TransportadorasTransportadora_pais.Text);
              Cliente02.VTransportadora_Contato.Text       := ConexaoBD.SQL_TransportadorasTransportadora_Contato.Text;
              Cliente02.VTransportadora_DDD.Text           := ConexaoBD.SQL_TransportadorasTransportadora_DDD.Text;
              Cliente02.VTransportadora_Ramal.Text         := ConexaoBD.SQL_TransportadorasTransportadora_Ramal.Text;
              Cliente02.VTransportadora_Fone.Text          := ConexaoBD.SQL_TransportadorasTransportadora_Fone.Text;
              Cliente02.VTransportadora_Fax.Text           := ConexaoBD.SQL_TransportadorasTransportadora_Fax.Text;
              Cliente02.VTransportadora_Email.Text         := ConexaoBD.SQL_TransportadorasTransportadora_Email.Text;
              End
           Else
              Begin
              Cliente02.VTransportadora_Numero.Text        := '';
              Cliente02.VTransportadora_CNPJ.Text          := '';
              Cliente02.VTransportadora_Nome.Text          := '';
              Cliente02.VTransportadora_Endereco.Text      := '';
              Cliente02.VTransportadora_Complemento.Text   := '';
              Cliente02.VTransportadora_Bairro.Text        := '';
              Cliente02.VTransportadora_Cidade.Text        := '';
              Cliente02.VTransportadora_Estado.ItemIndex   := 24;
              Cliente02.VTransportadora_CEP.Text           := '';
              Cliente02.VTransportadora_Pais.ItemIndex     := 0;
              Cliente02.VTransportadora_Contato.Text       := '';
              Cliente02.VTransportadora_DDD.Text           := '';
              Cliente02.VTransportadora_Ramal.Text         := '';
              Cliente02.VTransportadora_Fone.Text          := '';
              Cliente02.VTransportadora_Fax.Text           := '';
              Cliente02.VTransportadora_Email.Text         := '';
           End;

           Seta();

           Cliente02.ShowModal;
           Cliente02.Destroy;

           Cliente00.Visible := True;
     End
End;

procedure TCliente00.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Fecha_Conexao();
end;

procedure TCliente00.Sair1Click(Sender: TObject);
begin
     Cliente00.Close;
end;

procedure TCliente00.ListagemdeClientes1Click(Sender: TObject);
begin
     Cliente00.Visible := False;

     Application.CreateForm(TRelListagemClientes00,RelListagemClientes00);
     RelListagemClientes00.QR_Listagem_Clientes.Preview;
     RelListagemClientes00.Destroy;

     Cliente00.Visible := True;
end;

procedure TCliente00.BackupReparao1Click(Sender: TObject);
begin
     Ampulheta();

     Compacta_BD();

     // Fecha o Aplicativo

     Seta();

     ShowMessage('O CadaTEX ser� Fechado, para finaliza��o do Processo !!!');

     Cliente00.Close;
end;

procedure TCliente00.Compacta_BD();

var
   Caminho, Caminho_Resultado, DT_Arquivo: String;
   Dao: OLEVariant;

Begin
     Ampulheta();

     Fecha_Conexao();

     //*** Prepara a Conex�o com as Tabelas e Querys ***

     ConexaoBD.Conexao_Principal.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\CadaTEX\BD\CadaTEX.mdb;Mode=Read|Write;Persist Security Info=False';
     ConexaoBD.Conexao_Principal.Connected := True;

     //*** Carrega a Conex�o da Esta��o Local ***

     conexaoBD.SQL_Conexao.Close;
     conexaoBD.SQL_Conexao.SQL.Clear;
     conexaoBD.SQL_Conexao.SQL.Add('Select * from Conexao');
     conexaoBD.SQL_Conexao.Open;

     Caminho_Resultado  := conexaoBD.SQL_Conexao.FieldValues['Conexao_caminho'];
     Caminho := Caminho_Resultado;
     Caminho := Trim(Caminho);
     Caminho := Trim(Caminho[1]);

//*** Fecha as Conex�es ***

     Fecha_Conexao();

//*** Prepara a Compacta��o do BD ***

     If UpperCase(Caminho) = 'C' Then
        Begin
        DT_Arquivo := Trim(DateToStr(Date()));
        DT_Arquivo := DT_Arquivo[1]+DT_Arquivo[2]+DT_Arquivo[4]+DT_Arquivo[5]+DT_Arquivo[7]+DT_Arquivo[8]+DT_Arquivo[9]+DT_Arquivo[10];
        DT_Arquivo := Trim(DT_Arquivo);

        //*** Compacta��o do Arquivo ***

        Dao := CreateOleObject('DAO.DBEngine.36');
        Dao.CompactDatabase('C:\CadaTEX\BD\CadaTEX.mdb','C:\CadaTEX\BD\CadaTEX_Compact.mdb');
        Dao:=Unassigned;

        DeleteFile('C:\CadaTEX\BD\CadaTEX.mdb');
        CopyFile(PChar('C:\CadaTEX\BD\CadaTEX_Compact.mdb'),PChar('C:\CadaTEX\Backup\CadaTEX_'+DT_Arquivo+'.mdb'),True);
        RenameFile('C:\CadaTEX\BD\CadaTEX_Compact.mdb','C:\CadaTEX\BD\CadaTEX.mdb')
     End;

     Seta();
end;

procedure TCliente00.RegistrodeLigaes1Click(Sender: TObject);
begin
     Cliente00.Visible := False;

     Application.CreateForm(TRelRegistroLigacoes00,RelRegistroLigacoes00);
     RelRegistroLigacoes00.QR_Registro_Ligacoes.Preview;
     RelRegistroLigacoes00.Destroy;

     Cliente00.Visible := True;
end;

procedure TCliente00.FichadeClientes1Click(Sender: TObject);
begin
     Cliente00.Visible := False;

     Application.CreateForm(TRelFichaCliente00,RelFichaCliente00);
     RelFichaCliente00.QR_Ficha_Cliente.Preview;
     RelFichaCliente00.Destroy;

     Cliente00.Visible := True;
end;

procedure TCliente00.Etiquetas1Click(Sender: TObject);

var
   Linha, Ind, Qtde_Vezes: Integer;

begin
 If Confirma('A Impressora Matricial est� Posicionada com as Etiquetas (Formato: 107x23mm)?') = 6 Then
    Begin

    //*** Posiciona da Etiqueta ***

    Ampulheta();

    Linha := 1;
    Imprimir.PoeStr(Linha,001, #27#15 + '***********************************************************************');

    Linha := Linha + 1;
    Imprimir.PoeStr(Linha,001, '**********************************************************************');

    Linha := Linha + 1;
    Imprimir.PoeStr(Linha,001, '**********************************************************************');

    Linha := Linha + 1;
    Imprimir.PoeStr(Linha,001, '**********************************************************************');

    Linha := Linha + 1;
    Imprimir.PoeStr(Linha,001, '**********************************************************************');

    Imprimir.ImprimeJob;
    Imprimir.LimpaBuffer;

    Seta();

    While Confirma('A Posi��o est� Correta ?') <> 6 Do
          Begin
          Ampulheta();

          Linha := 1;
          Imprimir.PoeStr(Linha,001, #27#15 + '***********************************************************************');

          Linha := Linha + 1;
          Imprimir.PoeStr(Linha,001, '**********************************************************************');

          Linha := Linha + 1;
          Imprimir.PoeStr(Linha,001, '**********************************************************************');

          Linha := Linha + 1;
          Imprimir.PoeStr(Linha,001, '**********************************************************************');

          Linha := Linha + 1;
          Imprimir.PoeStr(Linha,001, '**********************************************************************');

          Imprimir.ImprimeJob;
          Imprimir.LimpaBuffer;

          Seta();
    End;

    Ampulheta();

    //*** Impress�o da Etiqueta ***

    If ConexaoBD.SQL_Clientes.RecordCount > 0 Then
       Begin
       ConexaoBD.SQL_Clientes.First;

       While Not ConexaoBD.SQL_Clientes.Eof Do
           Begin

           Ind := 0;

           Linha := 1;
           Imprimir.PoeStr(Linha,001, #27#15 + Letra_Maiuscula(Copy(Trim(ConexaoBD.SQL_ClientesCliente_Nome.Text),1,70)) );

           Linha := Linha + 2;
           Imprimir.PoeStr(Linha,001, Letra_Maiuscula(Copy(Trim(ConexaoBD.SQL_ClientesCliente_Endereco_Cobranca.Text) + '   ' + Trim(ConexaoBD.SQL_ClientesCliente_Complemento_Cobranca.Text),1,70)) );

           Linha := Linha + 1;
           Imprimir.PoeStr(Linha,001, Letra_Maiuscula(Copy(Trim(ConexaoBD.SQL_ClientesCliente_Bairro_Cobranca.Text) + ' - ' + Trim(ConexaoBD.SQL_ClientesCliente_Cidade_Cobranca.Text) + ' - ' + Trim(ConexaoBD.SQL_ClientesCliente_Estado_Cobranca.Text),1,70)) );

           Linha := Linha + 1;
           Imprimir.PoeStr(Linha,001, Letra_Maiuscula(Copy('CEP: ' + Trim(ConexaoBD.SQL_ClientesCliente_Cep_Cobranca.Text),1,70)) );

           Imprimir.ImprimeJob;
           Imprimir.LimpaBuffer;

           Sleep(3000);

           ConexaoBD.SQL_Clientes.Next;
       End;
    End;

    Seta();

    MSG_Erro('Impress�o Finalizada...');

 End;   
end;

procedure TCliente00.Transportadora1Click(Sender: TObject);
begin
     Cliente00.Visible := False;

     Application.CreateForm(TTransportadora01,Transportadora01);
     Transportadora01.ShowModal;
     Transportadora01.Destroy;

     Cliente00.Visible := True;
end;

procedure TCliente00.Locao1Click(Sender: TObject);
begin
     Cliente00.Visible := False;

     Application.CreateForm(TRelLocacao00,RelLocacao00);
     RelLocacao00.ShowModal;
     RelLocacao00.Destroy;

     Cliente00.Visible := True;
end;

procedure TCliente00.Cotao1Click(Sender: TObject);
begin
     Cliente00.Visible := False;

     Application.CreateForm(TRelCotacao00,RelCotacao00);
     RelCotacao00.ShowModal;
     RelCotacao00.Destroy;

     Cliente00.Visible := True;
end;

procedure TCliente00.Manuteno1Click(Sender: TObject);
begin
     Cliente00.Visible := False;

     Application.CreateForm(TRelManutencao00,RelManutencao00);
     RelManutencao00.ShowModal;
     RelManutencao00.Destroy;

     Cliente00.Visible := True;
end;

procedure TCliente00.NotaFiscal1Click(Sender: TObject);
begin
   Application.CreateForm(TNF_Datatex00,NF_Datatex00);

   NF_Datatex00.Empresa.Text := 'NS Equipamentos - Servi�os';

   NF_Datatex00.ShowModal;
   NF_Datatex00.Destroy;
end;

procedure TCliente00.Equipamentos1Click(Sender: TObject);
begin
     Cliente00.Visible := False;

     Application.CreateForm(TRelEquipamentos00,RelEquipamentos00);
     RelEquipamentos00.ShowModal;
     RelEquipamentos00.Destroy;

     Cliente00.Visible := True;
end;

procedure TCliente00.Rede1Click(Sender: TObject);
begin
     Cliente00.Visible := False;

     Application.CreateForm(TConexao,Conexao);

     conexaoBD.SQL_Conexao.Close;
     conexaoBD.SQL_Conexao.SQL.Clear;
     conexaoBD.SQL_Conexao.SQL.Add('Select * from Conexao');
     conexaoBD.SQL_Conexao.Open;

     Conexao.conexao_caminho.Text := conexaoBD.SQL_Conexao.FieldValues['Conexao_caminho'];

     conexaoBD.SQL_Conexao.Close;

     Conexao.ShowModal;
     Conexao.Destroy;

     Cliente00.Visible := True;
     Cliente00.Close;
end;

procedure TCliente00.NotaFiscalProdutos1Click(Sender: TObject);
begin
   Application.CreateForm(TNF_DatatexPro00,NF_DatatexPro00);

   NF_DatatexPro00.Empresa.Text := 'NS Equipamentos - Produtos';

   NF_DatatexPro00.ShowModal;
   NF_DatatexPro00.Destroy;
end;

procedure TCliente00.ApplicationEvents1Message(var Msg: tagMSG;
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

procedure TCliente00.Com7pras1Click(Sender: TObject);
begin
     Cliente00.Visible := False;

     Application.CreateForm(TRelCompras00,RelCompras00);
     RelCompras00.ShowModal;
     RelCompras00.Destroy;

     Cliente00.Visible := True;
end;

procedure TCliente00.EtiquetasPIMACO1Click(Sender: TObject);
begin
     Cliente00.Visible := False;

     Application.CreateForm(TRelEtiquetasPimaco00,RelEtiquetasPimaco00);
     RelEtiquetasPimaco00.QR_Listagem_Clientes.Preview;
     RelEtiquetasPimaco00.Destroy;

     Cliente00.Visible := True;
end;

end.
