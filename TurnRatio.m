function [output] = TurnWarp(input)

output1 = input;

%small
output2 = 0;
if (input < 1.5 && input > 0)
   output2 = 1; 
end

%large
output3 = 0;
if (input > 2.2)
   output3 = 1;
end

%super large 
output5 = 0;
if (input > 2.5)
    output5 = 1;
end

%medium
output4 = 0;
if (input < 2.3 && input > 1.5)
    output4 = 1;
end

output6 = 0;
if (input > 2.8)
    output6 = 1;
end

if (input == 0)
    output1 = 0.5;
    output2 = 0.5;
    output3 = 0.5;
    output4 = 0.5;
    output5 = 0.5;
    output6 = 0.5;
    output8 = 0.5;
    output10 = 0.5;
end

output = [output2, output3, output4, output5, output6];