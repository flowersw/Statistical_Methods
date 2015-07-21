data cars;
infile 'C:\Users\wlflwrs\Documents\stor455\alldata\CAR.DAT';
input carno mtcost price miles;
miles2 = miles*miles;
run;

Proc means data = cars clm prt;
run;

proc univariate data = cars alpha = .025 all;
run;




