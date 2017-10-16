function vec = TurnAscii(input)

input = lower(input);

output1 = sum(input)/length(input);
output2 = 0;
if (output1 <= 90 && output1 > 0)
    output2 = 1;
end 

output4 = 0;
if (output1 <= 90 && output1 > 0)
    output4 = 1;
end 

if (input == '0')
    output1 = 0.5;
    output2 = 0.5;
    output3 = 0.5;
    output4 = 0.5;
end

vec = [output2, output4];


    


