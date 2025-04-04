unit Sobre_00;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TSobre00 = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Data_Final: TLabel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Tempo_Duracao: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Tempo_DuracaoTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Sobre00: TSobre00;

implementation

uses Rotinas_Gerais;

{$R *.dfm}

procedure TSobre00.FormCreate(Sender: TObject);
begin
     //*** Trabalha com o Ano de 4 Dígitos ***

     ShortDateFormat := 'dd/mm/yyyy';
end;

procedure TSobre00.FormShow(Sender: TObject);
begin
     Data_Final.Caption := Copy(DateToStr(Date()),7,4);
end;

procedure TSobre00.Tempo_DuracaoTimer(Sender: TObject);
begin
     Sobre00.Close;
end;

end.
