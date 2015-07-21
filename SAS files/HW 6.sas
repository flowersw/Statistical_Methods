data exam;
infile 'C:\Users\wlflwrs\Documents\stor455\alldata\EXAM.DAT';
input midterm final;
run;

proc print data = exam;
run;

proc reg data = exam;
	model final=midterm/clb alpha = 0.1;
	plot final*midterm;
run;

Proc reg data = exam noprint;
model final=midterm/cli alpha = 0.1;
output out=exam2 lcl=lower ucl=upper p=yhat;
run;

proc print data = exam2;
where midterm=75;
var yhat lower upper;
run;

