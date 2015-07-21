data s02;
infile 'C:\Users\wlflwrs\Documents\stor455\alldata\SO2.DAT';
input x1-x2;
d = x1-x2;
run;

proc print data = s02;
run;

proc univariate normal data = so2;
var d;
run;



