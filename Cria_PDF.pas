unit Cria_PDF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, PReport, OleCtrls, PdfLib_TLB,
  PdfDoc, ShellAPI, Mapi, JvRichEdit;

type
  TCriaPDF = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BT_Sair: TBitBtn;
    GroupBox1: TGroupBox;
    BT_Ok: TBitBtn;
    Opcao_Anterior: TEdit;
    Cliente_Email: TEdit;
    Servico: TEdit;
    RTF_Texto: TJvRichEdit;
    PrintDialog1: TPrintDialog;
    procedure BT_SairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BT_SairKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BT_OkClick(Sender: TObject);
  private
    { Private declarations }
    function SendEMail(Handle: THandle; Mail: TStrings): Cardinal;

  public
    { Public declarations }
  end;

var
  CriaPDF: TCriaPDF;
  ind : Integer;

implementation

uses Rel_Locacao_01, Conexao_BD, Rotinas_Gerais;

{$R *.dfm}

//***************
//*** Funções ***
//***************

function TCriaPDF.SendEMail(Handle: THandle; Mail: TStrings): Cardinal;
type
  TAttachAccessArray = array [0..0] of TMapiFileDesc;
  PAttachAccessArray = ^TAttachAccessArray;
var
  MapiMessage: TMapiMessage;
  Receip: TMapiRecipDesc;
  Attachments: PAttachAccessArray;
  AttachCount: Integer;
  i1: integer;
  FileName: string;
  dwRet: Cardinal;
  MAPI_Session: Cardinal;
  WndList: Pointer;
begin
  dwRet := MapiLogon(Handle,PChar(''),PChar(''),MAPI_LOGON_UI or MAPI_NEW_SESSION,0, @MAPI_Session);

  if (dwRet <> SUCCESS_SUCCESS) then
    begin
    MessageBox(Handle,PChar('Error while trying to send email'),PChar('Error'),MB_ICONERROR or MB_OK);
    end
  else
    begin
    FillChar(MapiMessage, SizeOf(MapiMessage), #0);
    Attachments := nil;
    FillChar(Receip, SizeOf(Receip), #0);

    if Mail.Values['to'] <> '' then
      begin
      Receip.ulReserved := 0;
      Receip.ulRecipClass := MAPI_TO;
      Receip.lpszName := StrNew(PChar(Mail.Values['to']));
      Receip.lpszAddress := StrNew(PChar('SMTP:' + Mail.Values['to']));
      Receip.ulEIDSize := 0;

      MapiMessage.nRecipCount := 1;
      MapiMessage.lpRecips := @Receip;
    end;

    AttachCount := 0;

    for i1 := 0 to MaxInt do
      begin
      if Mail.Values['attachment' + IntToStr(i1)] = '' then break;
      Inc(AttachCount);
    end;

    if AttachCount > 0 then
      begin
      GetMem(Attachments, SizeOf(TMapiFileDesc) * AttachCount);

      for i1 := 0 to AttachCount - 1 do
        begin
        FileName := Mail.Values['attachment' + IntToStr(i1)];
        Attachments[i1].ulReserved := 0;
        Attachments[i1].flFlags := 0;
        Attachments[i1].nPosition := ULONG($FFFFFFFF);
        Attachments[i1].lpszPathName := StrNew(PChar(FileName));
        Attachments[i1].lpszFileName := StrNew(PChar(ExtractFileName(FileName)));
        Attachments[i1].lpFileType := nil;
      end;

      MapiMessage.nFileCount := AttachCount;
      MapiMessage.lpFiles := @Attachments^;
    end;

    if Mail.Values['subject'] <> '' then MapiMessage.lpszSubject := StrNew(PChar(Mail.Values['subject']));
    if Mail.Values['body'] <> '' then MapiMessage.lpszNoteText := StrNew(PChar(Mail.Values['body']));

    WndList := DisableTaskWindows(0);

    try
      Result := MapiSendMail(MAPI_Session, Handle, MapiMessage, MAPI_DIALOG, 0);
    finally
      EnableTaskWindows( WndList );
    end;

    for i1 := 0 to AttachCount - 1 do
      begin
      StrDispose(Attachments[i1].lpszPathName);
      StrDispose(Attachments[i1].lpszFileName);
    end;

    if Assigned(MapiMessage.lpszSubject) then StrDispose(MapiMessage.lpszSubject);
    if Assigned(MapiMessage.lpszNoteText) then StrDispose(MapiMessage.lpszNoteText);
    if Assigned(Receip.lpszAddress) then StrDispose(Receip.lpszAddress);
    if Assigned(Receip.lpszName) then StrDispose(Receip.lpszName);

    MapiLogOff(MAPI_Session, Handle, 0, 0);
  end;
end;

//*****************
//*** Procedure ***
//*****************

procedure TCriaPDF.BT_SairClick(Sender: TObject);
begin
     CriaPDF.Close;
end;

procedure TCriaPDF.FormShow(Sender: TObject);
begin
    ShowMessage('O arquivo foi nomeado como "NS_Equipamentos_' + Trim(Servico.Text) + '.rtf"' + chr(13) + chr(13) + 'Foi criado em "C:\CadaTEX\Swap"');

    //*** Exibe o Documento ***

    If Trim(Opcao_Anterior.Text) = 'FAX' Then
       Begin
       MSG_Erro('Para enviar o FAX, utilize um programa de'+#10+#13+'FAX de seu Computador anexando o arquivo'+#10+#13+'de '+Trim(Servico.Text)+' gerado na pasta C:\CadaTEX\Swap');
    End;
end;

procedure TCriaPDF.BT_SairKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 Then
    begin
    CriaPDF.Close;
  end;
end;

procedure TCriaPDF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 Then
    begin
    CriaPDF.Close;
  end;
end;

procedure TCriaPDF.BT_OkClick(Sender: TObject);

var
   Email, Anexo: string;
   mail: TStringList;

begin
     If Trim(Opcao_Anterior.Text) = 'EMail' Then
        Begin
        Email := '';
        Email := Email + 'Tipo.: '+Trim(Servico.Text)+#10+#13+#10+#13;
        Email := Email + 'Os dados da ' + Trim(Servico.Text) + ' estão em anexo no arquivo "RTF".'+#10+#13+#10+#13;
        Email := Email + 'A NS Equipamentos agradece sua preferência.';

        Anexo := 'C:\CadaTEX\Swap\NS_Equipamentos_'+Trim(Servico.Text)+'.rtf';

        mail := TStringList.Create;
        try
           mail.values['to'] := Trim(Cliente_Email.Text); ///AQUI VAI O EMAIL DO DESTINATARIO///
           mail.values['subject'] := 'NS Equipamentos: '+Trim(Servico.Text); ///AQUI O ASSUNTO///
           mail.values['body'] := Email; ///AQUI O TEXTO NO CORPO DO EMAIL///
           mail.values['attachment0'] := Anexo; ////AQUI O ENDEREÇO ONDE ENCONTRAM OS ARQUIVOS//
           sendEMail(Application.Handle, mail);
        finally
           mail.Free;
        end;
        End
     Else If Trim(Opcao_Anterior.Text) = 'FAX' Then
        Begin
        MSG_Erro('Para enviar o FAX, utilize um programa de'+#10+#13+'FAX de seu Computador anexando o arquivo'+#10+#13+'de '+Trim(Servico.Text)+' gerado na pasta C:\CadaTEX\Swap');
        End
     Else If Trim(Opcao_Anterior.Text) = 'Imprimir' Then
        Begin
        RTF_Texto.Print('C:\CadaTEX\Swap\NS_Equipamentos_'+Trim(Servico.Text)+'.rtf');
     End;

    CriaPDF.Close;

end;

end.
