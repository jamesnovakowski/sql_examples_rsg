--The following code will be used to clean the semi-final dataset, 
--with count sheet data and address data attached.






--The following syntax will be used to perform updates to the Origins and Destinations based on
--manual review.  Helper file can be found here:
--\\i-rsg.com\rsgshares\Projects\NJ\NJ TRANSIT\15065 Montclair-Boonton O-D Study\9. Analysis\Data Cleaning\Other Cleaning Sheets\Origin-Dest-Same (1).xlsx

--11.	List: ORIGIN(Origin) * DESTINATION(Destination)

--Checking Origin and Destination same
select * from all_data where origin = destination and origin = 1 --results in 126 rows.

--Update ORIGIN and DESTINATION where appropriate:
update all_data set ORIGIN = 2 where ID = 205477
update all_data set DESTINATION = 2 where ID = 202706
update all_data set DESTINATION = 2 where ID = 203413
update all_data set DESTINATION = 2 where ID = 206968
update all_data set DESTINATION = 2 where ID = 204785
update all_data set DESTINATION = 2 where ID = 213749
update all_data set DESTINATION = 2 where ID = 202725
update all_data set ORIGIN = 1 where ID = 211072
update all_data set ORIGIN = 2 where ID = 205478
update all_data set ORIGIN = 1 where ID = 213842
update all_data set DESTINATION = 2 where ID = 207906
update all_data set ORIGIN = 2 where ID = 208062
update all_data set ORIGIN = 0 where ID = 206852
update all_data set ORIGIN = 2 where ID = 202751
update all_data set DESTINATION = 2 where ID = 206028
update all_data set ORIGIN = 2 where ID = 205384
update all_data set ORIGIN = 2 where ID = 206029
update all_data set DESTINATION = 0 where ID = 206039
update all_data set DESTINATION = 0 where ID = 202727
update all_data set DESTINATION = 2 where ID = 202311
update all_data set ORIGIN = 2 where ID = 203345
update all_data set ORIGIN = 2 where ID = 204774
update all_data set ORIGIN = 2 where ID = 207000
update all_data set DESTINATION = 2 where ID = 212640
update all_data set DESTINATION = 2 where ID = 209588
update all_data set ORIGIN = 2 where ID = 202757
update all_data set DESTINATION = 3 where ID = 205394
update all_data set ORIGIN = 2 where ID = 207998
update all_data set ORIGIN = 2 where ID = 202710
update all_data set DESTINATION = 2 where ID = 212486
update all_data set DESTINATION = 2 where ID = 202802
update all_data set ORIGIN = 2 where ID = 207066
update all_data set ORIGIN = 2 where ID = 202756
update all_data set DESTINATION = 2 where ID = 207268
update all_data set DESTINATION = 2 where ID = 208560
update all_data set ORIGIN = 2 where ID = 205663
update all_data set ORIGIN = 2 where ID = 202707
update all_data set ORIGIN = 0 where ID = 202337
update all_data set ORIGIN = 2 where ID = 203335
update all_data set ORIGIN = 1 where ID = 212835
update all_data set ORIGIN = 2 where ID = 205665
update all_data set ORIGIN = 2 where ID = 203339
update all_data set ORIGIN = 2 where ID = 205745
update all_data set ORIGIN = 1 where ID = 202372
update all_data set ORIGIN = 1 where ID = 209344
update all_data set ORIGIN = 1 where ID = 205485
update all_data set ORIGIN = 1 where ID = 208952
update all_data set ORIGIN = 0 where ID = 202796
update all_data set ORIGIN = 1 where ID = 210953
update all_data set ORIGIN = 1 where ID = 209718
update all_data set DESTINATION = 2 where ID = 206042
update all_data set DESTINATION = 2 where ID = 205660
update all_data set DESTINATION = 2 where ID = 207078
update all_data set DESTINATION = 2 where ID = 205759
update all_data set DESTINATION = 2 where ID = 205744
update all_data set ORIGIN = 1 where ID = 206694
update all_data set ORIGIN = 1 where ID = 203355
update all_data set ORIGIN = 1 where ID = 205741
update all_data set ORIGIN = 3 where ID = 208660
update all_data set ORIGIN = 1 where ID = 202746
update all_data set ORIGIN = 0 where ID = 202758
update all_data set ORIGIN = 0 where ID = 206546
update all_data set ORIGIN = 0 where ID = 206612
update all_data set ORIGIN = 0 where ID = 206613
update all_data set ORIGIN = 3 where ID = 205754
update all_data set DESTINATION = 2 where ID = 202775
update all_data set DESTINATION = 2 where ID = 203205
update all_data set ORIGIN = 1 where ID = 209056
update all_data set ORIGIN = 1 where ID = 209336
update all_data set ORIGIN = 1 where ID = 209373
update all_data set ORIGIN = 1 where ID = 209471
update all_data set ORIGIN = 1 where ID = 209551
update all_data set ORIGIN = 3 where ID = 203435
update all_data set ORIGIN = 1 where ID = 211170
update all_data set DESTINATION = 2 where ID = 206695
update all_data set ORIGIN = 1 where ID = 101381
update all_data set ORIGIN = 1 where ID = 202154
update all_data set ORIGIN = 1 where ID = 202164
update all_data set ORIGIN = 0 where ID = 202165
update all_data set ORIGIN = 3 where ID = 206856
update all_data set ORIGIN = 3 where ID = 207980
update all_data set DESTINATION = 2 where ID = 209612
update all_data set DESTINATION = 2 where ID = 210563
update all_data set DESTINATION = 2 where ID = 212126


--Update Origin Address:
update all_data set OPLACE = 'Bloomfield Station' , OSTREET = 'Lackawanna Pl' , OCITY = 'Bloomfield' , OSTATE = 'NJ' , OZIP = 7003 , O_Address = '40.792709, -74.200043' , O_formatted_address = '14 Lackawanna Pl, Bloomfield, NJ 07003, USA' , O_street_number = 14 , O_route = 'Lackawanna Pl' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Bloomfield' , O_postal_code = 7003 , O_lat = 40.7928135 , O_lng = -74.1999153 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202725
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 205665
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 203339
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 205394
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 205384
update all_data set OPLACE = 'Upper Montclair Station' , OSTREET = 'Bellevue Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.842004, -74.209368' , O_formatted_address = '275 Bellevue Ave, Montclair, NJ 07043, USA' , O_street_number = 275 , O_route = 'Bellevue Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.842067 , O_lng = -74.2094798 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 206029
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 203335
update all_data set OPLACE = '' , OSTREET = '80 CHESTNUT STREET' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '80 CHESTNUT STREET, MONTCLAIR, NJ 07042' , O_formatted_address = '80 Chestnut St, Montclair, NJ 07042, USA' , O_street_number = 80 , O_route = 'Chestnut St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8214403 , O_lng = -74.2110174 , O_exact_match = 1 , O_location_type_value = 2 , O_types_value = 1 , O_good_check = 1 where ID = 206695
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'GREAT MEADOWS' , OSTATE = 'NJ' , OZIP = 7838 , O_Address = 'GREAT MEADOWS, NJ 07838' , O_formatted_address = 'Great Meadows, Independence Township, NJ, USA' , O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Warren County' , O_locality = 'Independence Township' , O_postal_code =  7838, O_lat = 40.8706269 , O_lng = -74.911853 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 2 , O_good_check = 1 where ID = 207268
update all_data set OPLACE = '' , OSTREET = '310 HIGH ST' , OCITY = 'HACKETTSTOWN' , OSTATE = 'NJ' , OZIP = 7840 , O_Address = '310 HIGH ST, HACKETTSTOWN, NJ ' , O_formatted_address = '310 High St, Hackettstown, NJ 07840, USA' , O_street_number = 310 , O_route = 'High St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Warren County' , O_locality = 'Hackettstown' , O_postal_code = 7840 , O_lat = 40.857642 , O_lng = -74.827917 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 101381
update all_data set OPLACE = '' , OSTREET = '237 SHERMAN AVE' , OCITY = 'GLEN RIDGE' , OSTATE = 'NJ' , OZIP = 7028 , O_Address = '237 SHERMAN AVE, GLEN RIDGE, NJ 07028' , O_formatted_address = '237 Sherman Ave, Glen Ridge, NJ 07028, USA' , O_street_number = 237 , O_route = 'Sherman Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Glen Ridge' , O_postal_code = 7028 , O_lat = 40.813517 , O_lng = -74.201555 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 205741
update all_data set OPLACE = '' , OSTREET = '1 NORMAL AVE' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '1 NORMAL AVE, MONTCLAIR, NJ 07043' , O_formatted_address = '1 Normal Ave, Montclair, NJ 07043, USA' , O_street_number = 1 , O_route = 'Normal Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8609869 , O_lng = -74.197648 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202746
update all_data set OPLACE = '' , OSTREET = '80 CHESTNUT STREET' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '80 CHESTNUT STREET, MONTCLAIR, NJ 07042' , O_formatted_address = '80 Chestnut St, Montclair, NJ 07042, USA' , O_street_number = 80 , O_route = 'Chestnut St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8214403 , O_lng = -74.2110174 , O_exact_match = 1 , O_location_type_value = 2 , O_types_value = 1 , O_good_check = 1 where ID = 206694
update all_data set OPLACE = '' , OSTREET = '64 FOREST ST' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '64 FOREST ST, MONTCLAIR, NJ 07042' , O_formatted_address = '64 Forest St, Montclair, NJ 07042, USA' , O_street_number = 64 , O_route = 'Forest St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.817039 , O_lng = -74.213345 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 209471
update all_data set OPLACE = '' , OSTREET = '19 CAPRON LN' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '19 CAPRON LN, MONTCLAIR, NJ 07043' , O_formatted_address = '19 Capron Ln, Montclair, NJ 07043, USA' , O_street_number = 19 , O_route = 'Capron Ln' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8478179 , O_lng = -74.18941 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 209718
update all_data set OPLACE = '' , OSTREET = '1 WINDSOR PL' , OCITY = 'BLOOMFIELD' , OSTATE = 'NJ' , OZIP = 7050 , O_Address = '1 WINDSOR PL, BLOOMFIELD, NJ 07003' , O_formatted_address = '1 Windsor Pl, City of Orange, NJ 07050, USA' , O_street_number = 1 , O_route = 'Windsor Pl' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'City of Orange' , O_postal_code = 7050 , O_lat = 40.7697394 , O_lng = -74.2264377 , O_exact_match = 0 , O_location_type_value = 2 , O_types_value = 1 , O_good_check = 1 where ID = 212835
update all_data set OPLACE = '' , OSTREET = '110 N FULTON ST APT 305' , OCITY = 'BLOOMFIELD' , OSTATE = 'NJ' , OZIP = 7003 , O_Address = '110 N FULTON ST APT 305, BLOOMFIELD, NJ ' , O_formatted_address = 'Silk Mill Lofts, 110 N Fulton St #305, Bloomfield, NJ 07003, USA' , O_street_number = 110 , O_route = 'N Fulton St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Bloomfield' , O_postal_code = 7003 , O_lat = 40.7880813 , O_lng = -74.2078448 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 2 , O_good_check = 1 where ID = 202372
update all_data set OPLACE = '' , OSTREET = '9 S BROOKWOOD DR' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '9 S BROOKWOOD DR, MONTCLAIR, NJ 07042' , O_formatted_address = '9 S Brookwood Dr, Montclair, NJ 07042, USA' , O_street_number = 9 , O_route = 'S Brookwood Dr' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.801381 , O_lng = -74.226711 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 208952
update all_data set OPLACE = '' , OSTREET = '20 ARCH ST' , OCITY = 'BLOOMFIELD' , OSTATE = 'NJ' , OZIP = 7003 , O_Address = '20 ARCH ST, BLOOMFIELD, NJ 07003' , O_formatted_address = '20 Arch St, Bloomfield, NJ 07003, USA' , O_street_number = 20 , O_route = 'Arch St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Bloomfield' , O_postal_code = 7003 , O_lat = 40.7821551 , O_lng = -74.1990924 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 209373
update all_data set OPLACE = 'Netcong Station' , OSTREET = 'Main St' , OCITY = 'Netcong' , OSTATE = 'NJ' , OZIP = 7857 , O_Address = '40.897554, -74.707317' , O_formatted_address = '88 Main St, Netcong, NJ 07857, USA' , O_street_number = 88 , O_route = 'Main St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Morris County' , O_locality = 'Netcong' , O_postal_code = 7857 , O_lat = 40.8972056 , O_lng = -74.707361 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 207980
update all_data set OPLACE = 'Upper Montclair Station' , OSTREET = 'Bellevue Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.842004, -74.209368' , O_formatted_address = '275 Bellevue Ave, Montclair, NJ 07043, USA' , O_street_number = 275 , O_route = 'Bellevue Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.842067 , O_lng = -74.2094798 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 203435
update all_data set OPLACE = 'Upper Montclair Station' , OSTREET = 'Bellevue Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.842004, -74.209368' , O_formatted_address = '275 Bellevue Ave, Montclair, NJ 07043, USA' , O_street_number = 275 , O_route = 'Bellevue Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.842067 , O_lng = -74.2094798 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 206856
update all_data set OPLACE = 'Walnut Street Station' , OSTREET = 'Montclair Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.817218, -74.20963' , O_formatted_address = '2 Montclair Ave, Montclair, NJ 07042, USA' , O_street_number = 2 , O_route = 'Montclair Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8172926 , O_lng = -74.2093139 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 205684
update all_data set OPLACE = 'Walnut Street Station' , OSTREET = 'Montclair Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.817218, -74.20963' , O_formatted_address = '2 Montclair Ave, Montclair, NJ 07042, USA' , O_street_number = 2 , O_route = 'Montclair Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8172926 , O_lng = -74.2093139 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 209612
update all_data set OPLACE = 'Bay Street Station' , OSTREET = 'Glenridge Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.808178, -74.208681' , O_formatted_address = '58-40 Glenridge Ave, Montclair, NJ 07042, USA' , O_street_number = 58-40 , O_route = 'Glenridge Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.808741 , O_lng = -74.2086441 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 210563
update all_data set OPLACE = 'Glen Ridge Station' , OSTREET = 'Darwin Pl' , OCITY = 'Glen Ridge' , OSTATE = 'NJ' , OZIP = 7028 , O_Address = '40.80059, -74.204655' , O_formatted_address = 'Darwin Pl, Glen Ridge, NJ 07028, USA' , O_street_number = NULL , O_route = 'Darwin Pl' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Glen Ridge' , O_postal_code = 7028 , O_lat = 40.8004373 , O_lng = -74.2051041 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 212126
update all_data set OPLACE = 'Bloomfield Station' , OSTREET = 'Lackawanna Pl' , OCITY = 'Bloomfield' , OSTATE = 'NJ' , OZIP = 7003 , O_Address = '40.792709, -74.200043' , O_formatted_address = '14 Lackawanna Pl, Bloomfield, NJ 07003, USA' , O_street_number = 14 , O_route = 'Lackawanna Pl' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Bloomfield' , O_postal_code = 7003 , O_lat = 40.7928135 , O_lng = -74.1999153 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202775
update all_data set OPLACE = 'Towaco Station' , OSTREET = 'Main Rd' , OCITY = 'Montville' , OSTATE = 'NJ' , OZIP = 7082 , O_Address = '40.922809, -74.343842' , O_formatted_address = '630 Main Rd, Towaco, NJ 07082, USA' , O_street_number = 630 , O_route = 'Main Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Morris County' , O_locality = 'Montville' , O_postal_code = 7082 , O_lat = 40.923279 , O_lng = -74.3440126 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 208660
update all_data set OPLACE = 'Mountain View Wayne Station' , OSTREET = 'Mountainview Blvd' , OCITY = 'Wayne' , OSTATE = 'NJ' , OZIP = 7470 , O_Address = '40.914402, -74.268158' , O_formatted_address = '187 Mountainview Blvd, Wayne, NJ 07470, USA' , O_street_number = 187 , O_route = 'Mountainview Blvd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Wayne' , O_postal_code = 7470 , O_lat = 40.914391 , O_lng = -74.268507 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 207994
update all_data set OPLACE = 'Montclair State University Station' , OSTREET = 'Clove Rd' , OCITY = 'Little Falls' , OSTATE = 'NJ' , OZIP = 7424 , O_Address = '40.86978, -74.197451' , O_formatted_address = '94-110 Clove Rd, Little Falls, NJ 07424, USA' , O_street_number = 94-110 , O_route = 'Clove Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Little Falls' , O_postal_code = 7424 , O_lat = 40.8701444 , O_lng = -74.1981309 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 205660
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 205477
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 205478
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202751
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 207000
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 207998
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202756
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 205745
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 207078
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 205744
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202758
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 206546
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 209551
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202154
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202164
update all_data set OPLACE = 'Mountain Ave Station' , OSTREET = 'Laurel Pl' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.848715, -74.205306' , O_formatted_address = '8 Laurel Pl, Montclair, NJ 07043, USA' , O_street_number = 8 , O_route = 'Laurel Pl' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8486749 , O_lng = -74.2048858 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 206612
update all_data set OPLACE = 'Mountain Ave Station' , OSTREET = 'Laurel Pl' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.848715, -74.205306' , O_formatted_address = '8 Laurel Pl, Montclair, NJ 07043, USA' , O_street_number = 8 , O_route = 'Laurel Pl' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8486749 , O_lng = -74.2048858 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 206613
update all_data set OPLACE = 'Mountain Ave Station' , OSTREET = 'Laurel Pl' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.848715, -74.205306' , O_formatted_address = '8 Laurel Pl, Montclair, NJ 07043, USA' , O_street_number = 8 , O_route = 'Laurel Pl' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8486749 , O_lng = -74.2048858 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202708
update all_data set OPLACE = 'Watchung Ave Station' , OSTREET = 'Park St' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.829516, -74.206934' , O_formatted_address = '227-247 Park St, Montclair, NJ 07042, USA' , O_street_number = 227-247 , O_route = 'Park St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8295359 , O_lng = -74.2071982 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 211170
update all_data set OPLACE = 'Walnut Street Station' , OSTREET = 'Montclair Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.817218, -74.20963' , O_formatted_address = '2 Montclair Ave, Montclair, NJ 07042, USA' , O_street_number = 2 , O_route = 'Montclair Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8172926 , O_lng = -74.2093139 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 209344
update all_data set OPLACE = 'Walnut Street Station' , OSTREET = 'Montclair Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.817218, -74.20963' , O_formatted_address = '2 Montclair Ave, Montclair, NJ 07042, USA' , O_street_number = 2 , O_route = 'Montclair Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8172926 , O_lng = -74.2093139 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 203355
update all_data set OPLACE = 'Walnut Street Station' , OSTREET = 'Montclair Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.817218, -74.20963' , O_formatted_address = '2 Montclair Ave, Montclair, NJ 07042, USA' , O_street_number = 2 , O_route = 'Montclair Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8172926 , O_lng = -74.2093139 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 209336
update all_data set OPLACE = 'Bay Street Station' , OSTREET = 'Glenridge Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.808178, -74.208681' , O_formatted_address = '58-40 Glenridge Ave, Montclair, NJ 07042, USA' , O_street_number = 58-40 , O_route = 'Glenridge Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.808741 , O_lng = -74.2086441 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 205485
update all_data set OPLACE = 'Bay Street Station' , OSTREET = 'Glenridge Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.808178, -74.208681' , O_formatted_address = '58-40 Glenridge Ave, Montclair, NJ 07042, USA' , O_street_number = 58-40 , O_route = 'Glenridge Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.808741 , O_lng = -74.2086441 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 210953
update all_data set OPLACE = 'Glen Ridge Station' , OSTREET = 'Darwin Pl' , OCITY = 'Glen Ridge' , OSTATE = 'NJ' , OZIP = 7028 , O_Address = '40.80059, -74.204655' , O_formatted_address = 'Darwin Pl, Glen Ridge, NJ 07028, USA' , O_street_number = NULL , O_route = 'Darwin Pl' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Glen Ridge' , O_postal_code = 7028 , O_lat = 40.8004373 , O_lng = -74.2051041 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 208062
update all_data set OPLACE = 'Bloomfield Station' , OSTREET = 'Lackawanna Pl' , OCITY = 'Bloomfield' , OSTATE = 'NJ' , OZIP = 7003 , O_Address = '40.792709, -74.200043' , O_formatted_address = '14 Lackawanna Pl, Bloomfield, NJ 07003, USA' , O_street_number = 14 , O_route = 'Lackawanna Pl' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Bloomfield' , O_postal_code = 7003 , O_lat = 40.7928135 , O_lng = -74.1999153 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 206042
update all_data set OPLACE = 'Bloomfield Station' , OSTREET = 'Lackawanna Pl' , OCITY = 'Bloomfield' , OSTATE = 'NJ' , OZIP = 7003 , O_Address = '40.792709, -74.200043' , O_formatted_address = '14 Lackawanna Pl, Bloomfield, NJ 07003, USA' , O_street_number = 14 , O_route = 'Lackawanna Pl' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Bloomfield' , O_postal_code = 7003 , O_lat = 40.7928135 , O_lng = -74.1999153 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 209056
update all_data set OPLACE = 'Newark Broad Street Station' , OSTREET = 'I-280' , OCITY = 'Newark' , OSTATE = 'NJ' , OZIP = 7102 , O_Address = '40.747621, -74.171943' , O_formatted_address = 'Essex Freeway, Newark, NJ, USA' , O_street_number = NULL , O_route = 'I-280' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Newark' , O_postal_code = 7102 , O_lat = 40.7477594 , O_lng = -74.1714647 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 203345
update all_data set OPLACE = 'Newark Broad Street Station' , OSTREET = 'I-280' , OCITY = 'Newark' , OSTATE = 'NJ' , OZIP = 7102 , O_Address = '40.747621, -74.171943' , O_formatted_address = 'Essex Freeway, Newark, NJ, USA' , O_street_number = NULL , O_route = 'I-280' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Newark' , O_postal_code = 7102 , O_lat = 40.7477594 , O_lng = -74.1714647 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202165
update all_data set OPLACE = 'Newark Broad Street Station' , OSTREET = 'I-280' , OCITY = 'Newark' , OSTATE = 'NJ' , OZIP = 7102 , O_Address = '40.747621, -74.171943' , O_formatted_address = 'Essex Freeway, Newark, NJ, USA' , O_street_number = NULL , O_route = 'I-280' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Newark' , O_postal_code = 7102 , O_lat = 40.7477594 , O_lng = -74.1714647 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 203205
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 205754
update all_data set OPLACE = 'Watchung Ave Station' , OSTREET = 'Park St' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.829516, -74.206934' , O_formatted_address = '227-247 Park St, Montclair, NJ 07042, USA' , O_street_number = 227-247 , O_route = 'Park St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8295359 , O_lng = -74.2071982 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 205759
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202757
update all_data set OPLACE = 'Walnut Street Station' , OSTREET = 'Montclair Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.817218, -74.20963' , O_formatted_address = '2 Montclair Ave, Montclair, NJ 07042, USA' , O_street_number = 2 , O_route = 'Montclair Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8172926 , O_lng = -74.2093139 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202796
update all_data set OPLACE = 'Bloomfield Station' , OSTREET = 'Lackawanna Pl' , OCITY = 'Bloomfield' , OSTATE = 'NJ' , OZIP = 7003 , O_Address = '40.792709, -74.200043' , O_formatted_address = '14 Lackawanna Pl, Bloomfield, NJ 07003, USA' , O_street_number = 14 , O_route = 'Lackawanna Pl' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Bloomfield' , O_postal_code = 7003 , O_lat = 40.7928135 , O_lng = -74.1999153 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202337


--Update Destination Addresses
update all_data set DPLACE = '' , DSTREET = '230 49TH STREET' , DCITY = 'UNION CITY' , DSTATE = 'NJ' , DZIP = 7087 , D_Address = '230 49TH STREET, UNION CITY, NJ 07087' , D_formatted_address = '230 49th St, Union City, NJ 07087, USA' , D_street_number = 230 , D_route = '49th St' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Union City' , D_postal_code = 7087 , D_lat = 40.781397 , D_lng = -74.018957 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 202725
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'MILLBURN' , DSTATE = 'NJ' , DZIP = 7041 , D_Address = 'MILLBURN, NJ 07041' , D_formatted_address = 'Millburn, NJ 07041, USA' , D_street_number = NULL , D_route = 'NULL' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'NULL' , D_locality = 'Millburn' , D_postal_code = 7041 , D_lat = 40.727549 , D_lng = -74.2971543 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202706
update all_data set DPLACE = 'CITIFIELD' , DSTREET = '' , DCITY = 'QUEENS' , DSTATE = 'NY' , DZIP = 11368 , D_Address = 'CITIFIELD, QUEENS, NY ' , D_formatted_address = 'Citi Field, 123-01 Roosevelt Ave, Queens, NY 11368, USA' , D_street_number = NULL , D_route = 'Roosevelt Ave' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'Queens County' , D_locality = 'NY' , D_postal_code = 11368 , D_lat = 40.7570877 , D_lng = -73.8458213 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 203333
update all_data set DPLACE = '' , DSTREET = '280 GROVE ST' , DCITY = 'JERSEY CITY' , DSTATE = 'NJ' , DZIP = 7302 , D_Address = '280 GROVE ST, JERSEY CITY, NJ 07302' , D_formatted_address = '280 Grove St, Jersey City, NJ 07302, USA' , D_street_number = 280 , D_route = 'Grove St' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Jersey City' , D_postal_code = 7302 , D_lat = 40.717734 , D_lng = -74.04309 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 202802
update all_data set DPLACE = '' , DSTREET = '' , DCITY = '' , DSTATE = 'NJ' , D_Address = 'NJ ' , D_formatted_address = 'New Jersey, USA' , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = '' , D_locality = '' , D_lat = 40.0583238 , D_lng = -74.4056612 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204947
update all_data set DPLACE = '' , DSTREET = '73 CARLTON AVE' , DCITY = 'JERSEY CITY' , DSTATE = 'NJ' , DZIP = 7306 , D_Address = '73 CARLTON AVE, JERSEY CITY, NJ 07306' , D_formatted_address = '73 Carlton Ave, Jersey City, NJ 07306, USA' , D_street_number = 73 , D_route = 'Carlton Ave' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Jersey City' , D_postal_code = 7306 , D_lat = 40.743385 , D_lng = -74.057879 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 205384
update all_data set DPLACE = '' , DSTREET = '104 QUIET RD' , DCITY = 'SICKLERVILLE' , DSTATE = 'NJ' , DZIP = 8081 , D_Address = '104 QUIET RD, SICKLERVILLE, NJ 08081' , D_formatted_address = '104 Quiet Rd, Sicklerville, NJ 08081, USA' , D_street_number = 104 , D_route = 'Quiet Rd' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Camden County' , D_locality = 'Winslow Township' , D_postal_code = 8081 , D_lat = 39.750993 , D_lng = -74.969545 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 207066
update all_data set DPLACE = '' , DSTREET = 'PO BOX 4037' , DCITY = 'ROSELLE PARK' , DSTATE = 'NJ' , DZIP = 7204 , D_Address = 'PO BOX 4037, ROSELLE PARK, NJ 07204' , D_formatted_address = 'Roselle Park, NJ 07204, USA' , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Union County' , D_locality = 'Roselle Park' , D_postal_code = 7204 , D_lat = 40.6640714 , D_lng = -74.2678169 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202707
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'NEW YORK' , DSTATE = 'NY' , D_Address = 'NEW YORK, NY ' , D_formatted_address = 'New York, NY, USA' , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'NY' , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206968
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'NEW YORK' , DSTATE = 'NY' , D_Address = 'NEW YORK, NY ' , D_formatted_address = 'New York, NY, USA' , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'NY' , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 207906
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'NEW YORK' , DSTATE = 'NY' , D_Address = 'NEW YORK, NY ' , D_formatted_address = 'New York, NY, USA' , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'NY' , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206028
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'NEW YORK' , DSTATE = 'NY' , D_Address = 'NEW YORK, NY ' , D_formatted_address = 'New York, NY, USA' , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'NY' , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 208560
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'WEEHAWKEN' , DSTATE = 'NJ' , DZIP = 7086 , D_Address = 'WEEHAWKEN, NJ 07086' , D_formatted_address = 'Weehawken, NJ, USA' , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Weehawken' , D_lat = 40.7663711 , D_lng = -74.0253715 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 205663
update all_data set DPLACE = 'BAYONNE NJ' , DSTREET = '' , DCITY = 'BAYONNE' , DSTATE = 'NJ' , DZIP = 7002 , D_Address = 'BAYONNE NJ, 07002' , D_formatted_address = 'Bayonne, NJ 07002, USA' , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = '' , D_locality = 'Bayonne' , D_postal_code = 7002 , D_lat = 40.658801 , D_lng = -74.1063776 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206029
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'JERSEY CITY' , DSTATE = 'NJ' , D_Address = 'JERSEY CITY, NJ ' , D_formatted_address = 'Jersey City, NJ, USA' , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Jersey City' , D_lat = 40.7281575 , D_lng = -74.0776417 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203205
update all_data set DPLACE = '' , DSTREET = '54 SOUTH 5TH STREET' , DCITY = 'HARRISON' , DSTATE = 'NJ' , DZIP = 7029 , D_Address = '54 SOUTH 5TH STREET, HARRISON, NJ 07029' , D_formatted_address = '54 S 5th St, Harrison, NJ 07029, USA' , D_street_number = 54 , D_route = 'S 5th St' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Harrison' , D_postal_code = 7029 , D_lat = 40.744968 , D_lng = -74.153682 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 205754
update all_data set DPLACE = '' , DSTREET = '120 W 78TH ST 4B' , DCITY = 'NEW YORK CITY' , DSTATE = 'NY' , DZIP = 10024 , D_Address = '120 W 78TH ST 4B, NEW YORK CITY, NY 10024' , D_formatted_address = '120 W 78th St, New York, NY 10024, USA' , D_street_number = 120 , D_route = 'W 78th St' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'NY' , D_postal_code = 10024 , D_lat = 40.781483 , D_lng = -73.977089 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 205759
update all_data set DPLACE = '' , DSTREET = '1233 PARK AVE APT-4A' , DCITY = 'HOBOKEN' , DSTATE = 'NJ' , DZIP = 7030 , D_Address = '1233 PARK AVE APT-4A, HOBOKEN, NJ 07030' , D_formatted_address = '1233 Park Ave #4a, Hoboken, NJ 07030, USA' , D_street_number = 1233 , D_route = 'Park Ave' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_postal_code = 7030 , D_lat = 40.7524439 , D_lng = -74.028845 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 202757


--Further Address Cleaning - O address in NY
select * from all_data where OSTATE like 'NY' or ocity like 'Hoboken' -- 24 Records

--Update ORIGIN and DESTINATION after manual review.
update all_data set ORIGIN = 1, DESTINATION = 2 where ID = 202082
update all_data set ORIGIN = 1, DESTINATION = 3 where ID = 205393
update all_data set ORIGIN = 1, DESTINATION = 2 where ID = 209947
update all_data set ORIGIN = 2, DESTINATION = 1 where ID = 210041
update all_data set ORIGIN = 2, DESTINATION = 1 where ID = 205597
update all_data set ORIGIN = 1 where ID = 203612
update all_data set ORIGIN = 1 where ID = 204234
update all_data set ORIGIN = 1 where ID = 202849
update all_data set ORIGIN = 1 where ID = 203512
update all_data set ORIGIN = 1 where ID = 204338
update all_data set ORIGIN = 1 where ID = 204343
update all_data set ORIGIN = 1 where ID = 204542
update all_data set ORIGIN = 1 where ID = 204777
update all_data set ORIGIN = 1 where ID = 207824
update all_data set ORIGIN = 1 where ID = 214021
update all_data set ORIGIN = 0 where ID = 204132
update all_data set ORIGIN = 0 where ID = 210928
update all_data set ORIGIN = 0 where ID = 205767
update all_data set ORIGIN = 0 where ID = 206910
update all_data set ORIGIN = 0 where ID = 212752
update all_data set ORIGIN = 0 where ID = 202786
update all_data set ORIGIN = 0 where ID = 206611
update all_data set ORIGIN = 0 where ID = 209594
update all_data set ORIGIN = 0 where ID = 202327


--Update Origin Addresses:
update all_data set OPLACE = '' , OSTREET = '238 LAKEWOOD DRIVE' , OCITY = 'BLOOMFIELD' , OSTATE = 'NJ' , OZIP = 7003 , O_Address = '238 LAKEWOOD DRIVE, BLOOMFIELD, NJ 07003' , O_formatted_address = '238 Lakewood Dr, Bloomfield, NJ 07003, USA' , O_street_number = 238 , O_route = 'Lakewood Dr' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Bloomfield' , O_postal_code = 7003 , O_lat = 40.816669 , O_lng = -74.188766 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202082
update all_data set OPLACE = '' , OSTREET = '540 MARSHALL DR' , OCITY = 'HOBOKEN' , OSTATE = 'NJ' , OZIP = 7030 , O_Address = '540 MARSHALL DR, HOBOKEN, ' , O_formatted_address = '540 Marshall Dr, Hoboken, NJ 07030, USA' , O_street_number = 540 , O_route = 'Marshall Dr' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Hudson County' , O_locality = 'Hoboken' , O_postal_code = 7030 , O_lat = 40.7451343 , O_lng = -74.0410421 , O_exact_match = 1 , O_location_type_value = 2 , O_types_value = 1 , O_good_check = 1 where ID = 205393
update all_data set OPLACE = '' , OSTREET = 'MISSION ST' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = 'MISSION ST, MONTCLAIR, NJ 07042' , O_formatted_address = 'Mission St, Montclair, NJ 07042, USA' , O_street_number = null, O_route = 'Mission St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8056893 , O_lng = -74.2127666 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 2 , O_good_check = 1 where ID = 209947
update all_data set OPLACE = '' , OSTREET = '430 VALLEY RD' , OCITY = 'UPPER MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '430 VALLEY RD, UPPER MONTCLAIR, NJ 07043' , O_formatted_address = '430 Valley Rd, Montclair, NJ 07043, USA' , O_street_number = 430 , O_route = 'Valley Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.833456 , O_lng = -74.208534 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 210041
update all_data set OPLACE = 'B london' , OSTREET = '307 ORANGE ROAD' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = 'B london, 307 ORANGE ROAD, MONTCLAIR, NJ 07042' , O_formatted_address = '307 Orange Rd, Montclair, NJ 07042, USA' , O_street_number = 307 , O_route = 'Orange Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.798107 , O_lng = -74.2187585 , O_exact_match = 0 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 205597
update all_data set OPLACE = '' , OSTREET = '50 MISSION ST' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '50 MISSION ST, MONTCLAIR, NJ 07042' , O_formatted_address = '50 Mission St, Montclair, NJ 07042, USA' , O_street_number = 50 , O_route = 'Mission St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.806118 , O_lng = -74.211938 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 203612
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = 'MONTCLAIR, NJ 07042' , O_formatted_address = 'Montclair, NJ 07042, USA' , O_street_number =  '', O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.821948 , O_lng = -74.2120629, O_exact_match = 1, O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 204234
update all_data set OPLACE = '' , OSTREET = '35 WATSESSING AVE' , OCITY = 'BLOOMFIELD' , OSTATE = 'NJ' , OZIP = 7003 , O_Address = '35 WATSESSING AVE, BLOOMFIELD, NJ 07003' , O_formatted_address = '35 Watsessing Ave, Bloomfield, NJ 07003, USA' , O_street_number = 35 , O_route = 'Watsessing Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Bloomfield' , O_postal_code = 7003 , O_lat = 40.782697 , O_lng = -74.197314 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202849
update all_data set OPLACE = '' , OSTREET = '50 PINE ST BLD 7-0' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '50 PINE ST BLD 7-0, MONTCLAIR, NJ 07042' , O_formatted_address = '50 Pine St, Montclair, NJ 07042, USA' , O_street_number = 50 , O_route = 'Pine St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8089931 , O_lng = -74.2103111 , O_exact_match = 0 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 203512
update all_data set OPLACE = '' , OSTREET = '132 MONTCLAIR AVE' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '132 MONTCLAIR AVE, MONTCLAIR, NJ 07042' , O_formatted_address = '132 Montclair Ave, Montclair, NJ 07042, USA' , O_street_number = 132 , O_route = 'Montclair Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.824915 , O_lng = -74.204083 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 204338
update all_data set OPLACE = '' , OSTREET = '200 PARK ST' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '200 PARK ST, MONTCLAIR, NJ 07042' , O_formatted_address = '200 Park St, Montclair, NJ 07042, USA' , O_street_number = 200 , O_route = 'Park St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.827561 , O_lng = -74.209028 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 204343
update all_data set OPLACE = '' , OSTREET = '246 S MOUNTAIN AVE' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '246 S MOUNTAIN AVE, MONTCLAIR, NJ 07042' , O_formatted_address = '246 S Mountain Ave, Montclair, NJ 07042, USA' , O_street_number = 246 , O_route = 'S Mountain Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.803229 , O_lng = -74.233261 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 204542
update all_data set OPLACE = '' , OSTREET = '22 BALDWIN ST APT 6' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '22 BALDWIN ST APT 6, MONTCLAIR, NJ 07042' , O_formatted_address = '22 Baldwin St #6, Montclair, NJ 07042, USA' , O_street_number = 22 , O_route = 'Baldwin St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.808951 , O_lng = -74.206206 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 2 , O_good_check = 1 where ID = 204777
update all_data set OPLACE = '' , OSTREET = '17 VILLAGE WAY UNIT 3' , OCITY = 'VERNON' , OSTATE = 'NJ' , OZIP = 7462 , O_Address = '17 VILLAGE WAY UNIT 3, VERNON, NJ 07462' , O_formatted_address = '17 Village Way #3, Vernon Township, NJ 07462, USA' , O_street_number = 17 , O_route = 'Village Way' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Sussex County' , O_locality = 'Vernon Township' , O_postal_code = 7462 , O_lat = 41.1808675 , O_lng = -74.4810323 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 2 , O_good_check = 1 where ID = 207824
update all_data set OPLACE = '' , OSTREET = '300 MONTGOMERY ST' , OCITY = 'BLOOMFIELD' , OSTATE = 'NJ' , OZIP = 7003 , O_Address = '300 MONTGOMERY ST, BLOOMFIELD, NJ 07003' , O_formatted_address = '300 Montgomery St, Bloomfield, NJ 07003, USA' , O_street_number = 300 , O_route = 'Montgomery St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Bloomfield' , O_postal_code = 7003 , O_lat = 40.791938 , O_lng = -74.193943 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 214021
update all_data set OPLACE = 'Hackettstown Station' , OSTREET = 'Beatty St' , OCITY = 'Hackettstown' , OSTATE = 'NJ' , OZIP = 7840 , O_Address = '40.851444, -74.835352' , O_formatted_address = '224 Beatty St, Hackettstown, NJ 07840, USA' , O_street_number = 224 , O_route = 'Beatty St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Warren County' , O_locality = 'Hackettstown' , O_postal_code = 7840 , O_lat = 40.8510835 , O_lng = -74.8356132 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 204132
update all_data set OPLACE = 'Walnut Street Station' , OSTREET = 'Montclair Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.817218, -74.20963' , O_formatted_address = '2 Montclair Ave, Montclair, NJ 07042, USA' , O_street_number = 2 , O_route = 'Montclair Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8172926 , O_lng = -74.2093139 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 210928
update all_data set OPLACE = 'Walnut Street Station' , OSTREET = 'Montclair Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.817218, -74.20963' , O_formatted_address = '2 Montclair Ave, Montclair, NJ 07042, USA' , O_street_number = 2 , O_route = 'Montclair Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8172926 , O_lng = -74.2093139 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 205767
update all_data set OPLACE = 'Bay Street Station' , OSTREET = 'Glenridge Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.808178, -74.208681' , O_formatted_address = '58-40 Glenridge Ave, Montclair, NJ 07042, USA' , O_street_number = 58-40 , O_route = 'Glenridge Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.808741 , O_lng = -74.2086441 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 206910
update all_data set OPLACE = 'Bloomfield Station' , OSTREET = 'Lackawanna Pl' , OCITY = 'Bloomfield' , OSTATE = 'NJ' , OZIP = 7003 , O_Address = '40.792709, -74.200043' , O_formatted_address = '14 Lackawanna Pl, Bloomfield, NJ 07003, USA' , O_street_number = 14 , O_route = 'Lackawanna Pl' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Bloomfield' , O_postal_code = 7003 , O_lat = 40.7928135 , O_lng = -74.1999153 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 212752
update all_data set OPLACE = 'Montclair State University Station' , OSTREET = 'Clove Rd' , OCITY = 'Little Falls' , OSTATE = 'NJ' , OZIP = 7424 , O_Address = '40.86978, -74.197451' , O_formatted_address = '94-110 Clove Rd, Little Falls, NJ 07424, USA' , O_street_number = 94-110 , O_route = 'Clove Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Little Falls' , O_postal_code = 7424 , O_lat = 40.8701444 , O_lng = -74.1981309 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202786
update all_data set OPLACE = 'Mountain Ave Station' , OSTREET = 'Laurel Pl' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.848715, -74.205306' , O_formatted_address = '8 Laurel Pl, Montclair, NJ 07043, USA' , O_street_number = 8 , O_route = 'Laurel Pl' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8486749 , O_lng = -74.2048858 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 206611
update all_data set OPLACE = 'Walnut Street Station' , OSTREET = 'Montclair Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.817218, -74.20963' , O_formatted_address = '2 Montclair Ave, Montclair, NJ 07042, USA' , O_street_number = 2 , O_route = 'Montclair Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8172926 , O_lng = -74.2093139 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 209594
update all_data set OPLACE = 'Walnut Street Station' , OSTREET = 'Montclair Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.817218, -74.20963' , O_formatted_address = '2 Montclair Ave, Montclair, NJ 07042, USA' , O_street_number = 2 , O_route = 'Montclair Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8172926 , O_lng = -74.2093139 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202327

--Update Destination Addresses
update all_data set DPLACE = 'ADMIRAL AIR' , DSTREET = '130-12 90TH AVE RICHMOND HILL' , DCITY = 'QUEENS' , DSTATE = 'NY' , DZIP = 11418 , D_Address = 'ADMIRAL AIR, 130-12 90TH AVE RICHMOND HILL, QUEENS, NY 11418' , D_formatted_address = '130-12 90th Ave, Richmond Hill, NY 11418, USA' , D_street_number =  null, D_route = '90th Ave' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'Queens County' , D_locality = '' , D_postal_code = 11418 , D_lat = 40.698746 , D_lng = -73.82028 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 202082
update all_data set DPLACE = '' , DSTREET = '540 MARSHALL DR' , DCITY = 'HOBOKEN' , DSTATE = 'NJ' , DZIP = 7030 , D_Address = '540 MARSHALL DR, HOBOKEN, NJ 07030' , D_formatted_address = '540 Marshall Dr, Hoboken, NJ 07030, USA' , D_street_number = 540 , D_route = 'Marshall Dr' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_postal_code = 7030 , D_lat = 40.7451343 , D_lng = -74.0410421 , D_exact_match = 1 , D_location_type_value = 2 , D_types_value = 1 , D_good_check = 1 where ID = 205393
update all_data set DPLACE = 'SKIP OF NEW YORK' , DSTREET = '601 W 26TH ST SUITE 522' , DCITY = 'MANHATTAN' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'SKIP OF NEW YORK, 601 W 26TH ST SUITE 522, MANHATTAN, NY 10001' , D_formatted_address = '601 W 26th St #522, New York, NY 10001, USA' , D_street_number = 601 , D_route = 'W 26th St' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'NY' , D_postal_code = 10001 , D_lat = 40.7515355 , D_lng = -74.0064204 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 209947
update all_data set DPLACE = 'SALVATORE FERRAGAMO' , DSTREET = '663 5TH AVE' , DCITY = 'NEW YORK' , DSTATE = 'NY' , DZIP = 10022 , D_Address = 'SALVATORE FERRAGAMO, 663 5TH AVE, NEW YORK, NY 10022' , D_formatted_address = '663 5th Ave, New York, NY 10022, USA' , D_street_number = 663 , D_route = '5th Ave' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'NY' , D_postal_code = 10022 , D_lat = 40.7600167 , D_lng = -73.9758285 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 210041
update all_data set DPLACE = '' , DSTREET = '86-A 7650' , DCITY = 'WOODHAVEN' , DSTATE = 'NY' , DZIP = 11421 , D_Address = '86-A 7650, WOODHAVEN, NY 11421' , D_formatted_address = '76-50 86th Ave, Woodhaven, NY 11421, USA' , D_street_number =  null, D_route = '86th Ave' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'Queens County' , D_locality = '' , D_postal_code = 11421 , D_lat = 40.6931833 , D_lng = -73.8653651 , D_exact_match = 0 , D_location_type_value = 2 , D_types_value = 1 , D_good_check = 1 where ID = 205597
update all_data set DPLACE = 'S. A. E NY, NY' , DSTREET = '278 W 18TH' , DCITY = 'NEW YORK' , DSTATE = 'NY' , DZIP = 10011 , D_Address = 'S. A. E NY, NY, 278 W 18TH, NEW YORK, NY 10011' , D_formatted_address = '278 W 18th St, New York, NY 10011, USA' , D_street_number = 278 , D_route = 'W 18th St' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'NY' , D_postal_code = 10011 , D_lat = 40.7421538 , D_lng = -74.0005016 , D_exact_match = 0 , D_location_type_value = 2 , D_types_value = 1 , D_good_check = 1 where ID = 207824
update all_data set DPLACE = 'BY DESIGN LLC 1441' , DSTREET = '1441 BROADWAY' , DCITY = 'NEW YORK' , DSTATE = 'NY' , DZIP = 10018 , D_Address = 'BY DESIGN LLC 1441 B, 1441 BROADWAY, NEW YORK, NY 10018' , D_formatted_address = '1441 Broadway, New York, NY 10018, USA' , D_street_number = 1441 , D_route = 'Broadway' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'NY' , D_postal_code = 10018 , D_lat = 40.7549449 , D_lng = -73.9870172 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 214021
update all_data set DPLACE = 'Pennsylvania Station' , DSTREET = '' , DCITY = 'NEW YORK' , DSTATE = 'ny' , DZIP = 10001 , D_Address = 'Pennsylvania Station, NEW YORK, ny 10001' , D_formatted_address = 'Pennsylvania Station, 4 Pennsylvania Plaza, New York, NY 10001, USA' , D_street_number = 4 , D_route = 'Pennsylvania Plaza' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'NY' , D_postal_code = 10001 , D_lat = 40.7505057 , D_lng = -73.9933939 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 202786
update all_data set DPLACE = '' , DSTREET = '10th Ave & W 33rd St' , DCITY = 'NEW YORK' , DSTATE = 'NY' , DZIP = 10001 , D_Address = '10th Ave & W 33rd St, NEW YORK, NY 10001' , D_formatted_address = '10th Ave & W 33rd St, New York, NY 10001, USA' , D_street_number =  null, D_route = '10th Ave' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'NY' , D_postal_code = 10001 , D_lat = 40.753918 , D_lng = -73.999633 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 206611
update all_data set DPLACE = '' , DSTREET = '26 ARDSLEY RD' , DCITY = 'SCARSDALE' , DSTATE = 'NY' , DZIP = 10583 , D_Address = '26 ARDSLEY RD, ' , D_formatted_address = '26 Ardsley Rd, Scarsdale, NY 10583, USA' , D_street_number = 26 , D_route = 'Ardsley Rd' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'Westchester County' , D_locality = 'Scarsdale' , D_postal_code = 10583 , D_lat = 40.9890565 , D_lng = -73.8109643 , D_exact_match = 1 , D_location_type_value = 2 , D_types_value = 1 , D_good_check = 1 where ID = 209594
update all_data set DPLACE = 'THE HUDSON SCHOOL' , DSTREET = '' , DCITY = 'HOBOKEN' , DSTATE = 'NJ' , DZIP = 7030 , D_Address = 'THE HUDSON SCHOOL, ' , D_formatted_address = 'The Hudson School, 601 Park Ave, Hoboken, NJ 07030, USA' , D_street_number = 601 , D_route = 'Park Ave' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_postal_code = 7030 , D_lat = 40.7440759 , D_lng = -74.0314628 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 202327
go



--18.	STATIONOFF (Deboarding Station) * TONYTRIP (How complete trip to NY)
--Review Stationoff vs. Tonytrip - Stationoff = 4 and dstate = 'NY'
Select ID,  stationoff, dstate, tonytrip, emodeny, emodenj from all_data
where stationoff = 4 and (dstate = 'NY' or dstate is null)

--update based on question logic
update all_data set stationoff = 1 where stationoff = 4 and dstate = 'NY' and tonytrip = 1
update all_data set dstate = 'NY' where stationoff = 4 and dstate is null and tonytrip = 2
update all_data set stationoff = 1 where stationoff = 4 and dstate = 'NY' and tonytrip = 2

--Updating Destination State based on EMODENJ/EMODENY responses.
update all_data set dstate = 'NJ' where stationoff = 4 and emodenj is not null and dstate is null

--Review Stationoff vs. Tonytrip: 
Select ID,  stationoff, dstate, tonytrip, emodeny, emodenj from all_data
where stationoff = 4 and (dstate = 'NY' or dstate is null)

--**********************************************************
--Currently suspending since Terrence is taking this on...
--**********************************************************


--Adding Column to mark Re-Survey record.
--34.	As part of the data cleaning process, please create a variable called resurvey_train_record 
select * from all_data where sheet_num like '%R'

alter table all_data
add flag_Resurvey int

update all_data set flag_Resurvey = 1 where sheet_num like '%R' -- 249 Records returned from resurvey effort.


--35.	Please also create an additional variable called spanish_record
alter table all_data
add SPANISH_RECORD int

update all_data set SPANISH_RECORD = 1 where ID < 200000


--36.	Please create additional variable called direction for check that surveying was all done in the inbound direction.
alter table all_data
add DIRECTION int

update all_data set DIRECTION = 1

select taxbenefit, tax$, count(*) as num from all_data
group by taxbenefit, tax$
order by taxbenefit, tax$


select * from

(select routenum, station_key, station, count(password) as [distrib], sum(station_refuse) as refuse, sum(station_spanish) as spanish from count_sheet_data
	where routenum is not null and station is not null and station <> 'New York' and station <> 'Hoboken' and station <> 'Secaucus Junction'
group by routenum, station_key, station
order by routenum, station_key)c

join

(select routenum, stationon_key, count(ID) as [returns] from all_data
group by routenum, stationon_key
order by routenum, stationon_key)s

on c.routenum = s.routenum and c.station_key = s.stationon_key


--Summarize Distribution Data
select * from
	(select routenum, station_key, station, count(password) as [distrib], sum(station_refuse) as refuse, sum(station_spanish) as spanish from count_sheet_data
		where routenum is not null and station is not null and station <> 'New York' and station <> 'Hoboken' and station <> 'Secaucus Junction'
	group by routenum, station_key, station)c
full join
	(select routenum, stationon_key, count(ID) as [returns] from all_data
	group by routenum, stationon_key)s
	on c.routenum = s.routenum and c.station_key = s.stationon_key
order by c.routenum, station_key, stationon_key

select * from all_data where stationon_key is null

select password, station, station_key from count_sheet_data where password = 203427

--Updating records where reported station was not serviced by train.
update all_data set stationon_key = 19 where ID = 204132
update all_data set stationon_key = 23 where ID = 212781
update all_data set stationon_key = 19 where ID = 202191
update all_data set stationon_key = 15 where ID = 202551
update all_data set stationon_key = 5 where ID = 204256
update all_data set stationon_key = 5 where ID = 204251
update all_data set stationon_key = 4 where ID = 206914
update all_data set stationon_key = 6 where ID = 207513
update all_data set stationon_key = 12 where ID = 203539
update all_data set stationon_key = 6 where ID = 205125
update all_data set stationon_key = 15 where ID = 202111
update all_data set stationon_key = 22 where ID = 203730
update all_data set stationon_key = 15 where ID = 208660
update all_data set stationon_key = 19 where ID = 211049
update all_data set stationon_key = 20 where ID = 211189
update all_data set stationon_key = 23 where ID = 211322
update all_data set stationon_key = 23 where ID = 212681
update all_data set stationon_key = 18 where ID = 204595
update all_data set stationon_key = 22 where ID = 205434
update all_data set stationon_key = 15 where ID = 203427


select * from
(select * from all_data) a
full join
(select routenum, station_key from count_sheet_data
group by routenum, station_key)c
on a.routenum = c.routenum and a.stationon_Key = c.station_key
where c.routenum is null and c.station_key is null
order by a.routenum, stationon_key



--A few records were duplicated due to one issue with mislabeling the serial ID, and a few instances of
--issues with the placetype in the address fields.  This is for the updates to [all_data].
--Additional update syntax for the Count Sheet and Address data can be found in the file
--Count_Sheet_Data.sql
alter table all_data
add DeDupe int

update all_data set dedupe = 1 where dedupe is null

select * from all_data where dedupe = 1

update all_data set dedupe = 0
where id = 204934 or
id = 209325 or
id = 209326 or
id = 204434 or
id = 209957 or
id = 209184 or
id = 214272 or
id = 213875 or
id = 214280 or
id = 211194 or
id = 210155

select * from all_data where dedupe = 0 and
ocity is not null and 
(
id = 209184 or
id = 214272 or
id = 213875 or
id = 214280 or
id = 211194 or
id = 210155)

order by id, ocity

update all_data set dedupe = 1 
where ocity is not null and dedupe = 0 and 
(id = 209184 or
id = 214272 or
id = 213875 or
id = 214280 or
id = 211194 or
id = 210155)

select * from all_data where dedupe = 0
order by id, ocity, dcity, H_CITY


update all_data set dedupe = 1 where id = 209325 and ocity ='Upper Montclair' and dcity = 'NEW YORK' and H_City = 'Upper Montclair'
update all_data set dedupe = 1 where id = 209326 and ocity = 'Montclair' and dcity = 'NY' and h_city = 'Montclair'
update all_data set dedupe = 1 where id = 204434 and ocity = 'Montclair' and dcity = 'NEW YORK' and h_city ='Montclair'
update all_data set dedupe = 1 where id = 204934 and ocity is null and dcity is null and h_city = 'Totowa'

select id, unique_id from all_data where id = 209957
update all_data set dedupe = 1 where unique_id = 2370

select id, count(id) as num from all_data
where id = 204934 or
id = 209325 or
id = 209326 or
id = 204434 or
id = 209957 or
id = 209184 or
id = 214272 or
id = 213875 or
id = 214280 or
id = 211194 or
id = 210155
group by id, dedupe
order by id, dedupe

delete from all_data where dedupe = 0
select * from all_data where dedupe = 0

--Summarize Distribution Data
select * from
	(select routenum, station_key, station, count(password) as [distrib], sum(station_refuse) as refuse, sum(station_spanish) as spanish from count_sheet_data
		where routenum is not null and station is not null and station <> 'New York' and station <> 'Hoboken' and station <> 'Secaucus Junction'
	group by routenum, station_key, station)c
full join
	(select routenum, stationon_key, count(ID) as [returns] from all_data
	group by routenum, stationon_key)s
	on c.routenum = s.routenum and c.station_key = s.stationon_key
order by c.routenum, station_key, stationon_key



--Getting Vartype for Open-Ended Response (nvarchar)
SELECT 
    c.name 'Column Name',
    t.Name 'Data type',
    c.max_length 'Max Length',
    c.precision ,
    c.scale ,
    c.is_nullable,
    ISNULL(i.is_primary_key, 0) 'Primary Key'
FROM    
    sys.columns c
INNER JOIN 
    sys.types t ON c.user_type_id = t.user_type_id
LEFT OUTER JOIN 
    sys.index_columns ic ON ic.object_id = c.object_id AND ic.column_id = c.column_id
LEFT OUTER JOIN 
    sys.indexes i ON ic.object_id = i.object_id AND ic.index_id = i.index_id
WHERE
    c.object_id = OBJECT_ID('all_data')


Select abus, o_address from all_data where abus is not null
order by abus

select SANDY_HOME_SPEC from all_data
group by SANDY_HOME_SPEC
order by SANDY_HOME_SPEC

select D_Address, SANDY_HOME_SPEC from all_data where SANDY_HOME_SPEC is not null


select * from all_data a 
left outer join 
count_sheet_data_bkup_12_4_15 on id = password
where stationon_key = 25

select id, c.sheet_num from all_data a
left outer join 
count_sheet_data c
on id > surv_first and id < surv_last
where id = 204785

alter table all_data 
add flag_newark_board int

update all_data set flag_newark_board = 1 where id = 203633
update all_data set flag_newark_board = 1 where id = 203634
update all_data set flag_newark_board = 1 where id = 203637
update all_data set flag_newark_board = 1 where id = 203639
update all_data set flag_newark_board = 1 where id = 203856
update all_data set flag_newark_board = 1 where id = 204049
update all_data set flag_newark_board = 1 where id = 204785


--These are being flipped... is used as a marker to review any other variables that should have changed along with the trip flipping.
update all_data set flag_flip_trip = 1 where id = 205837
update all_data set flag_flip_trip = 1 where id = 204164
update all_data set flag_flip_trip = 1 where id = 205385
update all_data set flag_flip_trip = 1 where id = 202165
update all_data set flag_flip_trip = 1 where id = 203133


update all_data set Origin = 2 where id = 205837
update all_data set Origin = 3, origin_other = 'COLLEGE' where id = 204164
update all_data set Origin = 3, origin_other = 'MONTCLAIR HEIGHTS' where id = 205385
update all_data set destination = 1 where id = 205837
update all_data set destination = 1 where id = 204164
update all_data set destination = 2 where id = 205385
update all_data set destination = 0 where id = 202165
update all_data set destination = 1 where id = 203133


update all_data set OPLACE = 'MONTCLAIR STATE UNIVERSITY' , OSTREET = 'NORMAL AVE' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = 'MONTCLAIR STATE UNIVERSITY, NORMAL AVE, MONTCLAIR, NJ ' , O_formatted_address = 'Montclair State University, 1 Normal Ave, Montclair, NJ 07043, USA' , O_street_number = 1 , O_route = 'Normal Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8613071 , O_lng = -74.1984254 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = NULL , O_good_check = 1 where ID = 205837
update all_data set OPLACE = 'MONTCLAIR STATE UNIVERSITY' , OSTREET = '1 NORMAL AVE' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = 'MONTCLAIR STATE UNIVERSITY, 1 NORMAL AVE, MONTCLAIR, NJ ' , O_formatted_address = 'Montclair State University, 1 Normal Ave, Montclair, NJ 07043, USA' , O_street_number = 1 , O_route = 'Normal Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8613071 , O_lng = -74.1984254 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = NULL , O_good_check = 1 where ID = 204164
update all_data set OPLACE = 'MSU' , OSTREET = 'NULL' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = 'MSU, MONTCLAIR, NJ ' , O_formatted_address = 'Montclair State University, 1 Normal Ave, Montclair, NJ 07043, USA' , O_street_number = 1 , O_route = 'Normal Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8613071 , O_lng = -74.1984254 , O_exact_match = 0 , O_location_type_value = 1 , O_types_value = 2 , O_good_check = 1 where ID = 205385
update all_data set OPLACE = 'Mountain Ave Station' , OSTREET = 'Laurel Pl' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.848715, -74.205306' , O_formatted_address = '8 Laurel Pl, Montclair, NJ 07043, USA' , O_street_number = 8 , O_route = 'Laurel Pl' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8486749 , O_lng = -74.2048858 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202165
update all_data set OPLACE = 'Watchung Ave Station' , OSTREET = 'Park St' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '40.829516, -74.206934' , O_formatted_address = '227-247 Park St, Montclair, NJ 07042, USA' , O_street_number = 227-247 , O_route = 'Park St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8295359 , O_lng = -74.2071982 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 203133
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 203332
update all_data set OPLACE = 'Mountain Ave Station' , OSTREET = 'Laurel Pl' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.848715, -74.205306' , O_formatted_address = '8 Laurel Pl, Montclair, NJ 07043, USA' , O_street_number = 8 , O_route = 'Laurel Pl' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8486749 , O_lng = -74.2048858 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 203345
update all_data set OPLACE = 'Montclair Heights Station' , OSTREET = 'Carlisle Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.857536, -74.2025' , O_formatted_address = '33 Carlisle Rd, Montclair, NJ 07043, USA' , O_street_number = 33 , O_route = 'Carlisle Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8576273 , O_lng = -74.2022767 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 203205
update all_data set OPLACE = 'Mountain Ave Station' , OSTREET = 'Laurel Pl' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '40.848715, -74.205306' , O_formatted_address = '8 Laurel Pl, Montclair, NJ 07043, USA' , O_street_number = 8 , O_route = 'Laurel Pl' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8486749 , O_lng = -74.2048858 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 210663

update all_data set DPLACE = 'HUDSON COUNTY' , DSTREET = '151 BELGROVE DR' , DCITY = 'KEARNEY' , DSTATE = 'NJ' , DZIP = 7032 , D_Address = 'HUDSON COUNTY, 151 BELGROVE DR, KEARNEY, NJ 07032' , D_formatted_address = '151 Belgrove Dr, Kearny, NJ 07032, USA' , D_street_number = 151 , D_route = 'Belgrove Dr' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Kearny' , D_postal_code = 7032 , D_lat = 40.758121 , D_lng = -74.158434 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 205837
update all_data set DPLACE = 'NULL' , DSTREET = 'FRANK E RODGERS BLVD' , DCITY = 'HARRISON' , DSTATE = 'NJ' , DZIP = 7029 , D_Address = 'FRANK E RODGERS BLVD, HARRISON, NJ 07029' , D_formatted_address = 'Frank E Rodgers Blvd S, Harrison, NJ 07029, USA' , D_street_number = NULL , D_route = 'Frank E Rodgers Blvd S' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Harrison' , D_postal_code = 7029 , D_lat = 40.7401061 , D_lng = -74.1556981 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 204164
update all_data set DPLACE = 'NULL' , DSTREET = '239 WOODSIDE AVE (CTK PREP)' , DCITY = 'NEWARK' , DSTATE = 'NJ' , DZIP = 7104 , D_Address = '239 WOODSIDE AVE (CTK PREP), NEWARK, NJ 07104' , D_formatted_address = 'Christ the King Preparatory School, 239 Woodside Ave, Newark, NJ 07104, USA' , D_street_number = 239 , D_route = 'Woodside Ave' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Essex County' , D_locality = 'Newark' , D_postal_code = 7104 , D_lat = 40.7743425 , D_lng = -74.1645862 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 205385
update all_data set DPLACE = 'Newark Broad Street Station' , DSTREET = 'I-280' , DCITY = 'Newark' , DSTATE = 'NJ' , DZIP = 7102 , D_Address = '40.747621, -74.171943' , D_formatted_address = 'Essex Freeway, Newark, NJ, USA' , D_street_number = NULL , D_route = 'I-280' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Essex County' , D_locality = 'Newark' , D_postal_code = 7102 , D_lat = 40.7477594 , D_lng = -74.1714647 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 202165
update all_data set DPLACE = 'NULL' , DSTREET = '39 HIGHLAND AVE' , DCITY = 'NEWARK' , DSTATE = 'NJ' , DZIP = 7104 , D_Address = '39 HIGHLAND AVE, NEWARK, NJ ' , D_formatted_address = '39 Highland Ave, Newark, NJ 07104, USA' , D_street_number = 39 , D_route = 'Highland Ave' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Essex County' , D_locality = 'Newark' , D_postal_code = 7104 , D_lat = 40.758284 , D_lng = -74.178847 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 203133

update count_sheet_data set station_key = 16 where [password] = 205837
update count_sheet_data set station_key = 16 where [password] = 204164
update count_sheet_data set station_key = 16 where [password] = 205385
update count_sheet_data set station_key = 17 where [password] = 202165
update count_sheet_data set station_key = 19 where [password] = 203133
update count_sheet_data set station_key = 16 where [password] = 203332
update count_sheet_data set station_key = 16 where [password] = 203345
update count_sheet_data set station_key = 16 where [password] = 203205
update count_sheet_data set station_key = 17 where [password] = 210663

select * from all_data where id = 207545

select bdhr, ampm, rhr, rampm from all_data where rampm is null and rhr < 12

update all_data set rampm = 2 where rampm is null and rhr < 12

update all_data set rhr = (rhr + 12) where rampm =2 and rhr < 12

--Review Terrence's Updates and Recommendations.

--Hackettstown Station Records.
select * from all_data where id = 204063

select * from all_data where id = 204151
update all_data set destination = 3 where id = 204151

select * from all_data where id = 101381 -- this was already done.

select * from all_data where id = 207907
update all_data set amode = 3 where id = 204050
update all_data set emodenj = 7 where id = 204060
update all_data set ocity = 'HACKETTSTOWN' where id = 207907

select * into all_data_bkup_12_18_15 from all_data

--Netcong Station Records (Terrence)
select * from all_data where id = 207154
update all_data set 
	 OSTREET = H_STREET
	, OCITY = H_CITY
	, OSTATE = H_STATE
	, OZIP = H_ZIP
	, O_Address = H_Address
	, O_formatted_address = H_formatted_address
	, O_street_number = H_street_number
	, O_route = H_route
	, O_country = H_country
	, O_administrative_area_level1 = H_administrative_area_level1
	, O_administrative_area_level2 = H_administrative_area_level2
	, O_locality = H_locality
	, O_postal_code = H_postal_code
	, O_lat = H_lat
	, O_lng = H_lng
	, O_Exact_Match = H_Exact_Match
	, O_location_type_value = H_location_type_value
	, O_types_value = H_types_value
	, O_Good_Check = H_Good_Check
where id = 207154

select emodenj, enjhblr from all_data where id = 207277
update all_data set enjhblr = 'HARBORSIDE' where id = 207277

select * from all_data where id = 204058

update all_data set enjbus = null, emodenj = 9, enjtrain = 'CLIFTON', enjtrain_num = 220 where id = 204058

select * from all_data where id = 207272

update all_data set origin = 3 where id = 207272

select * from all_data where id = 205025

update all_data set 
	origin = 1
	, OSTREET = H_STREET
	, OCITY = H_CITY
	, OSTATE = H_STATE
	, OZIP = H_ZIP
	, O_Address = H_Address
	, O_formatted_address = H_formatted_address
	, O_street_number = H_street_number
	, O_route = H_route
	, O_country = H_country
	, O_administrative_area_level1 = H_administrative_area_level1
	, O_administrative_area_level2 = H_administrative_area_level2
	, O_locality = H_locality
	, O_postal_code = H_postal_code
	, O_lat = H_lat
	, O_lng = H_lng
	, O_Exact_Match = H_Exact_Match
	, O_location_type_value = H_location_type_value
	, O_types_value = H_types_value
	, O_Good_Check = H_Good_Check
where id = 205025

select * from all_data where id = 206128
update all_data set EMODENJ = 5 where id = 206128

select * from all_Data where id =207500
update all_data set ocity = 'STANHOPE' where id = 207500

select * from all_Data where id =207921

select * from all_data where d_address like '%hoboken%'

update all_data set OPLACE = '' , OSTREET = 'Lake St' , OCITY = 'Hoboken' , OSTATE = 'NJ' , OZIP = 7306 , O_Address = 'Lake St, Hoboken, NJ 07306' , O_formatted_address = 'Lake St, Jersey City, NJ 07306, USA' , O_route = 'Lake St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Hudson County' , O_locality = 'Jersey City' , O_postal_code = 7306 , O_lat = 40.7433729 , O_lng = -74.0592344 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 204004

update all_data set 
	origin = 1
	, OSTREET = H_STREET
	, OCITY = H_CITY
	, OSTATE = H_STATE
	, OZIP = H_ZIP
	, O_Address = H_Address
	, O_formatted_address = H_formatted_address
	, O_street_number = H_street_number
	, O_route = H_route
	, O_country = H_country
	, O_administrative_area_level1 = H_administrative_area_level1
	, O_administrative_area_level2 = H_administrative_area_level2
	, O_locality = H_locality
	, O_postal_code = H_postal_code
	, O_lat = H_lat
	, O_lng = H_lng
	, O_Exact_Match = H_Exact_Match
	, O_location_type_value = H_location_type_value
	, O_types_value = H_types_value
	, O_Good_Check = H_Good_Check
where id = 206213

select * from all_data where ocity = 'Lake Hopatcong'

update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'LAKE HOPATCONG' , OSTATE = 'NJ' , OZIP = 7849 , O_Address = '' , O_formatted_address = 'Lake Hopatcong, NJ 07849, USA' , O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = '' , O_locality = '' , O_postal_code = 7849 , O_lat = 40.9906067 , O_lng = -74.5756196 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 205026

select * from all_data where id = 206212

update all_data set emodenj = 5, ENJHBLR = 'BERGENLINE AVE', enjhblr_station = 'BERGENLINE AVE', enjhblr_num = 22 where id = 206212
go


--Mount Arlington Records.
select * from all_data where id = 206915

update all_data set D_administrative_area_level1 = 'NY' where id = 206915
update all_data set D_administrative_area_level1 = 'NY' where id = 206130

select * from all_data where dplace = 'MSU'

update all_data set FLAG_FLIP_TRIP = 1 where id = 205381

update all_data set OPLACE = 'MSU' , OSTREET = '1 NORMAL AVE' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = 'MSU, 1 NORMAL AVE, MONTCLAIR, NJ 07043' , O_formatted_address = 'Montclair State University, 1 Normal Ave, Montclair, NJ 07043, USA' , O_street_number = 1 , O_route = 'Normal Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.860869 , O_lng = -74.1983179 , O_exact_match = 0 , O_location_type_value = 1 , O_types_value = 2 , O_good_check = 1 where ID = 207607

select * from all_data where dcity = 'NY' and dstreet is null
--207509

update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'DOVER' , OSTATE = 'NJ' , O_Address = 'DOVER, NJ' , O_formatted_address = 'Dover, NJ, USA' , O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Morris County' , O_locality = 'Dover' , O_lat = 40.883988 , O_lng = -74.5621025 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 207509
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'NY' , DSTATE = 'NY' , D_Address = 'NY ' , D_formatted_address = 'New York, NY, USA' , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'NY' , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 207509


select * from all_data where dcity = 'hoboken' and dstreet is null

update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'HOBOKEN' , DSTATE = 'NJ' , D_Address = 'HOBOKEN, ' , D_formatted_address = 'Hoboken, NJ, USA' ,D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_lat = 40.7439905 , D_lng = -74.0323626 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206922 or id = 207508

update all_data set emodenj = 1 where id = 204261

select H_Good_Check from all_data where id = 207988

update all_data set odist = 4 where id = 207987

select odist from all_data where id = 203523

select * from all_data where ocity = 'Mountain Lakes'

update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'MOUNTAIN LAKES' , OSTATE = 'NJ' , OZIP = 7046 , O_Address = 'MOUNTAIN LAKES, NJ 07046' , O_formatted_address = 'Mountain Lakes, NJ 07046, USA' , O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Morris County' , O_locality = 'Mountain Lakes' , O_postal_code = 7046 , O_lat = 40.8923936 , O_lng = -74.4349761 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 203523

update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'MOUNTAIN LAKES' , OSTATE = 'NJ' , OZIP = 7046 , O_Address = 'MOUNTAIN LAKES, NJ 07046' , O_formatted_address = 'Mountain Lakes, NJ 07046, USA' , O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Morris County' , O_locality = 'Mountain Lakes' , O_postal_code = 7046 , O_lat = 40.8923936 , O_lng = -74.4349761 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 207515

select * from all_data where id = 205031

update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'BOONTON' , OSTATE = 'NJ' , OZIP = 7005 , O_Address = 'BOONTON, NJ 07005' , O_formatted_address = 'Boonton, NJ, USA' , O_street_number =  null, O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Morris County' , O_locality = 'Boonton' , O_postal_code = 07005 , O_lat =  40.904019, O_lng = -74.4087405  , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 205031
update all_data set DPLACE = 'RUTGERS UNIVERSITY' , DSTREET = '15 Washington Street' , DCITY = 'Newark' , DSTATE = 'NJ' , DZIP = 7102 , D_Address = 'RUTGERS, 15 Washington Street, Newark, NJ 07102' , D_formatted_address = 'Rutgers, 15 Washington Street, Newark NJ, 07102, USA' , D_street_number = 15 , D_route = 'Washington Street' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Essex County' , D_locality = 'Newark' , D_postal_code = 7102 , D_lat = 40.74414 , D_lng = -74.171299 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 205031
update all_data set amode = 3 where id = 205031

update all_data set amode = 1 where id = 207809

update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'BOONTON' , OSTATE = 'NJ' , OZIP = 7005 , O_Address = 'BOONTON, NJ 07005' , O_formatted_address = 'Boonton, NJ, USA' ,  O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Morris County' , O_locality = 'Boonton' , O_postal_code =  07005, O_lat = 40.904019 , O_lng = -74.4087405 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 203730

select * from all_data where id = 204267


select * from all_data where ocity = 'towaco' and dstreet is null

update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'TOWACO' , OSTATE = 'NJ' , OZIP = 7082 , O_Address = 'TOWACO, NJ 07082' , O_formatted_address = 'Towaco, Montville, NJ 07082, USA' ,  O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Morris County' , O_locality = 'Montville' , O_postal_code = 7082 , O_lat = 40.9232019 , O_lng = -74.3439578 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 204267
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'NEWARK' , DSTATE = 'NJ' ,  D_Address = 'NEWARK, ' , D_formatted_address = 'Newark, NJ, USA' ,  D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Essex County' , D_locality = 'Newark' , D_lat = 40.735657 , D_lng = -74.1723667 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204267

select * from all_data where id = 207992
select * from all_data where dplace = 'msu'


update all_data set origin = 1, destination = 3, dest_other = 'School', ORIGIN_OTHER = null where id = 207992

update all_data set 
 OPLACE = DPLACE
, OSTREET = DSTREET
, OCITY = DCITY
, OSTATE = DSTATE
, OZIP = DZIP
, O_Address = D_Address
, O_formatted_address = D_formatted_address
, O_street_number = D_street_number
, O_route = D_route
, O_country = D_country
, O_administrative_area_level1 = D_administrative_area_level1
, O_administrative_area_level2 = D_administrative_area_level2
, O_locality = D_locality
, O_postal_code = D_postal_code
, O_lat = D_lat
, O_lng = D_lng
, O_Exact_Match = D_Exact_Match
, O_location_type_value = D_location_type_value
, O_types_value = D_types_value
, O_Good_Check = D_Good_Check
where id = 207992

update all_data set DPLACE = 'MSU' , DSTREET = '1 NORMAL AVE' , DCITY = 'MONTCLAIR' , DSTATE = 'NJ' , DZIP = 7043 , D_Address = 'MSU, 1 NORMAL AVE, MONTCLAIR, NJ 07043' , D_formatted_address = 'Montclair State University, 1 Normal Ave, Montclair, NJ 07043, USA' , D_street_number = 1 , D_route = 'Normal Ave' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Passaic County' , D_locality = 'Montclair' , D_postal_code = 7043 , D_lat = 40.860869 , D_lng = -74.1983179 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 207992

update all_data set odist = 1 where id = 207992

--select * into all_data_bkup_12_28_15 from all_data


update all_data set 
ORIGIN = DESTINATION
, ORIGIN_OTHER = DEST_OTHER
, OPLACE = DPLACE
, OSTREET = DSTREET
, OCITY = DCITY
, OSTATE = DSTATE
, OZIP = DZIP
, O_Address = D_Address
, O_formatted_address = D_formatted_address
, O_street_number = D_street_number
, O_route = D_route
, O_country = D_country
, O_administrative_area_level1 = D_administrative_area_level1
, O_administrative_area_level2 = D_administrative_area_level2
, O_locality = D_locality
, O_postal_code = D_postal_code
, O_lat = D_lat
, O_lng = D_lng
, O_Exact_Match = D_Exact_Match
, O_location_type_value = D_location_type_value
, O_types_value = D_types_value
, O_Good_Check = D_Good_Check
, DESTINATION = ORIGIN
, DEST_OTHER = ORIGIN_OTHER
, DPLACE = OPLACE
, DSTREET = OSTREET
, DCITY = OCITY
, DSTATE = OSTATE
, DZIP = OZIP
, D_Address = O_Address
, D_formatted_address = O_formatted_address
, D_street_number = O_street_number
, D_route = O_route
, D_country = O_country
, D_administrative_area_level1 = O_administrative_area_level1
, D_administrative_area_level2 = O_administrative_area_level2
, D_locality = O_locality
, D_postal_code = O_postal_code
, D_lat = O_lat
, D_lng = O_lng
, D_Exact_Match = O_Exact_Match
, D_location_type_value = O_location_type_value
, D_types_value = O_types_value
, D_Good_Check = O_Good_Check
where id = 205033

select amode, AMODE_11T from all_data where id = 207994

select * from all_data where ocity = 'wayne' and ostreet is null

update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'WAYNE' , OSTATE = 'NJ' , OZIP = 7470 , O_Address = 'WAYNE, NJ 07470' , O_formatted_address = 'Wayne, NJ, USA' , O_street_number =  null, O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Wayne' , O_postal_code =  null, O_lat = 40.9253725 , O_lng = -74.2765441 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 207994

select * from all_data where ostate is null and stationon_key = 3

update all_data set 
	origin = 1
	, OSTREET = H_STREET
	, OCITY = H_CITY
	, OSTATE = H_STATE
	, OZIP = H_ZIP
	, O_Address = H_Address
	, O_formatted_address = H_formatted_address
	, O_street_number = H_street_number
	, O_route = H_route
	, O_country = H_country
	, O_administrative_area_level1 = H_administrative_area_level1
	, O_administrative_area_level2 = H_administrative_area_level2
	, O_locality = H_locality
	, O_postal_code = H_postal_code
	, O_lat = H_lat
	, O_lng = H_lng
	, O_Exact_Match = H_Exact_Match
	, O_location_type_value = H_location_type_value
	, O_types_value = H_types_value
	, O_Good_Check = H_Good_Check
where STATIONON_KEY = 13 and ostate is null and H_STATE is not null


update all_data set 
	origin = 1
	, OSTREET = H_STREET
	, OCITY = H_CITY
	, OSTATE = H_STATE
	, OZIP = H_ZIP
	, O_Address = H_Address
	, O_formatted_address = H_formatted_address
	, O_street_number = H_street_number
	, O_route = H_route
	, O_country = H_country
	, O_administrative_area_level1 = H_administrative_area_level1
	, O_administrative_area_level2 = H_administrative_area_level2
	, O_locality = H_locality
	, O_postal_code = H_postal_code
	, O_lat = H_lat
	, O_lng = H_lng
	, O_Exact_Match = H_Exact_Match
	, O_location_type_value = H_location_type_value
	, O_types_value = H_types_value
	, O_Good_Check = H_Good_Check
where id = 206249

select * from all_data where id = 206249

update all_data set ocity = 'LITTLE FALLS', ostate = 'NJ' where id = 206249

select * from all_data where id = 209307
update all_data set 
	origin = 1
	, OSTREET = H_STREET
	, OCITY = H_CITY
	, OSTATE = H_STATE
	, OZIP = H_ZIP
	, O_Address = H_Address
	, O_formatted_address = H_formatted_address
	, O_street_number = H_street_number
	, O_route = H_route
	, O_country = H_country
	, O_administrative_area_level1 = H_administrative_area_level1
	, O_administrative_area_level2 = H_administrative_area_level2
	, O_locality = H_locality
	, O_postal_code = H_postal_code
	, O_lat = H_lat
	, O_lng = H_lng
	, O_Exact_Match = H_Exact_Match
	, O_location_type_value = H_location_type_value
	, O_types_value = H_types_value
	, O_Good_Check = H_Good_Check
where id = 207310

select * from all_Data where id = 209307
select * from all_data where ocity = 'clifton' and ostreet is null

update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'CLIFTON' , OSTATE = 'NJ' , OZIP = 7013 , O_Address = 'CLIFTON, NJ 07013' , O_formatted_address = 'Clifton, NJ 07013, USA' , O_street_number =  null, O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'PASSAIC COUNTY' , O_locality = 'Clifton' , O_postal_code = 7013 , O_lat = 40.8663719 , O_lng = -74.1768412 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 209307

select * from all_data where ocity = 'montclair' 

update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = 'MONTCLAIR, NJ 07042' , O_formatted_address = 'Montclair, NJ 07042, USA' , O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.821948 , O_lng = -74.2120629 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 202786

update all_data set OPLACE = '' , OSTREET = '1 NORMAL AVE' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '1 NORMAL AVE, MONTCLAIR, NJ 07043' , O_formatted_address = '1 Normal Ave, Montclair, NJ 07043, USA' , O_street_number = 1 , O_route = 'Normal Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8609869 , O_lng = -74.197648 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 203328

update all_data set OPLACE = '' , OSTREET = '1 NORMAL AVE' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = '1 NORMAL AVE, MONTCLAIR, NJ 07043' , O_formatted_address = '1 Normal Ave, Montclair, NJ 07043, USA' , O_street_number = 1 , O_route = 'Normal Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8609869 , O_lng = -74.197648 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 205741

select * from all_Data where id = 206029

select * from all_data where id =  202303

select * from all_data where ostreet like '%holland%'

update all_data set OPLACE = '' , OSTREET = 'Erwin Park Rd & Holland Terrace' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = 'Erwin Park Rd & Holland Terrace, MONTCLAIR, NJ 07042' , O_formatted_address = 'Erwin Park Rd & Holland Terrace, Montclair, NJ 07042, USA' , O_street_number =  null, O_route = 'Erwin Park Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8302655 , O_lng = -74.2098085 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 202303

update all_data set 
	origin = 1
	, OSTREET = H_STREET
	, OCITY = H_CITY
	, OSTATE = H_STATE
	, OZIP = H_ZIP
	, O_Address = H_Address
	, O_formatted_address = H_formatted_address
	, O_street_number = H_street_number
	, O_route = H_route
	, O_country = H_country
	, O_administrative_area_level1 = H_administrative_area_level1
	, O_administrative_area_level2 = H_administrative_area_level2
	, O_locality = H_locality
	, O_postal_code = H_postal_code
	, O_lat = H_lat
	, O_lng = H_lng
	, O_Exact_Match = H_Exact_Match
	, O_location_type_value = H_location_type_value
	, O_types_value = H_types_value
	, O_Good_Check = H_Good_Check
where id = 204343

select * from all_data where dcity = 'newark' and dstreet is null

update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = 'MONTCLAIR, NJ 07042' , O_formatted_address = 'Montclair, NJ 07042, USA' , O_street_number =  null, O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.821948 , O_lng = -74.2120629 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 206859
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'NEWARK' , DSTATE = 'NJ' , DZIP =  null, D_Address = 'NEWARK, NJ ' , D_formatted_address = 'Newark, NJ, USA' , D_street_number =  null, D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Essex County' , D_locality = 'Newark' , D_postal_code =  null, D_lat = 40.735657 , D_lng = -74.1723667 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206859

select * from all_data where id = 204532

select * from all_Data where ostreet like '%montclair ave%'

update all_data set OPLACE = '' , OSTREET = '6 MONTCLAIR AVE' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '6 MONTCLAIR AVE, MONTCLAIR, NJ ' , O_formatted_address = '6 Montclair Ave, Montclair, NJ 07042, USA' , O_street_number = 6 , O_route = 'Montclair Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8175482 , O_lng = -74.2090364 , O_exact_match = 1 , O_location_type_value = 2 , O_types_value = 1 , O_good_check = 1 where ID = 204532

update all_data set Origin = 3, origin_other = null, OPLACE = '' , OSTREET = '' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = 'MONTCLAIR, NJ 07042' , O_formatted_address = 'Montclair, NJ 07042, USA' , O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.821948 , O_lng = -74.2120629 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID =206910

select * from all_data where id = 209947

select FLAG_FLIP_TRIP from all_data where id = 210953

update all_data set odist = 8, ODIST_SPEC = 14, amode = 1 where id = 209947

select * from all_data where id = 214047

update all_data set OPLACE = '' , OSTREET = '44 Hill St' , OCITY = 'Bloomfield' , OSTATE = 'NJ' , OZIP = 7003 , O_Address = '44 Hill St, Bloomfield NJ 07003' , O_formatted_address = '44 Hill St, Bloomfield NJ' , O_street_number = 44 , O_route = 'Hill St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Bloomfield' , O_postal_code = 7003 , O_lat = 40.78648 , O_lng = -74.193397 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 214047

select * from all_data where id = 212620

select FLAG_FLIP_TRIP from all_data where id = 212620
update all_data set FLAG_FLIP_TRIP = 1 where id = 212620

select * from all_data where id = 213006
update all_data set ocity = 'BLOOMFIELD' where id = 213006

select * from all_data where id = 202849

update all_data set emodeny = 2 where id = 205382
update all_data set emodeny = 2 where id = 203742

update all_data set emodenj = 1 where id = 205349

select emodenj from all_data where id = 205476
update all_data set emodenj = 5 where id = 205476

update all_data set emodenj = 1 where id = 206396
update all_data set emodenj = 5 where id = 206212
update all_data set emodenj = 5 where id = 202284
update all_data set emodenj = 5 where id = 205170

update all_data set emodenj = 5 where id = 207650

select * from all_Data where dstreet like '%lake%'

update all_data set DPLACE = '' , DSTREET = 'Lake St' , DCITY = 'Jersey City' , DSTATE = 'NJ' , DZIP = 7306 , D_Address = 'Lake St, Jersey City, NJ 07306' , D_formatted_address = 'Lake St, Jersey City, NJ 07306' , D_street_number =  null, D_route = 'Lake St' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Jersey City' , D_postal_code = 7306 , D_lat = 40.743252 , D_lng = -74.058931 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 207921


update all_data set emodenj = 1 where id = 205475

select FLAG_FLIP_TRIP from all_Data where id = 214746
update all_data set FLAG_FLIP_TRIP = 1 where id = 214746

Update all_data set emodenj = 5 where ID = 202344 or ID = 204041 or ID = 205128 or ID = 206221 OR
    ID = 206282 or ID = 206311 or ID = 207274 or ID = 207277

select * from all_Data where id = 212835

select * from all_data where id = 207921

update a set 
a.OPLACE = b.OPLACE
,a.OSTREET = b.OSTREET
,a.OCITY = b.OCITY
,a.OSTATE = b.OSTATE
,a.OZIP = b.OZIP
,a.O_Address = b.O_Address
,a.O_formatted_address = b.O_formatted_address
,a.O_street_number = b.O_street_number
,a.O_route = b.O_route
,a.O_country = b.O_country
,a.O_administrative_area_level1 = b.O_administrative_area_level1
,a.O_administrative_area_level2 = b.O_administrative_area_level2
,a.O_locality = b.O_locality
,a.O_postal_code = b.O_postal_code
,a.O_lat = b.O_lat
,a.O_lng = b.O_lng
,a.O_Exact_Match = b.O_Exact_Match
,a.O_location_type_value = b.O_location_type_value
,a.O_types_value = b.O_types_value
,a.O_Good_Check = b.O_Good_Check
from all_data a
join
all_data_bkup_12_28_15 b
on a.id = b.id 
where a.id = 207921

select * from all_data where id = 202751

update all_data set emodeny = 1, STATIONOFF = 1 where id = 203208
update all_data set emodeny = 3, STATIONOFF = 2 where id = 202501
update all_data set emodeny = 3 where id = 204002

update all_Data set emodenj = 4 where id = 206997
Update all_data set STATIONOFF_OTHER = 'BLOOMFIELD', stationoff_other_num = 418 where id = 202751
update all_data set emodenj = 9, ENJTRAIN = 'ELIZABETH', enjtrain_num = 911 where id =  202751

select STATIONOFF, STATIONOFF_OTHER from all_Data where id = 205380

update all_data set emodenj = 6 where id = 204103

update all_data set STATIONOFF_OTHER = 'NEWARK BROAD ST', stationoff_other_num = 519, emodenj = 9, enjtrain = 'MAPLEWOOD', enjtrain_num = 510 where id = 205380
update all_data set STATIONOFF_OTHER = 'NEWARK BROAD ST', stationoff_other_num = 519, emodenj = 9, enjtrain = 'MAPLEWOOD', enjtrain_num = 510 where id = 205429

select * from all_data where id = 205429

update all_data set emodenj = 6 where id = 203526 or ID = 206552

select * from all_data where id = 205033

select * from all_Data where id = 207988

alter table all_data
add FLAG_MARK_BAD int

update all_data set flag_mark_bad = 1 where id = 207988

select * from all_data where id = 212089

update all_data set emodenj = 9, enjtrain = 'NEWARK BROAD ST', enjtrain_num = 519, stationoff_other_num = 504 where id = 207730

update all_data set emodenj = 7 where id = 204154

select * from all_data where dcity = 'New York' and dstreet is null
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'NEW YORK' , DSTATE = 'NY' , DZIP =  null,
	 D_Address = 'NEW YORK, ' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , 
	 D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , 
	 D_locality = 'NY' , D_postal_code =  null, D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , 
	 D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 
	, tonytrip = 1, emodeny = 1
	where ID = 212089

select * from all_data 
update all_data set tonytrip = 1, emodeny = 1, stationoff = 1, stationoff_other = null, 
	stationoff_other_num = 1 where id = 203445

update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'NEW YORK' , DSTATE = 'NY' , DZIP =  null,
	 D_Address = 'NEW YORK, ' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , 
	 D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , 
	 D_locality = 'NY' , D_postal_code =  null, D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , 
	 D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 
	where ID = 203445

select * from all_data where dcity = 'Montclair' and dstreet is null

update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'MONTCLAIR' , DSTATE = 'NJ' , DZIP = 7042 , D_Address = 'MONTCLAIR, NJ 07042' , D_formatted_address = 'Montclair, NJ 07042, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Essex County' , D_locality = 'Montclair' , D_postal_code = 7042 , D_lat = 40.821948 , D_lng = -74.2120629 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 207916			


select * from all_data where id = 205969

update all_data set DPLACE = '' , DSTREET = '' , DCITY = '' , DSTATE = '' , DZIP = null , D_Address = '' , D_formatted_address = '' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = '' , D_locality = '' , D_postal_code = null , D_lat = null , D_lng = null , D_exact_match = 0 , D_location_type_value = 0 , D_types_value = 0 , D_good_check = 0 where ID = 204947

select * from all_data where dcity = 'South Amboy'

update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'South Amboy' , DSTATE = 'NJ' , DZIP = 8879 , D_Address = 'South Amboy, NJ, 08879' , D_formatted_address = 'South Amboy, NJ, 08879' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Middlesex County' , D_locality = 'South Amboy' , D_postal_code = 8879 , D_lat = 40.482082 , D_lng = -74.285082 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 206483

select * from all_Data 

update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = 'MONTCLAIR, NJ 07042' , O_formatted_address = 'Montclair, NJ 07042, USA' , O_street_number =  '', O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.821948 , O_lng = -74.2120629, O_exact_match = 1, O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where id = 206075
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'MONTCLAIR' , DSTATE = 'NJ' , DZIP = 7042 , D_Address = 'MONTCLAIR, NJ 07042' , D_formatted_address = 'Montclair, NJ 07042, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Essex County' , D_locality = 'Montclair' , D_postal_code = 7042 , D_lat = 40.821948 , D_lng = -74.2120629 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206075	


update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'MONTCLAIR' , DSTATE = 'NJ' , DZIP = 7042 , D_Address = 'MONTCLAIR, NJ 07042' , D_formatted_address = 'Montclair, NJ 07042, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Essex County' , D_locality = 'Montclair' , D_postal_code = 7042 , D_lat = 40.821948 , D_lng = -74.2120629 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206478


select * from all_data where
	(origin = 1 and ocity <> h_city)
	 or
	(DESTINATION = 1 and dcity <> h_city)
order by h_city
--142 records.

select * from all_data where
	(origin = 1 and ocity <> h_city)

select * from all_data where
	(DESTINATION = 1 and dcity <> h_city)
order by h_city
	--16 rows

select * from all_Data where origin = 1 and O_Good_Check = 0 and h_city is not null

select * from all_data where destination = 1 and dcity is null and h_city is not null

--Updating Origin to Home Address when HOme is Null.	 
update all_data set 
	origin = 1
	, OSTREET = H_STREET
	, OCITY = H_CITY
	, OSTATE = H_STATE
	, OZIP = H_ZIP
	, O_Address = H_Address
	, O_formatted_address = H_formatted_address
	, O_street_number = H_street_number
	, O_route = H_route
	, O_country = H_country
	, O_administrative_area_level1 = H_administrative_area_level1
	, O_administrative_area_level2 = H_administrative_area_level2
	, O_locality = H_locality
	, O_postal_code = H_postal_code
	, O_lat = H_lat
	, O_lng = H_lng
	, O_Exact_Match = H_Exact_Match
	, O_location_type_value = H_location_type_value
	, O_types_value = H_types_value
	, O_Good_Check = H_Good_Check
where id = 204632 or id = 203075 or id = 203311 or id = 204634
 or id = 205601 or id = 205847 or id = 209370 or id = 210717
 or id = 210957 or id = 210965 or id = 212451 or id = 212505
 or id = 212520 or id = 212555 or id = 212610 or id = 212703
 or id = 213779 or id = 214267 or id = 214511 or id = 214512
 or id = 202331 or id = 204074 or id = 207709 or id = 209668
 or id = 202280 or id = 208409 or id = 209436 or id = 209437
 or id = 210569 or id = 205788 or id = 213025 or id = 203142
 or id = 204885 or id = 205844 or id = 205898 or id = 208686
 or id = 209484 or id = 209849 or id = 210121 or id = 212143
 or id = 212198 or id = 213490 or id = 213500 or id = 213525
 or id = 213622 or id = 213807 or id = 213809 or id = 213817
 or id = 202468 or id = 207303 or id = 207720 or id = 207393
 or id = 207394 or id = 203143 or id = 203438 or id = 203504
 or id = 203513 or id = 203598 or id = 203614 or id = 203629
 or id = 203836 or id = 203938 or id = 203940 or id = 204008
 or id = 204344 or id = 204616 or id = 204894 or id = 205168
 or id = 205222 or id = 205258 or id = 205304 or id = 205433
 or id = 205586 or id = 206169 or id = 206174 or id = 206177
 or id = 206275 or id = 206354 or id = 206495 or id = 206509
 or id = 206691 or id = 206951 or id = 208295 or id = 208414
 or id = 208543 or id = 209467 or id = 209472 or id = 209573
 or id = 209708 or id = 209944 or id = 210415 or id = 210571
 or id = 210659 or id = 210908 or id = 211029 or id = 211156
 or id = 211198 or id = 214239 or id = 202152 or id = 202177
 or id = 202417 or id = 202426 or id = 202430 or id = 202575
 or id = 206224 or id = 204058 or id = 204934 or id = 209546
 or id = 207844 or id = 207652 or id = 210528 or id = 205593
 or id = 209422 or id = 202450 or id = 205114 or id = 203740
 or id = 204273



 update all_data set 
DSTREET = H_STREET
, DCITY = H_CITY
, DSTATE = H_STATE
, DZIP = H_ZIP
, D_Address = H_Address
, D_formatted_address = H_formatted_address
, D_street_number = H_street_number
, D_route = H_route
, D_country = H_country
, D_administrative_area_level1 = H_administrative_area_level1
, D_administrative_area_level2 = H_administrative_area_level2
, D_locality = H_locality
, D_postal_code = H_postal_code
, D_lat = H_lat
, D_lng = H_lng
, D_Exact_Match = H_Exact_Match
, D_location_type_value = H_location_type_value
, D_types_value = H_types_value
, D_Good_Check = H_Good_Check
where id = 203423
 or id = 205751
 or id = 205672


--alter table all_data
--drop column h_post_box, h_street_address

update all_data set origin = 1, destination = 2 where id = 214013 or id = 203445

select * from all_data where origin = 1 and ocity <> H_city and oplace like '%station%'

update all_data set origin = 3 where origin = 1 and origin_other = 'school'

select * from all_data where oplace like '%station%'
order by STATIONON_KEY

select * from all_data where id= 204132

--Set origin to null.
update all_data set flag_mark_Bad = 1 where id =  204132

update all_data set stationon_key = 17 where id = 202165
or id = 210663

update all_data set stationon_key = 16 where id = 203205
or id = 203332
or id = 203345

update all_data set stationon_key = 19 where id = 203133


select return_1, count(*) from all_data
group by return_1

--Set multiple response to null when all were blank.

select [RETURN],  count(*) from all_data 
where return_1 = 0 and return_2 = 0 and return_3 = 0 and return_4 = 0 and return_5 = 0 and return_6 = 0
group by [return]

update all_data set 
	return_1 = null,
	return_2 = null,
	return_3 = null,
	return_4 = null,
	return_5 = null,
	return_6 = null
where return_1 = 0 and return_2 = 0 and return_3 = 0 and return_4 = 0 and return_5 = 0 and return_6 = 0

select * into all_data_bkup_12_29_15 from all_Data

alter table all_data
alter column return_1 int default null

alter table all_data
add Flag_Possible_Duplicate int

update all_data set flag_possible_duplicate = 1 where 
id = 206284 or id = 202207
 or id = 206287 or id = 205201 or id = 214535 or id = 202848 or id = 213549 or id = 210558 or id = 206300 or id = 212210
 or id = 212141 or id = 213533 or id = 204093 or id = 206939 or id = 204601 or id = 211430 or id = 206162 or id = 207518
 or id = 206924 or id = 203539 or id = 207655 or id = 208554 or id = 212427 or id = 203067 or id = 206395 or id = 203529
 or id = 207708 or id = 207516 or id = 206925 or id = 212311 or id = 213739 or id = 205243 or id = 210779 or id = 212789
 or id = 202484 or id = 202440 or id = 207705 or id = 203520 or id = 205125 or id = 207513 or id = 208951 or id = 212041
 or id = 213749 or id = 202019 or id = 202219 or id = 206283 or id = 207543 or id = 206948 or id = 207521 or id = 206926
 or id = 207741 or id = 202013 or id = 211436 or id = 204255 or id = 207606 or id = 204538 or id = 212325 or id = 213544
 or id = 205064 or id = 210279 or id = 206935 or id = 207538 or id = 205553 or id = 205847 or id = 212083 or id = 213497
 or id = 206933 or id = 207530 or id = 213891 or id = 212379 or id = 204248 or id = 213485 or id = 204596 or id = 207535
 or id = 210942 or id = 206487 or id = 207916 or id = 203627 or id = 213826 or id = 204444 or id = 210560 or id = 213799
 or id = 203845 or id = 203546 or id = 204272 or id = 202554 or id = 207740 or id = 203547 or id = 213491 or id = 210437
 or id = 208678 or id = 206707

 select TAX$, count(*) from all_data 
	group by tax$
	order by tax$

update all_data set tax$ = 380 where tax$ > 380

select HH#, child, count(*) as num  from all_data where hh# = 1 and child = 1
group by hh#, child


update all_data set [FLAG_HH#=1_AND_CHILD=1] = 1 where hh# = 1 and child = 1

select id from all_data where [FLAG_HH#=1_AND_CHILD=1] = 1

update all_data set HH# = 2 where hh# = 1 and child = 1

update all_data set [FLAG_HH#=1_AND_CHILD=1] = null

select * from all_data 
	where O_locality like 'Newark' 
		or o_locality like 'new york' 
		or ocity like 'hoboken' 
		or o_locality like 'jersey city'
		or O_administrative_area_level1 like 'ny'

select * from all_data where o_lng > -74.170937 and o_lng <> 0
order by ocity

select * from all_data where id = 206824

update all_data set FLAG_FLIP_TRIP = 1 where id = 206824 or id = 214746

update all_data set
	oplace = null,
	 OSTREET = H_STREET
	, OCITY = H_CITY
	, OSTATE = H_STATE
	, OZIP = H_ZIP
	, O_Address = H_Address
	, O_formatted_address = H_formatted_address
	, O_street_number = H_street_number
	, O_route = H_route
	, O_country = H_country
	, O_administrative_area_level1 = H_administrative_area_level1
	, O_administrative_area_level2 = H_administrative_area_level2
	, O_locality = H_locality
	, O_postal_code = H_postal_code
	, O_lat = H_lat
	, O_lng = H_lng
	, O_Exact_Match = H_Exact_Match
	, O_location_type_value = H_location_type_value
	, O_types_value = H_types_value
	, O_Good_Check = H_Good_Check
where id = 204004
or id = 206238
or id = 207643

update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = 'MONTCLAIR, NJ 07042' , O_formatted_address = 'Montclair, NJ 07042, USA' , O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.821948 , O_lng = -74.2120629 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 
where ID = 205393


select * from all_data where ocity = 'wayne' and ostreet is null
update all_data set OPLACE = '' , OSTREET = 'Lake St' , OCITY = 'Jersey City' , OSTATE = 'NJ' , OZIP = 7306 , O_Address = 'Lake St, Jersey City, NJ 07306' , O_formatted_address = 'Lake St, Jersey City, NJ 07306' , O_street_number =  null, O_route = 'Lake St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Hudson County' , O_locality = 'Jersey City' , O_postal_code = 7306 , O_lat = 40.743252 , O_lng = -74.058931 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 2 , O_good_check = 1 where ID = 202802

select * from all_data where id = 214746
update all_data set 
ORIGIN = DESTINATION
, ORIGIN_OTHER = DEST_OTHER
, OPLACE = DPLACE
, OSTREET = DSTREET
, OCITY = DCITY
, OSTATE = DSTATE
, OZIP = DZIP
, O_Address = D_Address
, O_formatted_address = D_formatted_address
, O_street_number = D_street_number
, O_route = D_route
, O_country = D_country
, O_administrative_area_level1 = D_administrative_area_level1
, O_administrative_area_level2 = D_administrative_area_level2
, O_locality = D_locality
, O_postal_code = D_postal_code
, O_lat = D_lat
, O_lng = D_lng
, O_Exact_Match = D_Exact_Match
, O_location_type_value = D_location_type_value
, O_types_value = D_types_value
, O_Good_Check = D_Good_Check
, DESTINATION = ORIGIN
, DEST_OTHER = ORIGIN_OTHER
, DPLACE = OPLACE
, DSTREET = OSTREET
, DCITY = OCITY
, DSTATE = OSTATE
, DZIP = OZIP
, D_Address = O_Address
, D_formatted_address = O_formatted_address
, D_street_number = O_street_number
, D_route = O_route
, D_country = O_country
, D_administrative_area_level1 = O_administrative_area_level1
, D_administrative_area_level2 = O_administrative_area_level2
, D_locality = O_locality
, D_postal_code = O_postal_code
, D_lat = O_lat
, D_lng = O_lng
, D_Exact_Match = O_Exact_Match
, D_location_type_value = O_location_type_value
, D_types_value = O_types_value
, D_Good_Check = O_Good_Check
where id = 202185
--214746

update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = 'MONTCLAIR, NJ 07042' , O_formatted_address = 'Montclair, NJ 07042, USA' , O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.821948 , O_lng = -74.2120629 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 
where ID = 202185
	
--Update Origin to Stationon Town?
select * from all_data where o_good_check = 0 and (odist < 6 or AMODE = 9 or amode = 11)
order by stationon_key

select * from all_data where amode = 9 and odist > 5

alter table all_data 
add station nvarchar(50)
	, station_lat float
	, station_lng float

update a set
	a.station = b.station
	, station_lat = lat
	, station_lng = lng
from all_data a
left outer join
Stationon_Address b
on a.stationon_key = b.Code





--Checking Odist with straight-line distance from origin to station.

create view odist_table as 
select 
	a.id
	,distance_miles
	,reported_distance
	, case
		when (distance_miles - reported_distance) <= 0 then 0
		when (distance_miles - reported_distance) <= 1 and (distance_miles - reported_distance) > 0 then 1
		when (distance_miles - reported_distance) <= 5 and (distance_miles - reported_distance) > 1 then 2
		when (distance_miles - reported_distance) <= 10 and (distance_miles - reported_distance) > 5 then 3
		when (distance_miles - reported_distance) > 10 then 4
	  end as odist_flag
	, case 
		when O_Good_Check = 0 and D_Good_Check = 0 then 'bad record'
		when O_Good_Check = 0 and D_Good_Check <> 0 then 'bad o'
		when O_Good_Check <> 0 and D_Good_Check = 0 then 'bad d'
	  end as good_bad_record
	, STATIONON_KEY
	, oplace, ostreet, ocity, ostate, ozip, o_lat, o_lng
	, routenum
	from (
		select 
			id
			, case
				when (o_lat is not null and o_lat <> 0) and station_lat is not null
					then 
					(geography::Point(o_lat, o_lng, 4326)).STDistance(geography::Point(station_lat, station_lng, 4326))
				else null
			  end as distance
			 , case
				when (o_lat is not null and o_lat <> 0) and station_lat is not null
					then 
					(geography::Point(o_lat, o_lng, 4326)).STDistance(geography::Point(station_lat, station_lng, 4326))/1000*.621371
				else null
			end as distance_miles
			,case
				when odist = 1 then .25
				when odist = 2 then .5
				when odist = 3 then 1
				when odist = 4 then 2
				when odist = 5 then 3
				when odist = 6 then 5
				when odist = 7 then 10
				when odist = 8 then 
					case when odist_spec is null then 3000
					else ODIST_SPEC
					end
				else null
			end as reported_distance
			, ODIST_SPEC
			, amode
			, O_Good_Check
			, D_Good_Check
			from all_data)a
			left outer join 
				(select id
						, stationon_key
						, oplace, ostreet, ocity, ostate, ozip, o_lat, o_lng
						, routenum
					from all_data)b
			on a.id = b.id
			--where o_dist_flag = 0 and reported_distance > 2
			--order by odist_flag, distance_miles


alter table all_data 
add flag_different_line int

update all_data set flag_different_line = 1 where id = 211049

select * from all_data where id = 205490


select * from all_Data where ozip = 07043 and ostreet is null

update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = 'MONTCLAIR, NJ 07043' , O_formatted_address = 'Montclair, NJ 07043, USA' , O_street_number = null , O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = '' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8400532 , O_lng = -74.2003231 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 210538

update all_data set 
ORIGIN = DESTINATION
, ORIGIN_OTHER = DEST_OTHER
, OPLACE = DPLACE
, OSTREET = DSTREET
, OCITY = DCITY
, OSTATE = DSTATE
, OZIP = DZIP
, O_Address = D_Address
, O_formatted_address = D_formatted_address
, O_street_number = D_street_number
, O_route = D_route
, O_country = D_country
, O_administrative_area_level1 = D_administrative_area_level1
, O_administrative_area_level2 = D_administrative_area_level2
, O_locality = D_locality
, O_postal_code = D_postal_code
, O_lat = D_lat
, O_lng = D_lng
, O_Exact_Match = D_Exact_Match
, O_location_type_value = D_location_type_value
, O_types_value = D_types_value
, O_Good_Check = D_Good_Check
, DESTINATION = ORIGIN
, DEST_OTHER = ORIGIN_OTHER
, DPLACE = OPLACE
, DSTREET = OSTREET
, DCITY = OCITY
, DSTATE = OSTATE
, DZIP = OZIP
, D_Address = O_Address
, D_formatted_address = O_formatted_address
, D_street_number = O_street_number
, D_route = O_route
, D_country = O_country
, D_administrative_area_level1 = O_administrative_area_level1
, D_administrative_area_level2 = O_administrative_area_level2
, D_locality = O_locality
, D_postal_code = O_postal_code
, D_lat = O_lat
, D_lng = O_lng
, D_Exact_Match = O_Exact_Match
, D_location_type_value = O_location_type_value
, D_types_value = O_types_value
, D_Good_Check = O_Good_Check
where id = 203336

alter table all_data
add flag_njt_review	int

update all_data set flag_njt_review = 1 where id = 205490 or id = 206028


select * from all_data where id = 207607

select * from all_data_bkup_11_20_15 where id = 207607

update all_data set 
 DPLACE = OPLACE
, DSTREET = OSTREET
, DCITY = OCITY
, DSTATE = OSTATE
, DZIP = OZIP
, D_Address = O_Address
, D_formatted_address = O_formatted_address
, D_street_number = O_street_number
, D_route = O_route
, D_country = O_country
, D_administrative_area_level1 = O_administrative_area_level1
, D_administrative_area_level2 = O_administrative_area_level2
, D_locality = O_locality
, D_postal_code = O_postal_code
, D_lat = O_lat
, D_lng = O_lng
, D_Exact_Match = O_Exact_Match
, D_location_type_value = O_location_type_value
, D_types_value = O_types_value
, D_Good_Check = O_Good_Check
where id = 207607

update a set 
a.OPLACE = b.OPLACE
,a.OSTREET = b.OSTREET
,a.OCITY = b.OCITY
,a.OSTATE = b.OSTATE
,a.OZIP = b.OZIP
,a.O_Address = b.O_Address
,a.O_formatted_address = b.O_formatted_address
,a.O_street_number = b.O_street_number
,a.O_route = b.O_route
,a.O_country = b.O_country
,a.O_administrative_area_level1 = b.O_administrative_area_level1
,a.O_administrative_area_level2 = b.O_administrative_area_level2
,a.O_locality = b.O_locality
,a.O_postal_code = b.O_postal_code
,a.O_lat = b.O_lat
,a.O_lng = b.O_lng
,a.O_Exact_Match = b.O_Exact_Match
,a.O_location_type_value = b.O_location_type_value
,a.O_types_value = b.O_types_value
,a.O_Good_Check = b.O_Good_Check
from all_data a
left outer join
all_data_bkup_11_20_15 b
on a.id = b.id
where a.id = 207607


update all_data set flag_different_line = 1 where id = 203639


select * from all_data where id = 204132

update all_data set stationon_key = 19 where id = 204132



update all_data set flag_njt_review = 1 where id = 214230 or id = 204132
update all_data set FLAG_MARK_BAD = 1 where id = 204132

update all_data set OPLACE = 'Keils Pharmacy' , OSTREET = '732 Valley Rd' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = 'Keils Pharmacy, 732 Valley Rd, MONTCLAIR, NJ 07043' , O_formatted_address = 'Keils Pharmacy, 732 Valley Rd, MONTCLAIR, NJ 07043' , O_street_number = 732 , O_route = 'Valley Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.848758 , O_lng = -74.204148 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 209789


select a.id, a.stationon_key, b.stationon_key 
from all_data a
left outer join
all_data_bkup_11_20_15 b
on a.id = b.id
where a.stationon_key <> b.stationon_key

select * from all_data where id =204049


select * from all_data where ocity = 'bloomfield' and ostreet is null

update all_data set flag_njt_review = 1 where id = 206852

update all_data set OPLACE = '' , OSTREET = '47 WALNUT STREET' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = ' 47 WALNUT STREET, Montclair, NJ 07042' , O_formatted_address = '47 Walnut St, Montclair, NJ, 07042' , O_street_number = 47 , O_route = 'Walnut St' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 07042 , O_lat = 40.813872 , O_lng = -74.206874 , O_exact_match = 0 , O_location_type_value = 2 , O_types_value = 1 , O_good_check = 1 
where ID = 202037

update all_data set stationoff = 3, stationoff_other_num = null, stationoff_other = null, stationon_key = 15 where id = 204164
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'BLOOMFIELD' , OSTATE = 'NJ' , OZIP = 7003 , O_Address = 'NJ 07003' , O_formatted_address = 'Bloomfield, NJ 07003, USA' , O_street_number = null , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'NULL' , O_locality = 'Bloomfield' , O_postal_code = 7003 , O_lat = 40.7989068 , O_lng = -74.1885825 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 202802
update all_data set flag_njt_review = 1, flag_different_line = 1 where id = 211049 or id = 204049




update all_data set 
 DPLACE = OPLACE
, DSTREET = OSTREET
, DCITY = OCITY
, DSTATE = OSTATE
, DZIP = OZIP
, D_Address = O_Address
, D_formatted_address = O_formatted_address
, D_street_number = O_street_number
, D_route = O_route
, D_country = O_country
, D_administrative_area_level1 = O_administrative_area_level1
, D_administrative_area_level2 = O_administrative_area_level2
, D_locality = O_locality
, D_postal_code = O_postal_code
, D_lat = O_lat
, D_lng = O_lng
, D_Exact_Match = O_Exact_Match
, D_location_type_value = O_location_type_value
, D_types_value = O_types_value
, D_Good_Check = O_Good_Check
where id = 202706

update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = 'MONTCLAIR, NJ 07043' , O_formatted_address = 'Montclair, NJ 07043, USA' , O_street_number = null , O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8400532 , O_lng = -74.2003231 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 
where ID = 202706


select * from all_data where id = 214258


select * from count_sheet_data where password = 202551

update all_data set stationon_key = 16, stationoff = 3, stationoff_other = null
where id = 205385


update all_data set 
destination = origin
, dest_other = origin_other
, DPLACE = OPLACE
, DSTREET = OSTREET
, DCITY = OCITY
, DSTATE = OSTATE
, DZIP = OZIP
, D_Address = O_Address
, D_formatted_address = O_formatted_address
, D_street_number = O_street_number
, D_route = O_route
, D_country = O_country
, D_administrative_area_level1 = O_administrative_area_level1
, D_administrative_area_level2 = O_administrative_area_level2
, D_locality = O_locality
, D_postal_code = O_postal_code
, D_lat = O_lat
, D_lng = O_lng
, D_Exact_Match = O_Exact_Match
, D_location_type_value = O_location_type_value
, D_types_value = O_types_value
, D_Good_Check = O_Good_Check
where id = 207900

select * from all_data where id = 206076

select * from all_data where ocity = 'hackettstown' and ostreet is null
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'HACKETTSTOWN' , OSTATE = 'NJ' , OZIP = 07840 , O_Address = 'HACKETTSTOWN, NJ 07840' , O_formatted_address = 'Hackettstown, NJ, USA' , O_street_number = null , O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Warren County' , O_locality = 'Hackettstown' , O_postal_code =  07840, O_lat = 40.8539879 , O_lng = -74.8290555 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 207900

update all_data set 
ORIGIN = DESTINATION
, ORIGIN_OTHER = DEST_OTHER
, OPLACE = DPLACE
, OSTREET = DSTREET
, OCITY = DCITY
, OSTATE = DSTATE
, OZIP = DZIP
, O_Address = D_Address
, O_formatted_address = D_formatted_address
, O_street_number = D_street_number
, O_route = D_route
, O_country = D_country
, O_administrative_area_level1 = D_administrative_area_level1
, O_administrative_area_level2 = D_administrative_area_level2
, O_locality = D_locality
, O_postal_code = D_postal_code
, O_lat = D_lat
, O_lng = D_lng
, O_Exact_Match = D_Exact_Match
, O_location_type_value = D_location_type_value
, O_types_value = D_types_value
, O_Good_Check = D_Good_Check
, DESTINATION = ORIGIN
, DEST_OTHER = ORIGIN_OTHER
, DPLACE = OPLACE
, DSTREET = OSTREET
, DCITY = OCITY
, DSTATE = OSTATE
, DZIP = OZIP
, D_Address = O_Address
, D_formatted_address = O_formatted_address
, D_street_number = O_street_number
, D_route = O_route
, D_country = O_country
, D_administrative_area_level1 = O_administrative_area_level1
, D_administrative_area_level2 = O_administrative_area_level2
, D_locality = O_locality
, D_postal_code = O_postal_code
, D_lat = O_lat
, D_lng = O_lng
, D_Exact_Match = O_Exact_Match
, D_location_type_value = O_location_type_value
, D_types_value = O_types_value
, D_Good_Check = O_Good_Check
where id =206076 or id = 202747


select * into all_data_bkup_1_3_16 from all_Data
go

update all_data set odist = 1 where id = 209729
update all_data set odist = 1 where id = 204103
update all_data set odist = 1 where id = 202710
update all_data set odist = 1 where id = 213006
update all_data set odist = 1 where id = 204777
update all_data set odist = 1 where id = 203839
update all_data set odist = 1 where id = 204343
update all_data set odist = 1 where id = 209377
update all_data set odist = 1 where id = 212555
update all_data set odist = 1 where id = 206078
update all_data set odist = 2 where id = 205961
update all_data set odist = 2 where id = 209471
update all_data set odist = 2 where id = 202079
update all_data set odist = 2 where id = 206694
update all_data set odist = 2 where id = 214247
update all_data set odist = 2 where id = 209947
update all_data set odist = 2 where id = 203351
update all_data set odist = 2 where id = 205891
update all_data set odist = 3 where id = 203334
update all_data set odist = 3 where id = 212486
update all_data set odist = 3 where id = 212156
update all_data set odist = 3 where id = 210913
update all_data set odist = 3 where id = 207903
update all_data set odist = 3 where id = 211201
update all_data set odist = 3 where id = 214267
update all_data set odist = 3 where id = 213842
update all_data set odist = 3 where id = 204357
update all_data set odist = 3 where id = 205958
update all_data set odist = 3 where id = 205785
update all_data set odist = 3 where id = 202372
update all_data set odist = 3 where id = 209426
update all_data set odist = 3 where id = 206961
update all_data set odist = 3 where id = 209468
update all_data set odist = 3 where id = 203010
update all_data set odist = 3 where id = 210923
update all_data set odist = 3 where id = 206859
update all_data set odist = 3 where id = 203564
update all_data set odist = 3 where id = 101381
update all_data set odist = 3 where id = 205391
update all_data set odist = 3 where id = 205152
update all_data set odist = 3 where id = 205662
update all_data set odist = 3 where id = 203445
update all_data set odist = 3 where id = 206984
update all_data set odist = 3 where id = 205597
update all_data set odist = 4 where id = 206914
update all_data set odist = 4 where id = 213825
update all_data set odist = 4 where id = 206425
update all_data set odist = 4 where id = 203607
update all_data set odist = 4 where id = 206910
update all_data set odist = 4 where id = 204225
update all_data set odist = 4 where id = 206320
update all_data set odist = 4 where id = 203992
update all_data set odist = 4 where id = 210702
update all_data set odist = 4 where id = 206426
update all_data set odist = 4 where id = 202309
update all_data set odist = 4 where id = 206491
update all_data set odist = 4 where id = 209435
update all_data set odist = 4 where id = 206422
update all_data set odist = 4 where id = 210114
update all_data set odist = 4 where id = 207987
update all_data set odist = 4 where id = 210066
update all_data set odist = 4 where id = 208565
update all_data set odist = 4 where id = 211057
update all_data set odist = 4 where id = 209749
update all_data set odist = 4 where id = 207184
update all_data set odist = 4 where id = 203827
update all_data set odist = 4 where id = 212004
update all_data set odist = 4 where id = 209051
update all_data set odist = 4 where id = 214746
update all_data set odist = 4 where id = 214729
update all_data set odist = 4 where id = 210929
update all_data set odist = 4 where id = 209935
update all_data set odist = 4 where id = 202606
update all_data set odist = 4 where id = 207514
update all_data set odist = 4 where id = 214245
update all_data set odist = 4 where id = 206944
update all_data set odist = 4 where id = 207707
update all_data set odist = 4 where id = 210715
update all_data set odist = 4 where id = 211418
update all_data set odist = 4 where id = 212827
update all_data set odist = 4 where id = 211079
update all_data set odist = 4 where id = 206156
update all_data set odist = 4 where id = 205599
update all_data set odist = 4 where id = 209302
update all_data set odist = 4 where id = 205085
update all_data set odist = 4 where id = 210699
update all_data set odist = 4 where id = 207634
update all_data set odist = 4 where id = 202615
update all_data set odist = 4 where id = 205214
update all_data set odist = 4 where id = 207923
update all_data set odist = 4 where id = 204849
update all_data set odist = 4 where id = 214296
update all_data set odist = 4 where id = 203434
update all_data set odist = 4 where id = 206258
update all_data set odist = 4 where id = 208672
update all_data set odist = 4 where id = 202462
update all_data set odist = 4 where id = 210670
update all_data set odist = 4 where id = 214066
update all_data set odist = 4 where id = 205482
update all_data set odist = 4 where id = 209576
update all_data set odist = 4 where id = 207271
update all_data set odist = 4 where id = 206282
update all_data set odist = 4 where id = 202082
update all_data set odist = 4 where id = 206476
update all_data set odist = 4 where id = 207285
update all_data set odist = 4 where id = 202425
update all_data set odist = 4 where id = 202179
update all_data set odist = 4 where id = 208545
update all_data set odist = 4 where id = 205164
update all_data set odist = 5 where id = 210407
update all_data set odist = 5 where id = 206318
update all_data set odist = 5 where id = 214279
update all_data set odist = 5 where id = 202298
update all_data set odist = 5 where id = 207516
update all_data set odist = 5 where id = 206925
update all_data set odist = 5 where id = 205114
update all_data set odist = 5 where id = 212187
update all_data set odist = 5 where id = 213587
update all_data set odist = 5 where id = 205606
update all_data set odist = 5 where id = 204255
update all_data set odist = 5 where id = 207606
update all_data set odist = 5 where id = 206233
update all_data set odist = 5 where id = 207288
update all_data set odist = 5 where id = 205140
update all_data set odist = 5 where id = 210703
update all_data set odist = 5 where id = 212835
update all_data set odist = 5 where id = 205270
update all_data set odist = 5 where id = 203699
update all_data set odist = 5 where id = 209605
update all_data set odist = 5 where id = 206929
update all_data set odist = 5 where id = 205221
update all_data set odist = 5 where id = 209720
update all_data set odist = 5 where id = 214070
update all_data set odist = 5 where id = 210779
update all_data set odist = 5 where id = 205243
update all_data set odist = 5 where id = 208950
update all_data set odist = 5 where id = 207650
update all_data set odist = 5 where id = 207902
update all_data set odist = 5 where id = 202450
update all_data set odist = 5 where id = 211025
update all_data set odist = 5 where id = 205132
update all_data set odist = 5 where id = 206134
update all_data set odist = 5 where id = 202496
update all_data set odist = 5 where id = 207745
update all_data set odist = 5 where id = 206127
update all_data set odist = 5 where id = 203483
update all_data set odist = 5 where id = 203549
update all_data set odist = 5 where id = 203960
update all_data set odist = 5 where id = 209740
update all_data set odist = 5 where id = 203213
update all_data set odist = 5 where id = 207555
update all_data set odist = 5 where id = 205200
update all_data set odist = 5 where id = 205593
update all_data set odist = 5 where id = 204259
update all_data set odist = 5 where id = 212332
update all_data set odist = 5 where id = 212821
update all_data set odist = 5 where id = 207531
update all_data set odist = 5 where id = 207651
update all_data set odist = 5 where id = 208582
update all_data set odist = 5 where id = 210660
update all_data set odist = 5 where id = 212585
update all_data set odist = 5 where id = 203610
update all_data set odist = 5 where id = 203711
update all_data set odist = 6 where id = 214731
update all_data set odist = 6 where id = 207173
update all_data set odist = 6 where id = 207666
update all_data set odist = 6 where id = 211194
update all_data set odist = 6 where id = 207270
update all_data set odist = 6 where id = 210940
update all_data set odist = 6 where id = 214294
update all_data set odist = 6 where id = 203281
update all_data set odist = 6 where id = 209546
update all_data set odist = 6 where id = 205233
update all_data set odist = 6 where id = 209718
update all_data set odist = 6 where id = 210966
update all_data set odist = 6 where id = 210588
update all_data set odist = 6 where id = 209040
update all_data set odist = 6 where id = 205050
update all_data set odist = 6 where id = 206126
update all_data set odist = 6 where id = 205359
update all_data set odist = 6 where id = 210410
update all_data set odist = 6 where id = 211150
update all_data set odist = 6 where id = 208785
update all_data set odist = 6 where id = 205212
update all_data set odist = 6 where id = 210656
update all_data set odist = 6 where id = 206321
update all_data set odist = 6 where id = 206239
update all_data set odist = 6 where id = 214740
update all_data set odist = 6 where id = 205143
update all_data set odist = 6 where id = 205047
update all_data set odist = 6 where id = 211039
update all_data set odist = 6 where id = 202836
update all_data set odist = 6 where id = 211627
update all_data set odist = 6 where id = 202032
update all_data set odist = 6 where id = 207274
update all_data set odist = 2 where id = 202744
update all_data set odist = 6 where id = 207284
update all_data set odist = 6 where id = 206155
update all_data set odist = 6 where id = 210113
update all_data set odist = 6 where id = 212768
update all_data set odist = 6 where id = 213814
update all_data set odist = 6 where id = 207386
update all_data set odist = 6 where id = 210405
update all_data set odist = 6 where id = 203981
update all_data set odist = 6 where id = 211069
update all_data set odist = 7 where id = 209305
update all_data set odist = 7 where id = 204169
update all_data set odist = 7 where id = 202161
update all_data set odist = 7 where id = 205149
update all_data set odist = 7 where id = 206391
update all_data set odist = 7 where id = 211094
update all_data set odist = 6 where id = 206404
update all_data set odist = 6 where id = 206405
update all_data set odist = 6 where id = 207400
update all_data set odist = 6 where id = 206945
update all_data set odist = 6 where id = 207549
update all_data set odist = 6 where id = 208536
update all_data set odist = 6 where id = 209304
update all_data set odist = 6 where id = 205053
update all_data set odist = 7 where id = 207315
update all_data set odist = 7 where id = 205427
update all_data set odist = 7 where id = 211408
update all_data set odist = 7 where id = 214297
update all_data set odist = 6 where id = 205237
update all_data set odist = 6 where id = 207912
update all_data set odist = 6 where id = 211628
update all_data set odist = 6 where id = 206401
update all_data set odist = 7 where id = 210696
update all_data set odist = 7 where id = 211417
update all_data set odist = 7 where id = 207151
update all_data set odist = 7 where id = 212756
update all_data set odist = 7 where id = 206130
update all_data set odist = 7 where id = 207421
update all_data set odist = 7 where id = 207537
update all_data set odist = 7 where id = 206918
update all_data set odist = 7 where id = 207541
update all_data set odist = 7 where id = 204898
update all_data set odist = 7 where id = 203482
update all_data set odist = 7 where id = 202459
update all_data set odist = 7 where id = 207820
update all_data set odist = 7 where id = 209719
update all_data set odist = 7 where id = 206138
update all_data set odist = 7 where id = 207553
update all_data set odist = 7 where id = 203606
update all_data set odist = 7 where id = 205296
update all_data set odist = 7 where id = 206928
update all_data set odist = 7 where id = 209465
update all_data set odist = 7 where id = 207154
update all_data set odist = 7 where id = 210956
update all_data set odist = 7 where id = 207739
update all_data set odist = 7 where id = 211437
update all_data set odist = 7 where id = 207984
update all_data set odist = 7 where id = 207985
update all_data set odist = 7 where id = 209375
update all_data set odist = 7 where id = 205139
update all_data set odist = 7 where id = 204604
update all_data set odist = 7 where id = 205232
update all_data set odist = 7 where id = 207757
update all_data set odist = 7 where id = 206402
update all_data set odist = 7 where id = 203855
update all_data set odist = 7 where id = 202162
update all_data set odist = 7 where id = 209306
update all_data set odist = 7 where id = 214737
update all_data set odist = 7 where id = 205137
update all_data set odist = 7 where id = 208150
update all_data set odist = 7 where id = 206403
update all_data set odist = 7 where id = 207922
update all_data set odist = 7 where id = 206149
update all_data set odist = 7 where id = 202876
update all_data set odist = 7 where id = 207281
update all_data set odist = 7 where id = 205134
update all_data set odist = 7 where id = 203548
update all_data set odist = 7 where id = 206316
update all_data set odist = 7 where id = 205035
update all_data set odist = 7 where id = 214079
update all_data set odist = 7 where id = 211026
update all_data set odist = 7 where id = 205126
update all_data set odist = 7 where id = 203985
update all_data set odist = 7 where id = 205658
update all_data set odist = 7 where id = 206214
update all_data set odist = 7 where id = 204762
update all_data set odist = 7 where id = 207924
update all_data set odist = 7 where id = 205145
update all_data set odist = 7 where id = 204265
update all_data set odist = 7 where id = 205041
update all_data set odist = 7 where id = 203740
update all_data set odist = 7 where id = 214725
update all_data set odist = 7 where id = 203397
update all_data set odist = 7 where id = 206919
update all_data set odist = 7 where id = 210400
update all_data set odist = 7 where id = 211632
update all_data set odist = 7 where id = 206300
update all_data set odist = 7 where id = 205201
update all_data set odist = 7 where id = 203377
update all_data set odist = 7 where id = 207628
update all_data set odist = 7 where id = 206141
update all_data set odist = 7 where id = 202020
update all_data set odist = 7 where id = 205689
update all_data set odist = 7 where id = 207909
update all_data set odist = 7 where id = 204586
update all_data set odist = 7 where id = 204260
update all_data set odist = 7 where id = 207512
update all_data set odist = 7 where id = 205039
update all_data set odist = 7 where id = 205027
update all_data set odist = 7 where id = 207007
update all_data set odist = 7 where id = 212620
update all_data set odist = 7 where id = 207645
update all_data set odist = 7 where id = 207921
update all_data set odist = 7 where id = 205837
update all_data set odist = 7 where id = 203967
update all_data set odist = 2 where id = 203612
update all_data set odist = 2 where id = 203997
update all_data set odist = 2 where id = 211157
update all_data set odist = 2 where id = 209445
update all_data set odist = 2 where id = 210415
update all_data set odist = 2 where id = 204947
update all_data set odist = 2 where id = 210554
update all_data set odist = 2 where id = 203719
update all_data set odist = 2 where id = 208055
update all_data set odist = 2 where id = 202202
update all_data set odist = 2 where id = 206685
update all_data set odist = 2 where id = 209170
update all_data set odist = 2 where id = 210564
update all_data set odist = 2 where id = 205431
update all_data set odist = 2 where id = 205432
update all_data set odist = 2 where id = 207393
update all_data set odist = 2 where id = 207394
update all_data set odist = 2 where id = 213794
update all_data set odist = 2 where id = 212535
update all_data set odist = 2 where id = 203556
update all_data set odist = 2 where id = 204004
update all_data set odist = 2 where id = 203262
update all_data set odist = 2 where id = 202791
update all_data set odist = 2 where id = 214531
update all_data set odist = 2 where id = 204516
update all_data set odist = 2 where id = 203843
update all_data set odist = 2 where id = 202631
update all_data set odist = 2 where id = 214529
update all_data set odist = 2 where id = 214483
update all_data set odist = 2 where id = 214496
update all_data set odist = 2 where id = 213065
update all_data set odist = 2 where id = 211212
update all_data set odist = 2 where id = 210965
update all_data set odist = 2 where id = 204634
update all_data set odist = 2 where id = 213809
update all_data set odist = 2 where id = 205048
update all_data set odist = 2 where id = 203814
update all_data set odist = 2 where id = 213883
update all_data set odist = 2 where id = 212190
update all_data set odist = 2 where id = 209792
update all_data set odist = 2 where id = 202003
update all_data set odist = 2 where id = 204513
update all_data set odist = 2 where id = 205959
update all_data set odist = 2 where id = 203936
update all_data set odist = 2 where id = 210659
update all_data set odist = 2 where id = 204894
update all_data set odist = 2 where id = 210041
update all_data set odist = 2 where id = 211051
update all_data set odist = 2 where id = 205772
update all_data set odist = 2 where id = 204437
update all_data set odist = 2 where id = 203005
update all_data set odist = 2 where id = 205304
update all_data set odist = 2 where id = 209620
update all_data set odist = 2 where id = 212256
update all_data set odist = 2 where id = 204598
update all_data set odist = 2 where id = 210056
update all_data set odist = 2 where id = 212273
update all_data set odist = 2 where id = 203356
update all_data set odist = 2 where id = 203605
update all_data set odist = 2 where id = 214266
update all_data set odist = 2 where id = 211288
update all_data set odist = 2 where id = 213497
update all_data set odist = 2 where id = 205066
update all_data set odist = 2 where id = 203070
update all_data set odist = 2 where id = 203310
update all_data set odist = 2 where id = 213851
update all_data set odist = 2 where id = 212183
update all_data set odist = 2 where id = 211050
update all_data set odist = 2 where id = 203330
update all_data set odist = 2 where id = 204091
update all_data set odist = 2 where id = 202218
update all_data set odist = 2 where id = 210952
update all_data set odist = 2 where id = 204943
update all_data set odist = 2 where id = 204541
update all_data set odist = 2 where id = 207632
update all_data set odist = 2 where id = 207002
update all_data set odist = 2 where id = 205664
update all_data set odist = 2 where id = 209320
update all_data set odist = 2 where id = 206951
update all_data set odist = 2 where id = 209730
update all_data set odist = 2 where id = 204776
update all_data set odist = 2 where id = 202717
update all_data set odist = 2 where id = 209814
update all_data set odist = 2 where id = 211187
update all_data set odist = 2 where id = 205258
update all_data set odist = 2 where id = 202422
update all_data set odist = 2 where id = 212109
update all_data set odist = 2 where id = 204868
update all_data set odist = 2 where id = 206684
update all_data set odist = 2 where id = 203350
update all_data set odist = 2 where id = 213834
update all_data set odist = 2 where id = 210423
update all_data set odist = 2 where id = 205681
update all_data set odist = 2 where id = 205682
update all_data set odist = 2 where id = 212243
update all_data set odist = 2 where id = 209454
update all_data set odist = 2 where id = 101162
update all_data set odist = 2 where id = 202170
update all_data set odist = 2 where id = 202568
update all_data set odist = 2 where id = 203278
update all_data set odist = 2 where id = 204937
update all_data set odist = 2 where id = 212769
update all_data set odist = 2 where id = 209958
update all_data set odist = 2 where id = 205667
update all_data set odist = 2 where id = 205751
update all_data set odist = 2 where id = 205747
update all_data set odist = 2 where id = 205748
update all_data set odist = 2 where id = 205749
update all_data set odist = 2 where id = 205379
update all_data set odist = 2 where id = 205392
update all_data set odist = 2 where id = 205156
update all_data set odist = 2 where id = 203206
update all_data set odist = 2 where id = 202830
update all_data set odist = 2 where id = 203342
update all_data set odist = 2 where id = 203389
update all_data set odist = 2 where id = 203333
update all_data set odist = 2 where id = 203430
update all_data set odist = 2 where id = 208052
update all_data set odist = 2 where id = 206818
update all_data set odist = 2 where id = 207003
update all_data set odist = 2 where id = 207006
update all_data set odist = 2 where id = 207001
update all_data set odist = 2 where id = 206992
update all_data set odist = 2 where id = 206996
update all_data set odist = 2 where id = 207077
update all_data set odist = 2 where id = 205691
update all_data set odist = 2 where id = 211319
update all_data set odist = 2 where id = 205396
update all_data set odist = 2 where id = 202197
update all_data set odist = 2 where id = 213067
update all_data set odist = 2 where id = 204240
update all_data set odist = 2 where id = 203850
update all_data set odist = 2 where id = 202426
update all_data set odist = 2 where id = 210431
update all_data set odist = 2 where id = 204540
update all_data set odist = 2 where id = 203068
update all_data set odist = 2 where id = 209360
update all_data set odist = 2 where id = 213840
update all_data set odist = 2 where id = 207976
update all_data set odist = 2 where id = 204150
update all_data set odist = 2 where id = 204138
update all_data set odist = 2 where id = 208102
update all_data set odist = 2 where id = 204975
update all_data set odist = 2 where id = 204970
update all_data set odist = 2 where id = 203601
update all_data set odist = 2 where id = 203267
update all_data set odist = 2 where id = 213554
update all_data set odist = 2 where id = 212138
update all_data set odist = 2 where id = 210050
update all_data set odist = 2 where id = 206711
update all_data set odist = 2 where id = 212647
update all_data set odist = 2 where id = 203713
update all_data set odist = 2 where id = 205760
update all_data set odist = 2 where id = 209321
update all_data set odist = 2 where id = 203318
update all_data set odist = 2 where id = 205436
update all_data set odist = 2 where id = 209314
update all_data set odist = 2 where id = 210438
update all_data set odist = 2 where id = 204154
update all_data set odist = 2 where id = 205605
update all_data set odist = 2 where id = 202329
update all_data set odist = 2 where id = 211279
update all_data set odist = 2 where id = 202769
update all_data set odist = 2 where id = 209338
update all_data set odist = 2 where id = 213043
update all_data set odist = 2 where id = 212520
update all_data set odist = 2 where id = 202475
update all_data set odist = 2 where id = 203725
update all_data set odist = 2 where id = 213080
update all_data set odist = 2 where id = 205779
update all_data set odist = 2 where id = 204448
update all_data set odist = 2 where id = 208684
update all_data set odist = 2 where id = 210432
update all_data set odist = 2 where id = 209846
update all_data set odist = 2 where id = 214264
update all_data set odist = 2 where id = 205248
update all_data set odist = 2 where id = 210325
update all_data set odist = 2 where id = 204885
update all_data set odist = 2 where id = 213084
update all_data set odist = 3 where id = 212241
update all_data set odist = 3 where id = 212135
update all_data set odist = 3 where id = 202728
update all_data set odist = 3 where id = 205428
update all_data set odist = 3 where id = 213037
update all_data set odist = 3 where id = 204686
update all_data set odist = 3 where id = 204442
update all_data set odist = 3 where id = 209460
update all_data set odist = 3 where id = 212858
update all_data set odist = 3 where id = 202441
update all_data set odist = 3 where id = 213525
update all_data set odist = 3 where id = 214523
update all_data set odist = 3 where id = 212427
update all_data set odist = 3 where id = 203392
update all_data set odist = 3 where id = 204152
update all_data set odist = 3 where id = 203136
update all_data set odist = 3 where id = 205167
update all_data set odist = 3 where id = 209361
update all_data set odist = 3 where id = 206548
update all_data set odist = 3 where id = 213296
update all_data set odist = 3 where id = 209920
update all_data set odist = 3 where id = 211034
update all_data set odist = 3 where id = 203006
update all_data set odist = 3 where id = 213025
update all_data set odist = 3 where id = 207163
update all_data set odist = 3 where id = 204074
update all_data set odist = 3 where id = 203279
update all_data set odist = 3 where id = 209824
update all_data set odist = 3 where id = 213584
update all_data set odist = 3 where id = 209324
update all_data set odist = 3 where id = 209596
update all_data set odist = 3 where id = 203438
update all_data set odist = 3 where id = 209329
update all_data set odist = 3 where id = 209555
update all_data set odist = 3 where id = 204688
update all_data set odist = 3 where id = 205400
update all_data set odist = 3 where id = 211067
update all_data set odist = 3 where id = 202291
update all_data set odist = 3 where id = 202193
update all_data set odist = 3 where id = 204509
update all_data set odist = 3 where id = 205165
update all_data set odist = 3 where id = 208550
update all_data set odist = 3 where id = 202714
update all_data set odist = 3 where id = 209563
update all_data set odist = 3 where id = 212936
update all_data set odist = 3 where id = 206169
update all_data set odist = 3 where id = 211314
update all_data set odist = 3 where id = 209708
update all_data set odist = 3 where id = 203004
update all_data set odist = 3 where id = 212052
update all_data set odist = 3 where id = 212042
update all_data set odist = 3 where id = 213541
update all_data set odist = 3 where id = 213894
update all_data set odist = 3 where id = 212459
update all_data set odist = 3 where id = 214287
update all_data set odist = 3 where id = 210324
update all_data set odist = 3 where id = 202347
update all_data set odist = 3 where id = 202311
update all_data set odist = 3 where id = 202428
update all_data set odist = 3 where id = 212506
update all_data set odist = 3 where id = 206229
update all_data set odist = 3 where id = 203276
update all_data set odist = 3 where id = 202438
update all_data set odist = 3 where id = 212103
update all_data set odist = 3 where id = 211199
update all_data set odist = 3 where id = 202316
update all_data set odist = 3 where id = 213076
update all_data set odist = 3 where id = 210107
update all_data set odist = 3 where id = 207835
update all_data set odist = 3 where id = 205904
update all_data set odist = 3 where id = 209436
update all_data set odist = 3 where id = 209437
update all_data set odist = 3 where id = 209325
update all_data set odist = 3 where id = 204538
update all_data set odist = 3 where id = 210962
update all_data set odist = 3 where id = 205843
update all_data set odist = 3 where id = 202730
update all_data set odist = 3 where id = 209456
update all_data set odist = 3 where id = 210180
update all_data set odist = 3 where id = 210418
update all_data set odist = 3 where id = 211047
update all_data set odist = 3 where id = 204966
update all_data set odist = 3 where id = 203979
update all_data set odist = 3 where id = 205307
update all_data set odist = 3 where id = 208681
update all_data set odist = 3 where id = 209464
update all_data set odist = 3 where id = 212283
update all_data set odist = 3 where id = 205972
update all_data set odist = 3 where id = 210314
update all_data set odist = 3 where id = 212311
update all_data set odist = 3 where id = 213739
update all_data set odist = 3 where id = 210404
update all_data set odist = 3 where id = 210531
update all_data set odist = 3 where id = 210650
update all_data set odist = 3 where id = 206480
update all_data set odist = 3 where id = 206482
update all_data set odist = 3 where id = 206485
update all_data set odist = 3 where id = 206257
update all_data set odist = 3 where id = 206983
update all_data set odist = 3 where id = 207066
update all_data set odist = 3 where id = 207067
update all_data set odist = 3 where id = 207073
update all_data set odist = 3 where id = 206989
update all_data set odist = 3 where id = 206990
update all_data set odist = 3 where id = 206681
update all_data set odist = 3 where id = 206804
update all_data set odist = 3 where id = 205576
update all_data set odist = 3 where id = 204416
update all_data set odist = 3 where id = 202743
update all_data set odist = 3 where id = 202750
update all_data set odist = 3 where id = 203423
update all_data set odist = 3 where id = 203375
update all_data set odist = 3 where id = 203503
update all_data set odist = 3 where id = 203553
update all_data set odist = 3 where id = 213127
update all_data set odist = 3 where id = 207906
update all_data set odist = 3 where id = 206968
update all_data set odist = 3 where id = 206174
update all_data set odist = 3 where id = 211053
update all_data set odist = 3 where id = 205144
update all_data set odist = 3 where id = 205299
update all_data set odist = 3 where id = 207637
update all_data set odist = 3 where id = 203403
update all_data set odist = 3 where id = 203588
update all_data set odist = 3 where id = 202746
update all_data set odist = 3 where id = 202401
update all_data set odist = 3 where id = 205067
update all_data set odist = 3 where id = 207917
update all_data set odist = 3 where id = 205825
update all_data set odist = 3 where id = 206475
update all_data set odist = 3 where id = 203202
update all_data set odist = 3 where id = 202701
update all_data set odist = 3 where id = 203150
update all_data set odist = 3 where id = 206962
update all_data set odist = 3 where id = 210111
update all_data set odist = 3 where id = 211059
update all_data set odist = 3 where id = 206246
update all_data set odist = 3 where id = 207275
update all_data set odist = 3 where id = 205601
update all_data set odist = 3 where id = 213783
update all_data set odist = 3 where id = 204675
update all_data set odist = 3 where id = 207528
update all_data set odist = 3 where id = 202447
update all_data set odist = 3 where id = 204887
update all_data set odist = 3 where id = 202248
update all_data set odist = 3 where id = 213048
update all_data set odist = 3 where id = 209326
update all_data set odist = 3 where id = 209693
update all_data set odist = 3 where id = 206855
update all_data set odist = 3 where id = 212512
update all_data set odist = 3 where id = 213817
update all_data set odist = 3 where id = 211062
update all_data set odist = 3 where id = 209480
update all_data set odist = 3 where id = 212779
update all_data set odist = 3 where id = 210172
update all_data set odist = 3 where id = 204291
update all_data set odist = 3 where id = 208810
update all_data set odist = 3 where id = 202283
update all_data set odist = 3 where id = 214243
update all_data set odist = 3 where id = 206504
update all_data set odist = 3 where id = 209494
update all_data set odist = 3 where id = 205430
update all_data set odist = 3 where id = 212037
update all_data set odist = 3 where id = 209858
update all_data set odist = 3 where id = 210910
update all_data set odist = 3 where id = 210833
update all_data set odist = 3 where id = 208539
update all_data set odist = 3 where id = 214069
update all_data set odist = 3 where id = 212536
update all_data set odist = 3 where id = 204287
update all_data set odist = 3 where id = 204344
update all_data set odist = 3 where id = 207915
update all_data set odist = 3 where id = 208561
update all_data set odist = 3 where id = 202709
update all_data set odist = 3 where id = 207383
update all_data set odist = 3 where id = 205259
update all_data set odist = 3 where id = 204522
update all_data set odist = 3 where id = 214227
update all_data set odist = 3 where id = 202150
update all_data set odist = 3 where id = 207300
update all_data set odist = 3 where id = 205675
update all_data set odist = 3 where id = 205676
update all_data set odist = 4 where id = 209666
update all_data set odist = 4 where id = 213024
update all_data set odist = 4 where id = 202181
update all_data set odist = 4 where id = 205788
update all_data set odist = 4 where id = 214540
update all_data set odist = 4 where id = 212681
update all_data set odist = 4 where id = 212338
update all_data set odist = 4 where id = 203316
update all_data set odist = 4 where id = 206077
update all_data set odist = 4 where id = 214050
update all_data set odist = 4 where id = 203510
update all_data set odist = 4 where id = 202642
update all_data set odist = 4 where id = 207183
update all_data set odist = 4 where id = 202222
update all_data set odist = 4 where id = 213847
update all_data set odist = 4 where id = 207266
update all_data set odist = 4 where id = 204632
update all_data set odist = 4 where id = 212630
update all_data set odist = 4 where id = 204157
update all_data set odist = 4 where id = 207639
update all_data set odist = 4 where id = 202716
update all_data set odist = 4 where id = 212505
update all_data set odist = 4 where id = 209705
update all_data set odist = 4 where id = 214748
update all_data set odist = 4 where id = 211064
update all_data set odist = 4 where id = 209728
update all_data set odist = 4 where id = 204332
update all_data set odist = 4 where id = 212522
update all_data set odist = 4 where id = 205971
update all_data set odist = 4 where id = 202151
update all_data set odist = 4 where id = 209487
update all_data set odist = 4 where id = 203595
update all_data set odist = 4 where id = 207932
update all_data set odist = 4 where id = 205308
update all_data set odist = 4 where id = 203594
update all_data set odist = 4 where id = 207277
update all_data set odist = 4 where id = 205218
update all_data set odist = 4 where id = 203949
update all_data set odist = 4 where id = 214738
update all_data set odist = 4 where id = 209726
update all_data set odist = 4 where id = 206304
update all_data set odist = 4 where id = 205410
update all_data set odist = 4 where id = 208540
update all_data set odist = 4 where id = 207807
update all_data set odist = 4 where id = 207500
update all_data set odist = 4 where id = 206177
update all_data set odist = 4 where id = 204016
update all_data set odist = 4 where id = 202437
update all_data set odist = 4 where id = 207297
update all_data set odist = 4 where id = 211183
update all_data set odist = 4 where id = 209433
update all_data set odist = 4 where id = 213780
update all_data set odist = 4 where id = 204009
update all_data set odist = 4 where id = 203211
update all_data set odist = 4 where id = 213777
update all_data set odist = 4 where id = 205133
update all_data set odist = 4 where id = 209578
update all_data set odist = 4 where id = 205892
update all_data set odist = 4 where id = 208932
update all_data set odist = 4 where id = 207905
update all_data set odist = 4 where id = 212751
update all_data set odist = 4 where id = 209587
update all_data set odist = 4 where id = 212538
update all_data set odist = 4 where id = 213537
update all_data set odist = 4 where id = 205598
update all_data set odist = 4 where id = 212320
update all_data set odist = 4 where id = 205257
update all_data set odist = 4 where id = 203289
update all_data set odist = 4 where id = 205049
update all_data set odist = 4 where id = 209701
update all_data set odist = 4 where id = 204001
update all_data set odist = 4 where id = 202173
update all_data set odist = 4 where id = 205905
update all_data set odist = 4 where id = 209476
update all_data set odist = 4 where id = 213523
update all_data set odist = 4 where id = 210906
update all_data set odist = 4 where id = 213799
update all_data set odist = 4 where id = 203845
update all_data set odist = 4 where id = 202406
update all_data set odist = 4 where id = 206509
update all_data set odist = 5 where id = 204330
update all_data set odist = 5 where id = 202365
update all_data set odist = 5 where id = 206921
update all_data set odist = 5 where id = 205834
update all_data set odist = 5 where id = 206948
update all_data set odist = 5 where id = 203126
update all_data set odist = 5 where id = 207313
update all_data set odist = 5 where id = 207729
update all_data set odist = 5 where id = 209586
update all_data set odist = 5 where id = 203841
update all_data set odist = 5 where id = 204289
update all_data set odist = 5 where id = 203926
update all_data set odist = 5 where id = 202363
update all_data set odist = 5 where id = 210537
update all_data set odist = 5 where id = 206268
update all_data set odist = 5 where id = 205900
update all_data set odist = 5 where id = 207630
update all_data set odist = 5 where id = 209423
update all_data set odist = 5 where id = 206926
update all_data set odist = 5 where id = 204273
update all_data set odist = 5 where id = 204503
update all_data set odist = 5 where id = 206393
update all_data set odist = 5 where id = 214735
update all_data set odist = 5 where id = 206698
update all_data set odist = 5 where id = 206303
update all_data set odist = 5 where id = 204969
update all_data set odist = 5 where id = 208172
update all_data set odist = 5 where id = 210947
update all_data set odist = 5 where id = 203069
update all_data set odist = 5 where id = 205128
update all_data set odist = 5 where id = 214736
update all_data set odist = 5 where id = 206313
update all_data set odist = 5 where id = 209595
update all_data set odist = 5 where id = 203702
update all_data set odist = 5 where id = 206942
update all_data set odist = 5 where id = 214038
update all_data set odist = 5 where id = 209318
update all_data set odist = 5 where id = 207387
update all_data set odist = 5 where id = 202245
update all_data set odist = 6 where id = 207656
update all_data set odist = 6 where id = 209709
update all_data set odist = 6 where id = 207156
update all_data set odist = 6 where id = 207167
update all_data set odist = 6 where id = 207722
update all_data set odist = 6 where id = 206139
update all_data set odist = 6 where id = 207741
update all_data set odist = 6 where id = 209309
update all_data set odist = 6 where id = 203376
update all_data set odist = 6 where id = 206486
update all_data set odist = 6 where id = 213845
update all_data set odist = 6 where id = 204900
update all_data set odist = 6 where id = 204131
update all_data set odist = 6 where id = 213815
update all_data set odist = 6 where id = 207719
update all_data set odist = 6 where id = 206317
update all_data set odist = 6 where id = 208699
update all_data set odist = 6 where id = 203964
update all_data set odist = 6 where id = 205230
update all_data set odist = 6 where id = 203975
update all_data set odist = 6 where id = 206306
update all_data set odist = 6 where id = 209795
update all_data set odist = 7 where id = 207981
update all_data set odist = 7 where id = 206484
update all_data set odist = 7 where id = 203537
update all_data set odist = 7 where id = 208658
update all_data set odist = 7 where id = 210528
update all_data set odist = 4 where id = 211193
update all_data set odist = 4 where id = 206490
update all_data set odist = 4 where id = 202235
update all_data set odist = 4 where id = 210044
update all_data set odist = 4 where id = 205150
update all_data set odist = 4 where id = 206396
update all_data set odist = 4 where id = 206551
update all_data set odist = 4 where id = 202215
update all_data set odist = 4 where id = 204421
update all_data set odist = 4 where id = 207278
update all_data set odist = 4 where id = 202024
update all_data set odist = 4 where id = 213979
update all_data set odist = 4 where id = 202282
update all_data set odist = 4 where id = 207743
update all_data set odist = 4 where id = 208579
update all_data set odist = 4 where id = 203285
update all_data set odist = 5 where id = 206284
update all_data set odist = 5 where id = 202207
update all_data set odist = 5 where id = 211436
update all_data set odist = 5 where id = 206284
update all_data set odist = 5 where id = 206284
update all_data set odist = 5 where id = 206284
update all_data set odist = 5 where id = 202111
update all_data set odist = 5 where id = 212567
update all_data set odist = 5 where id = 211156
update all_data set odist = 5 where id = 203547
update all_data set odist = 5 where id = 206031
update all_data set odist = 6 where id = 212508
update all_data set odist = 6 where id = 209743
update all_data set odist = 6 where id = 214487
update all_data set odist = 6 where id = 204934
update all_data set odist = 6 where id = 203604
update all_data set odist = 6 where id = 207929
update all_data set odist = 6 where id = 209805
update all_data set odist = 6 where id = 203637
update all_data set odist = 6 where id = 204881
update all_data set odist = 6 where id = 208409
update all_data set odist = 6 where id = 207527
update all_data set odist = 6 where id = 206932
update all_data set odist = 6 where id = 210046
update all_data set odist = 6 where id = 209932
update all_data set odist = 6 where id = 207925
update all_data set odist = 6 where id = 214239
update all_data set odist = 6 where id = 206322
update all_data set odist = 6 where id = 205435
update all_data set odist = 6 where id = 207160
update all_data set odist = 6 where id = 206036
update all_data set odist = 6 where id = 206037
update all_data set odist = 6 where id = 209422
update all_data set odist = 6 where id = 207308
update all_data set odist = 6 where id = 206238
update all_data set odist = 6 where id = 205138
update all_data set odist = 6 where id = 205575
update all_data set odist = 6 where id = 204256
update all_data set odist = 6 where id = 202022
update all_data set odist = 6 where id = 212824
update all_data set odist = 7 where id = 207721
update all_data set odist = 7 where id = 202339
update all_data set odist = 7 where id = 202770
update all_data set odist = 7 where id = 205386
update all_data set odist = 7 where id = 207609
update all_data set odist = 7 where id = 209547
update all_data set odist = 7 where id = 205037
update all_data set odist = 7 where id = 205125
update all_data set odist = 7 where id = 207513
update all_data set odist = 8 where id = 214258
update all_data set stationon_key = 19 where id = 205434
update all_data set odist = 8 where id = 202018
update all_data set odist = 8 where id = 207388
update all_data set odist = 8 where id = 202551
update all_data set odist = 8 where id = 203633
update all_data set odist = 8 where id = 203634
go

select id, amode, odist, odist_linear from all_data where (amode = 9 or amode = 11) and odist > 5
order by odist_linear

alter table all_data
add odist_linear float

update all_data set odist_linear = distance_miles from all_data a
left outer join 
odist_table b
on a.id = b.id

select * from all_data where o_address like '%-74%'


update all_data set OPLACE = '' , OSTREET = '' , OCITY = '' , OSTATE = 'NJ' , OZIP =  null, O_Address = '' , O_formatted_address = '' , O_street_number = null , O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = '' , O_locality = '' , O_postal_code = null, O_lat = null, O_lng = 0 , O_exact_match = 0 , O_location_type_value = 0 , O_types_value = 0 , O_good_check = 0 
where o_address like '%-74%' and odist > 2

update all_data set odist = 5 where id = 205742

select id, odist, odist_spec, odist_linear from all_data where odist_spec is not null 
order by odist_spec

update all_data set odist_spec = null where odist_spec is not null and odist <> 8

select * from all_data where dstate = 'ny' and emodenj is not null
select * from all_data where dstate <> D_administrative_area_level1 -- all clear.

update all_data set DPLACE = '' , DSTREET = '66TH ST' , DCITY = 'NEW YORK' , DSTATE = 'NY' , DZIP = 10065 , D_Address = 'E. 66th St, New York, NY 10065' , D_formatted_address = 'E. 66th Street, New York, NY' , D_street_number = null , D_route = 'E 66th Street' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10065 , D_lat = 40.765627 , D_lng = -73.962955 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 204509
update all_data set DPLACE = '' , DSTREET = '655 W 34th St' , DCITY = 'NEW YORK' , DSTATE = 'NY' , DZIP = 10001 , D_Address = '655 W 34th St, NEW YORK, NY 10001' , D_formatted_address = '655 W 34th St, NEW YORK, NY 10001' , D_street_number = 655 , D_route = 'W 34th St' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.757889 , D_lng = -74.002506 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 209677
update all_data set dstate = D_administrative_area_level1 where dstate <> D_administrative_area_level1

select * from all_data where ostate <> O_administrative_area_level1  -- all clear

select * from all_data where dstate = 'NY' and emodenj is not null 
update all_data set emodenj = null where dstate = 'ny' and emodenj is not null and tonytrip is not null

update all_data set tonytrip = 1, emodeny = 2, emodenj = null where id = 205597
update all_data set tonytrip = 1, emodeny = 2, emodenj = null where id = 206317
update all_data set tonytrip = 1, emodeny = 2, nysubway = 'E', nysubway_line = 'E', emodenj = null where id = 210041
update all_data set tonytrip = 1, emodeny = 2, nysubway = 'E - Jamaica Van Wyck', nysubway_line = 'E', nysubway_station = 'Jamaica-Van Wyck (E)' ,NYSUBWAY_STATION_NUM = 1278, emodenj = null where id = 202082
update all_data set DPLACE = '' , DSTREET = '80 Park Plaza' , DCITY = 'Newark' , DSTATE = 'NJ' , DZIP = 7102 , D_Address = '80 Penn Plaza, Newark, NJ 07102' , D_formatted_address = '80 Park Plaza, Newark, NJ 07102' , D_street_number = 80 , D_route = 'Park Plaza' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Essex County' , D_locality = 'Newark' , D_postal_code = 7102 , D_lat = 40.73707 , D_lng = -74.168242 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 202628

select * from all_data where dstate = 'nj' and (tonytrip is not null or emodeny is not null)
order by tonytrip, emodeny

update all_data set tonytrip = null, emodeny = null where id = 205132
update all_data set tonytrip = null, emodeny = null, nyother = null where id = 207066
update all_data set tonytrip = null, emodeny = null where dstate = 'nj' and (tonytrip is not null or emodeny is not null)

select stationoff, tonytrip from all_data where stationoff = 1 and tonytrip <> 1
order by tonytrip

select * from all_data where stationoff = 1 and dstate <> 'ny' and dstate is not null
order by dcity
update all_data set stationoff = 1, stationoff_other = null where stationoff <> 1 and tonytrip = 1
update all_data set stationoff = 1 where stationoff is null and tonytrip = 1
update all_data set tonytrip = 1 where stationoff = 1 and tonytrip is null and dstate = 'ny'


select id, stationoff, tonytrip from all_data where stationoff = 2 and tonytrip <> 3 and tonytrip <> 4 and tonytrip <> 7

select * from all_data where id = 204002
update all_data set tonytrip = 3, hobpath = '33rd St', hobpath_num = 15, emodeny = 1, emodenj = null, enjpath = null, enjpath_num = null where id = 204002
update all_data set tonytrip = null, emodeny = null where id = 202162
update all_data set tonytrip = 3, hobpath = 'WTC', hobpath_num = 15 where id = 202501

update all_data set D_Good_Check = 0 where id = 208684


update all_data set stationoff = 6, stationoff_other = 'GLEN RIDGE', stationoff_other_num = 417 where id = 206705
--205758
--208684
update all_data set stationoff = 6, stationoff_other = 'GLEN RIDGE', stationoff_other_num = 417 where id = 206824
update all_data set stationoff = 6, stationoff_other = 'MONTCLAIR STATE UNIVERSITY', stationoff_other_num = 420 where id =205381
update all_data set stationoff = 6 where id = 205482
--203263
--update all_data set stationoff = 3 where id = 203263
update all_data set stationoff = 3 where id = 203133
--204055
--203590
update all_data set stationoff = 3 where id = 210910
update all_data set stationoff = 6 where id = 209426

update all_data set stationoff = 3 where id = 203133

select stationoff, tonytrip from all_data where stationoff = 4 
select * from all_data where stationoff = 5 and (tonytrip is not null or emodeny is not null)

select id, stationoff, stationoff_other, dcity, dstate from all_data where stationoff = 6
order by stationoff_other

update all_data set stationoff = 2 where id = 207723
select * from all_data where tonytrip = 3 and stationoff <> 2
update all_data set stationoff = 2 where tonytrip = 3 and stationoff <> 2

select id, tonytrip, emodeny, D_formatted_address from all_data where tonytrip = 3 and hobpath is null

update all_data set hobpath = 'WTC', hobpath_num = 10 where id = 204043
update all_data set hobpath = '14th St', hobpath_num = 13 where id = 206146
update all_data set hobpath = '14th St', hobpath_num = 13 where id = 214734
update all_data set hobpath = 'WTC', hobpath_num = 10 where id = 202463

select id, tonytrip, emodeny, hobferry, D_formatted_address from all_data where tonytrip = 4 and hobferry is null

update all_data set hobferry = 'WFC' where id = 205258
update all_data set hobferry = 'WFC' where id = 206219
update all_data set hobferry = 'WFC' where id = 206959
update all_data set hobferry = 'WFC' where id = 207409
update all_data set hobferry = 'WFC' where id = 207715
update all_data set hobferry = 'WFC' where id = 208102
update all_data set hobferry = 'Pier II/ Wall St.' where id = 206959
update all_data set hobferry = 'Pier II/ Wall St.' where id = 212559
update all_data set hobferry = 'Pier II/ Wall St.' where id = 202581

select id, tonytrip, emodeny, nysubway, D_formatted_address, D_Address
from all_data where emodeny = 2 and nysubway is null and d_formatted_address is not null
order by D_route
select nysub from all_data

update all_data set nysubway_line = '1', nysubway_station_num = 1007, nysubway_station = 'Christopher St-Sheridan Sq (1)' where id = 204597
update all_data set nysubway_line = 'M', nysubway_station_num = 1374, nysubway_station = '23rd St' where id = 206495
update all_data set nysubway_line = 'E', nysubway_station_num = 1114, nysubway_station = 'Lexington Av-53 St (E,V)/51 St (6)' where id = 209700
update all_data set nysubway_line = '2,3', nysubway_station_num = 1038, nysubway_station = 'Central Park North-110 St (2,3)' where id = 212488
update all_data set nysubway_line = '1', nysubway_station_num = 1023, nysubway_station = '116 St-Columbia University (1)' where id = 209920
update all_data set nysubway_line = 'C,E,L', nysubway_station_num = 1447, nysubway_station = '1 Av (L)' where id = 213043
update all_data set nysubway_line = '1,2,3,7', nysubway_station_num = 1163, nysubway_station = '33 St-Rawson St (7)' where id = 203318
update all_data set nysubway_line = '1,2,3,R', nysubway_station_num = 1263, nysubway_station = '65 St (G,R,V)' where id = 209814
update all_data set nysubway_line = 'F', nysubway_station_num = 1344, nysubway_station = 'Carroll St (F,G)' where id = 213010
update all_data set nysubway_line = 'N,R,4,5,6', nysubway_station_num = 1118, nysubway_station = '86 St (4,5,6)' where id = 205430
update all_data set nysubway_line = 'A,J', nysubway_station_num = 1330, nysubway_station = '75 St (J,Z)' where id = 205597
update all_data set nysubway_line = 'C,E', nysubway_station_num = 1185, nysubway_station = '50 St (C,E)' where id = 205675
update all_data set nysubway_line = 'C,E', nysubway_station_num = 1185, nysubway_station = '50 St (C,E)' where id = 202721
update all_data set nysubway_line = 'D', nysubway_station_num = 1214, nysubway_station = 'Bedford Park Blvd (B,D)' where id = 207980
update all_data set nysubway_line = 'F', nysubway_station_num = 1405, nysubway_station = 'Coney Island-Stillwell Av (D,F,N,Q)' where id = 210933
update all_data set nysubway_line = '1', nysubway_station_num = 1018, nysubway_station = '79 St (1)' where id = 213851
update all_data set nysubway_line = '2,3', nysubway_station_num = 1070, nysubway_station = 'Fulton St (J,M,Z,2,3,4,5)/Broadway-Nassau' where id = 202214
update all_data set nysubway_line = '1', nysubway_station_num = 1015, nysubway_station = '59 St-Columbus Circle (A,B,C,D,1)' where id = 205683
update all_data set nysubway_line = '1,2,3', nysubway_station_num = 1003, nysubway_station = 'Chambers St (1,2,3)' where id = 205899
update all_data set nysubway_line = '1,2,3,L', nysubway_station_num = 1447, nysubway_station = '1 Av (L)' where id = 205777
update all_data set nysubway_line = 'D', nysubway_station_num = 1126, nysubway_station = '161 St-Yankee Stadium (B,D,4)' where id = 205768
update all_data set nysubway_line = 'E', nysubway_station_num = 1255, nysubway_station = '5 Av-53 St (E,V)' where id = 207396
update all_data set nysubway_line = 'E', nysubway_station_num = 1114, nysubway_station = 'Lexington Av-53 St (E,V)/51 St (6)' where id = 208814
update all_data set nysubway_line = 'E,6', nysubway_station_num = 1116, nysubway_station = '68 St-Hunter College (6)' where id = 212510
update all_data set nysubway_line = 'E,6', nysubway_station_num = 1116, nysubway_station = '68 St-Hunter College (6)' where id = 203299
update all_data set nysubway_line = 'N,R,6', nysubway_station_num = 1117, nysubway_station = '77 St (6)' where id = 204048
update all_data set nysubway_line = '1,2,3', nysubway_station_num = 1003, nysubway_station = 'Chambers St (1,2,3)' where id = 204038
update all_data set nysubway_line = 'F,M', nysubway_station_num = 1317, nysubway_station = 'Flushing Av (J,M)' where id = 206910
update all_data set nysubway_line = 'A', nysubway_station_num = 1241, nysubway_station = 'Aqueduct-North Conduit Av (A)' where id = 203742
update all_data set nysubway_line = 'D,F', nysubway_station_num = 1299, nysubway_station = '47-50 Sts-Rockefeller Center (B,D,F,V)' where id = 212250
update all_data set nysubway_line = 'D,F', nysubway_station_num = 1299, nysubway_station = '47-50 Sts-Rockefeller Center (B,D,F,V)' where id = 203274
update all_data set nysubway_line = 'F,6', nysubway_station_num = 1116, nysubway_station = '68 St-Hunter College (6)' where id = 204289
update all_data set nysubway_line = 'N,R,Q', nysubway_station_num = 1407, nysubway_station = 'Union St (M,R)' where id = 203721
update all_data set nysubway_line = '1,2,3', nysubway_station_num = 1003, nysubway_station = 'Chambers St (1,2,3)' where id = 206317
update all_data set nysubway_line = 'D,F', nysubway_station_num = 1299, nysubway_station = '47-50 Sts-Rockefeller Center (B,D,F,V)' where id = 210673
update all_data set nysubway_line = 'C,E', nysubway_station_num = 1179, nysubway_station = 'Spring St (C,E)' where id = 212240
update all_data set nysubway_line = 'A,C,E', nysubway_station_num = 1069, nysubway_station = 'Chambers St (A,C)/WTC (E)/Park Place' where id = 202003
update all_data set nysubway_line = '1', nysubway_station_num = 1023, nysubway_station = '116 St-Columbia University (1)' where id = 208538
update all_data set nysubway_line = '1,2,3', nysubway_station_num = 1008, nysubway_station = '14 St (F,V,1,2,3)/6 Av (L)' where id = 206487
update all_data set nysubway_line = 'A,C,E', nysubway_station_num = 1181, nysubway_station = '14 St (A,C,E)/8 Av (L)' where id = 210101
update all_data set nysubway_line = 'C,E', nysubway_station_num = 1500, nysubway_station = '42nd St Port Authority Bus Terminal (A,C,E)' where id = 204604
update all_data set nysubway_line = 'C,E', nysubway_station_num = 1500, nysubway_station = '42nd St Port Authority Bus Terminal (A,C,E)' where id = 202847
update all_data set nysubway_line = 'C,E', nysubway_station_num = 1185, nysubway_station = '50 St (C,E)' where id = 209595
update all_data set nysubway_line = 'E', nysubway_station_num = 1255, nysubway_station = '5 Av-53 St (E,V)' where id = 205964
update all_data set nysubway_line = 'E', nysubway_station_num = 1255, nysubway_station = '5 Av-53 St (E,V)' where id = 214280
update all_data set nysubway_line = '1', nysubway_station_num = 1015, nysubway_station = '59 St-Columbus Circle (A,B,C,D,1)' where id = 207269
update all_data set nysubway_line = '2,3', nysubway_station_num = 1071, nysubway_station = 'Wall St (2,3)' where id = 206256
update all_data set nysubway_line = '2,3', nysubway_station_num = 1071, nysubway_station = 'Wall St (2,3)' where id = 207163
update all_data set nysubway_line = '1', nysubway_station_num = 1016, nysubway_station = '66 St-Lincoln Center (1)' where id = 205248
update all_data set nysubway_line = '1,2,3', nysubway_station_num = 1017, nysubway_station = '72 St (1,2,3)' where id = 202765

select * from all_data where stationoff = 1 

select * from all_data where emodenj = 4 and enjpath is null

update all_data set enjpath = 'Journal Square', enjpath_num = 22 where id = 206997

select id, emodenj, enjhblr, d_address, d_formatted_address from all_data where emodenj = 5 and enjhblr is null
order by dstreet, dplace

update all_data set enjhblr = 'Exchange Place', enjhblr_num = 12 where id = 205170
update all_data set enjhblr = 'Exchange Place', enjhblr_num = 13 where id = 207641
update all_data set enjhblr = 'Danforth Ave.', enjhblr_num = 3 where id = 202276
update all_data set enjhblr = '34th St.', enjhblr_num = 1 where id = 206029
update all_data set enjhblr = 'Exchange Place', enjhblr_num = 12 where id = 206253
update all_data set enjhblr = 'Exchange Place', enjhblr_num = 13 where id = 211627
update all_data set enjhblr = 'Essex St.', enjhblr_num = 11 where id = 207646
update all_data set enjhblr = 'Essex St.', enjhblr_num = 12 where id = 202365
update all_data set enjhblr = 'Exchange Place', enjhblr_num = 13 where id = 206271
update all_data set enjhblr = 'Exchange Place', enjhblr_num = 14 where id = 207159
update all_data set enjhblr = 'Harborside', enjhblr_num = 13 where id = 207168
update all_data set enjhblr = 'Newport Mall', enjhblr_num = 15 where id = 205037
update all_data set enjhblr = 'Newport Mall', enjhblr_num = 16 where id = 202459
update all_data set enjhblr = 'Newport Mall', enjhblr_num = 17 where id = 202181
update all_data set enjhblr = 'Harsimus Cove', enjhblr_num = 14 where id = 207545
update all_data set enjhblr = 'Newport Mall', enjhblr_num = 15 where id = 206131
update all_data set enjhblr = 'Newport Mall', enjhblr_num = 16 where id = 207650


select id, emodenj, enjnwksub, d_address, d_formatted_address from all_data where emodenj = 6 and enjnwksub is null
order by dstreet, dplace 

update all_data set enjnwksub_station = 'Newark Penn', enjnwksub_num = 12 where id = 203526
update all_data set enjnwksub_station = 'Washington Park', enjnwksub_num = 16 where id = 206552

select * from all_data where emodenj = 9 and enjtrain is null

flip 205394

update all_data set emodenj = 1 where id = 202278

update all_data set 
DSTREET = H_STREET
, DCITY = H_CITY
, DSTATE = H_STATE
, DZIP = H_ZIP
, D_Address = H_Address
, D_formatted_address = H_formatted_address
, D_street_number = H_street_number
, D_route = H_route
, D_country = H_country
, D_administrative_area_level1 = H_administrative_area_level1
, D_administrative_area_level2 = H_administrative_area_level2
, D_locality = H_locality
, D_postal_code = H_postal_code
, D_lat = H_lat
, D_lng = H_lng
, D_Exact_Match = H_Exact_Match
, D_location_type_value = H_location_type_value
, D_types_value = H_types_value
, D_Good_Check = H_Good_Check
where id = 205394

update all_data set OPLACE = 'MONTCLAIR STATE UNIVERSITY' , OSTREET = '1 NORMAL AVE' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = 'MONTCLAIR STATE UNIVERSITY, 1 NORMAL AVE, MONTCLAIR, NJ ' , O_formatted_address = 'Montclair State University, 1 Normal Ave, Montclair, NJ 07043, USA' , O_street_number = 1 , O_route = 'Normal Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8613071 , O_lng = -74.1984254 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = NULL , O_good_check = 1 
where ID = 205394


select id, routenum, stationon_key, O_formatted_address, d_formatted_address from all_data where flag_flip_trip = 1

update all_data set flag_flip_trip = null where id = 204164 
	or id = 205381
	or id = 203133
	or id = 205385
	or id = 205837
	or id = 206076

update all_data set flag_njt_review = 1 where id = 205381

select * from all_data where id = 203133

update all_data set 
ORIGIN = DESTINATION
, ORIGIN_OTHER = DEST_OTHER
, OPLACE = DPLACE
, OSTREET = DSTREET
, OCITY = DCITY
, OSTATE = DSTATE
, OZIP = DZIP
, O_Address = D_Address
, O_formatted_address = D_formatted_address
, O_street_number = D_street_number
, O_route = D_route
, O_country = D_country
, O_administrative_area_level1 = D_administrative_area_level1
, O_administrative_area_level2 = D_administrative_area_level2
, O_locality = D_locality
, O_postal_code = D_postal_code
, O_lat = D_lat
, O_lng = D_lng
, O_Exact_Match = D_Exact_Match
, O_location_type_value = D_location_type_value
, O_types_value = D_types_value
, O_Good_Check = D_Good_Check
, DESTINATION = ORIGIN
, DEST_OTHER = ORIGIN_OTHER
, DPLACE = OPLACE
, DSTREET = OSTREET
, DCITY = OCITY
, DSTATE = OSTATE
, DZIP = OZIP
, D_Address = O_Address
, D_formatted_address = O_formatted_address
, D_street_number = O_street_number
, D_route = O_route
, D_country = O_country
, D_administrative_area_level1 = O_administrative_area_level1
, D_administrative_area_level2 = O_administrative_area_level2
, D_locality = O_locality
, D_postal_code = O_postal_code
, D_lat = O_lat
, D_lng = O_lng
, D_Exact_Match = O_Exact_Match
, D_location_type_value = O_location_type_value
, D_types_value = O_types_value
, D_Good_Check = O_Good_Check
, FLAG_FLIP_TRIP = null
where id = 205386 or id = 206824 or id = 212620

select * from all_data where stationoff is null --126 rows
and d_good_check = 1 -- 3 rows

update all_data set 
ORIGIN = DESTINATION
, ORIGIN_OTHER = DEST_OTHER
, OPLACE = DPLACE
, OSTREET = DSTREET
, OCITY = DCITY
, OSTATE = DSTATE
, OZIP = DZIP
, O_Address = D_Address
, O_formatted_address = D_formatted_address
, O_street_number = D_street_number
, O_route = D_route
, O_country = D_country
, O_administrative_area_level1 = D_administrative_area_level1
, O_administrative_area_level2 = D_administrative_area_level2
, O_locality = D_locality
, O_postal_code = D_postal_code
, O_lat = D_lat
, O_lng = D_lng
, O_Exact_Match = D_Exact_Match
, O_location_type_value = D_location_type_value
, O_types_value = D_types_value
, O_Good_Check = D_Good_Check
, DESTINATION = ORIGIN
, DEST_OTHER = ORIGIN_OTHER
, DPLACE = OPLACE
, DSTREET = OSTREET
, DCITY = OCITY
, DSTATE = OSTATE
, DZIP = OZIP
, D_Address = O_Address
, D_formatted_address = O_formatted_address
, D_street_number = O_street_number
, D_route = O_route
, D_country = O_country
, D_administrative_area_level1 = O_administrative_area_level1
, D_administrative_area_level2 = O_administrative_area_level2
, D_locality = O_locality
, D_postal_code = O_postal_code
, D_lat = O_lat
, D_lng = O_lng
, D_Exact_Match = O_Exact_Match
, D_location_type_value = O_location_type_value
, D_types_value = O_types_value
, D_Good_Check = O_Good_Check
, FLAG_FLIP_TRIP = null
, stationoff = 6
, stationoff_other = 'Bloomfield'
, stationon_key = 15
, stationoff_other_num = 418
where id = 205892

update all_data set stationoff = 2 where id = 202185 or id = 202289

select id, tonytrip, emodeny, emodenj from all_data where stationoff is null

select * from all_data where id = 207918
update all_data set FLAG_MARK_BAD = 1 where id = 207918

select survey_final_code, count(*), o_good_check, stationon_key, d_good_check, stationoff from (
	select 
		case
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
		, o_good_check
		, case when stationon_key is not null then 1
				else null
			end as stationon_key
		, d_good_check
		, case when stationoff is not null then 1
				else null
			end as stationoff
	from all_data)a
	group by survey_final_code, o_good_check, stationon_key, d_good_check, stationoff
	order by survey_final_code



select * from all_data where d_good_check is null
update all_data set d_good_check = 0 where d_good_check is null

select id,stationon_key, routenum, O_formatted_address, D_formatted_address from all_data where ocity = dcity

select * from all_data where o_good_check = 0 and (amode = 9 or odist < 6)

select survey_final_code
		,case
			when survey_final_code < 4 then 1
			when survey_final_code = 4 then 0
			when survey_final_code = 5 then 1
			when survey_final_code = 6 then 1
			when survey_final_code = 7 then 0
			when survey_final_code = 8 then 0
			when survey_final_code = 9 then 0
			when survey_final_code = 10 then 1
			when survey_final_code = 11 then 0
			when survey_final_code = 12 then 1
			when survey_final_code = 13 then 0
		end as record_keep
		,count(*) from Full_Dataset
group by survey_final_code
order by survey_final_code

select trainum, count(*) as num from full_dataset --where survey_final_code = 4 or survey_final_code = 11
	group by trainum
	order by trainum

select STATIONON, stationon_key, count(*) as num from full_dataset where survey_final_code = 4 or survey_final_code = 11
	group by stationon, stationon_key
	order by stationon_key

select trainum, stationon, stationon_key, count(*) as num from full_dataset where survey_final_code = 4 or survey_final_code = 11
	group by trainum, stationon, stationon_key
	order by trainum, stationon_key



select * from all_data where h_good_check = 1 and origin = 1 and o_good_check = 0 -- may want to review
select * from all_data where h_good_check = 1 and destination = 1 and d_good_check = 0 --This is fine.

select stationon_key from all_data where sheet_num = '2024'
select stationon_key, surveyor from all_data where sheet_num = '2024'


GO

select id, trainum, stationon_key, survey_final_code from full_dataset where flag_mark_bad = 1

select * from full_dataset where trainum = 204 and stationon_key = 19 and flag_good = 0


update all_data set DPLACE = 'Fordham University' , DSTREET = '441 E. Fordham Rd' , DCITY = 'Bronx' , DSTATE = 'NY' , DZIP = 10458 , D_Address = '441 E Fordham Rd, Bronx, NY 10458' , D_formatted_address = '441 E Fordham Rd, Bronx, NY 10458' , D_street_number = 441 , D_route = 'E Fordham Rd' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'Bronx County' , D_locality = 'Bronx' , D_postal_code = 10458 , D_lat = 40.861532 , D_lng = -73.8891687 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 
where ID = 206705

update all_data set OPLACE = '' , OSTREET = '' , OCITY = '' , OSTATE = 'NJ' , OZIP =  null, O_Address = '' , O_formatted_address = '' , O_street_number = null , O_route = '' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = '' , O_locality = '' , O_postal_code = 0 , O_lat = 0 , O_lng = 0 , O_exact_match = 0 , O_location_type_value = 0 , O_types_value = 0 , O_good_check = 0 
where ID = 205663
or id = 206144
or id = 206852
or id = 212835



--Requested Updates from NJT:
--•         Serial ID 204150
--o   Deboarding Station= Mount Arlington
--o   Final Destination= Caring Partners
--     200 Valley Rd #406
--     Mt Arlington, NJ 07856
update all_data set stationoff = 6, stationoff_other = 'Mount Arlington', stationoff_other_num = 419, mtarl_wayn23 = 1

where id = 204150

select * from all_data where stationoff_other is not null

update all_data set stationoff_other = 'MSU' where stationoff_other = 'Montclair State University'

--•         Serial ID 204621
--o   Deboarding Station=NY Penn
--o   Final Destination=New York, NY
update all_data set stationoff = 1, Dstate = 'NY', dcity = 'New York', d_administrative_area_level1 = 'NY', d_locality = 'New York', d_administrative_area_level2 = 'Manhattan', d_good_check = 1, d_types_value = 3
where id = 204621
 
--•         Serial ID 204785
--o   Boarding Station=Newark Broad Street  we will NOT keep record for MoBo but will save it for M&E
update all_data set stationon = 25 where id = 204785
 
--•         Serial ID 207918
--o   Deboarding Station= NY Penn
--o   Final Destination=New York, NY
update all_data set stationoff = 1, Dstate = 'NY', dcity = 'New York', d_administrative_area_level1 = 'NY', d_locality = 'New York', d_administrative_area_level2 = 'Manhattan', d_good_check = 1, d_types_value = 3
where id = 207918
 
--•         Serial ID 207988
--o   Deboarding Station= Boonton
update all_data set stationoff = 6, stationoff_other = 'Boonton', stationoff_other_num = 406
where id = 207988
 
--•         Serial ID 202217
--o   Deboarding Station= Hoboken
update all_data set stationoff = 2 where id = 202217

update all_data set 
	  origin = 1
	, OSTREET = H_STREET
	, OCITY = H_CITY
	, OSTATE = H_STATE
	, OZIP = H_ZIP
	, O_Address = H_Address
	, O_formatted_address = H_formatted_address
	, O_street_number = H_street_number
	, O_route = H_route
	, O_country = H_country
	, O_administrative_area_level1 = H_administrative_area_level1
	, O_administrative_area_level2 = H_administrative_area_level2
	, O_locality = H_locality
	, O_postal_code = H_postal_code
	, O_lat = H_lat
	, O_lng = H_lng
	, O_Exact_Match = H_Exact_Match
	, O_location_type_value = H_location_type_value
	, O_types_value = H_types_value
	, O_Good_Check = H_Good_Check
where id = 205025
or id = 205026
or id = 206213
or id = 205113
or id = 204270
or id = 206328
or id = 209427
or id = 203061
or id = 209670
or id = 210807
or id = 210413
or id = 209443
or id = 210907
or id = 204595
or id = 208547
or id = 209806
or id = 205534
or id = 210049
or id = 202794
or id = 210577
or id = 210949
or id = 204358
or id = 203509
or id = 206699
or id = 209734
or id = 212811
or id = 212704
or id = 212635
or id = 214308
or id = 209862
or id = 212570
or id = 214537
or id = 204785


update all_data set 
  Destination = 1
, DSTREET = H_STREET
, DCITY = H_CITY
, DSTATE = H_STATE
, DZIP = H_ZIP
, D_Address = H_Address
, D_formatted_address = H_formatted_address
, D_street_number = H_street_number
, D_route = H_route
, D_country = H_country
, D_administrative_area_level1 = H_administrative_area_level1
, D_administrative_area_level2 = H_administrative_area_level2
, D_locality = H_locality
, D_postal_code = H_postal_code
, D_lat = H_lat
, D_lng = H_lng
, D_Exact_Match = H_Exact_Match
, D_location_type_value = H_location_type_value
, D_types_value = H_types_value
, D_Good_Check = H_Good_Check
where id = 205395
or id = 203358
or id = 203440
or id = 205685
or id = 205974

update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Harrison' , DSTATE = 'NJ' , DZIP = 7029 , D_Address = 'Harrison, NJ' , D_formatted_address = 'Harrison, NJ' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Harrison' , D_postal_code = 7029 , D_lat = 40.746792 , D_lng = -74.160292 , D_exact_match = 1 , D_location_type_value = 2 , D_types_value = 3 , D_good_check = 1 
, stationoff = 3
where ID = 204270

update all_data set DPLACE = '' , DSTREET = '1 Hudson Place' , DCITY = 'Hoboken' , DSTATE = 'NJ' , DZIP = 7030 , D_Address = '1 Hudson Place, Hoboken, NJ' , D_formatted_address = '1 Hudson Place, Hoboken, NJ' , D_street_number = 1 , D_route = 'Hudson Place' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_postal_code = 7030 , D_lat = 40.735359 , D_lng = -74.027207 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 
, stationoff = 2
where ID = 212811

update all_data set DPLACE = '' , DSTREET = '900 Avenue of the Americas' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = '900 Avenue of the Americas, New York, NY' , D_formatted_address = '900 Avenue of the Americas, New York, NY' , D_street_number = 900 , D_route = 'Avenue of the Americas' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.748569 , D_lng = -73.988409 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 
, stationoff = 2, tonytrip = 3,emodeny = 1,  hobpath = 15
where ID = 206328

update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Morris Plains' , DSTATE = 'NJ' , DZIP = 7950 , D_Address = 'Morris Plains, NJ' , D_formatted_address = 'Morris Plains, NJ' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Morris County' , D_locality = 'Morris Plains' , D_postal_code = 7950 , D_lat = 40.834811 , D_lng = -74.481479 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 
, stationoff = 6, stationoff_other = 'Morris Plains', stationoff_other_num = 502
where ID = 206213

update all_data set DPLACE = '' , DSTREET = '7th and 50th' , DCITY = 'New York' , DSTATE = ' NY' , DZIP = 10019 , D_Address = '7th and 50th, New York, NY' , D_formatted_address = '7th Ave and W. 50th St' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10019 , D_lat = 40.761104 , D_lng = -73.983279 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1
,stationoff = 1, amode = 9, odist = 4, tonytrip = 1, emodeny = 1
 where ID = 209806


update all_data set OPLACE = 'MONTCLAIR STATE UNIVERSITY' , OSTREET = '1 NORMAL AVE' , OCITY = 'MONTCLAIR' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = 'MONTCLAIR STATE UNIVERSITY, 1 NORMAL AVE, MONTCLAIR, NJ ' , O_formatted_address = 'Montclair State University, 1 Normal Ave, Montclair, NJ 07043, USA' , O_street_number = 1 , O_route = 'Normal Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8613071 , O_lng = -74.1984254 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 
where ID = 205395


update all_data set DPLACE = '' , DSTREET = '899 10th Ave' , DCITY = 'New York' , DSTATE = ' NY' , DZIP = 10019 , D_Address = '899 10th Ave, New York, NY 10019' , D_formatted_address = '899 10th Ave, New York, NY 10019' , D_street_number = 899 , D_route = '10th Ave' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10019 , D_lat = 40.770313 , D_lng = -73.98828 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 
, tonytrip = 1, emodeny = 2, nysubway = 'A to 59th st', nysubway_line = 'A', nysubway_station_num = 1015, nysubway_station = '59 St-Columbus Circle (A,B,C,D,1)'
where ID = 205395

update all_data set DPLACE = '' , DSTREET = '34th St and 8th' , DCITY = 'New York' , DSTATE = ' NY' , DZIP = 10001 , D_Address = '' , D_formatted_address = '8th Ave & W 34th St New York, NY 10001' , D_street_number =  null, D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.752175 , D_lng = -73.99344 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 
, stationoff = 1, odist = 1, amode = 9, tonytrip = 1, emodeny = 1, [return] = '1', return_1 = 1, rhr = 15, rmin = 47, rampm = 2
where ID = 214537

update all_data set stationoff = 1 where id = 202002

update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = ' NY' , DZIP =  null, D_Address = 'New York, NY' , D_formatted_address = 'New York, NY' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = null , D_lat = null , D_lng = null , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 
, stationoff = 1
where ID = 212704 or id = 209670 or id = 205974

update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = ' NY' , DZIP =  null, D_Address = 'New York, NY' , D_formatted_address = 'New York, NY' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = null , D_lat = null , D_lng = null , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 
, stationoff = 1
where ID = 210413

update all_data set DPLACE = '' , DSTREET = '7th Ave and 36th St' , DCITY = 'New Y' , DSTATE = ' NY' , DZIP = 10018 , D_Address = '7th Ave and 36th St, New York ny' , D_formatted_address = '7th Ave and W. 36th St, New York, NY 10018' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10018 , D_lat = 40.75228 , D_lng = -73.989738 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 
, stationoff = 1, tonytrip = 1
where ID = 209670

update all_data set DPLACE = '' , DSTREET = '32 Old Slip' , DCITY = 'New York' , DSTATE = ' NY' , DZIP = 10005 , D_Address = '32 Old Slip, New York NY 10005' , D_formatted_address = '32 Old Slip, New York NY 10005' , D_street_number = 32 , D_route = 'Old Slip' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10005 , D_lat = 40.703729 , D_lng = -74.007716 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 
, stationoff = 1, tonytrip = 1
where ID = 209443

update all_data set DPLACE = '' , DSTREET = '28th and 7th' , DCITY = 'New York' , DSTATE = ' NY' , DZIP = 10001 , D_Address = '28th and 7th, New York, NY, 10001' , D_formatted_address = '7th Ave and W. 28th St, New York, NY 10001' , D_street_number = 32 , D_route = 'Old Slip' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.747361 , D_lng = -73.993182 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 
, stationoff = 1, tonytrip = 1
where ID = 214308

update all_data set DPLACE = '' , DSTREET = '80 Columbus Circle' , DCITY = 'New York' , DSTATE = ' NY' , DZIP = 10023 , D_Address = '80 Columbus Circle, New York, NY 10023' , D_formatted_address = '80 Columbus Circle, New York NY 10023' , D_street_number = 80 , D_route = 'Columbus Circle' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10023 , D_lat = 40.76806 , D_lng = -73.98219 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 
, stationoff = 1, tonytrip = 1, emodeny = 7, odist = 1, rhr = 17, rmin = 30, return_1 = 1, rfreq = 3, tripfreq = 3, whytrip = 1, howlong = 3
where ID = 203061

update all_data set DPLACE = '' , DSTREET = '3rd Ave and 44th St' , DCITY = 'New York' , DSTATE = ' NY' , DZIP = 10017 , D_Address = '3rd Ave and 44th St, New York, NY 10017' , D_formatted_address = '3rd Ave and E. 44th St, New York, NY 10017' , D_street_number =  null, D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10017 , D_lat = 40.752108 , D_lng = -73.973343 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 
, stationoff = 1, tonytrip = 1
where ID = 209734

update all_data set DPLACE = '' , DSTREET = '227 W. 27th St' , DCITY = 'New York' , DSTATE = ' NY' , DZIP = 10001 , D_Address = '227 W. 27th St, New York NY 10001' , D_formatted_address = '227 W 27th St, New York, NY 10001' , D_street_number = 227 , D_route = 'W 27th St' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.746836 , D_lng = -73.994012 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 
, stationoff = 1, tonytrip = 1
where ID = 204785

update all_data set DPLACE = '' , DSTREET = '59th and Lexingong' , DCITY = 'New York' , DSTATE = ' NY' , DZIP = 10065 , D_Address = '59th and Lexington, New York, NY 10065' , D_formatted_address = '59th St and Lexington Ave, New York, NY 10065' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10065 , D_lat = 40.763134 , D_lng = -73.967737 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 
, stationoff = 1, tonytrip = 1
where ID = 210049

update all_data set DPLACE = 'Times Square' , DSTREET = '' , DCITY = 'New York' , DSTATE = ' NY' , DZIP = 10036 , D_Address = 'Times Square' , D_formatted_address = 'Times Square, New York, NY 10036' , D_street_number =  null, D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10036 , D_lat = 40.758822 , D_lng = -73.985178 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 
, stationoff = 1, tonytrip = 1
where ID = 208547

update all_data set DPLACE = 'Battery Park' , DSTREET = '' , DCITY = 'New York' , DSTATE = ' NY' , DZIP = 10004 , D_Address = 'Battery Park, NY' , D_formatted_address = 'Battery Park, New York, NY 10004' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10004 , D_lat = 40.704197 , D_lng = -74.017017 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 
, stationoff = 1, tonytrip = 1, emodeny = 1
where ID = 212570


--Cleaning flipped trips
update all_data set dplace = null where id = 214746

update all_data set amode = 9, aother = null, stationoff = 6, stationoff_other = 'SUMMIT', stationoff_other_num = 507, emodenj = 9, enjtrain = 'SUMMIT', enjtrain_num = 507
where id = 202747

update all_data set stationoff = 6, stationoff_other = 'EDISON', stationoff_other_num = 905,  emodenj = 9, enjtrain = 'EDISON', enjtrain_num = 905, enjnwksub = null, enjnwksub_num = null 
where id = 206076


update all_data set amode = 9, odist = 1, origin = 2, origin_other = null, stationoff = 3, SEC_TRANSFER = 2, dest_other = null
, DSTREET = H_STREET
, DCITY = H_CITY
, DSTATE = H_STATE
, DZIP = H_ZIP
, D_Address = H_Address
, D_formatted_address = H_formatted_address
, D_street_number = H_street_number
, D_route = H_route
, D_country = H_country
, D_administrative_area_level1 = H_administrative_area_level1
, D_administrative_area_level2 = H_administrative_area_level2
, D_locality = H_locality
, D_postal_code = H_postal_code
, D_lat = H_lat
, D_lng = H_lng
, D_Exact_Match = H_Exact_Match
, D_location_type_value = H_location_type_value
, D_types_value = H_types_value
, D_Good_Check = H_Good_Check
, enjbusrt = 21, enjbus_carrier = 'NJ TRANSIT', enjbus = 'NJT Bus 21 from Newark Penn Station' 
, rbus = null, rbus_carrier = null, rbus_route = null, [return] = 1, return_1 = 1, return_2 = 0
, rhr = 7, rampm = 1
where id = 205386

update all_data set odist = 4, odist_spec = null, stationoff = 1, destination = 3, dplace = 'Central Park'
, dstreet = null, dcity = 'New York', dstate = 'NY', dzip = 10024, d_address = 'Central Park', d_formatted_address = 'Central Park, New York, NY 10024, USA'
, d_street_number = null, d_route = null, d_country = 'US', D_administrative_area_level1 = 'NY', D_administrative_area_level2 = 'New York County'
, D_postal_code = 10024, d_lat = 40.7828647, D_lng = -73.9653551, D_Exact_Match = 1, D_location_type_value = 1, D_types_value = 1, d_good_check = 1
, emodenj = null, tonytrip = 1, emodeny = 2, NYSUBWAY = 'N/Q/R 59yh Street/Lexington', NYSUBWAY_LINE = 'N/R/Q'
, nysubway_station = 'Lexington Av (N,R,W)/59 St (4,5,6)', NYSUBWAY_STATION_NUM = 1115, rhr = null, rmin = null
where id = 206824

212620  OKPlease change ORIGIN=1(Home); Please change ODIST=2 (1/4-1/2 mile);
 Please change DESTINATION=2(Work); Please update DZIP=07094 and geocoding variable if needed; Please clear 
RBUS_AGG	RBUS_CARRIER	RBUS_ROUTE

update all_data set origin = 1, odist = 2, destination = 2, dzip = 07094, D_postal_code = 07094, 
RBUS = null, rbus_carrier = null, rbus_route = null
where id = 212620

select * from all_data where id = 212620

update all_data set stationon_key = 16, amode = 9, parktype = null, origin = 3, odist = 1, dest_other = null, return_3 = 0
, [return] = 1, return_1 = 1, tkttype = 9
where id = 205892



update all_data set emodenj = null where id = 202005

alter table all_data 
add TRAIN_LINE_CODE int

update all_data set train_line_code = 5

update all_data set train_line_code = 4 where id = 207272

update all_data set train_line_code = 11 where id = 203633
or id = 203634
or id = 203637
or id = 203639
or id = 203856
or id = 204049
or id = 204785

update all_data set FLAG_MARK_BAD = 1 where id = 204132

select emodenj from all_data where id = 202192
select tonytrip from all_data where id = 202221


update all_data set dest_other = null where id = 202723

select * from all_data where id = 202772

update all_data set traveltime = 120, emodenj = 9, enjbus = null, enjtrain = 'Hoboken', enjtrain_num = 50
where id = 202757

select * from all_data where id = 202839

update all_data set
origin = 1
 ,OSTREET = H_STREET
	, OCITY = H_CITY
	, OSTATE = H_STATE
	, OZIP = H_ZIP
	, O_Address = H_Address
	, O_formatted_address = H_formatted_address
	, O_street_number = H_street_number
	, O_route = H_route
	, O_country = H_country
	, O_administrative_area_level1 = H_administrative_area_level1
	, O_administrative_area_level2 = H_administrative_area_level2
	, O_locality = H_locality
	, O_postal_code = H_postal_code
	, O_lat = H_lat
	, O_lng = H_lng
	, O_Exact_Match = H_Exact_Match
	, O_location_type_value = H_location_type_value
	, O_types_value = H_types_value
	, O_Good_Check = H_Good_Check
where id =202839

select * from all_data where id = 203597

update all_data set emodenj = null where id = 203346

update all_data set [return] = 1, return_1 = 1, return_6 = 0, return_text = null
where id = 203708

select * into all_data_bkup_2_5_16 from all_data

select * into all_data_new from all_data_bkup_2_5_16 

select * from all_data where id = 203816

update all_data set tonytrip = 1, emodeny = 2, emodenj = null, enjpath = null, enjpath_num = null
where id = 203816

update all_data set emodenj = null where id = 204633

update all_data set emodenj = null where id = 204869

update all_data set emodenj = null where id = 204883

update all_data set dzip = 10013, d_postal_code = 10013 where id = 205184

update all_data set bdhr = 12, bdmin = 2, ampm = 2 where id = 205402

update all_data set dest_other = null where id = 205411

update all_data set bdhr = 12, bdmin = 51, ampm = 2, rhr = 7, rmin = 30, rampm = 1 where id = 205478
update all_data set business3_freq = 4, business2_spend = 20, business_import = 3 where id = 205478

update all_data set emodeny = 2, nysubway = 'Laguardia Airport', nysubway_line = 'E', 
nysubway_station = '74-Broadway (7)/Jackson Hts-Roosevelt Av', nysubway_station_num = 1169 
where id = 205486

update all_data set dzip = 10001, D_postal_code = 10001 where id = 205487

update all_data set emodeny = 2, nysubway = 'Laguardia Airport', nysubway_line = 'E', 
nysubway_station = '74-Broadway (7)/Jackson Hts-Roosevelt Av', nysubway_station_num = 1169,
emodenj = null
where id = 205491

update all_data set emodenj = null where id = 205679

update all_data set [RETURN] = '1', return_1 = 1 where id = 205754

update all_data set [RETURN] = '1', return_1 = 1, return_6 = 0 where id = 206035

update all_data set emodeny = 2 where id = 206488

select * from all_data where emodeny is null and (nysubway is not null or nybus is not null or nylirr is not null or nyother is not null)

update all_data set emodeny = 2 where emodeny is null and nysubway is not null

update all_data set destination = 1
, DSTREET = H_STREET
, DCITY = H_CITY
, DSTATE = H_STATE
, DZIP = H_ZIP
, D_Address = H_Address
, D_formatted_address = H_formatted_address
, D_street_number = H_street_number
, D_route = H_route
, D_country = H_country
, D_administrative_area_level1 = H_administrative_area_level1
, D_administrative_area_level2 = H_administrative_area_level2
, D_locality = H_locality
, D_postal_code = H_postal_code
, D_lat = H_lat
, D_lng = H_lng
, D_Exact_Match = H_Exact_Match
, D_location_type_value = H_location_type_value
, D_types_value = H_types_value
, D_Good_Check = H_Good_Check
, emodenj = null
where id = 206498

update all_data set emodenj = null where id = 206499
update all_data set emodenj = null where id = 206683
update all_data set emodenj = null, enjother = null, return_text = null where id = 206708
update all_data set emodenj = null where id = 206712

update all_data set dzip = 07104, D_postal_code = 07104 where id = 207180
update all_data set [return_text] = '1,2', return_1 = 1 where id = 207998

update all_data set stationoff = 6, stationoff_other = 'Mahwah', stationoff_other_num = 210 where id = 208060
update all_data set enjother = null where id = 208576

update all_data set emodenj = null where id = 209313
update all_data set emodenj = null where id = 209461
update all_data set emodenj = null, return_text = '1', return_1 = 1 where id = 209673
update all_data set dzip = 10001, D_postal_code = 10001 where id = 209691
update all_data set bdhr = 7, bdmin = 27, return_1 = 1 where id = 209793
update all_data set emodenj = null where id = 210067
update all_data set emodenj = null where id = 210154
update all_data set emodenj = null, whytrip = 3  where id = 210170
update all_data set emodenj = null, return_1 = 1  where id = 210439


update all_data set 
	OSTREET = H_STREET
	, OCITY = H_CITY
	, OSTATE = H_STATE
	, OZIP = H_ZIP
	, O_Address = H_Address
	, O_formatted_address = H_formatted_address
	, O_street_number = H_street_number
	, O_route = H_route
	, O_country = H_country
	, O_administrative_area_level1 = H_administrative_area_level1
	, O_administrative_area_level2 = H_administrative_area_level2
	, O_locality = H_locality
	, O_postal_code = H_postal_code
	, O_lat = H_lat
	, O_lng = H_lng
	, O_Exact_Match = H_Exact_Match
	, O_location_type_value = H_location_type_value
	, O_types_value = H_types_value
	, O_Good_Check = H_Good_Check
where id = 210541

update all_data set emodenj = null where id = 210549

update all_data set 
	OSTREET = H_STREET
	, OCITY = H_CITY
	, OSTATE = H_STATE
	, OZIP = H_ZIP
	, O_Address = H_Address
	, O_formatted_address = H_formatted_address
	, O_street_number = H_street_number
	, O_route = H_route
	, O_country = H_country
	, O_administrative_area_level1 = H_administrative_area_level1
	, O_administrative_area_level2 = H_administrative_area_level2
	, O_locality = H_locality
	, O_postal_code = H_postal_code
	, O_lat = H_lat
	, O_lng = H_lng
	, O_Exact_Match = H_Exact_Match
	, O_location_type_value = H_location_type_value
	, O_types_value = H_types_value
	, O_Good_Check = H_Good_Check
where id = 210559

update all_data set routenum = 6216 where id = 210690
update all_data set emodenj = null where id = 210931
update all_data set emodenj = null where id = 210953
update all_data set emodenj = null where id = 211031
update all_data set emodenj = null where id = 211164
update all_data set tonytrip = 1, return_1 = 1 where id = 211180

update all_data set bdmin = 17, emodenj = null where id = 211189
update all_data set routenum = 6210, emodenj = null where id = 212136
update all_data set tonytrip = 1 where id = 212275
update all_data set bdmin = 34 where id = 212441
update all_data set emodenj = null where id = 212500
update all_data set return_1 = 1, return_6 = 0, return_text = null where id = 212528
update all_data set routenum = 6216, whytrip = 7, TRIPOTHR = 'Job Interview' where id = 212583
update all_data set return_1 = 1 where id = 213010
update all_data set return_1 = 1 where id = 213850
update all_data set return_1 = 1 where id = 213856
update all_data set stationon_key = 6, bdmin = 41 where id = 207272

select * from all_data where id = 207272

update all_data set dzip = 10005, d_postal_code = 10005 where id = 206394
update all_data set return_1 = 1 where id = 206394
update all_data set return_1 = 1 where id = 206424
update all_data set return_1 = 1 where id = 206428
update all_data set emodenj = null, return_1 = 1 where id = 206623
update all_data set emodenj = null, ENJOTHER = null  where id = 203151
update all_data set return_1 = 1 where id = 203300
update all_data set bdmin = 17, return_1 = 1 where id = 203332
update all_data set return_1 = 1 where id = 203345
update all_data set emodenj = null, return_1 = 1 where id = 203363

--select * into all_data_bkup_4_6_16 from all_data

update all_data set emodenj = null, return_1 = 1 where id = 203364
update all_data set emodeny = 5, return_1 = 1 where id = 203406
update all_data set emodenj = null, return_1 = 1 where id = 203478
update all_data set destination = 2 where id = 203479
update all_data set emodenj = null, return_1 = 1 where id = 203497
update all_data set dzip = 10017, d_postal_code = 10017 where id = 203704
update all_data set tonytrip = 1 where id = 204171
update all_data set dzip = 10014, d_postal_code = 10014 where id = 204280
update all_data set emodenj = null, return_1 = 1 where id = 204630
update all_data set return_1 = 1 where id = 205038
update all_data set dzip = 10035, d_postal_code = 10035 where id = 205179
update all_data set flag_different_line = 1 where id = 203133
update all_data set stationon_key = 23 where id = 212528
update all_data set routenum = 6206 where id = 212583
update all_data set flag_different_line = 1 where id = 207272
update all_data set flag_Mark_bad = 1 where id = 207404 or id = 202217
update all_data set routenum = 6210 where id = 212126

update all_data set emodenj = null where id = 209682
or id = 214275
or id = 209496

update all_data set emodenj = null, enjpath = null, return_1 = 1 where id = 202469
update all_data set emodenj = null, return_1 = 1 where id = 202080 or id = 210189
update all_data set hobpath = null where id = 214741

update all_data set tonytrip = null, emodenj = 5, return_1 = 1, return_6 = 6, 
rhr = null, rmin = null, rampm = null where id = 202153

update all_data set rhr = 10, rmin = 30, rampm = 1 where id = 205745
update all_data set destination = 3 where id = 205684

set emodenj = 5, enjhblr = "Exchange Place"
update all_data set emodenj = 5, enjhblr = 'Exchange Place', enjhblr_num = 12 where id = 207641
update all_data set emodenj = null where id = 207980
or id = 206279
or id = 209342
update all_data set origin = 3, origin_other = 'Yogi Berra Museum' where id = 205744
update all_data set origin = 2 where id = 205759
update all_data set origin_other = 'Montclair Heights' where id = 206972
update all_data set return_1 = 1 where id = 206181
or id = 207934
or id = 206259
or id = 211421
or id = 213776
or id = 209374
or id = 210333
update all_data set return_4 = 0 where id = 206259
update all_data set tonytrip = 2, emodenj = null where id = 206154

update all_data set tonytrip = null, emodeny = null, enjhblr = 'Newport', enjhblr_num = 15, enjhblr_station = 'Newport Mall' 
where id = 207545
update all_data set origin = 1, emodenj = null where id = 209551
update all_data set whytrip = 5 where id = 207085
update all_data set return_1 = 1 where id = 212705
update all_data set return_1 = 1 where id = 212557
or id = 209569

update all_data set sec_transfer = 2, emodenj = null, return_1 = 1 where id = 209685
update all_data set routenum = 208 where id = 213538
update all_data set routenum = 6210 where id = 212126

select * from all_data where o_address like '%bay street%'

update all_data set OPLACE = '' , OSTREET = '342 Quaker Church Rd' , OCITY = 'Randolph' , OSTATE = 'NJ' , OZIP = 7869 , O_Address = '342 Quaker Church Rd, Randolph, NJ, 07869' , O_formatted_address = '342 Quaker Church Rd, Randolph, NJ 07869, USA' , O_street_number = 342 , O_route = 'Quaker Church Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Morris County' , O_locality = 'Randolph' , O_postal_code = 7869 , O_lat = 40.8656368 , O_lng = -74.5760684 , O_exact_match = 1 , O_location_type_value = 2 , O_types_value = 1 , O_good_check = 1 where ID = 	206302
update all_data set OPLACE = '' , OSTREET = '45 Walnut Crescent' , OCITY = 'Montcliar' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = '45 Walnut Crescent, Montclair, NJ, 07042' , O_formatted_address = '45 Walnut Crescent, Montclair, NJ 07042, USA' , O_street_number = 45 , O_route = 'Walnut Crescent' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.8138099 , O_lng = -74.203847 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 	203354
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = 'Montclair, NJ, 07042' , O_formatted_address = 'Montclair, NJ 07042, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.821948 , O_lng = -74.2120629 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	202115
or id = 203359	
or id = 208060	
or id = 202768	
or id = 203723	
or id = 204691	
or id = 210067	
or id = 210953	
or id = 204524	
or id = 206617	
or id = 210439	
or id = 210566	
or id = 202314	
or id = 206970	
or id = 202772	
or id = 203283	
or id = 207180	
or id = 209355	
or id = 210170	
or id = 210436	
or id = 210567	
or id = 211085	
or id = 206173	
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Bloomfield' , OSTATE = 'NJ' , OZIP = 7003 , O_Address = 'Bloomfield, NJ, 07003' , O_formatted_address = 'Bloomfield, NJ, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Bloomfield' , O_postal_code = NULL , O_lat = 40.8067546 , O_lng = -74.1854209 , O_exact_match = 0 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	205491
or id = 203007	
or id = 202005	
or id = 203369	
or id = 204633	
or id = 206514	
or id = 206708	
or id = 206712	
or id = 212136	
or id = 210584	
or id = 212500	
or id = 214060	
or id = 214061	
or id = 212479	
or id = 205415	
or id = 206042	
or id = 206714	
or id = 210961	
or id = 212583	
or id = 209492	
or id = 209496	
or id = 210115	
or id = 210189	
or id = 210333	
or id = 212557	
or id = 212705	
or id = 212819	
or id = 212820	
or id = 212834	
or id = 214275	
or id = 202080	
or id = 209056	
or id = 209063	
or id = 209374	
or id = 209485	
or id = 205444	
or id = 205787	
or id = 206623	
or id = 203363	
or id = 203364	
or id = 204171	
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Boonton' , OSTATE = 'NJ' , OZIP = 7005 , O_Address = 'Boonton, NJ, 07005' , O_formatted_address = 'Boonton, NJ 07005, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Morris County' , O_locality = 'Boonton' , O_postal_code = 7005 , O_lat = 40.904019 , O_lng = -74.4087405 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	214741
or id = 207934	
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Dover' , OSTATE = 'NJ' , OZIP = 7801 , O_Address = 'Dover, NJ, 07801' , O_formatted_address = 'Dover, NJ, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Morris County' , O_locality = 'Dover' , O_postal_code = NULL , O_lat = 40.883988 , O_lng = -74.5621025 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	206922
or id = 207508	
or id = 207931	
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Glen Ridge' , OSTATE = 'NJ' , OZIP = 7028 , O_Address = 'Glen Ridge, NJ, 07028' , O_formatted_address = 'Glen Ridge, NJ 07083, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Morris County' , O_locality = 'Glen Ridge' , O_postal_code = 7083 , O_lat = 40.6785108 , O_lng = -74.254486 , O_exact_match = 0 , O_location_type_value = 1 , O_types_value = 2 , O_good_check = 1 where ID = 	202228
or id = 202229	
or id = 202231	
or id = 202723	
or id = 206035	
or id = 205486	
or id = 203848	
or id = 213580	
or id = 208696	
or id = 208941	
or id = 204626	
or id = 213850	
or id = 202227	
or id = 212275	
or id = 202221	
or id = 212317	
or id = 204243	
or id = 213856	
or id = 204543	
or id = 202357	
or id = 203304	
or id = 205487	
or id = 212050	
or id = 212314	
or id = 212441	
or id = 213590	
or id = 213616	
or id = 202469	
or id = 209957	
or id = 210105	
or id = 210112	
or id = 210120	
or id = 212126	
or id = 212225	
or id = 213520	
or id = 213521	
or id = 213538	
or id = 213759	
or id = 213776	
or id = 203151	
or id = 203300	
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Hackettstown' , OSTATE = 'NJ' , OZIP = 7840 , O_Address = 'Hackettstown, NJ, 07840' , O_formatted_address = 'Hackettstown, NJ 07840, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Warren County' , O_locality = 'Hackettstown' , O_postal_code = 7840 , O_lat = 40.8539879 , O_lng = -74.8290555 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	207907
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Lincoln Park' , OSTATE = 'NJ' , OZIP = 7035 , O_Address = 'Lincoln Park, NJ, 07035' , O_formatted_address = 'Lincoln Park, NJ, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Morris County' , O_locality = 'Lincoln Park' , O_postal_code = NULL , O_lat = 40.9242652 , O_lng = -74.3020933 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	207301
or id = 207641	
or id = 207646	
or id = 206389	
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Little Falls' , OSTATE = 'NJ' , OZIP = 70424 , O_Address = 'Little Falls, NJ, 07424' , O_formatted_address = 'Little Falls, NJ, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Little Falls' , O_postal_code = NULL , O_lat = 40.8690101 , O_lng = -74.2082286 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	202025
or id = 207545	
or id = 205238	
or id = 206150	
or id = 206394	
or id = 206424	
update all_data set OPLACE = '' , OSTREET = 'Lorraine Ave and Valley Rd' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = 'Lorraine Ave and Valley Rd, Montclair, NJ, 07042' , O_formatted_address = 'Valley Rd & Lorraine Ave, Montclair, NJ 07043, USA' , O_street_number = NULL , O_route = 'Valley Rd' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8424726 , O_lng = -74.2081194 , O_exact_match = 0 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 	204429
or id = 206554	
or id = 204500	
or id = 204517	
or id = 204630	
or id = 204773	
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = 'Montclair, NJ, 07042' , O_formatted_address = 'Montclair, NJ 07042, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.821948 , O_lng = -74.2120629 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	202190
or id = 206545	
or id = 203812	
or id = 203486	
or id = 205059	
or id = 205384	
or id = 206488	
or id = 207998	
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = 'Montclair, NJ, 07042' , O_formatted_address = 'Montclair, NJ 07042, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.821948 , O_lng = -74.2120629 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	202444
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = 'Montclair, NJ, 07042' , O_formatted_address = 'Montclair, NJ 07042, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.821948 , O_lng = -74.2120629 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	209474
or id = 209593	
or id = 210573	
or id = 210712	
or id = 208690	
or id = 205684	
or id = 205687	
or id = 206164	
or id = 206170	
or id = 206172	
or id = 206178	
or id = 206181	
or id = 206279	
or id = 206359	
or id = 206428	
or id = 206690	
or id = 206700	
or id = 203220	
or id = 203280	
or id = 203406	
or id = 203497	
or id = 203710	
or id = 203838	
or id = 205087	
or id = 205179	
or id = 205182	
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = 'Montclair, NJ, 07043' , O_formatted_address = 'Montclair, NJ 07043, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8400532 , O_lng = -74.2003231 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	202275
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = 'Montclair, NJ, 07043' , O_formatted_address = 'Montclair, NJ 07043, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8400532 , O_lng = -74.2003231 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	209342
or id = 202288	
or id = 202312	
or id = 202327	
or id = 209551	
or id = 209569	
or id = 209682	
or id = 209685	
or id = 209819	
or id = 210416	
or id = 210652	
or id = 211092	
or id = 211409	
or id = 211421	
or id = 211563	
or id = 202153	
or id = 202163	
or id = 202188	
or id = 202189	
or id = 206960	
or id = 206972	
or id = 207079	
or id = 207085	
or id = 207319	
or id = 208288	
or id = 208662	
or id = 205757	
or id = 205759	
or id = 206154	
or id = 206259	
or id = 206407	
or id = 206409	
or id = 206417	
or id = 203125	
or id = 203332	
or id = 203352	
or id = 203478	
or id = 203479	
or id = 203481	
or id = 203552	
or id = 203704	
or id = 203705	
or id = 203707	
or id = 204010	
or id = 204280	
or id = 204591	
or id = 204850	
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Montville' , OSTATE = 'NJ' , OZIP = 7082 , O_Address = 'Montville, NJ, 07082' , O_formatted_address = 'Towaco, NJ 07082, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Morris County' , O_locality = 'NULL' , O_postal_code = 7082 , O_lat = 40.934492 , O_lng = -74.347017 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	206309
or id = 207520	
or id = 203531	
or id = 203532	
or id = 205219	
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = 'Montclair, NJ, 07043' , O_formatted_address = 'Montclair, NJ 07043, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8400532 , O_lng = -74.2003231 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	211031
or id = 203487	
or id = 209313	
or id = 204587	
or id = 209673	
or id = 210412	
or id = 202175	
or id = 202413	
or id = 206611	
or id = 210541	
or id = 202281	
update all_data set OPLACE = '' , OSTREET = 'MSU, 1 Normal Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = 'MSU, 1 Normal Ave, Montclair, NJ, 07043' , O_formatted_address = '1 Normal Ave, Montclair, NJ 07043, USA' , O_street_number = 1 , O_route = 'Normal Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8653394 , O_lng = -74.198553 , O_exact_match = 0 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 	212528
update all_data set OPLACE = '' , OSTREET = 'MSU, 1 Normal Ave' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = 'MSU, 1 Normal Ave, Montclair, NJ, 07043' , O_formatted_address = '1 Normal Ave, Montclair, NJ 07043, USA' , O_street_number = 1 , O_route = 'Normal Ave' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8653394 , O_lng = -74.198553 , O_exact_match = 0 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 	206253
or id = 202758	
or id = 205755	
or id = 202757	
or id = 205478	
or id = 205754	
or id = 203340	
or id = 203345	
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Netcong' , OSTATE = 'NJ' , OZIP = 7857 , O_Address = 'Netcong, NJ, 07857' , O_formatted_address = 'Netcong, NJ, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Morris County' , O_locality = 'Netcong' , O_postal_code = NULL , O_lat = 40.8989877 , O_lng = -74.7065516 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	207980
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = 'Montclair, NJ, 07043' , O_formatted_address = 'Montclair, NJ 07043, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8400532 , O_lng = -74.2003231 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	203591
or id = 202171	
or id = 203489	
or id = 203491	
or id = 203816	
or id = 205252	
or id = 206493	
or id = 203346	
or id = 204337	
or id = 204505	
or id = 204941	
or id = 205060	
or id = 206683	
or id = 209322	
or id = 209447	
or id = 209793	
or id = 210549	
or id = 202172	
or id = 202167	
or id = 202423	
or id = 204939	
or id = 205160	
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7042 , O_Address = 'Montclair, NJ, 07042' , O_formatted_address = 'Montclair, NJ 07042, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'Montclair' , O_postal_code = 7042 , O_lat = 40.821948 , O_lng = -74.2120629 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	205543
or id = 205584	
or id = 205679	
or id = 204515	
or id = 205591	
or id = 203937	
or id = 202451	
or id = 203708	
or id = 204869	
or id = 208563	
or id = 208567	
or id = 209727	
or id = 211180	
or id = 203282	
or id = 204529	
or id = 204953	
or id = 205402	
or id = 206550	
or id = 206688	
or id = 210557	
or id = 210690	
or id = 206499	
or id = 202209	
or id = 209461	
or id = 209473	
or id = 203135	
or id = 206274	
or id = 205184	
or id = 206498	
or id = 208415	
or id = 208576	
or id = 209359	
or id = 209574	
or id = 211189	
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Montclair' , OSTATE = 'NJ' , OZIP = 7043 , O_Address = 'Montclair, NJ, 07043' , O_formatted_address = 'Montclair, NJ 07043, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Montclair' , O_postal_code = 7043 , O_lat = 40.8400532 , O_lng = -74.2003231 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	203817
or id = 210919	
or id = 203275	
or id = 204883	
or id = 210931	
or id = 211164	
or id = 202192	
or id = 202579	
or id = 204024	
or id = 210154	
or id = 202200	
or id = 207321	
or id = 204861	
or id = 203597	
or id = 205322	
or id = 209691	
or id = 211284	
or id = 204597	
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Bloomfield' , OSTATE = 'NJ' , OZIP = 7003 , O_Address = 'Bloomfield, NJ, 07003' , O_formatted_address = 'Bloomfield, NJ, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Essex County' , O_locality = 'NULL' , O_postal_code = NULL , O_lat = 40.8067546 , O_lng = -74.1854209 , O_exact_match = 0 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	205411
or id = 205492	
or id = 213010	
or id = 213036	
update all_data set OPLACE = '' , OSTREET = '' , OCITY = 'Wayne' , OSTATE = 'NJ' , OZIP = 7470 , O_Address = 'Wayne, NJ, 07470' , O_formatted_address = 'Wayne, NJ 07470, USA' , O_street_number = NULL , O_route = 'NULL' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Wayne' , O_postal_code = 7470 , O_lat = 40.9253725 , O_lng = -74.2765441 , O_exact_match = 1 , O_location_type_value = 1 , O_types_value = 3 , O_good_check = 1 where ID = 	211413
or id = 207823	
or id = 206934	
or id = 205038	
update all_data set OPLACE = '' , OSTREET = '8 Yogi Berra Drive' , OCITY = 'Little Falls' , OSTATE = 'NJ' , OZIP = 7424 , O_Address = 'Yogi Berra Museum, 8 Yogi Berra Drive, Little Falls, NJ, 07424' , O_formatted_address = '8 Yogi Berra Drive, Little Falls, NJ 07424, USA' , O_street_number = 8 , O_route = 'Yogi Berra Drive' , o_country = 'US' , O_administrative_area_level1 = 'NJ' , O_administrative_area_level2 = 'Passaic County' , O_locality = 'Little Falls' , O_postal_code = 7424 , O_lat = 40.868338 , O_lng = -74.1945416 , O_exact_match = 0 , O_location_type_value = 1 , O_types_value = 1 , O_good_check = 1 where ID = 	205744
or id = 205745	

update all_data set DPLACE = '' , DSTREET = 'Liberty St' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10281 , D_Address = '1 WFC, New York, NY 10281' , D_formatted_address = '200 Liberty Street, 200 Liberty St, New York, NY 10281, USA' , D_street_number = 200 , D_route = 'Liberty St' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10281 , D_lat = 40.7106367 , D_lng = -74.015607 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 211409
update all_data set DPLACE = '' , DSTREET = 'Madison Ave' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10016 , D_Address = '200 Madison Ave, NY, NY, 10016' , D_formatted_address = '200 Madison Ave, New York, NY 10016, USA' , D_street_number = 200 , D_route = 'Madison Ave' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10016 , D_lat = 40.7489466 , D_lng = -73.9826769 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 210573
update all_data set DPLACE = '' , DSTREET = 'Church St' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10007 , D_Address = '90 Church St, NY, NY, 10007' , D_formatted_address = '90 Church St, New York, NY 10007, USA' , D_street_number = 90 , D_route = 'Church St' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10007 , D_lat = 40.7127235 , D_lng = -74.0106567 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 202312
update all_data set DPLACE = '' , DSTREET = 'W 66th St' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10023 , D_Address = 'ABC Studios, 320 West 66th St, NY, NY, 10023' , D_formatted_address = '320 W 66th St, New York, NY 10023, USA' , D_street_number = 320 , D_route = 'W 66th St' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10023 , D_lat = 40.7759862 , D_lng = -73.987716 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 209593
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Hoboken' , DSTATE = 'NJ' , DZIP = 7030 , D_Address = 'Hoboken, NJ, 07030' , D_formatted_address = 'Hoboken, NJ 07030, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_postal_code = 7030 , D_lat = 40.744052 , D_lng = -74.0270745 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202288
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Hoboken' , DSTATE = 'NJ' , DZIP = 7030 , D_Address = 'Hoboken, NJ, 07030' , D_formatted_address = 'Hoboken, NJ 07030, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_postal_code = 7030 , D_lat = 40.744052 , D_lng = -74.0270745 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 205038
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Hoboken' , DSTATE = 'NJ' , DZIP = 7030 , D_Address = 'Hoboken, NJ, 07030' , D_formatted_address = 'Hoboken, NJ 07030, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_postal_code = 7030 , D_lat = 40.744052 , D_lng = -74.0270745 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206389
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Hoboken' , DSTATE = 'NJ' , DZIP = 7030 , D_Address = 'Hoboken, NJ, 07030' , D_formatted_address = 'Hoboken, NJ 07030, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_postal_code = 7030 , D_lat = 40.744052 , D_lng = -74.0270745 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206424
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Hoboken' , DSTATE = 'NJ' , DZIP = 7030 , D_Address = 'Hoboken, NJ, 07030' , D_formatted_address = 'Hoboken, NJ 07030, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_postal_code = 7030 , D_lat = 40.744052 , D_lng = -74.0270745 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206922
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Hoboken' , DSTATE = 'NJ' , DZIP = 7030 , D_Address = 'Hoboken, NJ, 07030' , D_formatted_address = 'Hoboken, NJ 07030, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_postal_code = 7030 , D_lat = 40.744052 , D_lng = -74.0270745 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 207508
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Hoboken' , DSTATE = 'NJ' , DZIP = 7030 , D_Address = 'Hoboken, NJ, 07030' , D_formatted_address = 'Hoboken, NJ 07030, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_postal_code = 7030 , D_lat = 40.744052 , D_lng = -74.0270745 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206181
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Hoboken' , DSTATE = 'NJ' , DZIP = 7030 , D_Address = 'Hoboken, NJ, 07030' , D_formatted_address = 'Hoboken, NJ 07030, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_postal_code = 7030 , D_lat = 40.744052 , D_lng = -74.0270745 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 207934
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Hoboken' , DSTATE = 'NJ' , DZIP = 7030 , D_Address = 'Hoboken, NJ, 07030' , D_formatted_address = 'Hoboken, NJ 07030, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_postal_code = 7030 , D_lat = 40.744052 , D_lng = -74.0270745 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 211421
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Jersey City' , DSTATE = 'NJ' , DZIP = 7302 , D_Address = 'Jersey City, NJ, 07302' , D_formatted_address = 'Jersey City, NJ 07302, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Jersey City' , D_postal_code = 7302 , D_lat = 40.7218318 , D_lng = -74.0447003 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202190
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Jersey City' , DSTATE = 'NJ' , DZIP = 7302 , D_Address = 'Jersey City, NJ, 07302' , D_formatted_address = 'Jersey City, NJ 07302, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Jersey City' , D_postal_code = 7302 , D_lat = 40.7218318 , D_lng = -74.0447003 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206150
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Jersey City' , DSTATE = 'NJ' , DZIP = 7302 , D_Address = 'Jersey City, NJ, 07302' , D_formatted_address = 'Jersey City, NJ 07302, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Jersey City' , D_postal_code = 7302 , D_lat = 40.7218318 , D_lng = -74.0447003 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206428
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Jersey City' , DSTATE = 'NJ' , DZIP = 7302 , D_Address = 'Jersey City, NJ, 07302' , D_formatted_address = 'Jersey City, NJ 07302, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Jersey City' , D_postal_code = 7302 , D_lat = 40.7218318 , D_lng = -74.0447003 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206934
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Jersey City' , DSTATE = 'NJ' , DZIP = 7302 , D_Address = 'Jersey City, NJ, 07302' , D_formatted_address = 'Jersey City, NJ 07302, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Jersey City' , D_postal_code = 7302 , D_lat = 40.7218318 , D_lng = -74.0447003 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 207301
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Jersey City' , DSTATE = 'NJ' , DZIP = 7310 , D_Address = 'Jersey City, NJ, 07310' , D_formatted_address = 'Jersey City, NJ 07310, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Jersey City' , D_postal_code = 7310 , D_lat = 40.7300567 , D_lng = -74.0329499 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203531
update all_data set DPLACE = '' , DSTREET = 'Madison Square N' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10010 , D_Address = 'Madison Square Garden' , D_formatted_address = 'Madison Square N, New York, NY 10010, USA' , D_street_number = null , D_route = 'Madison Square N' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10010 , D_lat = 40.7427988 , D_lng = -73.9866897 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 207079
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Mineola' , DSTATE = 'NY' , DZIP = 11501 , D_Address = 'Mineola, NY, 11501' , D_formatted_address = 'Mineola, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'Nassau County' , D_locality = 'Mineola' , D_postal_code = 11501 , D_lat = 40.7492678 , D_lng = -73.6406845 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 205687
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Newark' , DSTATE = 'NJ' , DZIP = null , D_Address = 'Newark, NJ' , D_formatted_address = 'Newark, NJ, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Essex County' , D_locality = 'Newark' , D_postal_code = null , D_lat = 40.735657 , D_lng = -74.1723667 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202275
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Newark' , DSTATE = 'NJ' , DZIP = null , D_Address = 'Newark, NJ' , D_formatted_address = 'Newark, NJ, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Essex County' , D_locality = 'Newark' , D_postal_code = null , D_lat = 40.735657 , D_lng = -74.1723667 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206960
update all_data set DPLACE = '' , DSTREET = '' , DCITY = '0' , DSTATE = 'NJ' , DZIP = null , D_Address = 'NJ' , D_formatted_address = 'New Jersey, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = '' , D_locality = '' , D_postal_code = null , D_lat = 40.0583238 , D_lng = -74.4056612 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202153
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202163
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210652
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202080
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210189
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202229
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 214741
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203151
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203220
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203352
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203838
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204171
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204500
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204591
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204630
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 205182
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 205444
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 205757
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 205684
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206407
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206700
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209056
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209474
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209485
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206279
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210105
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210120
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210416
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210712
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 211563
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 213759
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203125
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203340
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206259
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 213776
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206154
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209551
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 212705
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209569
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10006 , D_Address = 'NY, NY 10006' , D_formatted_address = 'New York, NY 10006, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10006 , D_lat = 40.709329 , D_lng = -74.0131196 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202228
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209682
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 214275
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202188
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203280
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203364
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203478
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203479
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204517
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204850
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 205219
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206623
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206690
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209957
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210112
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209374
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 211092
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 211413
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210333
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 207085
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209685
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 212126
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10003 , D_Address = 'NY, NY, 10003' , D_formatted_address = 'New York, NY 10003, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10003 , D_lat = 40.7322535 , D_lng = -73.9874105 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202444
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10005 , D_Address = 'NY, NY, 10005' , D_formatted_address = 'New York, NY 10005, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10005 , D_lat = 40.6998433 , D_lng = -74.0072436 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202469
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10005 , D_Address = 'NY, NY, 10005' , D_formatted_address = 'New York, NY 10005, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10005 , D_lat = 40.6998433 , D_lng = -74.0072436 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206359
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10005 , D_Address = 'NY, NY, 10005' , D_formatted_address = 'New York, NY 10005, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10005 , D_lat = 40.6998433 , D_lng = -74.0072436 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206417
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10006 , D_Address = 'NY, NY, 10006' , D_formatted_address = 'New York, NY 10006, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10006 , D_lat = 40.709329 , D_lng = -74.0131196 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206164
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10006 , D_Address = 'NY, NY, 10006' , D_formatted_address = 'New York, NY 10006, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10006 , D_lat = 40.709329 , D_lng = -74.0131196 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 212557
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10006 , D_Address = 'NY, NY, 10006' , D_formatted_address = 'New York, NY 10006, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10006 , D_lat = 40.709329 , D_lng = -74.0131196 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 213538
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10011 , D_Address = 'NY, NY, 10011' , D_formatted_address = 'New York, NY 10011, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10011 , D_lat = 40.7464969 , D_lng = -74.0094471 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203552
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10012 , D_Address = 'NY, NY, 10012' , D_formatted_address = 'New York, NY 10012, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10012 , D_lat = 40.7250632 , D_lng = -73.9976946 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209496
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10012 , D_Address = 'NY, NY, 10012' , D_formatted_address = 'New York, NY 10012, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10012 , D_lat = 40.7250632 , D_lng = -73.9976946 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206554
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10018 , D_Address = 'NY, NY, 10018' , D_formatted_address = 'New York, NY 10018, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10018 , D_lat = 40.755322 , D_lng = -73.9932872 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203363
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10018 , D_Address = 'NY, NY, 10018' , D_formatted_address = 'New York, NY 10018, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10018 , D_lat = 40.755322 , D_lng = -73.9932872 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203406
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10019 , D_Address = 'NY, NY, 10019' , D_formatted_address = 'New York, NY 10019, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10019 , D_lat = 40.7686973 , D_lng = -73.9918181 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203497
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10019 , D_Address = 'NY, NY, 10019' , D_formatted_address = 'New York, NY 10019, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10019 , D_lat = 40.7686973 , D_lng = -73.9918181 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203705
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10019 , D_Address = 'NY, NY, 10019' , D_formatted_address = 'New York, NY 10019, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10019 , D_lat = 40.7686973 , D_lng = -73.9918181 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210115
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10022 , D_Address = 'NY, NY, 10022' , D_formatted_address = 'New York, NY 10022, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10022 , D_lat = 40.7593941 , D_lng = -73.9697795 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 213520
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10281 , D_Address = 'NY, NY, 10281' , D_formatted_address = 'New York, NY 10281, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10281 , D_lat = 40.7111146 , D_lng = -74.0145738 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202189
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 11101 , D_Address = 'Queens, NY, 11101' , D_formatted_address = 'Long Island City, NY 11101, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = 11101 , D_lat = 40.7443091 , D_lng = -73.9418603 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 208662
update all_data set DPLACE = '' , DSTREET = 'Park Ave' , DCITY = 'Hoboken' , DSTATE = 'NJ' , DZIP = 7030 , D_Address = 'The Hudson School, 601 Park Ave, Hoboken, NJ, 07030' , D_formatted_address = '601 Park Ave, Hoboken, NJ 07030, USA' , D_street_number = 601 , D_route = 'Park Ave' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_postal_code = 7030 , D_lat = 40.7440663 , D_lng = -74.0314791 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 202327
update all_data set DPLACE = '' , DSTREET = 'W 66th St' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10023 , D_Address = 'West 66th St, NYC, NY, 10023' , D_formatted_address = 'W 66th St, New York, NY 10023, USA' , D_street_number = null , D_route = 'W 66th St' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10023 , D_lat = 40.7743797 , D_lng = -73.9833845 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 213521
update all_data set DPLACE = '' , DSTREET = 'Vessey Street' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10281 , D_Address = 'World Financial Center, NY, NY, 10281' , D_formatted_address = 'World Financial Center, 199 Vessey Street, New York, NY 10281, USA' , D_street_number = 199 , D_route = 'Vessey Street' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10281 , D_lat = 40.7149968 , D_lng = -74.0177759 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 204010
update all_data set DPLACE = '' , DSTREET = 'Convent Ave' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10031 , D_Address = '160 Convent Ave, NY, NY, 10031' , D_formatted_address = '160 Convent Ave, New York, NY 10031, USA' , D_street_number = 160 , D_route = 'Convent Ave' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10031 , D_lat = 40.8217036 , D_lng = -73.9478749 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 205411
update all_data set DPLACE = '' , DSTREET = 'Park Ave S' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10010 , D_Address = '360 Park Ave S, NY, NY, 10010' , D_formatted_address = '360 Park Ave S, New York, NY 10010, USA' , D_street_number = 360 , D_route = 'Park Ave S' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10010 , D_lat = 40.7421039 , D_lng = -73.9855768 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 202723
update all_data set DPLACE = '' , DSTREET = 'Gansevoort St' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10014 , D_Address = '99 Gansevoort St, NY, NY, 10014' , D_formatted_address = '99 Gansevoort St, New York, NY 10014, USA' , D_street_number = 99 , D_route = 'Gansevoort St' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10014 , D_lat = 40.7396091 , D_lng = -74.0088604 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 205543
update all_data set DPLACE = '' , DSTREET = '' , DCITY = '0' , DSTATE = 'NY' , DZIP = 11103 , D_Address = 'Astoria, NY, 11103' , D_formatted_address = 'Astoria, NY 11103, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'Queens County' , D_locality = '' , D_postal_code = 11103 , D_lat = 40.7633726 , D_lng = -73.9109977 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 205584
update all_data set DPLACE = '' , DSTREET = '' , DCITY = '0' , DSTATE = 'NY' , DZIP = 11215 , D_Address = 'Brooklyn, NY, 11215' , D_formatted_address = 'Brooklyn, NY 11215, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'Kings County' , D_locality = '' , D_postal_code = 11215 , D_lat = 40.6681669 , D_lng = -73.9800645 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202115
update all_data set DPLACE = '' , DSTREET = '5th Ave' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10011 , D_Address = 'Central Park, NY, NY, 10011' , D_formatted_address = 'central park, 110 5th Ave, New York, NY 10011, USA' , D_street_number = 110 , D_route = '5th Ave' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10011 , D_lat = 40.7376671 , D_lng = -73.9929196 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 203359
update all_data set DPLACE = '' , DSTREET = '5th Ave' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10118 , D_Address = 'Empire State Building, 350 5th Ave, New York, NY, 10118' , D_formatted_address = 'Empire State Building, 350 5th Ave, New York, NY 10118, USA' , D_street_number = 350 , D_route = '5th Ave' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10118 , D_lat = 40.7484405 , D_lng = -73.9856644 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 207907
update all_data set DPLACE = '' , DSTREET = 'W 51st St' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10019 , D_Address = 'Gershwin Theater, 222 W 51st St, NY, NY, 10019' , D_formatted_address = '222 W 51st St, New York, NY 10019, USA' , D_street_number = 222 , D_route = 'W 51st St' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10019 , D_lat = 40.7623955 , D_lng = -73.9851266 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 1 , D_good_check = 1 where ID = 205679
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Hoboken' , DSTATE = 'NJ' , DZIP = 7030 , D_Address = 'Hoboken, NJ, 07030' , D_formatted_address = 'Hoboken, NJ 07030, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_postal_code = 7030 , D_lat = 40.744052 , D_lng = -74.0270745 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204515
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Hoboken' , DSTATE = 'NJ' , DZIP = 7030 , D_Address = 'Hoboken, NJ, 07030' , D_formatted_address = 'Hoboken, NJ 07030, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Hoboken' , D_postal_code = 7030 , D_lat = 40.744052 , D_lng = -74.0270745 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 205591
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Jersey City' , DSTATE = 'NJ' , DZIP = 7302 , D_Address = 'Jersey City, NJ, 07302' , D_formatted_address = 'Jersey City, NJ 07302, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Jersey City' , D_postal_code = 7302 , D_lat = 40.7218318 , D_lng = -74.0447003 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203937
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Jersey City' , DSTATE = 'NJ' , DZIP = 7306 , D_Address = 'Jersey City, NJ, 07306' , D_formatted_address = 'Jersey City, NJ 07306, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Hudson County' , D_locality = 'Jersey City' , D_postal_code = 7306 , D_lat = 40.7329808 , D_lng = -74.0711359 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206035
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 11371 , D_Address = 'La Guarida Airport, NY, NY, 11371' , D_formatted_address = 'LaGuardia Airport (LGA), Queens, NY 11371, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'Queens County' , D_locality = 'New York' , D_postal_code = 11371 , D_lat = 40.7769271 , D_lng = -73.8739659 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 206545
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 11371 , D_Address = 'LaGuardia Airport, East Elmhurst, NY, 11371' , D_formatted_address = 'LaGuardia Airport (LGA), Queens, NY 11371, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'Queens County' , D_locality = 'New York' , D_postal_code = 11371 , D_lat = 40.7769271 , D_lng = -73.8739659 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 205491
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 11371 , D_Address = 'LaGuardia Airport, East Elmhurst, NY, 11371' , D_formatted_address = 'LaGuardia Airport (LGA), Queens, NY 11371, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'Queens County' , D_locality = 'New York' , D_postal_code = 11371 , D_lat = 40.7769271 , D_lng = -73.8739659 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 205486
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 11101 , D_Address = 'Long Island City, NY, 11101' , D_formatted_address = 'Long Island City, Queens, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'Queens County' , D_locality = 'New York' , D_postal_code = 11101 , D_lat = 40.744679 , D_lng = -73.9485424 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 203591
update all_data set DPLACE = '' , DSTREET = 'Madison Square N' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10010 , D_Address = 'Madison Square Garden, NY, NY, 10001' , D_formatted_address = 'Madison Square N, New York, NY 10010, USA' , D_street_number = null , D_route = 'Madison Square N' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10010 , D_lat = 40.7427988 , D_lng = -73.9866897 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 202758
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Mahwah' , DSTATE = 'NJ' , DZIP = 7495 , D_Address = 'Mahwah, NJ, 07495' , D_formatted_address = 'Mahwah, NJ 07495, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Bergen County' , D_locality = 'Mahwah' , D_postal_code = 7495 , D_lat = 41.1036527 , D_lng = -74.1639982 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 208060
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10011 , D_Address = 'Manhattan, NY, 10011' , D_formatted_address = 'New York, NY 10011, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10011 , D_lat = 40.7464969 , D_lng = -74.0094471 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203007
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Newark' , DSTATE = 'NJ' , DZIP = 7102 , D_Address = 'Newark, NJ, 07102' , D_formatted_address = 'Newark, NJ 07102, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Essex County' , D_locality = 'Newark' , D_postal_code = 7102 , D_lat = 40.7350747 , D_lng = -74.1739057 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 205755
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'Newark' , DSTATE = 'NJ' , DZIP = 7102 , D_Address = 'Newark, NJ, 07102' , D_formatted_address = 'Newark, NJ 07102, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NJ' , D_administrative_area_level2 = 'Essex County' , D_locality = 'Newark' , D_postal_code = 7102 , D_lat = 40.7350747 , D_lng = -74.1739057 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202451
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10013 , D_Address = 'NY, 10013' , D_formatted_address = 'New York, NY 10013, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10013 , D_lat = 40.7217861 , D_lng = -74.0094471 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 211031
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202768
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203723
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204691
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210067
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202005
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203369
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204633
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206514
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206708
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206712
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203848
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 213580
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203812
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203487
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203489
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203491
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203816
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 205252
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206493
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203708
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204869
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 208563
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 208567
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209727
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 211180
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203817
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210919
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 212136
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = null , D_Address = 'NY, NY' , D_formatted_address = 'New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = '' , D_locality = 'New York' , D_postal_code = null , D_lat = 40.7127837 , D_lng = -74.0059413 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210953
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 208696
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 208941
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209313
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204524
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206617
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210439
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210566
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210584
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 212500
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 214060
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 214061
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204626
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 213850
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204587
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209673
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210412
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203346
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204337
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204505
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204941
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 205060
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206683
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209322
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209447
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209793
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210549
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203282
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204529
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204953
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 205402
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206550
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206688
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210557
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203275
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204883
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210931
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 211164
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 205492
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 212528
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10001 , D_Address = 'NY, NY, 10001' , D_formatted_address = 'New York, NY 10001, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10001 , D_lat = 40.7536854 , D_lng = -73.9991637 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210690
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10003 , D_Address = 'NY, NY, 10003' , D_formatted_address = 'New York, NY 10003, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10003 , D_lat = 40.7322535 , D_lng = -73.9874105 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202227
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10003 , D_Address = 'NY, NY, 10003' , D_formatted_address = 'New York, NY 10003, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10003 , D_lat = 40.7322535 , D_lng = -73.9874105 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 212275
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10003 , D_Address = 'NY, NY, 10003' , D_formatted_address = 'New York, NY 10003, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10003 , D_lat = 40.7322535 , D_lng = -73.9874105 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 206499
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10005 , D_Address = 'NY, NY, 10005' , D_formatted_address = 'New York, NY 10005, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10005 , D_lat = 40.6998433 , D_lng = -74.0072436 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202172
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10006 , D_Address = 'NY, NY, 10006' , D_formatted_address = 'New York, NY 10006, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10006 , D_lat = 40.709329 , D_lng = -74.0131196 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202221
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10006 , D_Address = 'NY, NY, 10006' , D_formatted_address = 'New York, NY 10006, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10006 , D_lat = 40.709329 , D_lng = -74.0131196 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 212317
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10006 , D_Address = 'NY, NY, 10006' , D_formatted_address = 'New York, NY 10006, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10006 , D_lat = 40.709329 , D_lng = -74.0131196 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202175
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10006 , D_Address = 'NY, NY, 10006' , D_formatted_address = 'New York, NY 10006, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10006 , D_lat = 40.709329 , D_lng = -74.0131196 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202209
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10006 , D_Address = 'NY, NY, 10006' , D_formatted_address = 'New York, NY 10006, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10006 , D_lat = 40.709329 , D_lng = -74.0131196 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202192
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10006 , D_Address = 'NY, NY, 10006' , D_formatted_address = 'New York, NY 10006, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10006 , D_lat = 40.709329 , D_lng = -74.0131196 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202579
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10006 , D_Address = 'NY, NY, 10006' , D_formatted_address = 'New York, NY 10006, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10006 , D_lat = 40.709329 , D_lng = -74.0131196 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204024
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10010 , D_Address = 'NY, NY, 10010' , D_formatted_address = 'New York, NY 10010, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10010 , D_lat = 40.7388319 , D_lng = -73.9815337 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210559
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10011 , D_Address = 'NY, NY, 10011' , D_formatted_address = 'New York, NY 10011, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10011 , D_lat = 40.7464969 , D_lng = -74.0094471 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202314
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10013 , D_Address = 'NY, NY, 10013' , D_formatted_address = 'New York, NY 10013, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10013 , D_lat = 40.7217861 , D_lng = -74.0094471 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209461
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10017 , D_Address = 'NY, NY, 10017' , D_formatted_address = 'New York, NY 10017, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10017 , D_lat = 40.7519846 , D_lng = -73.9697795 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204243
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10022 , D_Address = 'NY, NY, 10022' , D_formatted_address = 'New York, NY 10022, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10022 , D_lat = 40.7593941 , D_lng = -73.9697795 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 213856
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10022 , D_Address = 'NY, NY, 10022' , D_formatted_address = 'New York, NY 10022, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10022 , D_lat = 40.7593941 , D_lng = -73.9697795 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 209473
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10022 , D_Address = 'NY, NY, 10022' , D_formatted_address = 'New York, NY 10022, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10022 , D_lat = 40.7593941 , D_lng = -73.9697795 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 210154
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10035 , D_Address = 'NY, NY, 10035' , D_formatted_address = 'New York, NY 10035, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10035 , D_lat = 40.794065 , D_lng = -73.9271644 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 204543
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10036 , D_Address = 'NY, NY, 10036' , D_formatted_address = 'New York, NY 10036, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10036 , D_lat = 40.7602619 , D_lng = -73.9932872 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 212479
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10041 , D_Address = 'NY, NY, 10041' , D_formatted_address = 'New York, NY 10041, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10041 , D_lat = 40.7035351 , D_lng = -74.009781 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 203486
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10004 , D_Address = 'NY, NY, 10048' , D_formatted_address = 'New York, NY 10004, USA, New York, NY 10004, USA' , D_street_number = null, D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10004 , D_lat = 40.7028061 , D_lng = -74.01333 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 202167
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10124 , D_Address = 'NY, NY, 10124' , D_formatted_address = 'New York, NY 10124, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10124 , D_lat = 40.7545309 , D_lng = -73.981138 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202839
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10281 , D_Address = 'NY, NY, 10281' , D_formatted_address = 'New York, NY 10281, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10281 , D_lat = 40.7111146 , D_lng = -74.0145738 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202423
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10281 , D_Address = 'NY, NY, 10281' , D_formatted_address = 'New York, NY 10281, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10281 , D_lat = 40.7111146 , D_lng = -74.0145738 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 3 , D_good_check = 1 where ID = 202200
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10036 , D_Address = 'Times Square, NY, NY, 10036' , D_formatted_address = 'Theater District, New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10036 , D_lat = 40.759011 , D_lng = -73.9844722 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 203135
update all_data set DPLACE = '' , DSTREET = 'Fulton St' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10007 , D_Address = 'World Trade Center, Financial District, NY, NY, 10004' , D_formatted_address = 'One World Trade Center, 285 Fulton St, New York, NY 10007, USA' , D_street_number = 285 , D_route = 'Fulton St' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10007 , D_lat = 40.7129837 , D_lng = -74.013083 , D_exact_match = 0 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 202413
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10007 , D_Address = 'World Trade Center, NY, NY, 10006' , D_formatted_address = 'World Trade Center, New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10007 , D_lat = 40.7118011 , D_lng = -74.0131196 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 206970
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10007 , D_Address = 'World Trade Center, NY, NY, 10006' , D_formatted_address = 'World Trade Center, New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10007 , D_lat = 40.7118011 , D_lng = -74.0131196 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 206274
update all_data set DPLACE = '' , DSTREET = '' , DCITY = 'New York' , DSTATE = 'NY' , DZIP = 10007 , D_Address = 'World Trade Center, NY, NY, 10006' , D_formatted_address = 'World Trade Center, New York, NY, USA' , D_street_number = null , D_route = '' , D_country = 'US' , D_administrative_area_level1 = 'NY' , D_administrative_area_level2 = 'New York County' , D_locality = 'New York' , D_postal_code = 10007 , D_lat = 40.7118011 , D_lng = -74.0131196 , D_exact_match = 1 , D_location_type_value = 1 , D_types_value = 2 , D_good_check = 1 where ID = 207321


select enjhblr, enjhblr_num, enjhblr_station from all_data where enjhblr < 'A' or enjhblr_num is not null
group by enjhblr_num, enjhblr, enjhblr_station

update all_data set enjhblr_num = 11 where enjhblr = 'Essex St.'
update all_data set enjhblr_num = 12 where enjhblr = 'Exchange Place'
update all_data set enjhblr_num = 15 where enjhblr = 'Newport Mall'

Update all_data set enjhblr_station = enjhblr where enjhblr_station is null and enjhblr is not null
update all_data set enjhblr = enjhblr_station where enjhblr is not null

select train_line_code,flag_different_line, stationon_key, count(*) as num from all_data
where stationon_key = 24
group by train_line_code, flag_different_line, stationon_key

update all_data set flag_different_line = 1 where stationon_key = 25

select * from count_sheet_data where sheet_num = '119'

select * from full_dataset where id = 203334