
--Need to get Count Sheet data where it is missing.  To be done once we have the survey image files (need to check that the ID was
--properly entered, then figure out how to deal with any missing once survey ID's are updated.
(select cast(id as float) as S_ID 
, batch
from Survey)s
left outer join
(select password as cs_ID
from count_sheet_data)c
on s.S_ID = c.Cs_ID
where cs_ID is null

go

--Delete SQL import rows
delete from survey where id like 'abc%'
go

--set backup for Survey data
select * into survey_bkup_11_17_15 from survey
go


--check for duplicates
select count(*) as num, ID from survey
group by id
order by num desc
--Note duplicate survey numbers (will need to de-dupe when whe get survey images
select * from survey where id like 204434
select * from survey where id = 209325

select count(*) as num, password from count_sheet_data
group by password
order by num desc
go

--Joining the Survey, Geocode, and Count Sheet Data
--Check number of IDs in the join - good.  Only the Duplicate survey ID's show up more than once, so we aren't gettting any records where
--multiple matches are occurring.  
select count(*) as num, ID from (

select * from survey) s
left outer join
(select * from addresses)a
on cast(s.ID as float) = a.O_id
left outer join
(select * from count_sheet_data)c
on cast(s.id as float) = c.password
group by id
order by num desc
go

--Next, make sure data is shown from Geocoded Addresses.
select * from (

select * from survey) s
left outer join
(select * from addresses)a
on cast(s.ID as float) = a.O_id
left outer join
(select * from count_sheet_data)c
on cast(s.id as float) = c.password
--where a.O_ID is null -- 4 rows missing data - all the NULL ID values.
--where password is null -- 20 rows missing Count Sheet data... hmm... will need to investigate those once whe have image files...
order by s.id
go

select count(*) from geo_addresses --11010
select count(*) from geo_addresses_bkup_11_18_15 -10962
select count(*) from addresses --3686
select count(*) from survey




select o_id, s.id from (
select * from addresses)g
left outer join 
(select * from survey)s
on O_ID = ID
where id is null


select O_ID, O_address from addresses where O_id like 213736

select ID, OStreet, OCITY, OSTATE, OZIP from survey where id like 213763


--Look at count sheet data differently....
--So, we want to find survey data that can't be linked to passwords.  No problem

--First, create a temporary table with missing CS data.
select s.id into Missing_CS_DATA_del from (
select * from survey) s
left outer join
(select * from addresses)a
on cast(s.ID as float) = a.O_id
left outer join
(select * from count_sheet_data)c
on cast(s.id as float) = c.password
--where o_ID is null -- 34 rows missing Geocoded data - recheck after uploading batch 14
where password is null -- 20 rows missing Count Sheet data... hmm... will need to investigate those once whe have image IDs...
go

--Delete null passwords
DELETE from Missing_CS_DATA_del
where id is null
go

--Then, find a way to link the CS sheets to this missing data.  Maybe the distribution ranges of the sheets?

select * from(
select * from Missing_CS_DATA_del)s
left outer join
(select * from count_sheet_data
where password is null)c
on id > surv_first and id < surv_last
order by id


--find the spanish surveys
--only captures one of the 3 spanish surveys oh well...
select * from(
select * from Missing_CS_DATA_del)s
left outer join
(select * from count_sheet_data
where password is null)c
on id > span_first and id < span_last
order by id


select * from count_sheet_data where password like 206030

select 
	password
	, date
	, station_time
	, date + station_time as station_time_date

from count_sheet_data


--And finally - all data in one view  (well, almost all data. All survey-record level data.)
alter view all_data as

select 

-- Survey Data
ID
, ID_TEXT
, SHEET_NUM
, ROUTENUM
, DATE
, date + station_time as STATION_TIME
, c.[name] as SURVEYOR
, DEP_LOC
, date + dep_time as DEP_TIME
, date + ar_time as AR_TIME
, [source] as DIST_TYPE
, STATIONON as STATIONON_KEY
, BDHR
, BDMIN
, AMPM
, AMODE
, ABUS
, ANWKSUBWAY
, ASHUTTLE
, AOTHER
, AMODE_11T
, PARKTYPE
, ORIGIN
, ORIGIN_OTHER
, O_PLACE as OPLACE
, O_STREET as OSTREET
, O_CITY as OCITY
, O_STATE as OSTATE
, O_ZIP as OZIP
, O_Address
, O_formatted_address
, O_street_number
, O_route
, O_country
, O_administrative_area_level1
, O_administrative_area_level2
, O_locality
, O_postal_code
, O_lat
, O_lng
, O_Exact_Match
, O_location_type_value
, O_types_value
, O_Good_Check
, ODIST
, ODIST_SPEC
, STATIONOFF
, STATIONOFF_OTHER
, SEC_TRANSFER
, DESTINATION
, DEST_OTHER
, D_PLACE as DPLACE
, D_STREET as DSTREET
, D_CITY as DCITY
, D_STATE as DSTATE
, D_ZIP as DZIP
, D_Address
, D_formatted_address
, D_street_number
, D_route
, D_country
, D_administrative_area_level1
, D_administrative_area_level2
, D_locality
, D_postal_code
, D_lat
, D_lng
, D_Exact_Match
, D_location_type_value
, D_types_value
, D_Good_Check
, TRAVELTIME
, TONYTRIP
, HOBPATH
, HOBFERRY
, OTHERTRAIN
, OTHERNY
, EMODENY
, NYSUBWAY
, NYBUS
, NYLIRR
, NYOTHER
, EMODENJ
, ENJPATH
, ENJHBLR
, ENJNWKSUB
, ENJBUS
, ENJSHUTTLE
, ENJTRAIN
, ENJOTHER
, [RETURN]
, Return_text
, RBUS
, RFERRY
, ROTHER
, RHR
, RMIN
, RAMPM
, RFREQ
, MTARL_WAYN23
, B4MA_W23
, B4MA_OTHERSTATION
, B4MA_NJTBUS
, B4MA_BUS
, B4MA_PATH
, B4MA_OTHER
, WHYTRIP
, RECTYPE
, TRIPOTHR
, TRIPFREQ
, HOWLONG
, TKTTYPE
, TKTOTHER
, TKTPURCH
, PURCHOTH
, DEVICE1
, DEVICE2
, DEVICE3
, DEVICE4
, DEVICE5
, DEVICE6
, DEVICE5_SPEC
, BOARD_BUSINESS
, BUSINESS1_FREQ
, BUSINESS2_FREQ
, BUSINESS3_FREQ
, BUSINESS4_FREQ
, BUSINESS5_FREQ
, BUSINESS6_FREQ
, BUSINESS7_FREQ
, BUSINESS8_FREQ
, BUSINESS9_FREQ
, BUSINESS10_FREQ
, BUSINESS11_FREQ
, BUSINESS1_SPEND
, BUSINESS2_SPEND
, BUSINESS3_SPEND
, BUSINESS4_SPEND
, BUSINESS5_SPEND
, BUSINESS6_SPEND
, BUSINESS7_SPEND
, BUSINESS8_SPEND
, BUSINESS9_SPEND
, BUSINESS10_SPEND
, BUSINESS11_SPEND
, BUSINESS11_OTH
, BUSINESS_IMPORT
, SANDY_CHANGE
, SANDY_TELECOMMUTE
, SANDY_STATION
, SANDY_MODE
, SANDY_WORK
, SANDY_HOME
, SANDY_OTHER
, SANDY_TELECOMMUTE_SPEC
, SANDY_STATION_SPEC
, SANDY_MODE_SPEC
, SANDY_WORK_SPEC
, SANDY_HOME_SPEC
, SANDY_OTHER_SPEC
, DEST_PHIL
, DEST_DC
, DEST_STAM
, DEST_NHAVEN
, DEST_BOSTON
, DEST_AIRPRT
, DEST_MEADOW
, CSSCHED
, CSSEAT
, CSCOMFORT
, CSTRIPTIME
, CSINFO
, CSOTP
, CSMECHANICAL
, CSSDISRUPT
, CSEMPLOYEE
, CSVALUE$
, CSNJT
, RECOMMEND
, RECOMMEND_COMMENTS
, Length_Recommend
, RIDERCAP
, GENDER
, GENDER_SPEC
, AGE
, ETHNIC
, ETHNICSPEC
, WHITE
, BLACK
, ASIAN
, AMINDIAN
, OTHERRACE
, RACESPEC
, LANGUAGE
, LANGOTHER
, HANDICAP
, HANDICAPUSE
, HH#
, CHILD
, NUMCARS
, HOWLONG1
, NJTIMP
, TAXBENEFIT
, TAX$
, INCOME
, s.NAME
, H_STREET
, H_CITY
, H_STATE
, H_ZIP
, H_Address
, H_formatted_address
, H_street_number
, H_street_address
, H_route
, H_country
, H_administrative_area_level1
, H_administrative_area_level2
, H_locality
, H_postal_code
, H_post_box
, H_lat
, H_lng
, H_Exact_Match
, H_location_type_value
, H_types_value
, H_Good_Check
, PHONEDAY
, PHONEEVE
, EMAIL
, BATCH
, Batch_text
, TIFF
, S#NO
, [Duplicate Record] as Dup_record
, FLAG_FLIP_TRIP
, FLAG_SAME_ON_OFF
, FLAG_HOME_TO_HOME_TRIP
, FLAG_IMPUTE_NYCSUBWAY
, FLAG_TKTYPE_POSSIBLY_WRONG
, [FLAG_TKTYPE=7_HANDI=1]
, [FLAG_TKTYPE=8_AGE_WRONG]
, [FLAG_HH#=1_AND_CHILD=1]
, Flag_Review_Business



from (

select * from survey) s
left outer join
(select * from addresses)a
on cast(s.ID as float) = a.O_id
left outer join
(select * from count_sheet_data)c
on cast(s.id as float) = c.password
go

select * from all_data

select ID, batch, tiff from survey where id is null

select * from(

select * from count_sheet_data where routenum = 6206 and password like '%3532' )c
left outer join
(select * from survey)b
on password = id

update count_sheet_data
set routenum = 6206 where routenum = 6203

--Formerly missing ID values.
update survey set ID = 213783 where tiff like '6675345.TIF'
update survey set ID = 208696 where tiff like '6675346.TIF'
update survey set ID = 213532 where tiff like '6675347.TIF'

--need to update the Geocoded data as well.
select * from geo_addresses where id is null

update geo_addresses set ID = 213783 where id_text like '213X83'
update geo_addresses set ID = 208696 where id_text like 'XX8696'
update geo_addresses set ID = 213532 where id_text like 'XX3532'

select * into survey_bkup_11_20_2015 from survey

select id, stationon_key, bdhr, bdmin, tiff, routenum from all_data where routenum is null

select * from survey where id like '101162'

select * from count_sheet_data where routenum like 1006 and dist_span is not null

select * from count_sheet_data where sheet_num like 140
order by password

select * into all_data from all_data_view

