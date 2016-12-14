--***************************************
--***************************************
--This syntax will document any manipulations performed expressly on the 
--Count Sheet data.  Also, we may document some investigative or summary
--queries for later reporting of distribution totals.

--Note that some updates may be made externally to this sheet, particularly 
--if the reported board stop on the survey, and the board stop recorded by
--the surveyor, do not agree.  If that is the case, the survey will be given 
--precedent, and the count sheet table will be updated to reflect the survey data.


--Backup
select * into count_sheet_data_bkup_11_17_15 from count_sheet_data
go

--Delete SQL Import Rows.
delete from count_sheet_data where password = 1000

--Removing leading "'" from sheetnum field.
alter table count_sheet_data
add sheet_num_del nvarchar(10)


update count_sheet_data
set sheet_num_del = sheet_num

select 
	
	sheet_num_del, 
	substring(sheet_num_del, 2, len(sheet_num_del)-1) as sheet_num_ex

from count_sheet_data

update count_sheet_data
	set
	sheet_num = substring(sheet_num_del, 2, len(sheet_num_del)-1)

--removing the intermediate column sheet_num_del
alter table count_sheet_data
drop column sheet_num_del
go


--Update two spellings of watsessing
update count_sheet_data set station = 'Watsessing' where station = 'Watsessing Avenue'
update count_sheet_data set station = 'Montclair State University' where station = 'MSU'
update count_sheet_data set station = 'Montclair State University' where station = 'Montclair State Univ'


--Add the Station_Key variable to the Count Sheet Data.
alter table count_sheet_data
add Station_Key int

update count_sheet_data set station_key = 21 where station = 'Bay Street'
update count_sheet_data set station_key = 23 where station = 'Bloomfield'
update count_sheet_data set station_key = 9 where station = 'Boonton'
update count_sheet_data set station_key = 7 where station = 'Denville'
update count_sheet_data set station_key = 6 where station = 'Dover'
update count_sheet_data set station_key = 22 where station = 'Glen Ridge'
update count_sheet_data set station_key = 1 where station = 'Hackettstown'
update count_sheet_data set station_key = 4 where station = 'Lake Hopatcong'
update count_sheet_data set station_key = 11 where station = 'Lincoln Park'
update count_sheet_data set station_key = 14 where station = 'Little Falls'
update count_sheet_data set station_key = 16 where station = 'Montclair Heights'
update count_sheet_data set station_key = 15 where station = 'Montclair State University'
update count_sheet_data set station_key = 5 where station = 'Mount Arlington'
update count_sheet_data set station_key = 2 where station = 'Mount Olive'
update count_sheet_data set station_key = 17 where station = 'Mountain Avenue'
update count_sheet_data set station_key = 8 where station = 'Mountain Lakes'
update count_sheet_data set station_key = 12 where station = 'Mountain View'
update count_sheet_data set station_key = 3 where station = 'Netcong'
update count_sheet_data set station_key = 25 where station = 'Newark Broad Street'
update count_sheet_data set station_key = 10 where station = 'Towaco'
update count_sheet_data set station_key = 18 where station = 'Upper Montclair'
update count_sheet_data set station_key = 20 where station = 'Walnut Street'
update count_sheet_data set station_key = 19 where station = 'Watchung Avenue'
update count_sheet_data set station_key = 24 where station = 'Watsessing'
update count_sheet_data set station_key = 13 where station = 'Wayne/Route 23'

--Checking for surveys distributed at stations with no station key.
select station, station_key, count(password) as num from count_sheet_data
where station_key is null and station is not null
group by station, station_key
order by station, station_key


--This save point is just before updating the [station] based on the respondent's boarding station.
select * into count_sheet_data_bkup_12_4_15 from count_sheet_data


--Syntax for records where no count sheet data was provided.
select * from 
(select id, stationon_key, routenum from all_data)a
left outer join
(select password, station_key, station from count_sheet_data_bkup_12_4_15)c
on a.ID = c.password
where password is null

--Inserting passwords that were not recorded as distributed into count sheet data.
--INSERT INTO count_sheet_data (password, station, station_key) VALUES (206299, 'Mount Arlington', 5)
--INSERT INTO count_sheet_data (password, station, station_key) VALUES (206300, 'Mount Arlington', 5)
--INSERT INTO count_sheet_data (password, station, station_key) VALUES (207834, 'Little Falls', 14)
--INSERT INTO count_sheet_data (password, station, station_key) VALUES (203423, 'Montclair State University', 15)
--INSERT INTO count_sheet_data (password, station, station_key) VALUES (207835, 'Montclair State University', 15)
--INSERT INTO count_sheet_data (password, station, station_key) VALUES (210900, 'Montclair State University', 15)
--INSERT INTO count_sheet_data (password, station, station_key) VALUES (203589, 'Mountain Ave', 17)
--INSERT INTO count_sheet_data (password, station, station_key) VALUES (211563, 'Watchung Ave', 19)
--INSERT INTO count_sheet_data (password, station, station_key) VALUES (211564, 'Bay Street', 21)
--INSERT INTO count_sheet_data (password, station, station_key) VALUES (207007, 'Glen Ridge', 22)
--INSERT INTO count_sheet_data (password, station, station_key) VALUES (208304, 'Glen Ridge', 22)
--INSERT INTO count_sheet_data (password, station, station_key) VALUES (206514, 'Bloomfield', 23)
--INSERT INTO count_sheet_data (password, station, station_key) VALUES (204785, 'Newark Broad Street', 25)
--update count_sheet_data set routenum = 1000 where password = 206299
--update count_sheet_data set routenum = 1000 where password = 206300
--update count_sheet_data set routenum = 1002 where password = 207834
--update count_sheet_data set routenum = 6248 where password = 203423
--update count_sheet_data set routenum = 1002 where password = 207835
--update count_sheet_data set routenum = 6214 where password = 210900
--update count_sheet_data set routenum = 6204 where password = 203589
--update count_sheet_data set routenum = 1006 where password = 211563
--update count_sheet_data set routenum = 1006 where password = 211564
--update count_sheet_data set routenum = 6258 where password = 207007
--update count_sheet_data set routenum = 6206 where password = 208304
--update count_sheet_data set routenum = 6226 where password = 206514
--update count_sheet_data set routenum = 6216 where password = 204785


--Syntax for comparing Count Sheet stationon and Survey Response stationon.
select * from 


(select id, stationon_key from all_data)a
left outer join
(select password, station_key, station from count_sheet_data)c
on a.ID = c.password
where (stationon_key <> station_key)

Update c set
	station_key = stationon_key
	from
(select id, stationon_key from all_data)a
left outer join
(select password, station_key, station from count_sheet_data)c
on a.ID = c.password
where (stationon_key <> station_key)


select id, count(ID) as num from all_data_view
group by id
order by num desc

select o_id, count(o_id) as num from addresses
group by o_id
order by num desc

select id, count(id) as num from Geo_Addresses
group by id
order by num desc

select * from addresses where o_id = 204434
select * from addresses where o_id = 204934

select * from geo_addresses where id = 204434

update geo_addresses set id_text = '204934' where id_text = '204434' and street is null
update geo_addresses set id_text = '204934' where id_text = '204434' and city = 'TOTOWA'

select * from addresses where o_id = 209325
select * from geo_addresses where id = 209325

update geo_addresses set id = 209326, id_text = '209326' where id = 209325 and city = 'Montclair'
update geo_addresses set id = 209326, id_text = '209326' where id = 209325 and city = 'NY'

select * from geo_addresses where id = 209325 and city = 'NY'

select * from Addresses where o_id = 214280
select * from geo_addresses where id = 213875


--One of the placetypes was misrecorded in each of these addresses.  Fixing that.
update geo_addresses set place_type = 3 where id = 214280 and city is null
update geo_addresses set place_type = 3 where id = 211194 and city is null
update geo_addresses set place_type = 3 where id = 210155 and city is null
update geo_addresses set place_type = 3 where id = 214272 and city is null
update geo_addresses set place_type = 3 where id = 209184 and city is null
update geo_addresses set place_type = 3 where id = 213875 and city is null


update survey set id = 204934, id_text = '''204934' where id = 204434 and ostreet is null
update survey set id = 209326, id_text = '''209326' where id = 209325 and ocity = 'Montclair'

select * from survey where id = 209325 and ocity = 'montclair'



select id, count(id) as num from all_data
group by id
order by num desc

select * from all_data where id = 204434 and amode = 1
update all_data set id = 204934, id_text = '''204934' where id = 204434 and amode = 1

select * from all_data where id = 209325 and amode = 3
update all_data set id = 209326, id_text = '''209326' where id = 209325 and amode = 3


--The following syntax will be used to update the Distribution Statoin based on the
--Board station from the survey data.

select * into count_sheet_data_bkup_12_7_15 from count_sheet_data


--First, summarize count sheet data

Select* from 
(
select 
	c.routenum as routenum_cs
	, station_key
	, distrib
	, refuse
	, spanish
	, trainum as routenum_s
	, stationon_key
	, [returns]
	from
	(select routenum, station_key, count(password) as [distrib], sum(station_refuse) as refuse, sum(station_spanish) as spanish from count_sheet_data
		where routenum is not null and station is not null and station <> 'New York' and station <> 'Hoboken' and station <> 'Secaucus Junction'
	group by routenum, station_key)c
full join
	(select trainum, stationon_key, count(ID) as [returns] from full_dataset
	group by trainum, stationon_key)s
	on c.routenum = s.trainum and c.station_key = s.stationon_key
)a
left outer join
(select code, station from Stationon_Address)b
on station_key = code
where station_key < 25
order by routenum_cs, station_key


select routenum, station_key, station_time from count_sheet_data_bkup_12_4_15
group by routenum, station_key, station_time
order by routenum, station_key


select sheet_num, routenum from count_sheet_data
where sheet_num like '%r'
group by sheet_num, routenum
order by routenum

select * from count_sheet_data where routenum = 1074 and source = 'pb'

--Summarize Bad Records (by Station)
select trainum, stationon, stationon_key, count(*) as num from full_dataset
where flag_good = 0 or flag_mark_bad = 1
group by trainum, stationon_key, stationon



select id from full_dataset where stationon_key < 25  --NOTE:  These records excluded from train summary query.
select id from full_dataset where flag_good = 1 and stationon_key < 25
select id from full_dataset where (flag_good = 0 or flag_mark_bad = 1) and stationon_key < 25
select id from full_dataset where (flag_good = 0 or flag_mark_bad = 1)

select flag_good, flag_mark_bad from Full_Dataset order by flag_mark_bad desc

select id, amode, odist from full_dataset where (amode = 9 or amode = 11) and odist < 6 and o_good_check = 0