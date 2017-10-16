function [v1,v2] = normalizedVector(dimensions)
    v1 = rand(dimensions,1)-0.5;
    v2 = rand(dimensions,1)-0.5;
    v1 = v1./norm(v1);
    v2 = v2./norm(v2);
end