function [] = GasolineEngine(TE,Eg,P)
Cf = 25:5:100;
Rf = P./(Eg.*TE);
endurance = Cf./Rf;
max(endurance);
figure('numbertitle','off','name','endurance vs Cf');
plot(endurance,Cf);
title('endurance vs Cf');
xlabel ('Cf');
ylabel ('endurance');

end