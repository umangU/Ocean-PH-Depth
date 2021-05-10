%function for pH data
function [outDate1,outpH1,outDate2,outpH2,outDate3,outpH3] = oceandepth(date, ph, pressure,min_depth,max_depth)
    for i=1:length(pressure)
        if (pressure(i) >= min_depth(1) && pressure(i) < max_depth(1))
            outDate1(i) = date(i);
            outpH1(i) = ph(i);
        elseif (pressure(i) >= min_depth(2) && pressure(i) < max_depth(2))
            outDate2(i) = date(i);
            outpH2(i) = ph(i);
        elseif (pressure(i) >= min_depth(3) && pressure(i) < max_depth(3))
            outDate3(i) = date(i);
            outpH3(i) = ph(i);
        else
            continue
        end
    end
end

