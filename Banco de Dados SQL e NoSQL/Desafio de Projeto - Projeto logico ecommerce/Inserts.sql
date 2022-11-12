-- Insercao de dados
use ecommerce;

show tables;

-- ds_cliente, ds_identificacao('CPF', 'CNPJ'), nr_cpf_cnpj, nr_cep, ds_endereco, nr_numero, ds_complemento
insert into tbl_clientes (ds_cliente, ds_identificacao, nr_cpf_cnpj, nr_cep, ds_endereco, nr_numero, ds_complemento)
values	('Maria','CPF','123456789','57313000','Rua Fulano de Tal',51,'Casa com pé de jaca'),
		('José','CPF','987654321','57313100','Rua Sicrano de Tal',64,'Casa com cachorro latindo'),
        ('Cleiton','CPF','123321123','57313200','Rua Biruleibe',12,''),
        ('Augusto','CPF','789987789','57313300','Rua Cleiton Rasta',45,''),
        ('Fulaninho Ltda','CNPJ','12345678901234','57313400','Av. Deboche Legal',78,'Endereço Comercial'),
        ('Sicrano Comercio e Cia','CNPJ','01234123456789','57313500','Av. Industrial',96,'Endereço Comercial');

-- ds_produto, cd_ncm, vl_venda, x_ativo, nr_avaliacao
insert into tbl_produtos (ds_produto, cd_ncm, vl_venda, x_ativo, nr_avaliacao)
values	('Notebook',81242000,2999.99, true, 4.5),
		('Fone Bluetooth',95019999,99.99, false, 0),
        ('Mouse',41252000,29.99, true, 3.7),
        ('Teclado',74541200,125.50, true, 4.9),
		('Mouse Pad',12452000,20.00, true, 5);
 
-- cd_cliente, ds_status('Pendente', 'Faturado', 'Cancelado'), ds_obs, vl_frete, cd_forma_pagamento
insert into tbl_pedidos (cd_cliente, ds_status, ds_obs, vl_frete, cd_forma_pagamento)
values	(1,'Faturado', 'Enviar em embalagem de presente', default, 1),
		(2,'Cancelado', 'Pedido duplicado, favor cancelar', 10.99, 2),
		(1,'Faturado', 'Enviar em embalagem discreta', default, 1),
		(4,'Faturado', '', default, 1),
		(5,'Pendente', 'Posso pagar em mais de um cartão ?', 25.90, 3),
		(6,'Pendente', 'Posso pagar via pix ?', default, 3);
		
-- cd_pedido, cd_produto, nr_quantidade, ds_status('Pendente', 'Faturado', 'Cancelado')
insert into produto_pedido (cd_pedido, cd_produto, nr_quantidade, ds_status)
values	(1,1,1,'Faturado'),
		(2,1,2,'Cancelado'),
		(3,4,1,'Faturado'),
		(4,3,1,'Faturado'),
		(5,5,1,'Pendente'),
		(6,1,1,'Pendente');
        
-- ds_local, nr_quantidade
insert into tbl_estoque (ds_local, nr_quantidade)
values	('Arapiraca', 1000),
		('Maceio', 2000),
		('Palmeira dos indios', 200),
		('Marechal Deodoro', 300),
		('Estrela de Alagoas', 350);
        
-- cd_estoque, cd_produto, ds_local
insert into produto_estoque (cd_estoque, cd_produto, ds_local)
values	(1, 1, 'AL'),
		(1, 3, 'AL'),
		(2, 1, 'AL'),
		(3, 3, 'AL'),
		(4, 4, 'AL'),
		(5, 5, 'AL');
        
-- ds_razao_social, ds_fantasia, nr_cnpj, nr_telefone
insert into tbl_fornecedor (ds_razao_social, ds_fantasia, nr_cnpj, nr_telefone)
values	('Almeida e Soares Ltda', 'Chama na China', '12548659000160', 082965248596),
		('Silva e Santos Cia', 'Muamba da Boa', '1285796000214', 01142575968),
		('José Simplicio Organizacao', 'Quem te conhece te compre', '85763245000199', 021988554565);
		
-- ds_vendedor, ds_regiao, nr_cpf_cnpj
insert into tbl_vendedores (ds_vendedor, ds_regiao, nr_cpf_cnpj)
values	('Marcelo Bom de Bico', 'AL', '12345678955'),
		('Gabriel Que Come Pastel', 'PE', '58569587522'),
		('Souza e Silva Ltda', 'BA', '02145354000155'),
		('Canhoro e Direito Irmãos Ltda', 'PR', '25458657000163');
		
-- cd_vendedor, cd_produto, nr_quantidade
insert into produto_vendedor (cd_vendedor, cd_produto, nr_quantidade)
values	(1, 1, 50),
		(1, 3, 100),
		(1, 4, 150),
		(2, 5, 150),
		(2, 1, 50),
		(3, 4, 500);


		
		
		
		


		
        