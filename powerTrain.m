function [] = powerTrain(C0,C1,C2)
Pin = 0:0.1:125;
Ploss = C0 + C1.*Pin +(C2)*(Pin.^2);
Pout = Pin - Ploss;
efficiency = (Pout./Pin);
max(efficiency);
figure('numbertitle','off','name','efficiency vs Pin');
plot(Pin,efficiency);
title('efficiency vs Pin');
xlabel ('Pin');
ylabel ('efficiency');
xlim ([0 125]);
ylim ([0 1]);
end

