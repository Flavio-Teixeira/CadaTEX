unit Rel_Cotacao_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons, ComCtrls, JvRichEdit, Clipbrd,
  RichEdit;

type
  TRelCotacao01 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Venda_Manutencao_Servico: TComboBox;
    Label1: TLabel;
    Venda_Manutencao_Tipo: TEdit;
    Label4: TLabel;
    Venda_Manutencao_Entrada: TMaskEdit;
    Label3: TLabel;
    Venda_Manutencao_Saida: TMaskEdit;
    Label5: TLabel;
    Venda_Manutencao_Relacao_Pecas: TEdit;
    Label6: TLabel;
    Venda_Manutencao_Valor: TEdit;
    Panel2: TPanel;
    BT_Incluir: TBitBtn;
    BT_Sair: TBitBtn;
    Label7: TLabel;
    Panel3: TPanel;
    Transferencia: TImage;
    BT_Edita_Fonte: TBitBtn;
    BT_Insere_Imagem: TBitBtn;
    BT_Insere_Rtf: TBitBtn;
    BT_Alinha_Esquerda: TBitBtn;
    BT_Alinha_Centro: TBitBtn;
    BT_Alinha_Direita: TBitBtn;
    BT_Inserir_Marcadores: TBitBtn;
    BT_Aumentar_Recuo: TBitBtn;
    BT_Diminuir_Recuo: TBitBtn;
    BT_Imprimir: TBitBtn;
    BT_Justifica: TBitBtn;
    Ruler: TPanel;
    FirstInd: TLabel;
    LeftInd: TLabel;
    RulerLine: TBevel;
    RightInd: TLabel;
    Bevel1: TBevel;
    Venda_Manutencao_Descricao: TJvRichEdit;
    StatusBar: TStatusBar;
    FontDialog1: TFontDialog;
    OpenDialog1: TOpenDialog;
    PrintDialog1: TPrintDialog;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    BT_Adiciona_Cliente: TBitBtn;
    Cliente_Codigo: TLabel;
    Cliente_Nome: TLabel;
    Imprimir: TBitBtn;
    Enviar_Email: TBitBtn;
    Cliente_EMail: TEdit;
    Label11: TLabel;
    Venda_Manutencao_Nro_Equipamento: TEdit;
    procedure BT_Edita_FonteClick(Sender: TObject);
    procedure BT_Insere_ImagemClick(Sender: TObject);
    procedure BT_Insere_RtfClick(Sender: TObject);
    procedure BT_Alinha_EsquerdaClick(Sender: TObject);
    procedure BT_Alinha_CentroClick(Sender: TObject);
    procedure BT_JustificaClick(Sender: TObject);
    procedure BT_Alinha_DireitaClick(Sender: TObject);
    procedure BT_Inserir_MarcadoresClick(Sender: TObject);
    procedure BT_Aumentar_RecuoClick(Sender: TObject);
    procedure BT_Diminuir_RecuoClick(Sender: TObject);
    procedure BT_ImprimirClick(Sender: TObject);

    procedure SelectionChange(Sender: TObject);
    procedure RulerResize(Sender: TObject);
    procedure RulerItemMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure RulerItemMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);

    procedure FirstIndMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure LeftIndMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure RightIndMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Venda_Manutencao_DescricaoChange(Sender: TObject);
    procedure BT_SairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BT_IncluirClick(Sender: TObject);
    procedure Venda_Manutencao_ServicoKeyPress(Sender: TObject;
      var Key: Char);
    procedure Venda_Manutencao_TipoKeyPress(Sender: TObject;
      var Key: Char);
    procedure Venda_Manutencao_EntradaKeyPress(Sender: TObject;
      var Key: Char);
    procedure Venda_Manutencao_SaidaKeyPress(Sender: TObject;
      var Key: Char);
    procedure Venda_Manutencao_Relacao_PecasKeyPress(Sender: TObject;
      var Key: Char);
    procedure Venda_Manutencao_ValorKeyPress(Sender: TObject;
      var Key: Char);
    procedure BT_Adiciona_ClienteClick(Sender: TObject);
    procedure ImprimirClick(Sender: TObject);
    procedure Enviar_EmailClick(Sender: TObject);
    procedure Venda_Manutencao_Nro_EquipamentoKeyPress(Sender: TObject;
      var Key: Char);

  private
    { Private declarations }

    FUpdating: Boolean;
    FDragOfs: Integer;
    FDragging: Boolean;

    function Valida_Dados(): Boolean;

    function CurrText: TJvTextAttributes;
    procedure SetupRuler;
    procedure UpdateCursorPos;
    procedure SetModified(Value: Boolean);

    procedure Criar_RTF(Opcao: String);

  public
    { Public declarations }
  end;

var
  RelCotacao01: TRelCotacao01;

implementation

uses Conexao_BD, Rotinas_Gerais, GifUnit, Adiciona_Cliente_00, Cria_PDF;

resourcestring
  sModified = 'Modificado - N�o esque�a salvar.';
  sColRowInfo = 'Linha: %3d   Coluna: %3d';

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.dfm}

function TRelCotacao01.Valida_Dados(): Boolean;

var
   Erro, Campo_Retorno: String;
   Resultado: Boolean;

begin
     Resultado     := True;
     Campo_Retorno := '';

     Ampulheta();

     If Trim(Venda_Manutencao_Tipo.Text) = '' Then
        Begin
        Erro          := 'O Tipo da Manuten��o n�o foi informado';
        Campo_Retorno := 'Venda_Manutencao_Tipo';
        End
     Else If Trim(Cliente_Codigo.Caption) = '' Then
        Begin
        Erro          := 'O Cliente N�o foi selecionado';
        Campo_Retorno := 'BT_Adiciona_Cliente';
     End;

     Seta();

     If Trim(Erro) <> '' Then
        Begin
        MSG_Erro(Erro);
        Resultado := False;
     End;

     If Campo_Retorno <> '' Then
        Begin
        If Campo_Retorno = 'Venda_Manutencao_Tipo' Then
           Begin
           Venda_Manutencao_Tipo.SetFocus;
           End
        Else If Campo_Retorno = 'BT_Adiciona_Cliente' Then
           Begin
           BT_Adiciona_Cliente.SetFocus;
           End
        Else If Campo_Retorno = 'Venda_Manutencao_Saida' Then
           Begin
           Venda_Manutencao_Saida.SetFocus;
        End;
     End;

     Result := Resultado;

end;

function TRelCotacao01.CurrText: TJvTextAttributes;
begin
     Result := Venda_Manutencao_Descricao.SelAttributes;
end;

procedure TRelCotacao01.FormCreate(Sender: TObject);
begin
     SetupRuler;
end;

procedure TRelCotacao01.BT_Edita_FonteClick(Sender: TObject);
begin
     FontDialog1.Font.Assign(Venda_Manutencao_Descricao.SelAttributes);
     if FontDialog1.Execute then
        begin
        CurrText.Color   := FontDialog1.Font.Color;
        CurrText.Name    := FontDialog1.Font.Name;
        CurrText.Style   := FontDialog1.Font.Style;
        CurrText.Size    := FontDialog1.Font.Size;
        CurrText.Pitch   := FontDialog1.Font.Pitch;
        CurrText.Charset := FontDialog1.Font.Charset;
     end;
     Venda_Manutencao_Descricao.SetFocus;
end;

procedure TRelCotacao01.BT_Insere_ImagemClick(Sender: TObject);

var
   Tipo: String;
   GifFile: TGifFile;

begin
     OpenDialog1.Filter := 'All (*.gif;*.jpg;*.bmp;*.emf;*.wmf)|*.gif;*.jpg;*.bmp;*.emf;*.wmf|CompuServe GIF Image (*.gif)|*.gif|JPEG Image File (*.jpg)|*.jpg|Bitmaps (*.bmp)|*.bmp|Enhanced Metafiles (*.emf)|*.wmf';

     if OpenDialog1.Execute then
        begin
        Tipo := Copy(OpenDialog1.FileName,(Length(OpenDialog1.FileName) - 2),3);

        If UpperCase(Tipo) = 'GIF' Then
           begin
           GifFile := TGifFile.Create;
           GifFile.LoadFromFile(OpenDialog1.FileName);
           Transferencia.Picture.Bitmap := GifFile.AsBitmap;
           end
        else if ( UpperCase(Tipo) = 'JPG' ) Or
                ( UpperCase(Tipo) = 'BMP' ) Or
                ( UpperCase(Tipo) = 'EMF' ) Or
                ( UpperCase(Tipo) = 'WMF' ) Then
           begin
           Transferencia.Picture.LoadFromFile(OpenDialog1.FileName);
           end
        else
           begin
           Seta();
           MSG_Erro('N�o Consigo Importar este Tipo de Imagem...');
           Ampulheta();
        end;

        Clipboard.Assign(Transferencia.Picture);

        Venda_Manutencao_Descricao.PasteFromClipboard;
        Venda_Manutencao_Descricao.SetFocus;

        ClipBoard.Clear;
     end;
end;

procedure TRelCotacao01.BT_Insere_RtfClick(Sender: TObject);
begin
     OpenDialog1.Filter := 'Ritch Text Format (*.rtf)|*.rtf';

     if OpenDialog1.Execute then
        begin
        Venda_Manutencao_Descricao.Lines.LoadFromFile(OpenDialog1.FileName);
     end;
end;

procedure TRelCotacao01.BT_Alinha_EsquerdaClick(Sender: TObject);
begin
     Venda_Manutencao_Descricao.Paragraph.Alignment := TParaAlignment(0); // paLeftJustify;
end;

procedure TRelCotacao01.BT_Alinha_CentroClick(Sender: TObject);
begin
     Venda_Manutencao_Descricao.Paragraph.Alignment := TParaAlignment(2); // paCenter
end;

procedure TRelCotacao01.BT_JustificaClick(Sender: TObject);
begin
     Venda_Manutencao_Descricao.Paragraph.Alignment := TParaAlignment(3); // paJustify;
end;

procedure TRelCotacao01.BT_Alinha_DireitaClick(Sender: TObject);
begin
     Venda_Manutencao_Descricao.Paragraph.Alignment := TParaAlignment(1); // paRightJustify
end;

procedure TRelCotacao01.BT_Inserir_MarcadoresClick(Sender: TObject);
begin
     if Venda_Manutencao_Descricao.Paragraph.Numbering = TJvNumbering(1) Then // nsBullet
        begin
        Venda_Manutencao_Descricao.Paragraph.Numbering := TJvNumbering(0); // nsNone
        end
     else
        begin
        Venda_Manutencao_Descricao.Paragraph.Numbering := TJvNumbering(1); // nsBullet
     end;
end;

procedure TRelCotacao01.BT_Aumentar_RecuoClick(Sender: TObject);
begin
     Venda_Manutencao_Descricao.Paragraph.FirstIndent := Venda_Manutencao_Descricao.Paragraph.FirstIndent + 5;
end;

procedure TRelCotacao01.BT_Diminuir_RecuoClick(Sender: TObject);
begin
     if (Venda_Manutencao_Descricao.Paragraph.FirstIndent - 5) <= 0 Then
        begin
        Venda_Manutencao_Descricao.Paragraph.FirstIndent := 0;
        end
     else
        begin
        Venda_Manutencao_Descricao.Paragraph.FirstIndent := Venda_Manutencao_Descricao.Paragraph.FirstIndent - 5;
     end;
end;

procedure TRelCotacao01.BT_ImprimirClick(Sender: TObject);
begin
     if PrintDialog1.Execute then
        begin
        Ampulheta();
        Venda_Manutencao_Descricao.Lines.SaveToFile('C:\CadaTEX\Swap\Swap.RTF');
        Venda_Manutencao_Descricao.Print('C:\CadaTEX\Swap\Swap.RTF');
        DeleteFile('C:\CadaTEX\Swap\Swap.RTF');
        Seta();
     end;
end;

procedure TRelCotacao01.SelectionChange(Sender: TObject);
begin
  with Venda_Manutencao_Descricao.Paragraph do
  try
    FUpdating := True;
    FirstInd.Left := Trunc(FirstIndent*RulerAdj)-4+GutterWid;
    LeftInd.Left := Trunc((LeftIndent+FirstIndent)*RulerAdj)-4+GutterWid;
    RightInd.Left := Ruler.ClientWidth-6-Trunc((RightIndent+GutterWid)*RulerAdj);
    UpdateCursorPos;
  finally
    FUpdating := False;
  end;
end;

procedure TRelCotacao01.RulerResize(Sender: TObject);
begin
  RulerLine.Width := Ruler.ClientWidth - (RulerLine.Left*2);
end;

{ Ruler Indent Dragging }

procedure TRelCotacao01.RulerItemMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FDragOfs := (TLabel(Sender).Width div 2);
  TLabel(Sender).Left := TLabel(Sender).Left+X-FDragOfs;
  FDragging := True;
end;

procedure TRelCotacao01.RulerItemMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if FDragging then
    TLabel(Sender).Left :=  TLabel(Sender).Left+X-FDragOfs
end;

procedure TRelCotacao01.FirstIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
  Venda_Manutencao_Descricao.Paragraph.FirstIndent := Trunc((FirstInd.Left+FDragOfs-GutterWid) / RulerAdj);
  LeftIndMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TRelCotacao01.LeftIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
  Venda_Manutencao_Descricao.Paragraph.LeftIndent := Trunc((LeftInd.Left+FDragOfs-GutterWid) / RulerAdj)-Venda_Manutencao_Descricao.Paragraph.FirstIndent;
  SelectionChange(Sender);
end;

procedure TRelCotacao01.RightIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
  Venda_Manutencao_Descricao.Paragraph.RightIndent := Trunc((Ruler.ClientWidth-RightInd.Left+FDragOfs-2) / RulerAdj)-2*GutterWid;
  SelectionChange(Sender);
end;

procedure TRelCotacao01.Venda_Manutencao_DescricaoChange(Sender: TObject);
begin
  SetModified(Venda_Manutencao_Descricao.Modified);
end;

procedure TRelCotacao01.SetupRuler;
var
  I: Integer;
  S: String;
begin
  SetLength(S, 201);
  I := 1;
  while I < 200 do
  begin
    S[I] := #9;
    S[I+1] := '|';
    Inc(I, 2);
  end;
  Ruler.Caption := S;
end;

procedure TRelCotacao01.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(Venda_Manutencao_Descricao.Handle, EM_EXLINEFROMCHAR, 0, Venda_Manutencao_Descricao.SelStart);
  CharPos.X := (Venda_Manutencao_Descricao.SelStart - SendMessage(Venda_Manutencao_Descricao.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
  StatusBar.Panels[0].Text := Format(sColRowInfo, [CharPos.Y, CharPos.X]);
end;

procedure TRelCotacao01.SetModified(Value: Boolean);
begin
  if Value then StatusBar.Panels[1].Text := sModified
  else StatusBar.Panels[1].Text := '';
end;

procedure TRelCotacao01.BT_SairClick(Sender: TObject);
begin
     RelCotacao01.close;
end;

procedure TRelCotacao01.FormShow(Sender: TObject);
begin
     SetModified(False);

     UpdateCursorPos;
end;

procedure TRelCotacao01.BT_IncluirClick(Sender: TObject);

var
   Vlr_Manutencao, Comando_SQL: String;

begin
     If Valida_Dados() Then
        Begin

        Ampulheta();

        //*** Obtem os Valores e Datas ***

        Vlr_Manutencao := Trim(Virgula_Ponto(Venda_Manutencao_Valor.Text));

        If Trim(Vlr_Manutencao) = '' Then
           Begin
           Vlr_Manutencao := '0';
        End;

        //*** Efetua a Inser��o ***

        Comando_SQL := 'Insert Into vendas_manutencao(';
        Comando_SQL := Comando_SQL + 'venda_manutencao_cliente_codigo, ';
        Comando_SQL := Comando_SQL + 'venda_manutencao_servico, ';
        Comando_SQL := Comando_SQL + 'venda_manutencao_tipo, ';

        If Trim(Venda_Manutencao_Entrada.Text) <> '/  /' Then
           Begin
           Comando_SQL := Comando_SQL + 'venda_manutencao_entrada, ';
        End;

        If Trim(Venda_Manutencao_Saida.Text) <> '/  /' Then
           Begin
           Comando_SQL := Comando_SQL + 'venda_manutencao_saida, ';
        End;

        Comando_SQL := Comando_SQL + 'venda_manutencao_relacao_pecas, ';
        Comando_SQL := Comando_SQL + 'venda_manutencao_nro_equipamento, ';
        Comando_SQL := Comando_SQL + 'venda_manutencao_valor) ';
        Comando_SQL := Comando_SQL + ' Values(';

        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Codigo.Caption) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Venda_Manutencao_Servico.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Venda_Manutencao_Tipo.Text) + #39 + ',';

        If Trim(Venda_Manutencao_Entrada.Text) <> '/  /' Then
           Begin
           Comando_SQL := Comando_SQL + #39 + Inverte_Data_Plus(Trim(Venda_Manutencao_Entrada.Text),'amd','/') + #39 + ',';
        End;

        If Trim(Venda_Manutencao_Saida.Text) <> '/  /' Then
           Begin
           Comando_SQL := Comando_SQL + #39 + Inverte_Data_Plus(Trim(Venda_Manutencao_Saida.Text),'amd','/') + #39 + ',';
        End;

        Comando_SQL := Comando_SQL + #39 + Trim(Venda_Manutencao_Relacao_Pecas.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Venda_Manutencao_Nro_Equipamento.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + Trim(Vlr_Manutencao) + ')';

        ConexaoBD.SQL_Comunitario.SQL.Clear;
        ConexaoBD.SQL_Comunitario.SQL.Add(Comando_SQL);
        ConexaoBD.SQL_Comunitario.ExecSQL;

        //*** Inclus�o do Campo de Descri��o ***

        Comando_SQL := 'Select * from vendas_manutencao Order by venda_manutencao_numero Desc';

        ConexaoBD.SQL_Vendas_Manutencao.Close;
        ConexaoBD.SQL_Vendas_Manutencao.SQL.Clear;
        ConexaoBD.SQL_Vendas_Manutencao.SQL.Add(Comando_SQL);
        ConexaoBD.SQL_Vendas_Manutencao.Open;

        If ConexaoBD.SQL_Vendas_Manutencao.RecordCount > 0 Then
           Begin
           Venda_Manutencao_Descricao.Lines.SaveToFile('C:\CadaTEX\Swap\Swap.RTF');

           ConexaoBD.SQL_Vendas_Manutencao.First;
           ConexaoBD.SQL_Vendas_Manutencao.Edit;
           ConexaoBD.SQL_Vendas_Manutencaovenda_manutencao_descricao.LoadFromFile('C:\CadaTEX\Swap\Swap.RTF');
           ConexaoBD.SQL_Vendas_Manutencao.Post;
           ConexaoBD.SQL_Vendas_Manutencao.Close;

           DeleteFile('C:\CadaTEX\Swap\Swap.RTF');
        End;

        //*** Finaliza��o do Processo ***

        Seta();

        MSG_Erro('Inclus�o Efetuada...');

        //*** Atualiza a Tela de Pedidos ***

        If Confirma('Incluir Outra Cota��o?') = 6 Then
           Begin
           Venda_Manutencao_Servico.ItemIndex    := 0;
           Venda_Manutencao_Tipo.Text            := '';
           Venda_Manutencao_Entrada.Text         := '';
           Venda_Manutencao_Saida.Text           := '';
           Venda_Manutencao_Relacao_Pecas.Text   := '';
           Venda_Manutencao_Valor.Text           := '';
           Venda_Manutencao_Nro_Equipamento.Text := '';
           Venda_Manutencao_Descricao.Lines.Clear;

           Cliente_Codigo.Caption := '';
           Cliente_Nome.Caption   := '';

           Venda_Manutencao_Tipo.SetFocus;
           End
        Else
           Begin
           RelCotacao01.Close;
        End;
     End;

end;

procedure TRelCotacao01.Venda_Manutencao_ServicoKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelCotacao01.Venda_Manutencao_TipoKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelCotacao01.Venda_Manutencao_EntradaKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelCotacao01.Venda_Manutencao_SaidaKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelCotacao01.Venda_Manutencao_Relacao_PecasKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelCotacao01.Venda_Manutencao_ValorKeyPress(
  Sender: TObject; var Key: Char);
begin
     So_Valor(Sender,Key);

     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRelCotacao01.BT_Adiciona_ClienteClick(Sender: TObject);
begin
     Application.CreateForm(TAdicionaCliente00,AdicionaCliente00);

     AdicionaCliente00.Formulario_Anterior.Text := 'RelCotacao01';

     AdicionaCliente00.ShowModal;
     AdicionaCliente00.Destroy;

     Venda_Manutencao_Tipo.SetFocus;
end;

procedure TRelCotacao01.ImprimirClick(Sender: TObject);

var
   Vlr_Manutencao, Comando_SQL: String;

begin
     If Valida_Dados() Then
        Begin

        Ampulheta();

        //*** Obtem os Valores e Datas ***

        Vlr_Manutencao := Trim(Virgula_Ponto(Venda_Manutencao_Valor.Text));

        If Trim(Vlr_Manutencao) = '' Then
           Begin
           Vlr_Manutencao := '0';
        End;

        //*** Efetua a Inser��o ***

        Comando_SQL := 'Insert Into vendas_manutencao(';
        Comando_SQL := Comando_SQL + 'venda_manutencao_cliente_codigo, ';
        Comando_SQL := Comando_SQL + 'venda_manutencao_servico, ';
        Comando_SQL := Comando_SQL + 'venda_manutencao_tipo, ';

        If Trim(Venda_Manutencao_Entrada.Text) <> '/  /' Then
           Begin
           Comando_SQL := Comando_SQL + 'venda_manutencao_entrada, ';
        End;

        If Trim(Venda_Manutencao_Saida.Text) <> '/  /' Then
           Begin
           Comando_SQL := Comando_SQL + 'venda_manutencao_saida, ';
        End;

        Comando_SQL := Comando_SQL + 'venda_manutencao_relacao_pecas, ';
        Comando_SQL := Comando_SQL + 'venda_manutencao_nro_equipamento, ';
        Comando_SQL := Comando_SQL + 'venda_manutencao_valor) ';
        Comando_SQL := Comando_SQL + ' Values(';

        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Codigo.Caption) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Venda_Manutencao_Servico.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Venda_Manutencao_Tipo.Text) + #39 + ',';

        If Trim(Venda_Manutencao_Entrada.Text) <> '/  /' Then
           Begin
           Comando_SQL := Comando_SQL + #39 + Inverte_Data_Plus(Trim(Venda_Manutencao_Entrada.Text),'amd','/') + #39 + ',';
        End;

        If Trim(Venda_Manutencao_Saida.Text) <> '/  /' Then
           Begin
           Comando_SQL := Comando_SQL + #39 + Inverte_Data_Plus(Trim(Venda_Manutencao_Saida.Text),'amd','/') + #39 + ',';
        End;

        Comando_SQL := Comando_SQL + #39 + Trim(Venda_Manutencao_Relacao_Pecas.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Venda_Manutencao_Nro_Equipamento.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + Trim(Vlr_Manutencao) + ')';

        ConexaoBD.SQL_Comunitario.SQL.Clear;
        ConexaoBD.SQL_Comunitario.SQL.Add(Comando_SQL);
        ConexaoBD.SQL_Comunitario.ExecSQL;

        //*** Inclus�o do Campo de Descri��o ***

        Comando_SQL := 'Select * from vendas_manutencao Order by venda_manutencao_numero Desc';

        ConexaoBD.SQL_Vendas_Manutencao.Close;
        ConexaoBD.SQL_Vendas_Manutencao.SQL.Clear;
        ConexaoBD.SQL_Vendas_Manutencao.SQL.Add(Comando_SQL);
        ConexaoBD.SQL_Vendas_Manutencao.Open;

        If ConexaoBD.SQL_Vendas_Manutencao.RecordCount > 0 Then
           Begin
           Venda_Manutencao_Descricao.Lines.SaveToFile('C:\CadaTEX\Swap\Swap.RTF');

           ConexaoBD.SQL_Vendas_Manutencao.First;
           ConexaoBD.SQL_Vendas_Manutencao.Edit;
           ConexaoBD.SQL_Vendas_Manutencaovenda_manutencao_descricao.LoadFromFile('C:\CadaTEX\Swap\Swap.RTF');
           ConexaoBD.SQL_Vendas_Manutencao.Post;
           ConexaoBD.SQL_Vendas_Manutencao.Close;

           DeleteFile('C:\CadaTEX\Swap\Swap.RTF');
        End;

        //*** Finaliza��o do Processo ***

        Seta();

        Criar_RTF('Imprimir');

        RelCotacao01.Close;
     End;

end;

procedure TRelCotacao01.Enviar_EmailClick(Sender: TObject);

var
   Vlr_Manutencao, Comando_SQL: String;

begin
     If Valida_Dados() Then
        Begin

        Ampulheta();

        //*** Obtem os Valores e Datas ***

        Vlr_Manutencao := Trim(Virgula_Ponto(Venda_Manutencao_Valor.Text));

        If Trim(Vlr_Manutencao) = '' Then
           Begin
           Vlr_Manutencao := '0';
        End;

        //*** Efetua a Inser��o ***

        Comando_SQL := 'Insert Into vendas_manutencao(';
        Comando_SQL := Comando_SQL + 'venda_manutencao_cliente_codigo, ';
        Comando_SQL := Comando_SQL + 'venda_manutencao_servico, ';
        Comando_SQL := Comando_SQL + 'venda_manutencao_tipo, ';

        If Trim(Venda_Manutencao_Entrada.Text) <> '/  /' Then
           Begin
           Comando_SQL := Comando_SQL + 'venda_manutencao_entrada, ';
        End;

        If Trim(Venda_Manutencao_Saida.Text) <> '/  /' Then
           Begin
           Comando_SQL := Comando_SQL + 'venda_manutencao_saida, ';
        End;

        Comando_SQL := Comando_SQL + 'venda_manutencao_relacao_pecas, ';
        Comando_SQL := Comando_SQL + 'venda_manutencao_nro_equipamento, ';
        Comando_SQL := Comando_SQL + 'venda_manutencao_valor) ';
        Comando_SQL := Comando_SQL + ' Values(';

        Comando_SQL := Comando_SQL + #39 + Trim(Cliente_Codigo.Caption) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Venda_Manutencao_Servico.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Venda_Manutencao_Tipo.Text) + #39 + ',';

        If Trim(Venda_Manutencao_Entrada.Text) <> '/  /' Then
           Begin
           Comando_SQL := Comando_SQL + #39 + Inverte_Data_Plus(Trim(Venda_Manutencao_Entrada.Text),'amd','/') + #39 + ',';
        End;

        If Trim(Venda_Manutencao_Saida.Text) <> '/  /' Then
           Begin
           Comando_SQL := Comando_SQL + #39 + Inverte_Data_Plus(Trim(Venda_Manutencao_Saida.Text),'amd','/') + #39 + ',';
        End;

        Comando_SQL := Comando_SQL + #39 + Trim(Venda_Manutencao_Relacao_Pecas.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + #39 + Trim(Venda_Manutencao_Nro_Equipamento.Text) + #39 + ',';
        Comando_SQL := Comando_SQL + Trim(Vlr_Manutencao) + ')';

        ConexaoBD.SQL_Comunitario.SQL.Clear;
        ConexaoBD.SQL_Comunitario.SQL.Add(Comando_SQL);
        ConexaoBD.SQL_Comunitario.ExecSQL;

        //*** Inclus�o do Campo de Descri��o ***

        Comando_SQL := 'Select * from vendas_manutencao Order by venda_manutencao_numero Desc';

        ConexaoBD.SQL_Vendas_Manutencao.Close;
        ConexaoBD.SQL_Vendas_Manutencao.SQL.Clear;
        ConexaoBD.SQL_Vendas_Manutencao.SQL.Add(Comando_SQL);
        ConexaoBD.SQL_Vendas_Manutencao.Open;

        If ConexaoBD.SQL_Vendas_Manutencao.RecordCount > 0 Then
           Begin
           Venda_Manutencao_Descricao.Lines.SaveToFile('C:\CadaTEX\Swap\Swap.RTF');

           ConexaoBD.SQL_Vendas_Manutencao.First;
           ConexaoBD.SQL_Vendas_Manutencao.Edit;
           ConexaoBD.SQL_Vendas_Manutencaovenda_manutencao_descricao.LoadFromFile('C:\CadaTEX\Swap\Swap.RTF');
           ConexaoBD.SQL_Vendas_Manutencao.Post;
           ConexaoBD.SQL_Vendas_Manutencao.Close;

           DeleteFile('C:\CadaTEX\Swap\Swap.RTF');
        End;

        //*** Finaliza��o do Processo ***

        Seta();

        Criar_RTF('EMail');

        RelCotacao01.Close;
     End;
end;

procedure TRelCotacao01.Criar_RTF(Opcao: String);

var
   Ind, Posicao: Integer;
   Cond_Pgto: string;

begin
  Ampulheta();

  Application.CreateForm(TCriaPDF,CriaPDF);

  CriaPDF.Opcao_Anterior.Text := Opcao;
  CriaPDF.Cliente_Email.Text  := Cliente_EMail.Text;

  Venda_Manutencao_Descricao.Lines.SaveToFile('C:\CadaTEX\Swap\NS_Equipamentos_'+Trim(Venda_Manutencao_Servico.Text)+'.rtf');

  CriaPDF.RTF_Texto.Lines.Clear;
  CriaPDF.RTF_Texto.Lines.LoadFromFile('C:\CadaTEX\Swap\NS_Equipamentos_'+Trim(Venda_Manutencao_Servico.Text)+'.rtf');

  CriaPDF.Servico.Text        := Venda_Manutencao_Servico.Text;

  Seta();

  CriaPDF.ShowModal;
  CriaPDF.Destroy;
end;

procedure TRelCotacao01.Venda_Manutencao_Nro_EquipamentoKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

end.
