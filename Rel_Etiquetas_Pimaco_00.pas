unit Rel_Etiquetas_Pimaco_00;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TRelEtiquetasPimaco00 = class(TForm)
    QR_Listagem_Clientes: TQuickRep;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel1: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelEtiquetasPimaco00: TRelEtiquetasPimaco00;

implementation

uses Conexao_BD, Rotinas_Gerais;

{$R *.dfm}

end.
