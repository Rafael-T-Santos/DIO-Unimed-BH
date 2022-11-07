select region,
	sum(population)
from "populationdb"."dio_unimed"
where region='Sul'
group by region;
