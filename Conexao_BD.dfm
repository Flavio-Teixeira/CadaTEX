object ConexaoBD: TConexaoBD
  OldCreateOrder = False
  Left = 225
  Top = 104
  Height = 221
  Width = 420
  object DS_Clientes: TDataSource
    DataSet = SQL_Clientes
    Left = 40
    Top = 72
  end
  object SQL_Clientes: TADOQuery
    Connection = Conexao_Principal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Clientes')
    Left = 40
    Top = 120
    object SQL_ClientesCliente_Codigo: TWideStringField
      FieldName = 'Cliente_Codigo'
      Size = 80
    end
    object SQL_ClientesCliente_Codigo_Tipo: TWideStringField
      FieldName = 'Cliente_Codigo_Tipo'
      Size = 6
    end
    object SQL_ClientesCliente_Nome: TWideStringField
      FieldName = 'Cliente_Nome'
      Size = 100
    end
    object SQL_ClientesCliente_Razao_Social: TWideStringField
      FieldName = 'Cliente_Razao_Social'
      Size = 100
    end
    object SQL_ClientesCliente_Inscricao_Municipal: TWideStringField
      FieldName = 'Cliente_Inscricao_Municipal'
    end
    object SQL_ClientesCliente_Inscricao_Estadual: TWideStringField
      FieldName = 'Cliente_Inscricao_Estadual'
    end
    object SQL_ClientesCliente_Tipo_Pessoa: TWideStringField
      FieldName = 'Cliente_Tipo_Pessoa'
    end
    object SQL_ClientesCliente_Endereco: TWideStringField
      FieldName = 'Cliente_Endereco'
      Size = 100
    end
    object SQL_ClientesCliente_Complemento: TWideStringField
      FieldName = 'Cliente_Complemento'
      Size = 80
    end
    object SQL_ClientesCliente_Bairro: TWideStringField
      FieldName = 'Cliente_Bairro'
      Size = 80
    end
    object SQL_ClientesCliente_Cidade: TWideStringField
      FieldName = 'Cliente_Cidade'
      Size = 80
    end
    object SQL_ClientesCliente_Estado: TWideStringField
      FieldName = 'Cliente_Estado'
      Size = 2
    end
    object SQL_ClientesCliente_Cep: TWideStringField
      FieldName = 'Cliente_Cep'
      Size = 9
    end
    object SQL_ClientesCliente_Pais: TWideStringField
      FieldName = 'Cliente_Pais'
      Size = 80
    end
    object SQL_ClientesCliente_Fone: TWideStringField
      FieldName = 'Cliente_Fone'
      Size = 50
    end
    object SQL_ClientesCliente_Fax: TWideStringField
      FieldName = 'Cliente_Fax'
      Size = 50
    end
    object SQL_ClientesContato1_Nome: TWideStringField
      FieldName = 'Contato1_Nome'
      Size = 50
    end
    object SQL_ClientesContato1_Depto: TWideStringField
      FieldName = 'Contato1_Depto'
      Size = 50
    end
    object SQL_ClientesContato1_Fone: TWideStringField
      FieldName = 'Contato1_Fone'
      Size = 50
    end
    object SQL_ClientesContato1_Fax: TWideStringField
      FieldName = 'Contato1_Fax'
      Size = 50
    end
    object SQL_ClientesContato1_Email: TWideStringField
      FieldName = 'Contato1_Email'
      Size = 50
    end
    object SQL_ClientesContato2_Nome: TWideStringField
      FieldName = 'Contato2_Nome'
      Size = 50
    end
    object SQL_ClientesContato2_Depto: TWideStringField
      FieldName = 'Contato2_Depto'
      Size = 50
    end
    object SQL_ClientesContato2_Fone: TWideStringField
      FieldName = 'Contato2_Fone'
      Size = 50
    end
    object SQL_ClientesContato2_Fax: TWideStringField
      FieldName = 'Contato2_Fax'
      Size = 50
    end
    object SQL_ClientesContato2_Email: TWideStringField
      FieldName = 'Contato2_Email'
      Size = 50
    end
    object SQL_ClientesContato3_Nome: TWideStringField
      FieldName = 'Contato3_Nome'
      Size = 50
    end
    object SQL_ClientesContato3_Depto: TWideStringField
      FieldName = 'Contato3_Depto'
      Size = 50
    end
    object SQL_ClientesContato3_Fone: TWideStringField
      FieldName = 'Contato3_Fone'
      Size = 50
    end
    object SQL_ClientesContato3_Fax: TWideStringField
      FieldName = 'Contato3_Fax'
      Size = 50
    end
    object SQL_ClientesContato3_Email: TWideStringField
      FieldName = 'Contato3_Email'
      Size = 50
    end
    object SQL_ClientesCliente_Endereco_Cobranca: TWideStringField
      FieldName = 'Cliente_Endereco_Cobranca'
      Size = 100
    end
    object SQL_ClientesCliente_Complemento_Cobranca: TWideStringField
      FieldName = 'Cliente_Complemento_Cobranca'
      Size = 50
    end
    object SQL_ClientesCliente_Bairro_Cobranca: TWideStringField
      FieldName = 'Cliente_Bairro_Cobranca'
      Size = 50
    end
    object SQL_ClientesCliente_Cidade_Cobranca: TWideStringField
      FieldName = 'Cliente_Cidade_Cobranca'
      Size = 50
    end
    object SQL_ClientesCliente_Estado_Cobranca: TWideStringField
      FieldName = 'Cliente_Estado_Cobranca'
      Size = 2
    end
    object SQL_ClientesCliente_Cep_Cobranca: TWideStringField
      FieldName = 'Cliente_Cep_Cobranca'
      Size = 9
    end
    object SQL_ClientesCliente_Pais_Cobranca: TWideStringField
      FieldName = 'Cliente_Pais_Cobranca'
      Size = 50
    end
    object SQL_ClientesCliente_Opcao_Cobranca: TWideStringField
      FieldName = 'Cliente_Opcao_Cobranca'
      Size = 7
    end
    object SQL_ClientesCliente_Fone_Cobranca: TWideStringField
      FieldName = 'Cliente_Fone_Cobranca'
      Size = 50
    end
    object SQL_ClientesCliente_Fax_Cobranca: TWideStringField
      FieldName = 'Cliente_Fax_Cobranca'
      Size = 50
    end
    object SQL_ClientesCliente_Valor_Credito: TFloatField
      FieldName = 'Cliente_Valor_Credito'
    end
    object SQL_ClientesCliente_Status_Credito: TWideStringField
      FieldName = 'Cliente_Status_Credito'
      Size = 1
    end
    object SQL_ClientesCliente_Data_Inclusao: TDateTimeField
      FieldName = 'Cliente_Data_Inclusao'
    end
    object SQL_ClientesCliente_Data_Visita: TDateTimeField
      FieldName = 'Cliente_Data_Visita'
    end
    object SQL_ClientesCliente_Data_Alteracao: TDateTimeField
      FieldName = 'Cliente_Data_Alteracao'
    end
    object SQL_ClientesCliente_Data_Ultima_Compra: TDateTimeField
      FieldName = 'Cliente_Data_Ultima_Compra'
    end
    object SQL_ClientesCliente_Ultimo_Valor: TFloatField
      FieldName = 'Cliente_Ultimo_Valor'
    end
    object SQL_ClientesCliente_Email: TWideStringField
      FieldName = 'Cliente_Email'
      Size = 50
    end
    object SQL_ClientesCliente_Observacao: TMemoField
      FieldName = 'Cliente_Observacao'
      BlobType = ftMemo
    end
    object SQL_ClientesCliente_Transportadora_Numero: TIntegerField
      FieldName = 'Cliente_Transportadora_Numero'
    end
    object SQL_ClientesCliente_DDD: TWideStringField
      FieldName = 'Cliente_DDD'
      Size = 3
    end
    object SQL_ClientesCliente_Ramal: TWideStringField
      FieldName = 'Cliente_Ramal'
      Size = 5
    end
    object SQL_ClientesCliente_DDD_Cobranca: TWideStringField
      FieldName = 'Cliente_DDD_Cobranca'
      Size = 3
    end
    object SQL_ClientesCliente_Ramal_Cobranca: TWideStringField
      FieldName = 'Cliente_Ramal_Cobranca'
      Size = 5
    end
    object SQL_ClientesContato1_DDD: TWideStringField
      FieldName = 'Contato1_DDD'
      Size = 3
    end
    object SQL_ClientesContato2_DDD: TWideStringField
      FieldName = 'Contato2_DDD'
      Size = 3
    end
    object SQL_ClientesContato3_DDD: TWideStringField
      FieldName = 'Contato3_DDD'
      Size = 3
    end
  end
  object Conexao_Principal: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Ca' +
      'datex\BD\Cadatex.MDB;Mode=ReadWrite;Extended Properties="";Persi' +
      'st Security Info=False;Jet OLEDB:System database="";Jet OLEDB:Re' +
      'gistry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine T' +
      'ype=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial' +
      ' Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New D' +
      'atabase Password="";Jet OLEDB:Create System Database=False;Jet O' +
      'LEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compa' +
      'ct=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLED' +
      'B:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 16
  end
  object SQL_Comunitario: TADOQuery
    Connection = Conexao_Principal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from comunitario')
    Left = 78
    Top = 120
  end
  object DS_Comunitario: TDataSource
    DataSet = SQL_Comunitario
    Left = 78
    Top = 72
  end
  object DS_Conexao: TDataSource
    DataSet = SQL_Conexao
    Left = 116
    Top = 72
  end
  object SQL_Conexao: TADOQuery
    Connection = Conexao_Principal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Conexao')
    Left = 116
    Top = 120
    object SQL_Conexaoconexao_caminho: TWideStringField
      FieldName = 'conexao_caminho'
      Size = 100
    end
    object SQL_Conexaoconexao_registro: TWideStringField
      FieldName = 'conexao_registro'
      Size = 16
    end
  end
  object DS_Transportadoras: TDataSource
    DataSet = SQL_Transportadoras
    Left = 154
    Top = 72
  end
  object SQL_Transportadoras: TADOQuery
    Connection = Conexao_Principal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Transportadoras')
    Left = 154
    Top = 120
    object SQL_TransportadorasTransportadora_Numero: TAutoIncField
      FieldName = 'Transportadora_Numero'
      ReadOnly = True
    end
    object SQL_TransportadorasTransportadora_CNPJ: TWideStringField
      FieldName = 'Transportadora_CNPJ'
      Size = 80
    end
    object SQL_TransportadorasTransportadora_Nome: TWideStringField
      FieldName = 'Transportadora_Nome'
      Size = 100
    end
    object SQL_TransportadorasTransportadora_Razao_Social: TWideStringField
      FieldName = 'Transportadora_Razao_Social'
      Size = 100
    end
    object SQL_TransportadorasTransportadora_Inscricao_Municipal: TWideStringField
      FieldName = 'Transportadora_Inscricao_Municipal'
    end
    object SQL_TransportadorasTransportadora_Endereco: TWideStringField
      FieldName = 'Transportadora_Endereco'
      Size = 100
    end
    object SQL_TransportadorasTransportadora_Complemento: TWideStringField
      FieldName = 'Transportadora_Complemento'
      Size = 80
    end
    object SQL_TransportadorasTransportadora_Bairro: TWideStringField
      FieldName = 'Transportadora_Bairro'
      Size = 80
    end
    object SQL_TransportadorasTransportadora_Cidade: TWideStringField
      FieldName = 'Transportadora_Cidade'
      Size = 80
    end
    object SQL_TransportadorasTransportadora_Estado: TWideStringField
      FieldName = 'Transportadora_Estado'
      Size = 2
    end
    object SQL_TransportadorasTransportadora_Cep: TWideStringField
      FieldName = 'Transportadora_Cep'
      Size = 9
    end
    object SQL_TransportadorasTransportadora_Pais: TWideStringField
      FieldName = 'Transportadora_Pais'
      Size = 80
    end
    object SQL_TransportadorasTransportadora_Contato: TWideStringField
      FieldName = 'Transportadora_Contato'
      Size = 50
    end
    object SQL_TransportadorasTransportadora_DDD: TWideStringField
      FieldName = 'Transportadora_DDD'
      Size = 3
    end
    object SQL_TransportadorasTransportadora_Fone: TWideStringField
      FieldName = 'Transportadora_Fone'
      Size = 50
    end
    object SQL_TransportadorasTransportadora_Fax: TWideStringField
      FieldName = 'Transportadora_Fax'
      Size = 50
    end
    object SQL_TransportadorasTransportadora_Ramal: TWideStringField
      FieldName = 'Transportadora_Ramal'
      Size = 5
    end
    object SQL_TransportadorasTransportadora_Email: TWideStringField
      FieldName = 'Transportadora_Email'
      Size = 80
    end
    object SQL_TransportadorasTransportadora_Inscricao_Estadual: TWideStringField
      FieldName = 'Transportadora_Inscricao_Estadual'
    end
  end
  object DS_Vendas_Manutencao: TDataSource
    DataSet = SQL_Vendas_Manutencao
    Left = 194
    Top = 72
  end
  object SQL_Vendas_Manutencao: TADOQuery
    Connection = Conexao_Principal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Vendas_Manutencao')
    Left = 194
    Top = 120
    object SQL_Vendas_Manutencaovenda_manutencao_numero: TAutoIncField
      FieldName = 'venda_manutencao_numero'
      ReadOnly = True
    end
    object SQL_Vendas_Manutencaovenda_manutencao_cliente_codigo: TWideStringField
      FieldName = 'venda_manutencao_cliente_codigo'
      Size = 80
    end
    object SQL_Vendas_Manutencaovenda_manutencao_servico: TWideStringField
      FieldName = 'venda_manutencao_servico'
      Size = 10
    end
    object SQL_Vendas_Manutencaovenda_manutencao_tipo: TWideStringField
      FieldName = 'venda_manutencao_tipo'
      Size = 50
    end
    object SQL_Vendas_Manutencaovenda_manutencao_entrada: TDateTimeField
      FieldName = 'venda_manutencao_entrada'
    end
    object SQL_Vendas_Manutencaovenda_manutencao_saida: TDateTimeField
      FieldName = 'venda_manutencao_saida'
    end
    object SQL_Vendas_Manutencaovenda_manutencao_relacao_pecas: TWideStringField
      FieldName = 'venda_manutencao_relacao_pecas'
      Size = 255
    end
    object SQL_Vendas_Manutencaovenda_manutencao_descricao: TMemoField
      FieldName = 'venda_manutencao_descricao'
      BlobType = ftMemo
    end
    object SQL_Vendas_Manutencaovenda_manutencao_valor: TFloatField
      FieldName = 'venda_manutencao_valor'
      DisplayFormat = '0.00'
    end
    object SQL_Vendas_Manutencaovenda_manutencao_nro_equipamento: TWideStringField
      FieldName = 'venda_manutencao_nro_equipamento'
      Size = 100
    end
  end
  object DS_Rel_Vendas: TDataSource
    DataSet = SQL_Rel_Vendas
    Left = 234
    Top = 72
  end
  object SQL_Rel_Vendas: TADOQuery
    Connection = Conexao_Principal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select * from Vendas_Manutencao, Clientes Where venda_manutencao' +
        '_cliente_codigo = cliente_codigo')
    Left = 234
    Top = 120
    object SQL_Rel_Vendasvenda_manutencao_numero: TAutoIncField
      FieldName = 'venda_manutencao_numero'
      ReadOnly = True
    end
    object SQL_Rel_Vendasvenda_manutencao_cliente_codigo: TWideStringField
      FieldName = 'venda_manutencao_cliente_codigo'
      Size = 80
    end
    object SQL_Rel_Vendasvenda_manutencao_servico: TWideStringField
      FieldName = 'venda_manutencao_servico'
      Size = 10
    end
    object SQL_Rel_Vendasvenda_manutencao_tipo: TWideStringField
      FieldName = 'venda_manutencao_tipo'
      Size = 50
    end
    object SQL_Rel_Vendasvenda_manutencao_entrada: TDateTimeField
      FieldName = 'venda_manutencao_entrada'
    end
    object SQL_Rel_Vendasvenda_manutencao_saida: TDateTimeField
      FieldName = 'venda_manutencao_saida'
    end
    object SQL_Rel_Vendasvenda_manutencao_relacao_pecas: TWideStringField
      FieldName = 'venda_manutencao_relacao_pecas'
      Size = 255
    end
    object SQL_Rel_Vendasvenda_manutencao_descricao: TMemoField
      FieldName = 'venda_manutencao_descricao'
      BlobType = ftMemo
    end
    object SQL_Rel_Vendasvenda_manutencao_valor: TFloatField
      FieldName = 'venda_manutencao_valor'
      DisplayFormat = '0.00'
    end
    object SQL_Rel_VendasCliente_Codigo: TWideStringField
      FieldName = 'Cliente_Codigo'
      Size = 80
    end
    object SQL_Rel_VendasCliente_Codigo_Tipo: TWideStringField
      FieldName = 'Cliente_Codigo_Tipo'
      Size = 6
    end
    object SQL_Rel_VendasCliente_Nome: TWideStringField
      FieldName = 'Cliente_Nome'
      Size = 100
    end
    object SQL_Rel_VendasCliente_Razao_Social: TWideStringField
      FieldName = 'Cliente_Razao_Social'
      Size = 100
    end
    object SQL_Rel_VendasCliente_Inscricao_Municipal: TWideStringField
      FieldName = 'Cliente_Inscricao_Municipal'
    end
    object SQL_Rel_VendasCliente_Inscricao_Estadual: TWideStringField
      FieldName = 'Cliente_Inscricao_Estadual'
    end
    object SQL_Rel_VendasCliente_Tipo_Pessoa: TWideStringField
      FieldName = 'Cliente_Tipo_Pessoa'
    end
    object SQL_Rel_VendasCliente_Endereco: TWideStringField
      FieldName = 'Cliente_Endereco'
      Size = 100
    end
    object SQL_Rel_VendasCliente_Complemento: TWideStringField
      FieldName = 'Cliente_Complemento'
      Size = 80
    end
    object SQL_Rel_VendasCliente_Bairro: TWideStringField
      FieldName = 'Cliente_Bairro'
      Size = 80
    end
    object SQL_Rel_VendasCliente_Cidade: TWideStringField
      FieldName = 'Cliente_Cidade'
      Size = 80
    end
    object SQL_Rel_VendasCliente_Estado: TWideStringField
      FieldName = 'Cliente_Estado'
      Size = 2
    end
    object SQL_Rel_VendasCliente_Cep: TWideStringField
      FieldName = 'Cliente_Cep'
      Size = 9
    end
    object SQL_Rel_VendasCliente_Pais: TWideStringField
      FieldName = 'Cliente_Pais'
      Size = 80
    end
    object SQL_Rel_VendasCliente_Fone: TWideStringField
      FieldName = 'Cliente_Fone'
      Size = 50
    end
    object SQL_Rel_VendasCliente_Fax: TWideStringField
      FieldName = 'Cliente_Fax'
      Size = 50
    end
    object SQL_Rel_VendasContato1_Nome: TWideStringField
      FieldName = 'Contato1_Nome'
      Size = 50
    end
    object SQL_Rel_VendasContato1_Depto: TWideStringField
      FieldName = 'Contato1_Depto'
      Size = 50
    end
    object SQL_Rel_VendasContato1_Fone: TWideStringField
      FieldName = 'Contato1_Fone'
      Size = 50
    end
    object SQL_Rel_VendasContato1_Fax: TWideStringField
      FieldName = 'Contato1_Fax'
      Size = 50
    end
    object SQL_Rel_VendasContato1_Email: TWideStringField
      FieldName = 'Contato1_Email'
      Size = 50
    end
    object SQL_Rel_VendasContato2_Nome: TWideStringField
      FieldName = 'Contato2_Nome'
      Size = 50
    end
    object SQL_Rel_VendasContato2_Depto: TWideStringField
      FieldName = 'Contato2_Depto'
      Size = 50
    end
    object SQL_Rel_VendasContato2_Fone: TWideStringField
      FieldName = 'Contato2_Fone'
      Size = 50
    end
    object SQL_Rel_VendasContato2_Fax: TWideStringField
      FieldName = 'Contato2_Fax'
      Size = 50
    end
    object SQL_Rel_VendasContato2_Email: TWideStringField
      FieldName = 'Contato2_Email'
      Size = 50
    end
    object SQL_Rel_VendasContato3_Nome: TWideStringField
      FieldName = 'Contato3_Nome'
      Size = 50
    end
    object SQL_Rel_VendasContato3_Depto: TWideStringField
      FieldName = 'Contato3_Depto'
      Size = 50
    end
    object SQL_Rel_VendasContato3_Fone: TWideStringField
      FieldName = 'Contato3_Fone'
      Size = 50
    end
    object SQL_Rel_VendasContato3_Fax: TWideStringField
      FieldName = 'Contato3_Fax'
      Size = 50
    end
    object SQL_Rel_VendasContato3_Email: TWideStringField
      FieldName = 'Contato3_Email'
      Size = 50
    end
    object SQL_Rel_VendasCliente_Endereco_Cobranca: TWideStringField
      FieldName = 'Cliente_Endereco_Cobranca'
      Size = 100
    end
    object SQL_Rel_VendasCliente_Complemento_Cobranca: TWideStringField
      FieldName = 'Cliente_Complemento_Cobranca'
      Size = 50
    end
    object SQL_Rel_VendasCliente_Bairro_Cobranca: TWideStringField
      FieldName = 'Cliente_Bairro_Cobranca'
      Size = 50
    end
    object SQL_Rel_VendasCliente_Cidade_Cobranca: TWideStringField
      FieldName = 'Cliente_Cidade_Cobranca'
      Size = 50
    end
    object SQL_Rel_VendasCliente_Estado_Cobranca: TWideStringField
      FieldName = 'Cliente_Estado_Cobranca'
      Size = 2
    end
    object SQL_Rel_VendasCliente_Cep_Cobranca: TWideStringField
      FieldName = 'Cliente_Cep_Cobranca'
      Size = 9
    end
    object SQL_Rel_VendasCliente_Pais_Cobranca: TWideStringField
      FieldName = 'Cliente_Pais_Cobranca'
      Size = 50
    end
    object SQL_Rel_VendasCliente_Opcao_Cobranca: TWideStringField
      FieldName = 'Cliente_Opcao_Cobranca'
      Size = 7
    end
    object SQL_Rel_VendasCliente_Fone_Cobranca: TWideStringField
      FieldName = 'Cliente_Fone_Cobranca'
      Size = 50
    end
    object SQL_Rel_VendasCliente_Fax_Cobranca: TWideStringField
      FieldName = 'Cliente_Fax_Cobranca'
      Size = 50
    end
    object SQL_Rel_VendasCliente_Valor_Credito: TFloatField
      FieldName = 'Cliente_Valor_Credito'
    end
    object SQL_Rel_VendasCliente_Status_Credito: TWideStringField
      FieldName = 'Cliente_Status_Credito'
      Size = 1
    end
    object SQL_Rel_VendasCliente_Data_Inclusao: TDateTimeField
      FieldName = 'Cliente_Data_Inclusao'
    end
    object SQL_Rel_VendasCliente_Data_Visita: TDateTimeField
      FieldName = 'Cliente_Data_Visita'
    end
    object SQL_Rel_VendasCliente_Data_Alteracao: TDateTimeField
      FieldName = 'Cliente_Data_Alteracao'
    end
    object SQL_Rel_VendasCliente_Data_Ultima_Compra: TDateTimeField
      FieldName = 'Cliente_Data_Ultima_Compra'
    end
    object SQL_Rel_VendasCliente_Ultimo_Valor: TFloatField
      FieldName = 'Cliente_Ultimo_Valor'
    end
    object SQL_Rel_VendasCliente_Email: TWideStringField
      FieldName = 'Cliente_Email'
      Size = 50
    end
    object SQL_Rel_VendasCliente_Observacao: TMemoField
      FieldName = 'Cliente_Observacao'
      BlobType = ftMemo
    end
    object SQL_Rel_VendasCliente_Transportadora_Numero: TIntegerField
      FieldName = 'Cliente_Transportadora_Numero'
    end
    object SQL_Rel_Vendasvenda_manutencao_nro_equipamento: TWideStringField
      FieldName = 'venda_manutencao_nro_equipamento'
      Size = 100
    end
    object SQL_Rel_VendasCliente_DDD: TWideStringField
      FieldName = 'Cliente_DDD'
      Size = 3
    end
    object SQL_Rel_VendasCliente_Ramal: TWideStringField
      FieldName = 'Cliente_Ramal'
      Size = 5
    end
    object SQL_Rel_VendasCliente_DDD_Cobranca: TWideStringField
      FieldName = 'Cliente_DDD_Cobranca'
      Size = 3
    end
    object SQL_Rel_VendasCliente_Ramal_Cobranca: TWideStringField
      FieldName = 'Cliente_Ramal_Cobranca'
      Size = 5
    end
  end
end
