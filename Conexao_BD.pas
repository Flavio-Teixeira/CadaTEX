unit Conexao_BD;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TConexaoBD = class(TDataModule)
    DS_Clientes: TDataSource;
    SQL_Clientes: TADOQuery;
    Conexao_Principal: TADOConnection;
    SQL_Comunitario: TADOQuery;
    DS_Comunitario: TDataSource;
    DS_Conexao: TDataSource;
    SQL_Conexao: TADOQuery;
    SQL_Conexaoconexao_caminho: TWideStringField;
    SQL_Conexaoconexao_registro: TWideStringField;
    DS_Transportadoras: TDataSource;
    SQL_Transportadoras: TADOQuery;
    SQL_TransportadorasTransportadora_Numero: TAutoIncField;
    SQL_TransportadorasTransportadora_CNPJ: TWideStringField;
    SQL_TransportadorasTransportadora_Nome: TWideStringField;
    SQL_TransportadorasTransportadora_Razao_Social: TWideStringField;
    SQL_TransportadorasTransportadora_Inscricao_Municipal: TWideStringField;
    SQL_TransportadorasTransportadora_Endereco: TWideStringField;
    SQL_TransportadorasTransportadora_Complemento: TWideStringField;
    SQL_TransportadorasTransportadora_Bairro: TWideStringField;
    SQL_TransportadorasTransportadora_Cidade: TWideStringField;
    SQL_TransportadorasTransportadora_Estado: TWideStringField;
    SQL_TransportadorasTransportadora_Cep: TWideStringField;
    SQL_TransportadorasTransportadora_Pais: TWideStringField;
    SQL_TransportadorasTransportadora_Contato: TWideStringField;
    SQL_TransportadorasTransportadora_DDD: TWideStringField;
    SQL_TransportadorasTransportadora_Fone: TWideStringField;
    SQL_TransportadorasTransportadora_Fax: TWideStringField;
    SQL_TransportadorasTransportadora_Ramal: TWideStringField;
    SQL_TransportadorasTransportadora_Email: TWideStringField;
    SQL_TransportadorasTransportadora_Inscricao_Estadual: TWideStringField;
    SQL_ClientesCliente_Codigo: TWideStringField;
    SQL_ClientesCliente_Codigo_Tipo: TWideStringField;
    SQL_ClientesCliente_Nome: TWideStringField;
    SQL_ClientesCliente_Razao_Social: TWideStringField;
    SQL_ClientesCliente_Inscricao_Municipal: TWideStringField;
    SQL_ClientesCliente_Inscricao_Estadual: TWideStringField;
    SQL_ClientesCliente_Tipo_Pessoa: TWideStringField;
    SQL_ClientesCliente_Endereco: TWideStringField;
    SQL_ClientesCliente_Complemento: TWideStringField;
    SQL_ClientesCliente_Bairro: TWideStringField;
    SQL_ClientesCliente_Cidade: TWideStringField;
    SQL_ClientesCliente_Estado: TWideStringField;
    SQL_ClientesCliente_Cep: TWideStringField;
    SQL_ClientesCliente_Pais: TWideStringField;
    SQL_ClientesCliente_Fone: TWideStringField;
    SQL_ClientesCliente_Fax: TWideStringField;
    SQL_ClientesContato1_Nome: TWideStringField;
    SQL_ClientesContato1_Depto: TWideStringField;
    SQL_ClientesContato1_Fone: TWideStringField;
    SQL_ClientesContato1_Fax: TWideStringField;
    SQL_ClientesContato1_Email: TWideStringField;
    SQL_ClientesContato2_Nome: TWideStringField;
    SQL_ClientesContato2_Depto: TWideStringField;
    SQL_ClientesContato2_Fone: TWideStringField;
    SQL_ClientesContato2_Fax: TWideStringField;
    SQL_ClientesContato2_Email: TWideStringField;
    SQL_ClientesContato3_Nome: TWideStringField;
    SQL_ClientesContato3_Depto: TWideStringField;
    SQL_ClientesContato3_Fone: TWideStringField;
    SQL_ClientesContato3_Fax: TWideStringField;
    SQL_ClientesContato3_Email: TWideStringField;
    SQL_ClientesCliente_Endereco_Cobranca: TWideStringField;
    SQL_ClientesCliente_Complemento_Cobranca: TWideStringField;
    SQL_ClientesCliente_Bairro_Cobranca: TWideStringField;
    SQL_ClientesCliente_Cidade_Cobranca: TWideStringField;
    SQL_ClientesCliente_Estado_Cobranca: TWideStringField;
    SQL_ClientesCliente_Cep_Cobranca: TWideStringField;
    SQL_ClientesCliente_Pais_Cobranca: TWideStringField;
    SQL_ClientesCliente_Opcao_Cobranca: TWideStringField;
    SQL_ClientesCliente_Fone_Cobranca: TWideStringField;
    SQL_ClientesCliente_Fax_Cobranca: TWideStringField;
    SQL_ClientesCliente_Valor_Credito: TFloatField;
    SQL_ClientesCliente_Status_Credito: TWideStringField;
    SQL_ClientesCliente_Data_Inclusao: TDateTimeField;
    SQL_ClientesCliente_Data_Visita: TDateTimeField;
    SQL_ClientesCliente_Data_Alteracao: TDateTimeField;
    SQL_ClientesCliente_Data_Ultima_Compra: TDateTimeField;
    SQL_ClientesCliente_Ultimo_Valor: TFloatField;
    SQL_ClientesCliente_Email: TWideStringField;
    SQL_ClientesCliente_Observacao: TMemoField;
    SQL_ClientesCliente_Transportadora_Numero: TIntegerField;
    DS_Vendas_Manutencao: TDataSource;
    SQL_Vendas_Manutencao: TADOQuery;
    SQL_Vendas_Manutencaovenda_manutencao_numero: TAutoIncField;
    SQL_Vendas_Manutencaovenda_manutencao_cliente_codigo: TWideStringField;
    SQL_Vendas_Manutencaovenda_manutencao_servico: TWideStringField;
    SQL_Vendas_Manutencaovenda_manutencao_tipo: TWideStringField;
    SQL_Vendas_Manutencaovenda_manutencao_entrada: TDateTimeField;
    SQL_Vendas_Manutencaovenda_manutencao_saida: TDateTimeField;
    SQL_Vendas_Manutencaovenda_manutencao_relacao_pecas: TWideStringField;
    SQL_Vendas_Manutencaovenda_manutencao_descricao: TMemoField;
    SQL_Vendas_Manutencaovenda_manutencao_valor: TFloatField;
    DS_Rel_Vendas: TDataSource;
    SQL_Rel_Vendas: TADOQuery;
    SQL_Rel_Vendasvenda_manutencao_numero: TAutoIncField;
    SQL_Rel_Vendasvenda_manutencao_cliente_codigo: TWideStringField;
    SQL_Rel_Vendasvenda_manutencao_servico: TWideStringField;
    SQL_Rel_Vendasvenda_manutencao_tipo: TWideStringField;
    SQL_Rel_Vendasvenda_manutencao_entrada: TDateTimeField;
    SQL_Rel_Vendasvenda_manutencao_saida: TDateTimeField;
    SQL_Rel_Vendasvenda_manutencao_relacao_pecas: TWideStringField;
    SQL_Rel_Vendasvenda_manutencao_descricao: TMemoField;
    SQL_Rel_Vendasvenda_manutencao_valor: TFloatField;
    SQL_Rel_VendasCliente_Codigo: TWideStringField;
    SQL_Rel_VendasCliente_Codigo_Tipo: TWideStringField;
    SQL_Rel_VendasCliente_Nome: TWideStringField;
    SQL_Rel_VendasCliente_Razao_Social: TWideStringField;
    SQL_Rel_VendasCliente_Inscricao_Municipal: TWideStringField;
    SQL_Rel_VendasCliente_Inscricao_Estadual: TWideStringField;
    SQL_Rel_VendasCliente_Tipo_Pessoa: TWideStringField;
    SQL_Rel_VendasCliente_Endereco: TWideStringField;
    SQL_Rel_VendasCliente_Complemento: TWideStringField;
    SQL_Rel_VendasCliente_Bairro: TWideStringField;
    SQL_Rel_VendasCliente_Cidade: TWideStringField;
    SQL_Rel_VendasCliente_Estado: TWideStringField;
    SQL_Rel_VendasCliente_Cep: TWideStringField;
    SQL_Rel_VendasCliente_Pais: TWideStringField;
    SQL_Rel_VendasCliente_Fone: TWideStringField;
    SQL_Rel_VendasCliente_Fax: TWideStringField;
    SQL_Rel_VendasContato1_Nome: TWideStringField;
    SQL_Rel_VendasContato1_Depto: TWideStringField;
    SQL_Rel_VendasContato1_Fone: TWideStringField;
    SQL_Rel_VendasContato1_Fax: TWideStringField;
    SQL_Rel_VendasContato1_Email: TWideStringField;
    SQL_Rel_VendasContato2_Nome: TWideStringField;
    SQL_Rel_VendasContato2_Depto: TWideStringField;
    SQL_Rel_VendasContato2_Fone: TWideStringField;
    SQL_Rel_VendasContato2_Fax: TWideStringField;
    SQL_Rel_VendasContato2_Email: TWideStringField;
    SQL_Rel_VendasContato3_Nome: TWideStringField;
    SQL_Rel_VendasContato3_Depto: TWideStringField;
    SQL_Rel_VendasContato3_Fone: TWideStringField;
    SQL_Rel_VendasContato3_Fax: TWideStringField;
    SQL_Rel_VendasContato3_Email: TWideStringField;
    SQL_Rel_VendasCliente_Endereco_Cobranca: TWideStringField;
    SQL_Rel_VendasCliente_Complemento_Cobranca: TWideStringField;
    SQL_Rel_VendasCliente_Bairro_Cobranca: TWideStringField;
    SQL_Rel_VendasCliente_Cidade_Cobranca: TWideStringField;
    SQL_Rel_VendasCliente_Estado_Cobranca: TWideStringField;
    SQL_Rel_VendasCliente_Cep_Cobranca: TWideStringField;
    SQL_Rel_VendasCliente_Pais_Cobranca: TWideStringField;
    SQL_Rel_VendasCliente_Opcao_Cobranca: TWideStringField;
    SQL_Rel_VendasCliente_Fone_Cobranca: TWideStringField;
    SQL_Rel_VendasCliente_Fax_Cobranca: TWideStringField;
    SQL_Rel_VendasCliente_Valor_Credito: TFloatField;
    SQL_Rel_VendasCliente_Status_Credito: TWideStringField;
    SQL_Rel_VendasCliente_Data_Inclusao: TDateTimeField;
    SQL_Rel_VendasCliente_Data_Visita: TDateTimeField;
    SQL_Rel_VendasCliente_Data_Alteracao: TDateTimeField;
    SQL_Rel_VendasCliente_Data_Ultima_Compra: TDateTimeField;
    SQL_Rel_VendasCliente_Ultimo_Valor: TFloatField;
    SQL_Rel_VendasCliente_Email: TWideStringField;
    SQL_Rel_VendasCliente_Observacao: TMemoField;
    SQL_Rel_VendasCliente_Transportadora_Numero: TIntegerField;
    SQL_Rel_Vendasvenda_manutencao_nro_equipamento: TWideStringField;
    SQL_Vendas_Manutencaovenda_manutencao_nro_equipamento: TWideStringField;
    SQL_ClientesCliente_DDD: TWideStringField;
    SQL_ClientesCliente_Ramal: TWideStringField;
    SQL_ClientesCliente_DDD_Cobranca: TWideStringField;
    SQL_ClientesCliente_Ramal_Cobranca: TWideStringField;
    SQL_Rel_VendasCliente_DDD: TWideStringField;
    SQL_Rel_VendasCliente_Ramal: TWideStringField;
    SQL_Rel_VendasCliente_DDD_Cobranca: TWideStringField;
    SQL_Rel_VendasCliente_Ramal_Cobranca: TWideStringField;
    SQL_ClientesContato1_DDD: TWideStringField;
    SQL_ClientesContato2_DDD: TWideStringField;
    SQL_ClientesContato3_DDD: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConexaoBD: TConexaoBD;

implementation

{$R *.dfm}

end.
