clear
clc

fid = fopen('hots_data.txt','r');
data = textscan(fid, '%d %D %f %f');
fclose(fid);
date = data{2};
ph = data{3};
pressure = data{4};
subplot(2,1,1)
%plot(date,ph)
%xlabel('Date');
% ylabel('pH Reading');


min_depth = [0,10,25];
max_depth = [10,25,50];
[outDate1,outPH1,outDate2,outPH2,outDate3,outPH3] = oceandepth(date,ph,pressure,min_depth,max_depth);
% subplot(2,1,2)
% h1 = plot(outDate(1),outPH(1))
