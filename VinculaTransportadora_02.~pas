unit VinculaTransportadora_02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls, jpeg;

type
  TVinculaTransportadora02 = class(TForm)
    Panel7: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    BT_Sim: TBitBtn;
    BT_Nao: TBitBtn;
    Image1: TImage;
    Transportadora_Selecionada: TLabel;
    Cliente_Selecionado: TLabel;
    Transportadora_Numero: TEdit;
    Transportadora_Nome: TEdit;
    Transportadora_CNPJ: TEdit;
    Transportadora_Endereco: TEdit;
    Transportadora_Complemento: TEdit;
    Transportadora_Bairro: TEdit;
    Transportadora_Cidade: TEdit;
    Transportadora_Estado: TEdit;
    Transportadora_Cep: TEdit;
    Transportadora_Pais: TEdit;
    Transportadora_Contato: TEdit;
    Transportadora_DDD: TEdit;
    Transportadora_Fone: TEdit;
    Transportadora_Fax: TEdit;
    Transportadora_Ramal: TEdit;
    Transportadora_Email: TEdit;
    Formulario_Anterior: TEdit;
    procedure BT_NaoClick(Sender: TObject);
    procedure BT_SimClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  VinculaTransportadora02: TVinculaTransportadora02;

implementation

uses Cliente_01, Cliente_02, VinculaTransportadora_01;

{$R *.dfm}

procedure TVinculaTransportadora02.BT_NaoClick(Sender: TObject);
begin
  VinculaTransportadora01.Btn := 'Nao';
  VinculaTransportadora02.Close;
end;




procedure TVinculaTransportadora02.BT_SimClick(Sender: TObject);
begin
     VinculaTransportadora01.Btn := 'Sim';

     //** Verifica o formulário de origem **

     If Trim(Formulario_Anterior.Text) = 'Inclusão' then
        Begin
        Cliente01.VTransportadora_Numero.Text          := Transportadora_Numero.Text;
        Cliente01.VTransportadora_CNPJ.Text            := Transportadora_CNPJ.Text;
        Cliente01.VTransportadora_Nome.Text            := Transportadora_Nome.Text;
        Cliente01.VTransportadora_Endereco.Text        := Transportadora_Endereco.Text;
        Cliente01.VTransportadora_Complemento.Text     := Transportadora_Complemento.Text;
        Cliente01.VTransportadora_Bairro.Text          := Transportadora_Bairro.Text;
        Cliente01.VTransportadora_Cidade.Text          := Transportadora_Cidade.Text;
        Cliente01.VTransportadora_Estado.Text          := Transportadora_Estado.Text;
        Cliente01.VTransportadora_Cep.Text             := Transportadora_Cep.Text;
        Cliente01.VTransportadora_Pais.Text            := Transportadora_Pais.Text;
        Cliente01.VTransportadora_Contato.Text         := Transportadora_Contato.Text;
        Cliente01.VTransportadora_DDD.Text             := Transportadora_DDD.Text;
        Cliente01.VTransportadora_Ramal.Text           := Transportadora_Ramal.Text;
        Cliente01.VTransportadora_Fone.Text            := Transportadora_Fone.Text;
        Cliente01.VTransportadora_Fax.Text             := Transportadora_Fax.Text;
        Cliente01.VTransportadora_Email.Text           := Transportadora_Email.Text;
        End
     Else
        Begin
        Cliente02.VTransportadora_Numero.Text          := Transportadora_Numero.Text;
        Cliente02.VTransportadora_CNPJ.Text            := Transportadora_CNPJ.Text;
        Cliente02.VTransportadora_Nome.Text            := Transportadora_Nome.Text;
        Cliente02.VTransportadora_Endereco.Text        := Transportadora_Endereco.Text;
        Cliente02.VTransportadora_Complemento.Text     := Transportadora_Complemento.Text;
        Cliente02.VTransportadora_Bairro.Text          := Transportadora_Bairro.Text;
        Cliente02.VTransportadora_Cidade.Text          := Transportadora_Cidade.Text;
        Cliente02.VTransportadora_Estado.Text          := Transportadora_Estado.Text;
        Cliente02.VTransportadora_Cep.Text             := Transportadora_Cep.Text;
        Cliente02.VTransportadora_Pais.Text            := Transportadora_Pais.Text;
        Cliente02.VTransportadora_Contato.Text         := Transportadora_Contato.Text;
        Cliente02.VTransportadora_DDD.Text             := Transportadora_DDD.Text;
        Cliente02.VTransportadora_Ramal.Text           := Transportadora_Ramal.Text;
        Cliente02.VTransportadora_Fone.Text            := Transportadora_Fone.Text;
        Cliente02.VTransportadora_Fax.Text             := Transportadora_Fax.Text;
        Cliente02.VTransportadora_Email.Text           := Transportadora_Email.Text;
     End;

     VinculaTransportadora02.Close;
end;

end.
