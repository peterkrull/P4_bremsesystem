%Data splitting
[FileA, PathA] = uigetfile('*.txt', 'Fil som skal læses');
FullFileA = fullfile(PathA, FileA);
[wheel time driveBrake] = textread(FullFileA, '%s%d%s', 'headerlines', 2);

deltaTimeFront = zeros(1,size(time,1));         % us
deltaTimeRear = zeros(1,size(time,1));
timeFront = zeros(1,size(time,1));
timeRear =zeros(1,size(time,1));
countFront=1;
countRear=1;
timeCountFront=0;
timeCountRear=0;
brakeFound =0;

%Speed calculation.
wheelDiameter = 101.38e-3; %mm
speedFront = zeros(1,size(time,1));
speedRear = ones(1,size(time,1));
for i=1 : size(time,1)
    %Splitting data into front and back.
    if wheel(i) == "F"
        deltaTimeFront(countFront) = time(i);               %Save delta times.
        timeCountFront = timeCountFront + time(i);
        timeFront(countFront) = timeCountFront;             %Save time time axis for mesurements.
        countFront =countFront+1;                           %Keeping track of amount of data.
    end
    if wheel(i) == "R"
        deltaTimeRear(countRear) = time(i);
        timeCountRear = timeCountRear + time(i);
        timeRear(countRear) = timeCountRear;
        countRear = countRear +1;
    end
    if driveBrake(i) == "B" & brakeFound ==0
        brakeTime = timeCountRear;
        brakeFound =1;
    end
        
end

avg = 4;

% Fit variables to actual size of data
deltaTimeFrontPlot = deltaTimeFront(1:countFront-1);
deltaTimeRearPlot = deltaTimeRear(1:countRear-1);
timeFrontPlot = timeFront(1:countFront-1);
timeRearPlot = timeRear(1:countRear-1);

% Moving average of DELTA TIMES
deltaTimeFrontAvg = movmean(deltaTimeFrontPlot,avg);
deltaTimeRearAvg = movmean(deltaTimeRearPlot,avg);

%DeltaTimeFrontLP = lowpass(deltaTimeFront,0.5);

% Calculating speed
speedFront = ((wheelDiameter * pi)/32) ./ deltaTimeFrontPlot *10^6;   %Speed in m/s
speedRear = ((wheelDiameter * pi )/32) ./ deltaTimeRearPlot*10^6;

% Calculating speed
speedFrontAvg = ((wheelDiameter * pi)/32) ./ deltaTimeFrontAvg *10^6;   %Speed in m/s
speedRearAvg = ((wheelDiameter * pi )/32) ./ deltaTimeRearAvg*10^6;

%Data matching for calculation of slip ratio
%Data will be matched in ms.
timeInterpol = 0:100:timeCountFront;
speedFrontInterpol = interp1(timeFrontPlot, speedFrontAvg, timeInterpol);
speedRearInterpol = interp1(timeRearPlot, speedRearAvg, timeInterpol);


%Calculate spliratio
slipRatio = ((speedRearInterpol - speedFrontInterpol) ./ speedRearInterpol)*100 ;
slipRatioAvg = movmean(slipRatio,100);


%        
% % 
% % PLOTS
% % 
% % 
% % Unfiltered delta times
% % plot(timeFrontPlot,deltaTimeFrontPlot,timeRearPlot,deltaTimeRearPlot);
% % 
% % Filtered delta times
% % plot(timeFrontPlot,deltaTimeFrontAvg,timeRearPlot,deltaTimeRearAvg);
% % 
% % title('Deltatider over tid');
% % xlabel('tid [ms]');
% % ylabel('Deltatider [us]');
% % xlim([0 1500 ]); 
% % grid on


% % Plotting slipratio over time
 plot(timeInterpol/1000,slipRatioAvg);
 xlabel('Tid [ms]');
 ylabel('Skridfaktor [ ]');
 ytickformat('percentage');
 ylim([-150 100]);
 xline(brakeTime/1000,'--k','Brems');
 grid on
 hold on

% % Plotting speed over time.
%  hold on
% 
figure;
h1=plot(timeInterpol/1000, speedFrontInterpol*3.6,timeInterpol/1000, speedRearInterpol*3.6);
xlabel('Tid [ms]');
ylabel('Hastighed [km/t]');
ylim([0 50]);
legend([h1],{'Hastighed forhjul', 'Hastighed baghjul'},'AutoUpdate','off');
xline(brakeTime/1000,'--k','Brems')
grid on
hold on

plot(brakeTime/1000,28,'xk','LineWidth',1);
text(brakeTime/1000+200,28,'28 km/t, 2750 ms')



% 
% 





