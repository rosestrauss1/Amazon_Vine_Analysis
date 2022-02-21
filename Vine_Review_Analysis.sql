    select * 
into vine_table_20_votes
from vine_table 
where total_votes > 19;

select *
into vine_table_many_and_helpful 
from vine_table_20_votes
where cast(helpful_votes as float) / cast(total_votes as float) >= 0.5;

select * 
into vine_paid 
from vine_table_many_and_helpful 
where vine = 'Y';

select *
into vine_unpaid
from vine_table_many_and_helpful
where vine = 'N';
	
	select 'total reviews (paid): ', count(*) from vine_paid
	
	select 'total 5 star reviews (paid): ', count(*) from vine_paid 
    where star_rating = 5
	
	select 'percentage of 5 star reviews (paid): ', cast( (select count(*) from vine_paid where star_rating = 5)  as float) / cast((select count(*) from vine_paid ) as float) * 100
	
	select 'total reviews (unpaid): ', count(*) from vine_unpaid
	
	select 'total 5 star reviews (unpaid): ', count(*) from vine_unpaid 
    where star_rating = 5
	
	select 'percentage of 5 star reviews (unpaid): ', cast( (select count(*) from vine_unpaid where star_rating = 5)  as float) / cast((select count(*) from vine_unpaid ) as float) * 100;

