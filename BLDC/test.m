linetype1 = '-* ';
linetype2 = '-';    
plot(PBLDCData.Hz, PBLDCData.GetRPM, ['c' linetype1], 'LineWidth', 1.5);
hold("on");
plot(PBLDCData.Hz, PBLDCData.SetRPM, ['k' linetype2], 'LineWidth', 0.5);
hold("off");