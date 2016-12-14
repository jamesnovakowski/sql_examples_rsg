
delete from geo_addresses where ID < 2000

alter view Addresses as

Select * from

(Select ID as O_ID
, ID_text as O_ID_text
, PLACE as O_PLACE
, STREET as O_STREET
, CITY as O_CITY
, STATE as O_STATE
, ZIP as O_ZIP
, Address as O_Address
, status as O_status
, formatted_address as O_formatted_address
, street_number as O_street_number
, street_address as O_street_address
, route as O_route
, country as O_country
, administrative_area_level1 as O_administrative_area_level1
, administrative_area_level2 as O_administrative_area_level2
, locality as O_locality
, neighborhood as O_neighborhood
, postal_code as O_postal_code
, post_box as O_post_box
, establishment as O_establishment
, lat as O_lat
, lng as O_lng
, ne_lat as O_ne_lat
, ne_lng as O_ne_lng
, sw_lat as O_sw_lat
, sw_lng as O_sw_lng
, partial_match as O_partial_match
, location_type as O_location_type
, "types" as O_types
, [Exact_Match] as O_Exact_Match
, location_type_value as O_location_type_value
, types_value as O_types_value
, [Good] as O_Good_Check
from geo_addresses
	where place_type = 1) O

left outer join

(select 
	ID as D_ID
	, ID_text as D_ID_text
	, PLACE as D_PLACE
	, STREET as D_STREET
	, CITY as D_CITY
	, STATE as D_STATE
	, ZIP as D_ZIP
	, Address as D_Address
	, status as D_status
	, formatted_address as D_formatted_address
	, street_number as D_street_number
	, street_address as D_street_address
	, route as D_route
	, country as D_country
	, administrative_area_level1 as D_administrative_area_level1
	, administrative_area_level2 as D_administrative_area_level2
	, locality as D_locality
	, neighborhood as D_neighborhood
	, postal_code as D_postal_code
	, post_box as D_post_box
	, establishment as D_establishment
	, lat as D_lat
	, lng as D_lng
	, ne_lat as D_ne_lat
	, ne_lng as D_ne_lng
	, sw_lat as D_sw_lat
	, sw_lng as D_sw_lng
	, partial_match as D_partial_match
	, location_type as D_location_type
	, types as D_types
	, [Exact_Match] as D_Exact_Match
	, location_type_value as D_location_type_value
	, types_value as D_types_value
	, [Good] as D_Good_Check
from geo_addresses 
	where place_type = 2) D

on O.O_ID_text = D.D_ID_text
left outer join
(

select 
ID as H_ID
, ID_text as H_ID_text
, PLACE as H_PLACE
, STREET as H_STREET
, CITY as H_CITY
, STATE as H_STATE
, ZIP as H_ZIP
, Address as H_Address
, status as H_status
, formatted_address as H_formatted_address
, street_number as H_street_number
, street_address as H_street_address
, route as H_route
, country as H_country
, administrative_area_level1 as H_administrative_area_level1
, administrative_area_level2 as H_administrative_area_level2
, locality as H_locality
, neighborhood as H_neighborhood
, postal_code as H_postal_code
, post_box as H_post_box
, establishment as H_establishment
, lat as H_lat
, lng as H_lng
, ne_lat as H_ne_lat
, ne_lng as H_ne_lng
, sw_lat as H_sw_lat
, sw_lng as H_sw_lng
, partial_match as H_partial_match
, location_type as H_location_type
, types as H_types
, [Exact_Match] as [H_Exact_Match]
, location_type_value as H_location_type_value
, types_value as H_types_value
, [Good] as H_Good_Check
from geo_addresses 
	where place_type = 3) H

on O.O_ID_text = H.H_ID_text

go


--removing leading "'" from ID Text field.


--All set.
select ID, place_type, zip, postal_code, address, formatted_address from geo_addresses 
where good = 1 and zip <> postal_code and left(zip,1) <> left(postal_code,1)

update geo_addresses
set zip = postal_code
where good = 1 and zip <> postal_code and left(zip,1) <> left(postal_code,1)

--All set.
select ID, place_type, zip, postal_code, address, formatted_address from geo_addresses 
where good = 1 and zip <> postal_code and state <> administrative_area_level1

--All set
update geo_addresses
set zip = postal_code 
where good = 1 and zip <> postal_code

select ID, place_type, zip, postal_code, address, formatted_address, city, locality, state, administrative_area_level1 from geo_addresses 
where good = 1 and state <> administrative_area_level1

select * from geo_addresses where state is null and administrative_area_level1 is not null and good = 1




select * from count_sheet_data where password like '202554'


select * into geo_addresses_bkup_11_19_15 from geo_addresses


--Issues with addresses imported from batch 14.  I mis-sorted the place_type field.  Needed to fix. Okay, cool, that fixes all the Batch 14 references.  Whew.
update geo_addresses set place_type = 1 where id = 209957 and address like ''
update geo_addresses set place_type = 3 where id = 214272 and address like ''
update geo_addresses set place_type = 3 where id = 214280 and address like ''
update geo_addresses set place_type = 3 where id = 210155 and address like ''
update geo_addresses set place_type = 3 where id = 209184 and address like ''
update geo_addresses set place_type = 3 where id = 211194 and address like ''
update geo_addresses set place_type = 3 where id = 213875 and address like ''
update geo_addresses set place_type = 1 where id = 203994 and address like '7 CHESTER ROAD, MONTCLAIR, NJ 07043'
update geo_addresses set place_type = 1 where id = 214280 and address like '12 WINSOR PL, GLEN RIDGE, NJ 07028'
update geo_addresses set place_type = 1 where id = 210155 and address like 'FAIRFIELD STREET, MONTCLAIR, NJ 07042'
update geo_addresses set place_type = 1 where id = 210702 and address like '6 NISHUANE ROAD, MONTCLAIR, NJ 07062'
update geo_addresses set place_type = 1 where id = 211194 and address like 'ANN ST, VERONA, NJ 07044'
update geo_addresses set place_type = 1 where id = 210588 and address like 'BROOKDALE ELEMENTARY SCHOOL, 1218 BROAD ST, BLOOMFIELD, NJ 07003'
update geo_addresses set place_type = 1 where id = 209180 and address like '74 GROVE ST, MONTCLAIR, NJ 07042'
update geo_addresses set place_type = 1 where id = 213296 and address like 'RESIDENCE, 516 N ARLINGTON AVE, EAST ORANGE, NJ 07017'
update geo_addresses set place_type = 1 where id = 208160 and address like '353 UPPER MOUNTAIN AVE, MONTCLAIR, NJ 07043'
update geo_addresses set place_type = 1 where id = 204692 and address like '159 LINCOLN ST, MONTCLAIR, NJ 07042'
update geo_addresses set place_type = 1 where id = 213875 and address like 'CLARK ST & HILLSIDE AVE, GLEN RIDGE, NJ 07028'
update geo_addresses set place_type = 1 where id = 213593 and address like 'MADISON ST, GLEN RIDGE, NJ 07028'
update geo_addresses set place_type = 1 where id = 204055 and address like '10 EAST FOREST RD, BUDD LAKE, NJ 07828'
update geo_addresses set place_type = 2 where id = 203994 and address like '85 10TH AVE, NEW YORK, NY '
update geo_addresses set place_type = 2 where id = 214280 and address like 'SHAWMUT, 3E 54TH ST, NEW YORK, NY '
update geo_addresses set place_type = 2 where id = 210155 and address like '560 LEXINGTON AVE, NEW YORK, NY 10022'
update geo_addresses set place_type = 2 where id = 209184 and address like 'NEW YORK, NY 10039'
update geo_addresses set place_type = 2 where id = 211194 and address like 'EAST 23RD ST, NEW YORK, NY 10010'
update geo_addresses set place_type = 2 where id = 209180 and address like 'AMERICAN MUSEUM OF NATURAL HISTORY, 200 CENTRAL PARK WEST, NEW YORK, NY 10024'
update geo_addresses set place_type = 2 where id = 208160 and address like '1185 AVENUE OF THE AMERICAS, NEW YORK, NY 10036'
update geo_addresses set place_type = 2 where id = 204692 and address like 'THOMSON REUTERS, 3 TIMES SQUARE, NEW YORK, NY '
update geo_addresses set place_type = 2 where id = 213875 and address like '399 PARK, NEW YORK, NY 10022'
update geo_addresses set place_type = 2 where id = 213593 and address like 'HARRISON & STAR, 75 VARICK ST, NEW YORK, NY 10013'
update geo_addresses set place_type = 2 where id = 204055 and address like 'RICE LAKE WEIGHING SYSTEMS, 230 W COLEMAN ST, RICE LAKE, WI 54868'
update geo_addresses set place_type = 3 where id = 203994 and address like '7 CHESTER ROAD, MONTCLAIR, NJ 7043'
update geo_addresses set place_type = 3 where id = 210702 and address like '6 NISHUANE ROAD, MONTCLAIR, NJ 7042'
update geo_addresses set place_type = 3 where id = 210588 and address like '47 MACLEOD LANE, BLOOMFIELD, NJ 7003'
update geo_addresses set place_type = 3 where id = 209180 and address like '74 GROVE ST, MONTCLAIR, NJ 7042'
update geo_addresses set place_type = 3 where id = 213296 and address like '516 N ARLINGTON AVE, EAST ORANGE, NJ 7017'
update geo_addresses set place_type = 3 where id = 208160 and address like '353 UPPER MOUNTAIN AVE, MONTCLAIR, NJ 7043'
update geo_addresses set place_type = 3 where id = 204692 and address like '159 LINCOLN ST, MONTCLAIR, NJ 7042'
update geo_addresses set place_type = 3 where id = 213593 and address like '34 MADISON ST, GLEN RIDGE, NJ 7028'
update geo_addresses set place_type = 3 where id = 204055 and address like '10 EAST FOREST RD, BUDD LAKE, NJ 7828'
update geo_addresses set place_type = 1 where id = 214272 and address like 'LACKAWANA PLACE, BLOOMFIELD, NJ 07003'
update geo_addresses set place_type = 1 where id = 209184 and address like 'BLOOMFIELD, NJ 07003'
update geo_addresses set place_type = 2 where id = 210702 and address like 'UNITED HEALTHCARE, 1 PENN PLAZA, NEW YORK, NY 10119'
update geo_addresses set place_type = 2 where id = 214272 and address like '501 Fashion Ave, NEW YORK, NY 10018'
update geo_addresses set place_type = 2 where id = 213296 and address like '500 8TH AVE, NEW YORK, NY '
update geo_addresses set place_type = 2 where id = 210588 and address like '2 RIVERFRONT PLAZA, NEWARK, NJ 07102'