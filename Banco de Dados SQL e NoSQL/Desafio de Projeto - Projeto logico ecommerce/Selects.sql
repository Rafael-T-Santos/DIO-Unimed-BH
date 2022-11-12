-- Selects

use ecommerce;

show tables;

-- conta quantos clientes
select count(*) from tbl_clientes;

-- seleciona todas as informações de todos os clientes e pedidos
select * 
from tbl_clientes t1, tbl_pedidos t2 
where t1.cd_cliente = t2.cd_cliente;

-- seleciona apenas pedidos de pessoa fisica
select * 
from tbl_clientes t1, tbl_pedidos t2 
where t1.cd_cliente = t2.cd_cliente 
and t1.ds_identificacao = 'CPF';

-- quantidade de pedidos por cliente
select t1.cd_cliente, t2.ds_cliente, count(*) as quantidade_pedidos
from tbl_pedidos t1
inner join tbl_clientes t2
on t1.cd_cliente = t2.cd_cliente
group by t1.cd_cliente;

-- local com mais estoque
select * from tbl_estoque
order by nr_quantidade desc;
