unit Rotinas_Gerais;

interface

uses SysUtils, Forms, Windows, Messages, Variants, Classes, Graphics, Controls,
     Dialogs, Menus, ExtCtrls, StdCtrls, ComCtrls, TabNotBk, DB, DBTables, DBCtrls;

// ******************
// ***** Funções ****
// ******************

function MostraData:String;
function MostraData_Extenso:String;
function MSG_Erro(strTexto: String): Integer;
function Confirma(strTexto: String): Integer;
function Numero_HD(FDrive:String): String;
function Encripta_HD(FDrive:String): String;
function Ponto_Virgula(Valor: String): String;
function Virgula_Ponto(Valor: String): String;
function Valida_Data(StrData: String):Boolean;
function Inverte_Data(DT: String): String;
function Inverte_Data_Plus(DT, Formato, Separador: String): String;
function Valida_CPF(num_cpf: String): Boolean;
function Valida_CNPJ(xCNPJ: String):Boolean;
function Obtem_Nro_Estado(Estado: String): Integer;
function Obtem_Nro_Pais(Pais: String): Integer;
function Obtem_Nro_Mes(Mes: String): Integer;

function Obtem_Nro_Antes_Traco(Texto: String): String;
function Obtem_Depois_Traco(Texto: String): String;
function Obtem_Nro_Tipo_Codigo(Tipo_Codigo: String): Integer;
function Obtem_Nro_Status_Credito(Status_Credito: String): Integer;
function Obtem_Nro_Tipo_Pessoa(Tipo_Pessoa: String): Integer;
function Obtem_Nro_Opcao_Cobranca(Opcao_Cobranca: String): Integer;

function Letra_Maiuscula(Texto: String): string;

function FindReplace(const Enc, subs, Texto: String): String;
function Espacos(Qtde: Integer): String;
function Tamanho(Texto: String; Qtde: Integer): String;

// ******************
// *** Procedures ***
// ******************

procedure Seta();
procedure Ampulheta();
procedure So_Valor(Sender: TObject; var Key: Char);
procedure So_Numero(Sender: TObject; var Key: Char);
procedure Delay(msecs :Integer);
procedure Abre_Conexao();
procedure Fecha_Conexao();

// *******************************
// *** Processamento Principal ***
// *******************************

implementation

uses Conexao_BD;


// ***************
// *** Funções ***
// ***************

function MostraData: String;

var
   dtHoje: TDateTime;
   intDiaSemana: Integer;
   strDiaSemana: String;

begin
     dtHoje := Date;
     intDiaSemana := DayOfWeek(dtHoje);
     case intDiaSemana of
          1: strDiaSemana := 'Domingo - ';
          2: strDiaSemana := 'Segunda-feira - ';
          3: strDiaSemana := 'Terça-feira - ';
          4: strDiaSemana := 'Quarta-feira - ';
          5: strDiaSemana := 'Quinta-feira - ';
          6: strDiaSemana := 'Sexta-feira - ';
          7: strDiaSemana := 'Sábado - ';
     end;
     Result := strDiaSemana + DateToStr(dtHoje);
end;

function MostraData_Extenso: String;

var
   dtHoje: TDateTime;
   intDiaSemana: Integer;
   strDiaSemana: String;
   Data_Ext, Mes_Ext: String;

begin
     dtHoje := Date;
     intDiaSemana := DayOfWeek(dtHoje);
     case intDiaSemana of
          1: strDiaSemana := 'Domingo, ';
          2: strDiaSemana := 'Segunda-feira, ';
          3: strDiaSemana := 'Terça-feira, ';
          4: strDiaSemana := 'Quarta-feira, ';
          5: strDiaSemana := 'Quinta-feira, ';
          6: strDiaSemana := 'Sexta-feira, ';
          7: strDiaSemana := 'Sábado, ';
     end;

     Data_Ext := DateToStr(dtHoje);
     Mes_Ext  := Data_Ext[4] + Data_ext[5];

     If Mes_Ext = '01' Then
        Begin
        Mes_Ext := 'Janeiro';
        End
     Else If Mes_Ext = '02' Then
        Begin
        Mes_Ext := 'Fevereiro';
        End
     Else If Mes_Ext = '03' Then
        Begin
        Mes_Ext := 'Março';
        End
     Else If Mes_Ext = '04' Then
        Begin
        Mes_Ext := 'Abril';
        End
     Else If Mes_Ext = '05' Then
        Begin
        Mes_Ext := 'Maio';
        End
     Else If Mes_Ext = '06' Then
        Begin
        Mes_Ext := 'Junho';
        End
     Else If Mes_Ext = '07' Then
        Begin
        Mes_Ext := 'Julho';
        End
     Else If Mes_Ext = '08' Then
        Begin
        Mes_Ext := 'Agosto';
        End
     Else If Mes_Ext = '09' Then
        Begin
        Mes_Ext := 'Setembro';
        End
     Else If Mes_Ext = '10' Then
        Begin
        Mes_Ext := 'Outubro';
        End
     Else If Mes_Ext = '11' Then
        Begin
        Mes_Ext := 'Novembro';
        End
     Else If Mes_Ext = '12' Then
        Begin
        Mes_Ext := 'Dezembro';
     End;

     Result := strDiaSemana + Data_Ext[1] + Data_ext[2] + ' de ' + Mes_Ext + ' de ' + Data_Ext[7] + Data_ext[8] + Data_ext[9] + Data_ext[10];
end;

function MSG_Erro(strTexto: String):Integer;
begin
     Result := Application.MessageBox(PChar(strTexto),'Atenção !!!',mb_OK+mb_IconExclamation);
end;

function Confirma(strTexto: String):Integer;
begin
     Result := Application.MessageBox(PChar(strTexto),'Confirmação',mb_YesNo+mb_DefButton2+mb_IconQuestion);
end;

function Numero_HD(FDrive:String): String;

var
    Serial:DWord;
    DirLen,Flags: DWord;
    DLabel : Array[0..11] of Char;

begin
     Try
        GetVolumeInformation(PChar(FDrive+':\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
        Result := IntToHex(Serial,8);
        Except Result :='';
     end;
end;

function Encripta_HD(FDrive:String): String;

var
   Ind: Integer;
   Encriptado: String;

begin
     Encriptado := '*';
     For Ind := 1 To Length( Trim(FDrive) ) do
         begin
         if (FDrive[Ind] in ['0'..'9']) Then
            begin
            Encriptado := Encriptado +  Chr(Ord(FDrive[Ind]) - 22);
            end
         else
            begin
            Encriptado := Encriptado +  Chr(Ord(FDrive[Ind]) - 64);
         end;
     end;
     Encriptado := Encriptado + '*';

     Result := Encriptado;
end;

function Ponto_Virgula(Valor: String): String;

Var
   Ind: Integer;

begin
     if Length(Valor) > 0 then
        begin
        for Ind := 0 to Length(Valor) do
            begin
            if Valor[Ind] = '.' then
               begin
               Valor[Ind] := ',';
            end;
        end;
     end;
     Ponto_Virgula := valor;
end;

function Virgula_Ponto(Valor: String): String;

Var
   Ind: Integer;

begin
     if Length(Valor) > 0 then
        begin
        for Ind := 0 to Length(Valor) do
            begin
            if Valor[Ind] = ',' then
               begin
               Valor[Ind] := '.';
            end;
        end;
     end;
     Virgula_Ponto := valor;
end;

function Valida_Data(StrData: String):Boolean;
begin
     Result := True;
     try
        StrToDate(StrData);
     except
        on EConvertError do
           Result := False;
     end;
end;

function Inverte_Data(DT: String): String;

var
  Ano, Mes, Dia: Word;
  Str_Ano, Str_Mes, Str_Dia, Str_Data: String;

begin
     DecodeDate(StrToDate(DT), Ano, Mes, Dia);

     Str_Ano := IntToStr(Ano);
     Str_Mes := IntToStr(Mes);
     Str_Dia := IntToStr(Dia);

     Str_Data := Trim(Str_Mes)+'/'+Trim(Str_Dia)+'/'+Trim(Str_Ano);

     Inverte_Data := Str_Data;
end;

function Inverte_Data_Plus(DT, Formato, Separador: String): String;
var
  Ano, Mes, Dia: Word;
  Str_Ano, Str_Mes, Str_Dia, Str_Data: String;

begin
     If ((Trim(DT) <> '') And (Trim(DT) <> '/  /')) Then
        Begin
        DecodeDate(StrToDate(DT), Ano, Mes, Dia);

        Str_Ano := IntToStr(Ano);
        Str_Mes := IntToStr(Mes);
        Str_Dia := IntToStr(Dia);

        If Formato = 'dma' Then
           Begin
           Str_Data := Trim(Str_Dia)+Trim(Separador)+Trim(Str_Mes)+Trim(Separador)+Trim(Str_Ano);
           End
        Else If Formato = 'amd' Then
           Begin
           Str_Data := Trim(Str_Ano)+Trim(Separador)+Trim(Str_Mes)+Trim(Separador)+Trim(Str_Dia);
           End
        Else If Formato = 'mda' Then
           Begin
           Str_Data := Trim(Str_Mes)+Trim(Separador)+Trim(Str_Dia)+Trim(Separador)+Trim(Str_Ano);
           End
        Else If Formato = 'mad' Then
           Begin
           Str_Data := Trim(Str_Mes)+Trim(Separador)+Trim(Str_Ano)+Trim(Separador)+Trim(Str_Dia);
        End;
        End
     Else
        Begin
        Str_Data := '';
     End;

     Inverte_Data_Plus := Str_Data;
end;

function Valida_CPF(num_cpf: String): Boolean;

var
   n1,n2,n3,n4,n5,n6,n7,n8,n9: Integer;
   d1,d2,Ind: Integer;
   num, digitado, calculado: String;

begin
     num := '';

     for Ind := 0 to Length(num_cpf) do
         begin
         if (num_cpf[Ind] = '0') or
            (num_cpf[Ind] = '1') or
            (num_cpf[Ind] = '2') or
            (num_cpf[Ind] = '3') or
            (num_cpf[Ind] = '4') or
            (num_cpf[Ind] = '5') or
            (num_cpf[Ind] = '6') or
            (num_cpf[Ind] = '7') or
            (num_cpf[Ind] = '8') or
            (num_cpf[Ind] = '9') then
            begin
            num := num + num_cpf[Ind];
         end;
     end;

     num := trim(num);

     if Length(num) = 1 then
        begin
        num := '0000000000' + num;
        end
     else if Length(num) = 2 then
        begin
        num := '000000000' + num;
        end
     else if Length(num) = 3 then
        begin
        num := '00000000' + num;
        end
     else if Length(num) = 4 then
        begin
        num := '0000000' + num;
        end
     else if Length(num) = 5 then
        begin
        num := '000000' + num;
        end
     else if Length(num) = 6 then
        begin
        num := '00000' + num;
        end
     else if Length(num) = 7 then
        begin
        num := '0000' + num;
        end
     else if Length(num) = 8 then
        begin
        num := '000' + num;
        end
     else if Length(num) = 9 then
        begin
        num := '00' + num;
        end
     else if Length(num) = 10 then
        begin
        num := '0' + num;
     end;

     n1 := StrToInt(num[1]);
     n2 := StrToInt(num[2]);
     n3 := StrToInt(num[3]);
     n4 := StrToInt(num[4]);
     n5 := StrToInt(num[5]);
     n6 := StrToInt(num[6]);
     n7 := StrToInt(num[7]);
     n8 := StrToInt(num[8]);
     n9 := StrToInt(num[9]);
     d1 := n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
     d1 := 11-(d1 mod 11);

     if d1 >= 10 then
        begin
        d1 := 0;
     end;

     d2 := d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
     d2 := 11-(d2 mod 11);

     if d2>=10 then
        begin
        d2 := 0;
     end;

     calculado := inttostr(d1) + inttostr(d2);
     digitado  := num[10] + num[11];

     if calculado = digitado then
        begin
        Valida_CPF := True;
        end
     else
        begin
        Valida_CPF := False;
     end;
end;

function Valida_CNPJ(xCNPJ: String):Boolean;

Var
  d1,d4,xx,nCount,fator,resto,digito1,digito2 : Integer;
  Check : String;

begin
     d1 := 0;
     d4 := 0;
     xx := 1;

     for nCount := 1 to Length( xCNPJ )-2 do
         begin
         if Pos( Copy( xCNPJ, nCount, 1 ), '/-.' ) = 0 then
            begin
            if xx < 5 then
               begin
               fator := 6 - xx;
               end
            else
               begin
               fator := 14 - xx;
            end;
            d1 := d1 + StrToInt( Copy( xCNPJ, nCount, 1 ) ) * fator;
            if xx < 6 then
               begin
               fator := 7 - xx;
               end
            else
               begin
               fator := 15 - xx;    end;
               d4 := d4 + StrToInt( Copy( xCNPJ, nCount, 1 ) ) * fator;
               xx := xx+1;
            end;
         end;
         resto := (d1 mod 11);
         if resto < 2 then
            begin
            digito1 := 0;
            end
         else
            begin
            digito1 := 11 - resto;
         end;
         d4 := d4 + 2 * digito1;
         resto := (d4 mod 11);
         if resto < 2 then
            begin
            digito2 := 0;
            end
         else
            begin
            digito2 := 11 - resto;
         end;
         Check := IntToStr(Digito1) + IntToStr(Digito2);
         if Check <> copy(xCNPJ,succ(length(xCNPJ)-2),2) then
            begin
            Result := False;
            end
         else
            begin
            Result := True;
     end;
end;

function Obtem_Nro_Estado(Estado: String): Integer;

var
   Ind, Resultado: Integer;
   Relacao_Estado: Array[0..27] of String;

begin
     //Carrega o Array

     Relacao_Estado[0]  := 'AC';
     Relacao_Estado[1]  := 'AL';
     Relacao_Estado[2]  := 'AP';
     Relacao_Estado[3]  := 'AM';
     Relacao_Estado[4]  := 'BA';
     Relacao_Estado[5]  := 'CE';
     Relacao_Estado[6]  := 'DF';
     Relacao_Estado[7]  := 'ES';
     Relacao_Estado[8]  := 'GO';
     Relacao_Estado[9]  := 'MA';
     Relacao_Estado[10] := 'MT';
     Relacao_Estado[11] := 'MS';
     Relacao_Estado[12] := 'MG';
     Relacao_Estado[13] := 'PA';
     Relacao_Estado[14] := 'PB';
     Relacao_Estado[15] := 'PR';
     Relacao_Estado[16] := 'PE';
     Relacao_Estado[17] := 'PI';
     Relacao_Estado[18] := 'RN';
     Relacao_Estado[19] := 'RS';
     Relacao_Estado[20] := 'RJ';
     Relacao_Estado[21] := 'RO';
     Relacao_Estado[22] := 'RR';
     Relacao_Estado[23] := 'SC';
     Relacao_Estado[24] := 'SP';
     Relacao_Estado[25] := 'SE';
     Relacao_Estado[26] := 'TO';
     Relacao_Estado[27] := '--';

     // Obtem o Número do Estado no Array

     Resultado := 0;

     For Ind := 0 To 27 Do
         Begin
         If (Relacao_Estado[Ind] = Trim(Estado)) Then
            Begin
            Resultado := Ind;
         End;
     End;

     Obtem_Nro_Estado := Resultado;
end;

function Obtem_Nro_Pais(Pais: String): Integer;

var
   Ind, Resultado: Integer;
   Relacao_Pais: Array[0..11] of String;

begin
     //Carrega o Array

     Relacao_Pais[0]  := 'Brasil';
     Relacao_Pais[1]  := 'Argentina';
     Relacao_Pais[2]  := 'América Central';
     Relacao_Pais[3]  := 'Bolívia';
     Relacao_Pais[4]  := 'Canadá';
     Relacao_Pais[5]  := 'Chile';
     Relacao_Pais[6]  := 'Colômbia';
     Relacao_Pais[7]  := 'Equador';
     Relacao_Pais[8]  := 'Estados Unidos';
     Relacao_Pais[9]  := 'Paraguai';
     Relacao_Pais[10] := 'Portugal';
     Relacao_Pais[11] := 'Uruguai';

     // Obtem o Número do Pais no Array

     Resultado := 0;

     For Ind := 0 To 11 Do
         Begin
         If (Relacao_Pais[Ind] = Trim(Pais)) Then
            Begin
            Resultado := Ind;
         End;
     End;

     Obtem_Nro_Pais := Resultado;
end;

function Obtem_Nro_Mes(Mes: String): Integer;

var
   Ind, Resultado: Integer;
   Relacao_Mes: Array[0..11] of String;

begin
     //Carrega o Array

     Relacao_Mes[0]   := '1';
     Relacao_Mes[1]   := '2';
     Relacao_Mes[2]   := '3';
     Relacao_Mes[3]   := '4';
     Relacao_Mes[4]   := '5';
     Relacao_Mes[5]   := '6';
     Relacao_Mes[6]   := '7';
     Relacao_Mes[7]   := '8';
     Relacao_Mes[8]   := '9';
     Relacao_Mes[9]   := '10';
     Relacao_Mes[10]  := '11';
     Relacao_Mes[11]  := '12';

     // Obtem o Número do Mês no Array

     Resultado := 0;

     For Ind := 0 To 11 Do
         Begin
         If (Relacao_Mes[Ind] = Trim(Mes)) Then
            Begin
            Resultado := Ind;
         End;
     End;

     Obtem_Nro_Mes := Resultado;
end;

function Obtem_Nro_Antes_Traco(Texto: String): String;
var
   Ind: Integer;
   Resultado: String;
   Ativa: Boolean;

begin
     Resultado := ' ';
     Ativa     := True;

     For Ind := 1 To Length(Texto) Do
         Begin
         If Texto[Ind] = '-' Then
            Begin
            Ativa := False;
         End;

         If Ativa = True Then
            Begin
            If Texto[Ind] <> '-' Then
               Begin
               Resultado := Resultado + Texto[Ind];
            End
         End;
     End;

     Result := Trim(Resultado);
end;

function Obtem_Depois_Traco(Texto: String): String;

var
   Ind: Integer;
   Resultado: String;
   Ativa: Boolean;

begin
     Resultado := ' ';
     Ativa     := False;

     For Ind := 1 To Length(Texto) Do
         Begin
         If Texto[Ind] = '-' Then
            Begin
            Ativa := True;
         End;

         If Ativa = True Then
            Begin
            If Texto[Ind] <> '-' Then
               Begin
               Resultado := Resultado + Texto[Ind];
            End
         End;
     End;

     Result := Trim(Resultado);
end;

function Obtem_Nro_Tipo_Codigo(Tipo_Codigo: String): Integer;

var
   Ind, Resultado: Integer;
   Relacao_Tipo_Codigo: Array[0..3] of String;

begin
     //Carrega o Array

     Relacao_Tipo_Codigo[0] := 'CNPJ';
     Relacao_Tipo_Codigo[1] := 'CPF';
     Relacao_Tipo_Codigo[2] := 'RG';
     Relacao_Tipo_Codigo[3] := 'E-Mail';

     // Obtem o Número do Tipo do Código no Array

     Resultado := 0;

     For Ind := 0 To 3 Do
         Begin
         If (Relacao_Tipo_Codigo[Ind] = Trim(Tipo_Codigo)) Then
            Begin
            Resultado := Ind;
         End;
     End;

     Result := Resultado;
end;

function Obtem_Nro_Status_Credito(Status_Credito: String): Integer;

var
   Ind, Resultado: Integer;
   Relacao_Status_Credito: Array[0..1] of String;

begin
     //Carrega o Array

     Relacao_Status_Credito[0] := 'N';
     Relacao_Status_Credito[1] := 'S';

     // Obtem o Número do Status do Crédito no Array

     Resultado := 0;

     For Ind := 0 To 1 Do
         Begin
         If (Relacao_Status_Credito[Ind] = Trim(Status_Credito)) Then
            Begin
            Resultado := Ind;
         End;
     End;

     Result := Resultado;
end;

function Obtem_Nro_Tipo_Pessoa(Tipo_Pessoa: String): Integer;
var
   Ind, Resultado: Integer;
   Relacao_Tipo_Pessoa: Array[0..1] of String;

begin
     //Carrega o Array

     Relacao_Tipo_Pessoa[0] := 'PJ';
     Relacao_Tipo_Pessoa[1] := 'PF';

     // Obtem o Número do Tipo de Pessoa no Array

     Resultado := 0;

     For Ind := 0 To 1 Do
         Begin
         If (Relacao_Tipo_Pessoa[Ind] = Trim(Tipo_Pessoa)) Then
            Begin
            Resultado := Ind;
         End;
     End;

     Result := Resultado;
end;

function Obtem_Nro_Opcao_Cobranca(Opcao_Cobranca: String): Integer;
var
   Ind, Resultado: Integer;
   Relacao_Opcao_Cobranca: Array[0..1] of String;

begin
     //Carrega o Array

     Relacao_Opcao_Cobranca[0] := 'O Mesmo';
     Relacao_Opcao_Cobranca[1] := 'Outro';

     // Obtem o Número da Opcao de Cobranca no Array

     Resultado := 0;

     For Ind := 0 To 1 Do
         Begin
         If (Relacao_Opcao_Cobranca[Ind] = Trim(Opcao_Cobranca)) Then
            Begin
            Resultado := Ind;
         End;
     End;

     Result := Resultado;
end;

function Letra_Maiuscula(Texto: String): string;
var
   Ind: Integer;
   Resultado: String;

begin
     Texto     := UpperCase(Texto);
     Texto     := Trim(Texto);
     Resultado := ' ';

     For Ind := 1 To Length(Texto) Do
         Begin
         If Texto[Ind] = 'á' Then
            Begin
            Resultado := Resultado + 'Á';
            End
         Else If Texto[Ind] = 'á' Then
            Begin
            Resultado := Resultado + 'Á';
            End
         Else If Texto[Ind] = 'à' Then
            Begin
            Resultado := Resultado + 'À';
            End
         Else If Texto[Ind] = 'â' Then
            Begin
            Resultado := Resultado + 'Â';
            End
         Else If Texto[Ind] = 'ã' Then
            Begin
            Resultado := Resultado + 'Ã';
            End
         Else If Texto[Ind] = 'ä' Then
            Begin
            Resultado := Resultado + 'Ä';
            End
         Else If Texto[Ind] = 'é' Then
            Begin
            Resultado := Resultado + 'É';
            End
         Else If Texto[Ind] = 'è' Then
            Begin
            Resultado := Resultado + 'È';
            End
         Else If Texto[Ind] = 'ê' Then
            Begin
            Resultado := Resultado + 'Ê';
            End
         Else If Texto[Ind] = 'ë' Then
            Begin
            Resultado := Resultado + 'Ë';
            End
         Else If Texto[Ind] = 'í' Then
            Begin
            Resultado := Resultado + 'Í';
            End
         Else If Texto[Ind] = 'ì' Then
            Begin
            Resultado := Resultado + 'Ì';
            End
         Else If Texto[Ind] = 'î' Then
            Begin
            Resultado := Resultado + 'Î';
            End
         Else If Texto[Ind] = 'ï' Then
            Begin
            Resultado := Resultado + 'Ï';
            End
         Else If Texto[Ind] = 'ó' Then
            Begin
            Resultado := Resultado + 'Ó';
            End
         Else If Texto[Ind] = 'ò' Then
            Begin
            Resultado := Resultado + 'Ò';
            End
         Else If Texto[Ind] = 'õ' Then
            Begin
            Resultado := Resultado + 'Õ';
            End
         Else If Texto[Ind] = 'ô' Then
            Begin
            Resultado := Resultado + 'Ô';
            End
         Else If Texto[Ind] = 'ö' Then
            Begin
            Resultado := Resultado + 'Ö';
            End
         Else If Texto[Ind] = 'ú' Then
            Begin
            Resultado := Resultado + 'Ú';
            End
         Else If Texto[Ind] = 'ù' Then
            Begin
            Resultado := Resultado + 'Ù';
            End
         Else If Texto[Ind] = 'û' Then
            Begin
            Resultado := Resultado + 'Û';
            End
         Else If Texto[Ind] = 'ü' Then
            Begin
            Resultado := Resultado + 'Ü';
            End
         Else If Texto[Ind] = 'ç' Then
            Begin
            Resultado := Resultado + 'Ç';
            End
         Else
            Begin
            Resultado := Resultado + Texto[Ind];
         End;
     End;

     Letra_Maiuscula := Trim(Resultado);
end;

function FindReplace (const Enc, subs, Texto: String): String;

Var
   Posicao: Integer;
   Linha: String;

Begin
     Linha   := Texto;
     Repeat
     Posicao := Pos(Enc,Linha);
     If Posicao > 0 then
        Begin
        Delete(Linha,Posicao,Length(Enc));
        Insert(Subs,Linha,Posicao);
     End;
     until Posicao = 0;

     FindReplace := Linha;
end;

function Espacos(Qtde: Integer): String;

var
   Resultado: String;
   Ind: Integer;

begin
     For Ind := 1 To Qtde Do
         Begin
         Resultado := Resultado + ' ';
     End;

     Espacos := Resultado;
end;

function Tamanho(Texto: String; Qtde: Integer): String;

var
   Resultado: String;
   Tam, Ind: Integer;

begin
     Tam := Length(Trim(Texto));

     If Tam > Qtde Then
        Begin
        Texto := Copy(Texto,1,Qtde);
        Tam := Length(Trim(Texto));
     End;

     Resultado := Texto;

     For Ind := Tam To Qtde Do
         Begin
         Resultado := Resultado + ' ';
     End;

     Tamanho := Resultado;
end;

// ******************
// *** Procedures ***
// ******************

procedure Seta();
begin
     Screen.Cursor := crDefault; // *** Tira a Ampulheta do Cursor ***
end;

procedure Ampulheta();
begin
     Screen.Cursor := crHourglass; // *** Coloca a Ampúlheta no cursor ***
end;


procedure So_Valor(Sender: TObject; var Key: Char);
begin
     If Not(key in ['0'..'9','.',',',#8,#13]) Then
        Begin
        key := #0;
     End;

     If key in [',','.'] Then
        Begin
        key := DecimalSeparator;
     End;

     If key = DecimalSeparator Then
        Begin
        If pos(key,TEdit(Sender).Text) <> 0 Then
           Begin
           key := #0;
        End;
     End;
end;

procedure So_Numero(Sender: TObject; var Key: Char);
begin
     If Not(key in ['0'..'9',#8,#13]) Then
        Begin
        key := #0;
     End;
end;

procedure Delay(msecs :Integer);

var FirstTickCount:longint;

begin
     FirstTickCount:=GetTickCount;
     repeat
           Application.ProcessMessages;
     until ((GetTickCount-FirstTickCount) >= Longint(msecs));
end;

procedure Abre_Conexao();

var
   Caminho, Caminho_Resultado: String;

begin

{*** Prepara a Conexão com as Tabelas e Querys ***}

     ConexaoBD.Conexao_Principal.Connected := False;
     ConexaoBD.Conexao_Principal.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\CadaTEX\BD\CadaTEX.mdb;Mode=Read|Write;Persist Security Info=False';
     ConexaoBD.Conexao_Principal.Connected := True;

{*** Carrega a Connexão da Estação Local ***}

     conexaoBD.SQL_Conexao.Close;
     conexaoBD.SQL_Conexao.SQL.Clear;
     conexaoBD.SQL_Conexao.SQL.Add('Select * from Conexao');
     conexaoBD.SQL_Conexao.Open;

     if conexaoBD.SQL_Conexao.RecordCount <= 0 then
        begin
        conexaoBD.SQL_Conexao.Close;
        conexaoBD.SQL_Conexao.SQL.Clear;
        conexaoBD.SQL_Conexao.SQL.Add('insert into Conexao'+
        '(Conexao_caminho) '+
        'values("C:\CadaTEX\BD\")');
        conexaoBD.SQL_Conexao.ExecSQL;

        conexaoBD.SQL_Conexao.Close;
        conexaoBD.SQL_Conexao.SQL.Clear;
        conexaoBD.SQL_Conexao.SQL.Add('Select * from Conexao');
        conexaoBD.SQL_Conexao.Open;
     End;

     Caminho_Resultado  := conexaoBD.SQL_Conexao.FieldValues['Conexao_caminho'];
     Caminho := Caminho_Resultado;
     Caminho := Trim(Caminho);
     Caminho := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+Caminho+'CadaTEX.mdb;Mode=Read|Write;Persist Security Info=False';

{*** Carrega as Conexões das Querys com o Access ***}

     ConexaoBD.Conexao_Principal.Connected := False;
     ConexaoBD.Conexao_Principal.ConnectionString := Caminho;
     ConexaoBD.Conexao_Principal.Connected := True;
end;

procedure Fecha_Conexao();
begin
     ConexaoBD.Conexao_Principal.Connected := False;
end;

end.

