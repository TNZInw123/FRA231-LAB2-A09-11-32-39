VInput = 12;
TLoad = linspace(0,StallTorque,11);

KM = StallTorque / StallCurrent;

PowerInput = (((StallCurrent - NLCurrent) / StallTorque) * TLoad * VInput) + (NLCurrent * VInput);

PowerOutput = - ((NLSpeed / StallTorque) * TLoad.^2) + (NLSpeed * TLoad);

Efficiency = (PowerOutput ./ PowerInput) .* 100;

T_S = linspace(T_S(1,2),T_S(2,2));
T_C = linspace(T_C(1,2),T_C(2,2));