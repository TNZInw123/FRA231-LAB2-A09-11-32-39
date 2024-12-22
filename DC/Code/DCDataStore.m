A = rms(ST_1{1}.Values.Data);
B = rms(ST_2{1}.Values.Data);
C = rms(ST_3{1}.Values.Data);

StallW = (A+B+C)/3;

StallF = (StallW * 0.001 * 9.81) / cos(6.76/180)
StallTorque = StallF * 111.27 * 0.001
%% 

A = rms(ST_1{2}.Values.Data);
B = rms(ST_2{2}.Values.Data);
C = rms(ST_3{2}.Values.Data);

StallCurrent = (A+B+C)/3
%% 

A = rms(NL_1{2}.Values.Data);
B = rms(NL_2{2}.Values.Data);
C = rms(NL_3{2}.Values.Data);

NLSpeed = (A+B+C)/3;
NLRPM = NLSpeed / ((2*3.14)/60)
%% 

A = rms(NL_1{1}.Values.Data);
B = rms(NL_2{1}.Values.Data);
C = rms(NL_3{1}.Values.Data);

NLCurrent = (A+B+C)/3