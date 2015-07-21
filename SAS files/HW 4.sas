data exam;
infile 'C:\Users\wlflwrs\Documents\stor455\alldata\EXAM.DAT';
input x1-x2;
d = x1-x2;
run;


proc reg data=exam;
	model x2=x1/r;
	plot r.*x1;
	title "Residuals vs Midterm";
	print modeldata P;
run;

proc reg data=exam noprint;
	model x2=x1;
	plot rstudent.*x1;
	title "Standardized Residuals vs Midterm";	
run;


	



