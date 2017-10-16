function [output] = TurnWarp(input)

output1 = input;

%large
output2 = 0;
if (input > 6.8)
    output2 = 1;
end

%super large
output3 = 0;
if (input > 7.1)
    output3 = 1;
end

%somewhat small
output4 = 0;
if (input < 6.9 && input > 0)
   output4 = 1; 
end
    
output5 = 0;
if (input > 7.2)
    output5 = 1;
end

output6 = 0;
if (input > 7.3)
    output6 = 1;
end

if (input == 0)
    output1 = 0.5;
    output2 = 0.5;
    output3 = 0.5;
    output4 = 0.5;
    output5 = 0.5;
    output6 = 0.5;
end

output = [ output2, output3, output4, output5, output6 ];
