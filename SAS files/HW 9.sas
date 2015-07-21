data fat;
infile 'C:\Users\wlflwrs\Documents\stor455\KutnerCD\KutnerCD\Chapter  7 Data Sets\CH07TA01.TXT';
input fat skinfold thigh midarm;
skinfold_thigh_interaction = skinfold*thigh;
skinfold_midarm_interaction = skinfold*midarm;
thigh_midarm_interaction = thigh*midarm;
run;

proc reg data = fat;
model fat=skinfold thigh midarm skinfold_thigh_interaction skinfold_midarm_interaction thigh_midarm_interaction/VIF TOl;
test1: test skinfold_thigh_interaction,skinfold_midarm_interaction,thigh_midarm_interaction;
run;

Proc reg data = fat;
model fat = skinfold thigh midarm/selection = rsquare adjrsq cp mse;
model fat = skinfold thigh midarm/selection = STEPWISE slentry = 0.05 slstay = 0.05;
run;
