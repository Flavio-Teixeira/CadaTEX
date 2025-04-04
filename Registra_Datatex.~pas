unit Registra_Datatex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TRegistraDatatex = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Registro: TEdit;
    Panel1: TPanel;
    Label9: TLabel;
    Licenca_1: TEdit;
    BT_Registrar: TBitBtn;
    procedure Licenca_1KeyPress(Sender: TObject; var Key: Char);
    procedure Licenca_2KeyPress(Sender: TObject; var Key: Char);
    procedure Licenca_3KeyPress(Sender: TObject; var Key: Char);
    procedure Licenca_4KeyPress(Sender: TObject; var Key: Char);
    procedure Licenca_5KeyPress(Sender: TObject; var Key: Char);
    procedure Licenca_6KeyPress(Sender: TObject; var Key: Char);
    procedure Licenca_7KeyPress(Sender: TObject; var Key: Char);
    procedure Licenca_8KeyPress(Sender: TObject; var Key: Char);
    procedure BT_RegistrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegistraDatatex: TRegistraDatatex;

implementation

uses Conexao_BD, Rotinas_Gerais;

{$R *.dfm}

procedure TRegistraDatatex.Licenca_1KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRegistraDatatex.Licenca_2KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRegistraDatatex.Licenca_3KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRegistraDatatex.Licenca_4KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRegistraDatatex.Licenca_5KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRegistraDatatex.Licenca_6KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRegistraDatatex.Licenca_7KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRegistraDatatex.Licenca_8KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
        Begin
        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
     End;
end;

procedure TRegistraDatatex.BT_RegistrarClick(Sender: TObject);

var
   Registra_Licenca: String;

begin
     Registra_Licenca := Trim(Licenca_1.Text);

{*** Carrega a Connexão da Estação Local ***}

     conexaoBD.SQL_Comunitario.Close;
     conexaoBD.SQL_Comunitario.SQL.Clear;
     conexaoBD.SQL_Comunitario.SQL.Add('Update Conexao Set Conexao_registro = '+#39+Trim(Registra_Licenca)+#39);
     conexaoBD.SQL_Comunitario.ExecSQL;

     RegistraDatatex.Close;
end;

end.
