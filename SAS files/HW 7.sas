data hospitals;
infile 'C:\Users\wlflwrs\Documents\stor455\KutnerCD\KutnerCD\Appendix C Data Sets\APPENC01.TXT';
input id length_of_stay age infection_risk routine_culturing_ratio routine_chest_xray_ratio number_of_beds medschool_affiliation region average_daily_census number_of_nurses available_facilities;
run;

proc reg data = hospitals;
model infection_risk=length_of_stay age number_of_beds number_of_nurses;
run;


proc reg data = hospitals;
model infection_risk=length_of_stay age number_of_beds number_of_nurses;
where region=3;
run;

