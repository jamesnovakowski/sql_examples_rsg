select id
	, 'o' as address_type
	, o_lat as lat
	, o_lng as lng
from all_data
	where o_good_check = 1
union all
select id
	, 'd' as address_type
	, d_lat as lat
	, d_lng as lng
from all_data w
	where d_good_check = 1
union all
select id
	, 'h' as address_type
	, h_lat as lat
	, h_lng as lng
from all_data
	where h_good_check = 1

select * from count_sheet_data where password is not null