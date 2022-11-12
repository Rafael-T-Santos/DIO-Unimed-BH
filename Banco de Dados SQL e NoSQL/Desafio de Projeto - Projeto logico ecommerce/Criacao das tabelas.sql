-- criacao do banco de dados para o cenario de e-commerce
-- drop database ecommerce;

create database ecommerce;
use ecommerce;

-- criar tabela cliente
create table tbl_clientes(
	cd_cliente int auto_increment primary key,
    ds_cliente varchar(45) not null,
    ds_identificacao enum('CPF', 'CNPJ') not null,
    nr_cpf_cnpj varchar(14) not null,
    nr_cep int,
    ds_endereco varchar(45),
    nr_numero int,
    ds_complemento varchar(45),
    constraint unique_cpf_cnpj unique (nr_cpf_cnpj)
);
alter table tbl_clientes auto_increment=1;

-- criar tabela produto
create table tbl_produtos(
	cd_produto int auto_increment primary key,
    ds_produto varchar(45) not null,
    cd_ncm int not null,
    vl_venda float not null,
    x_ativo bool default true,
    nr_avaliacao float
);
alter table tbl_produtos auto_increment=1;

-- criar tabela de forma de pagamento
create table tbl_forma_pagamento(
	cd_cliente int,
    cd_forma_pagamento int,
    ds_forma_pagamento enum('Boleto', 'Cartao', 'Dois Cartoes'),
    primary key (cd_cliente, cd_forma_pagamento)
);

-- criar tabela pedido
create table tbl_pedidos(
	cd_pedido int auto_increment primary key,
    cd_cliente int,
    ds_status enum('Pendente', 'Faturado', 'Cancelado') not null,
    ds_obs varchar(255),
    vl_frete float default 0,
    cd_forma_pagamento int,
    constraint fk_pedidos_cliente foreign key (cd_cliente) references tbl_clientes(cd_cliente)
		on update cascade
);
alter table tbl_pedidos auto_increment=1;

-- criar tabela vendedor terceiro
create table tbl_vendedores(
	cd_vendedor int auto_increment primary key,
    ds_vendedor varchar(255) not null,
    ds_regiao varchar(45),
    nr_cpf_cnpj varchar(14) not null,
    constraint unique_cpf_cnpj unique (nr_cpf_cnpj)
);
alter table tbl_vendedores auto_increment=1;

-- criar tabela estoque
create table tbl_estoque(
	cd_estoque int auto_increment primary key,
    ds_local varchar(45) not null,
    nr_quantidade int default 0
);
alter table tbl_estoque auto_increment=1;

-- criar tabela fornecedor
create table tbl_fornecedor(
	cd_fornecedor int auto_increment primary key,
    ds_razao_social varchar(50) not null,
    ds_fantasia varchar (50),
    nr_cnpj char(14) not null,
    nr_telefone char(11),
    constraint unique_forn unique (nr_cnpj)
);
alter table tbl_fornecedor auto_increment=1;

-- criar tabela produto_vendedor
create table produto_vendedor(
	cd_vendedor int,
    cd_produto int,
    nr_quantidade int not null,
    primary key (cd_vendedor, cd_produto),
    constraint fk_produto_vendedor foreign key (cd_vendedor) references tbl_vendedores(cd_vendedor),
    constraint fk_produto_produto foreign key (cd_produto) references tbl_produtos(cd_produto)
);

-- criar tabela produto_pedido
create table produto_pedido(
	cd_pedido int,
    cd_produto int,
	nr_quantidade int default 1,
    ds_status enum('Pendente', 'Faturado', 'Cancelado') not null,
    primary key (cd_produto, cd_pedido),
    constraint fk_produto_pedido foreign key (cd_pedido) references tbl_pedidos(cd_pedido),
    constraint fk_produto_produtos foreign key (cd_produto) references tbl_produtos(cd_produto)    
);

-- criar tabela produto_estoque
create table produto_estoque(
	cd_estoque int,
    cd_produto int,
    ds_local varchar(45) not null,
    primary key (cd_estoque, cd_produto),
    constraint fk_produto_estoque foreign key (cd_estoque) references tbl_estoque(cd_estoque),
    constraint fk_produtos_produto foreign key (cd_produto) references tbl_produtos(cd_produto)
);


show databases;
use information_schema;
show tables;
desc referential_constraints;
select * from referential_constraints where constraint_schema = 'ecommerce';