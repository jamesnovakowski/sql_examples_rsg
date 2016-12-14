USE [NJT_MoBo]
GO

/****** Object:  View [dbo].[Full_Dataset]    Script Date: 4/8/2016 6:49:13 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER view [dbo].[Full_Dataset] as
select 
	ID
	, 5 as QTYPE
	, 0 as COMPLETE
	, ROUTENUM as TRAINUM
	, 4 as TRAIN_LINE_CODE
	, 1 as DIRECTION
	, case
		when routenum = 204 then 1
		when routenum = 208 then 1
		when routenum = 212 then 1
		when routenum = 6214 then 1
		when routenum = 6216 then 1
		when routenum = 1000 then 1
		when routenum = 1002 then 1
		when routenum = 1006 then 1
		when routenum = 1070 then 1
		when routenum = 1074 then 1
		when routenum = 6200 then 1
		when routenum = 6202 then 1
		when routenum = 6204 then 1
		when routenum = 6206 then 1
		when routenum = 6210 then 1
		when routenum = 250 then 0
		when routenum = 262 then 0
		when routenum = 6222 then 0
		when routenum = 6226 then 0
		when routenum = 6230 then 0
		when routenum = 6234 then 0
		when routenum = 6238 then 0
		when routenum = 6242 then 0
		when routenum = 6248 then 0
		when routenum = 6252 then 0
		when routenum = 6258 then 0
	 end as PKOFFPEAK
	, SPANISH_RECORD as SPANISH_SURVEY
	, flag_Resurvey as RESURVEY_TRAIN_RECORD
	, SHEET_NUM as SHEET_NUM_CS
	, DATE as DATE_CS
	, STATION_TIME as STATION_TIME_CS
	, SURVEYOR as SURVEYOR_CS
	, DEP_LOC as DEP_LOC_CS
	, DEP_TIME as DEP_TIME_CS
	, AR_TIME as AR_TIME_CS
	, DIST_TYPE as DIST_TYPE_CS
	, s.Station as STATIONON
	, STATIONON_KEY
	, case 
		when stationon_key = 1 then 422
		when stationon_key = 2 then 421
		when stationon_key = 3 then 401
		when stationon_key = 4 then 402
		when stationon_key = 5 then 419
		when stationon_key = 6 then 403
		when stationon_key = 7 then 404
		when stationon_key = 8 then 405
		when stationon_key = 9 then 406
		when stationon_key = 10 then 407
		when stationon_key = 11 then 408
		when stationon_key = 12 then 409
		when stationon_key = 13 then 423
		when stationon_key = 14 then 410
		when stationon_key = 15 then 420
		when stationon_key = 16 then 412
		when stationon_key = 17 then 413
		when stationon_key = 18 then 414
		when stationon_key = 19 then 415
		when stationon_key = 20 then 416
		when stationon_key = 21 then 701
		when stationon_key = 22 then 417
		when stationon_key = 23 then 418
		when stationon_key = 24 then 704
		when stationon_key = 25 then 519
	  end as STATIONON_NUM
	, FLAG_NEWARK_BOARD
	, BDHR
	, BDMIN
	--, cast(str(bdhr)+':'+str(bdmin) as time(0)) as BDTIME
	, AMPM
	, AMODE
	, ABUS
	, acarrier as ACARRIER
	, aroute as AROUTE
	, case
		when anwksubway_key = 12 then 'Newark Penn'
		when anwksubway_key = 11 then 'Broad St.  – Military Park '
		when anwksubway_key = 10 then 'Washington St.'
		when anwksubway_key = 9 then 'Warren St.'
		when anwksubway_key = 8 then 'Norfolk St.'
		when anwksubway_key = 7 then 'Orange St.'
		when anwksubway_key = 6 then 'Park Ave.'
		when anwksubway_key = 5 then 'Bloomfield Ave.'
		when anwksubway_key = 4 then 'Davenport Ave.'
		when anwksubway_key = 18 then 'Heller Parkway'
		when anwksubway_key = 3 then 'Branch Brook Park'
		when anwksubway_key = 2 then 'Silver Lake'
		when anwksubway_key = 1 then 'Grove St.'
		when anwksubway_key = 13 then 'NJ PAC'
		when anwksubway_key = 14 then 'Atlantic St.'
		when anwksubway_key = 16 then 'Washington Park'
		when anwksubway_key = 17 then 'Broad St.'
		when anwksubway_key = 15 then 'Riverfront Stadium'
	  end as ANWKSUBWAYKEY
	, anwksubway_key as ANWKSUBWAY_NUM
	, ASHUTTLE as ASHUTTLE_CONCAT
	, ashuttleop as ASHUTTLE
	, shuttlert as ASHUTTLERT
	, AOTHER
	, AMODE_11T
	, PARKTYPE
	, ORIGIN
	, ORIGIN_OTHER
	, a.OPLACE
	, a.OSTREET
	, a.OCITY
	, a.OSTATE
	, a.OZIP
	, a.O_Address
	, O_formatted_address
	, O_street_number
	, O_route
	, O_country
	, O_administrative_area_level1 as O_state_geocode
	, O_administrative_area_level2 as O_county
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
	, stationoff_other_num as STATIONOFF_OTHER_NUM
	, SEC_TRANSFER
	, DESTINATION
	, DEST_OTHER as DESTINATION_OTHER
	, DPLACE
	, DSTREET
	, DCITY
	, DSTATE
	, DZIP
	, D_Address as D_ADDRESS
	, D_formatted_address as D_FORMATTED_ADDRESS
	, D_street_number as D_STREET_NUMBER
	, D_route as D_ROUTE
	, D_country as D_COUNTRY
	, D_administrative_area_level1 as D_STATE_geocode
	, D_administrative_area_level2 as D_COUNTY
	, D_locality as D_LOCALITY
	, D_postal_code as D_POSTAL_CODE
	, D_lat as D_LAT
	, D_lng as D_LNG
	, D_Exact_Match as D_EXACT_MATCH
	, D_location_type_value as D_LOCATION_TYPE_VALUE
	, D_types_value as D_TYPES_VALUE
	, D_Good_Check as D_GOOD_CHECK
	, case when dstate = 'NY' then 1
			when dstate = 'NJ' then 2
			else 3
	  end as NYORNJ
	, TRAVELTIME
	, TONYTRIP
	, HOBPATH
	, hobpath_num as HOBPATH_NUM
	, HOBFERRY
	, OTHERTRAIN
	, othertrain_num as OTHERTRAIN_NUM
	, OTHERNY
	, EMODENY
	, NYSUBWAY_LINE as NYSUBWAY
	, NYSUBWAY_STATION_NUM as NYSUBWAY_STATION_NUM
	, NYSUBWAY_STATION as NYSUBWAY_STATION
	, NYBUS
	, NYLIRR_LINE as NYLIRR
	, NYLIRR_STATION as NYLIRR_STATION
	, NYOTHER
	, EMODENJ
	, ENJPATH
	, enjpath_num as ENJPATH_NUM
	, ENJHBLR
	, enjhblr_Num as ENJHBLR_NUM
	, ENJNWKSUB_STATION as ENJNWKSUB
	, enjnwksub_num as ENJNWKSUB_NUM
	, ENJBUS as ENJBUS_AGG
	, enjbus_carrier as ENJBUS_CARRIER
	, enjbusrt as ENJBUSRT
	, ENJSHUTTLE
	, ENJTRAIN
	, ENJTRAIN_NUM
	, ENJOTHER
	, [RETURN] as RETURN_TRIP
	, RETURN_1
	, RETURN_2
	, RETURN_3
	, RETURN_4
	, RETURN_5
	, RETURN_6
	, RBUS as RBUS_AGG
	, RBUS_CARRIER
	, RBUS_ROUTE
	, RFERRY
	, ROTHER
	, RHR
	, RMIN
	--, cast(str(rhr)+':'+str(rmin) as time(0)) as RTIME
	, RAMPM
	, RFREQ
	, MTARL_WAYN23
	, B4MA_W23
	, B4MA_OTHERSTATION
	, B4MA_NJTBUS
	, B4MA_BUS
	, B4MA_BUSCARRIER
	, B4MA_BUSROUTE
	, B4MA_PATH
	, B4MA_PATH_NUM
	, B4MA_OTHER
	, WHYTRIP
	, RECTYPE
	, TRIPOTHR
	, TRIPFREQ
	, HOWLONG as HOWLONG_TRAIN
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
	, SANDY_CHANGE as SANDY_IMPACT
	, SANDY_TELECOMMUTE
	, SANDY_STATION
	, SANDY_MODE
	, SANDY_WORK
	, SANDY_HOME
	, SANDY_OTHER
	, SANDY_TELECOMMUTE_SPEC
	, SANDY_STATION_SPEC
	, SANDY_STATION_SPEC_NUM
	, SANDY_MODE_SPEC
	, SANDY_WORK_SPEC
	, sandy_work_speccity as SANDY_WORK_SPECCITY
	, sandy_work_specstate as SANDY_WORK_SPECSTATE
	, sandy_work_speczip as SANDY_WORK_SPECZIP
	, SANDY_HOME_SPEC
	, SANDY_HOME_SPECCITY
	, SANDY_HOME_SPECSTATE
	, SANDY_HOME_SPECZIP
	, SANDY_OTHER_SPEC
	, DEST_PHIL
	, DEST_DC
	, DEST_STAM
	, DEST_NHAVEN
	, DEST_BOSTON
	, DEST_AIRPRT
	, DEST_MEADOW
	, case 
		when dest_phil = 1 then 2
		when dest_phil = 2 then 5
		when dest_phil = 3 then 8
		when dest_phil = 4 then 12
		when dest_phil = 0 then 0
		end as PHIL_MID
	,  case 
		when dest_dc = 1 then 2
		when dest_dc = 2 then 5
		when dest_dc = 3 then 8
		when dest_dc = 4 then 12
		when dest_dc = 0 then 0
		end as DC_MID
	,  case 
		when dest_stam = 1 then 2
		when dest_stam = 2 then 5
		when dest_stam = 3 then 8
		when dest_stam = 4 then 12
		when dest_stam = 0 then 0
		end as STAM_MID
	,  case 
		when dest_nhaven = 1 then 2
		when dest_nhaven = 2 then 5
		when dest_nhaven = 3 then 8
		when dest_nhaven = 4 then 12
		when dest_nhaven = 0 then 0
		end as NHAVEN_MID
	,  case 
		when dest_boston = 1 then 2
		when dest_boston = 2 then 5
		when dest_boston = 3 then 8
		when dest_boston = 4 then 12
		when dest_boston = 0 then 0
		end as BOS_MID
	,  case 
		when dest_airprt = 1 then 2
		when dest_airprt = 2 then 5
		when dest_airprt = 3 then 8
		when dest_airprt = 4 then 12
		when dest_airprt = 0 then 0
		end as AIR_MID
	,  case 
		when dest_meadow = 1 then 2
		when dest_meadow = 2 then 5
		when dest_meadow = 3 then 8
		when dest_meadow = 4 then 12
		when dest_meadow = 0 then 0
		end as MEAD_MID
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
	, RIDERCAP
	, case 
		when h_state = 'NY' then 1
		when h_state = 'NJ' then 2
		when h_state = 'CT' then 3
		else 4
	  end as LIVENYNJCT
	, GENDER
	, GENDER_SPEC
	, AGE
	, case
		when age = 1 then 15
		when age = 2 then 21
		when age = 3 then 29.5
		when age = 4 then 39.5
		when age = 5 then 49.5
		when age = 6 then 58
		when age = 7 then 63.5
		when age = 8 then 70
	  end as AGE_MID
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
	, NUMCARS as VEH#
	, HOWLONG1 as HOWLONG_HOME
	, NJTIMP
	, TAXBENEFIT
	, TAX$
	, INCOME
	, case 
		when income = 1 then 12000
		when income = 2 then 20000
		when income = 3 then 30000
		when income = 4 then 42500
		when income = 5 then 62500
		when income = 6 then 82500
		when income = 7 then 125000
		when income = 8 then 175000
		when income = 9 then 225000
		when income = 10 then 300000
	  end as INCOME_MID
	, NAME
	, H_STREET
	, H_CITY
	, H_STATE
	, H_ZIP
	, H_Address
	, H_formatted_address
	, H_street_number
	--, H_street_address
	, H_route
	, H_country
	, H_administrative_area_level1 as H_State_geocode
	, H_administrative_area_level2 as H_County
	, H_locality
	, H_postal_code
	--, H_post_box
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
	,case
		when O_Good_Check = 1 and STATIONON_KEY is not null and D_Good_Check = 1 and stationoff is not null then 1
		when O_Good_Check = 1 and STATIONON_KEY is not null and D_Good_Check = 1 and stationoff is null then 2
		when O_Good_Check = 1 and STATIONON_KEY is not null and D_Good_Check = 0 and stationoff is not null then 3
		when O_Good_Check = 1 and STATIONON_KEY is not null and D_Good_Check = 0 and stationoff is null then 4
		when O_Good_Check = 1 and STATIONON_KEY is null and D_Good_Check = 1 and stationoff is not null then 5
		when O_Good_Check = 0 and STATIONON_KEY is not null and D_Good_Check = 1 and stationoff is not null then 6
		when O_Good_Check = 0 and STATIONON_KEY is null and D_Good_Check = 1 and stationoff is not null then 7
		when O_Good_Check = 0 and STATIONON_KEY is null and D_Good_Check = 0 and stationoff is not null then 8
		when O_Good_Check = 0 and STATIONON_KEY is null and D_Good_Check = 1 and stationoff is null then 9
		when O_Good_Check = 1 and STATIONON_KEY is null and D_Good_Check = 0 and stationoff is not null then 10
		when O_Good_Check = 0 and STATIONON_KEY is not null and D_Good_Check = 0 and stationoff is null then 11
		when O_Good_Check = 0 and STATIONON_KEY is not null and D_Good_Check = 0 and stationoff is not null then 12
		when O_Good_Check = 0 and STATIONON_KEY is null and D_Good_Check = 0 and stationoff is null then 13
	end as Survey_final_code
	,case
		when FLAG_MARK_BAD = 1 then 0
		when O_Good_Check = 1 and STATIONON_KEY is not null and D_Good_Check = 1 and stationoff is not null then 1
		when O_Good_Check = 1 and STATIONON_KEY is not null and D_Good_Check = 1 and stationoff is null then 1
		when O_Good_Check = 1 and STATIONON_KEY is not null and D_Good_Check = 0 and stationoff is not null then 1
		when O_Good_Check = 1 and STATIONON_KEY is not null and D_Good_Check = 0 and stationoff is null then 0
		when O_Good_Check = 1 and STATIONON_KEY is null and D_Good_Check = 1 and stationoff is not null then 1
		when O_Good_Check = 0 and STATIONON_KEY is not null and D_Good_Check = 1 and stationoff is not null then 1
		when O_Good_Check = 0 and STATIONON_KEY is null and D_Good_Check = 1 and stationoff is not null then 0
		when O_Good_Check = 0 and STATIONON_KEY is null and D_Good_Check = 0 and stationoff is not null then 0
		when O_Good_Check = 0 and STATIONON_KEY is null and D_Good_Check = 1 and stationoff is null then 0
		when O_Good_Check = 1 and STATIONON_KEY is null and D_Good_Check = 0 and stationoff is not null then 1
		when O_Good_Check = 0 and STATIONON_KEY is not null and D_Good_Check = 0 and stationoff is null then 0
		when O_Good_Check = 0 and STATIONON_KEY is not null and D_Good_Check = 0 and stationoff is not null then 1
		when O_Good_Check = 0 and STATIONON_KEY is null and D_Good_Check = 0 and stationoff is null then 2
		
	 end as flag_good
	, flag_njt_review
	, flag_mark_bad
	--, flag_possible_duplicate
	--, S#NO
	--, Dup_record
	--, FLAG_FLIP_TRIP
	--, [FLAG_HH#=1_AND_CHILD=1]
	--, DeDupe
from all_data a
left outer join 
stationon_address s
on stationon_key = code

where flag_different_line is null


GO


