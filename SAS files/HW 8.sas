data fat;
infile 'C:\Users\wlflwrs\Documents\stor455\KutnerCD\KutnerCD\Chapter  7 Data Sets\CH07TA01.TXT';
input fat skinfold thigh midarm;
run;

Proc print data = fat;
run;

