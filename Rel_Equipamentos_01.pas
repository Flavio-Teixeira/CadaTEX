unit Rel_Equipamentos_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TRelEquipamentos01 = class(TForm)
    QR_Rel_Equipamentos: TQuickRep;
    QRBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRSysData5: TQRSysData;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRSysData6: TQRSysData;
    lblTipoRelatorio: TQRLabel;
    lblPeriodo: TQRLabel;
    lblTitulo: TQRLabel;
    QRBand2: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRExpr3: TQRExpr;
    QRBand3: TQRBand;
    QRLabel18: TQRLabel;
    QRExpr4: TQRExpr;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText9: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelEquipamentos01: TRelEquipamentos01;

implementation

uses Conexao_BD, Rotinas_Gerais;

{$R *.dfm}

end.
