function [output] = TurnFreq(input)

output1 = input;

%super large
output2 = 0;
if (input > 1040)
    output2 = 1;
end

%super small
output3 = 0;
if (input < 981 && input > 0)
    output3 = 1;
end

output7 = 0;
if (input < 1000)
    output7 = 1;
end

%medium
output4 = 0;
if (input > 980 && input < 1010)
    output4 = 1;
end

%somehwat large
output5 = 0;
if (input > 1010 && input < 1035)
    output5 = 1;
end

output6 = 0;
if (input > 1000)
    output6 = 1;
end

output8 = 0;
if (input > 1050)
    output8 = 1;
end

if (input == 0)
    output1 = 0.5;
    output2 = 0.5;
    output3 = 0.5;
    output4 = 0.5;
    output5 = 0.5;
    output6 = 0.5;
    output7 = 0.5;
    output8 = 0.5;
end
    
output = [output2,output3,output4,output5,output6,output7];