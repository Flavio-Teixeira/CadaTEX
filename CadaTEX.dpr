program CadaTEX;

uses
  Forms,
  Cliente_00 in 'Cliente_00.pas' {Cliente00},
  Cliente_01 in 'Cliente_01.pas' {Cliente01},
  Cliente_02 in 'Cliente_02.pas' {Cliente02},
  Conexao_BD in 'Conexao_BD.pas' {ConexaoBD: TDataModule},
  Rotinas_Gerais in 'Rotinas_Gerais.pas',
  Sobre_00 in 'Sobre_00.pas' {Sobre00},
  Registra_Datatex in 'Registra_Datatex.pas' {RegistraDatatex},
  Rel_Listagem_Clientes_00 in 'Rel_Listagem_Clientes_00.pas' {RelListagemClientes00},
  Rel_Registro_Ligacoes_00 in 'Rel_Registro_Ligacoes_00.pas' {RelRegistroLigacoes00},
  Rel_Ficha_Cliente_00 in 'Rel_Ficha_Cliente_00.pas' {RelFichaCliente00},
  Transportadora in 'Transportadora.pas' {Transportadora01},
  Transportadora02 in 'Transportadora02.pas' {Transportadora2},
  Transportadora03 in 'Transportadora03.pas' {Transportadora3},
  VinculaTransportadora_01 in 'VinculaTransportadora_01.pas' {VinculaTransportadora01},
  VinculaTransportadora_02 in 'VinculaTransportadora_02.pas' {VinculaTransportadora02},
  Relacao_Vendas_Manutencao_00 in 'Relacao_Vendas_Manutencao_00.pas' {VendasManutencao00},
  Relacao_Vendas_Manutencao_01 in 'Relacao_Vendas_Manutencao_01.pas' {VendasManutencao01},
  Relacao_Vendas_Manutencao_02 in 'Relacao_Vendas_Manutencao_02.pas' {VendasManutencao02},
  Rel_Locacao_00 in 'Rel_Locacao_00.pas' {RelLocacao00},
  Rel_Locacao_01 in 'Rel_Locacao_01.pas' {RelLocacao01},
  Rel_Locacao_02 in 'Rel_Locacao_02.pas' {RelLocacao02},
  Adiciona_Cliente_00 in 'Adiciona_Cliente_00.pas' {AdicionaCliente00},
  Cria_PDF in 'Cria_PDF.pas' {CriaPDF},
  Rel_Cotacao_00 in 'Rel_Cotacao_00.pas' {RelCotacao00},
  Rel_Manutencao_00 in 'Rel_Manutencao_00.pas' {RelManutencao00},
  Rel_Cotacao_01 in 'Rel_Cotacao_01.pas' {RelCotacao01},
  Rel_Cotacao_02 in 'Rel_Cotacao_02.pas' {RelCotacao02},
  Rel_Manutencao_01 in 'Rel_Manutencao_01.pas' {RelManutencao01},
  Rel_Manutencao_02 in 'Rel_Manutencao_02.pas' {RelManutencao02},
  NF_Datatex_00 in 'NF_Datatex_00.pas' {NFDatatex00},
  NF_Datatex_01 in 'NF_Datatex_01.pas' {NFDatatex01},
  Rel_Equipamentos_00 in 'Rel_Equipamentos_00.pas' {RelEquipamentos00},
  Rel_Equipamentos_01 in 'Rel_Equipamentos_01.pas' {RelEquipamentos01},
  Conexao_00 in 'Conexao_00.pas' {Conexao},
  NF_Datatex_Pro_01 in 'NF_Datatex_Pro_01.pas' {NF_DatatexPro01},
  NF_Datatex_Pro_00 in 'NF_Datatex_Pro_00.pas' {NF_DatatexPro00},
  Rel_Compras_00 in 'Rel_Compras_00.pas' {RelCompras00},
  Rel_Compras_01 in 'Rel_Compras_01.pas' {RelCompras01},
  Rel_Compras_02 in 'Rel_Compras_02.pas' {RelCompras02},
  Rel_Etiquetas_Pimaco_00 in 'Rel_Etiquetas_Pimaco_00.pas' {RelEtiquetasPimaco00};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TCliente00, Cliente00);
  Application.CreateForm(TConexaoBD, ConexaoBD);
  Application.Run;
end.
