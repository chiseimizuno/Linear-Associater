function [output] = TurnColor(colors)

colors = lower(colors);

brightness = '';
rgb = '';

for i = 1:length(colors)
    if (colors(i) == ' ')
        brightness = colors(1:i-1);
        rgb = colors(i+1:length(colors));
        break
    end
    if (i == length(colors))
        rgb = colors;
    end
end

colorful = 1; 

if (length(brightness) == 4 && sum(brightness == 'dark')/4)
    brightness = 0;
elseif (length(brightness) == 5 && sum(brightness == 'light')/5)
    brightness = 1;
else
    brightness = 0.5;
end

if (length(rgb) <4 || length(rgb) > 6)
    r = 0;
    g = 0;
    b = 0;
    colorful = 0.5;
end

if (length(rgb) == 4)
    if (sum(rgb == 'gray')/4)
       r = 1;
       g = 1;
       b = -1;
       colorful = 0;
    end

    if (sum(rgb == 'blue')/4)
       r = 1;
       g = -1;
       b = 1;
    end
    
    if (sum(rgb == 'pink')/4)
       r = 1;
       g = -1;
       b = -1;
    end
end

if (length(rgb) == 5)
    if (sum(rgb == 'color')/5)
       r = 0;
       g = 0;
       b = 0;
       colorful = 0.5;
    end
    if (sum(rgb == 'black')/5)
       r = 1;
       g = 1;
       b = 1;
       colorful = 0;
    end

    if (sum(rgb == 'white')/5)
       r = -1;
       g = -1;
       b = -1;
       colorful = 0;
    end

    if (sum(rgb == 'green')/5)
       r = -1;
       g = 1;
       b = 1;
    end
end

if (length(rgb) == 6)
    if (sum(rgb == 'orange')/6)
       r = -1;
       g = 1;
       b = -1;
    end

    if (sum(rgb == 'yellow')/6)
       r = -1;
       g = -1;
       b = 1;
    end
end


output = ([brightness, r, g, b, colorful]);

