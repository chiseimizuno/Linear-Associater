

%____________Start Program____________

clc;clear; 

%____________Archival Data Input____________


K1 = [TurnAscii('Grotz') TurnWarp(6.9), TurnFreq(1006.4),TurnColor('Black'), TurnRatio(3.5)]';
K2 = [TurnAscii('Tlarr'),TurnWarp(7.0), TurnFreq(994.3), TurnColor('Black'), TurnRatio(2.3)]';
K3 = [TurnAscii('Tribok'),TurnWarp(7.3), TurnFreq(978.1), TurnColor('Dark Gray'), TurnRatio(2.8)]';
K4 = [TurnAscii('Brogut'),TurnWarp(7.1), TurnFreq(1005.4), TurnColor('Dark Gray'), TurnRatio(3.0)]';
K5 = [TurnAscii('Glorek'),TurnWarp(7.1), TurnFreq(1001.8), TurnColor('Light Gray'), TurnRatio(1.0)]';

R1 = [TurnAscii('Lorif'),TurnWarp(7.3),TurnFreq(980.4),TurnColor('Dark Blue'), TurnRatio(1.6)]';
R2 = [TurnAscii('Rallev'),TurnWarp(7.4), TurnFreq(977.2), TurnColor('Dark Green'), TurnRatio(1.8)]';
R3 = [TurnAscii('Willosh'),TurnWarp(7.3), TurnFreq(947.9), TurnColor('Light Gray'), TurnRatio(1.9)]';
R4 = [TurnAscii('Loshar'),TurnWarp(7.2), TurnFreq(955.8), TurnColor('Light Blue'), TurnRatio(2.1)]';
R5 = [TurnAscii('Sarash'),TurnWarp(7.4), TurnFreq(960.7), TurnColor('Light Gray'), TurnRatio(2.3)]';

A1 = [TurnAscii('A2231'),TurnWarp(6.7), TurnFreq(1010.9), TurnColor('Pink'), TurnRatio(1.2)]';
A2 = [TurnAscii('E7763'),TurnWarp(6.8), TurnFreq(1033.2), TurnColor('Orange'), TurnRatio(1.2)]';
A3 = [TurnAscii('A0199'),TurnWarp(6.5), TurnFreq(1025.4), TurnColor('Light Blue'), TurnRatio(1.1)]';
A4 = [TurnAscii('A0199'),TurnWarp(6.4), TurnFreq(1066.2), TurnColor('Yellow'), TurnRatio(1.3)]';
A5 = [TurnAscii('A1091'),TurnWarp(6.5), TurnFreq(1015.0), TurnColor('Light Blue'), TurnRatio(1.0)]';

F1 = [TurnAscii('Daisy'),TurnWarp(6.7),TurnFreq(1050.0),TurnColor('Dark Blue'), TurnRatio(1.6)]';
F2 = [TurnAscii('Rosehip'),TurnWarp(6.8), TurnFreq(1055.0), TurnColor('Dark Green'), TurnRatio(1.8)]';
F3 = [TurnAscii('Gardenia'),TurnWarp(6.5), TurnFreq(1045.0), TurnColor('Light Gray'), TurnRatio(1.9)]';
F4 = [TurnAscii('Herb'),TurnWarp(6.4), TurnFreq(1065.0), TurnColor('Light Blue'), TurnRatio(2.1)]';
F5 = [TurnAscii('Cinnamon'),TurnWarp(6.5), TurnFreq(1055.0), TurnColor('Light Gray'),TurnRatio(2.3)]';

fMatrix = [K1,K2,K3,K4,K5,R1,R2,R3,R4,R5,A1,A2,A3,A4,A5,F1,F2,F3,F4,F5];

dim = length(K1); 
pairs = 20; 

%____________Noisy Data Input____________
Test = zeros(dim,pairs);

Test(:,1) = [TurnAscii('0') TurnWarp(7.3), TurnFreq(0),TurnColor('Light Gray'), TurnRatio(2.1)]';
Test(:,2) = [TurnAscii('0') TurnWarp(6.6), TurnFreq(1065.0),TurnColor('White'), TurnRatio(2.1)]';
Test(:,3) = [TurnAscii('Lil') TurnWarp(6.7), TurnFreq(1045),TurnColor('White'), TurnRatio(0)]';
Test(:,4) = [TurnAscii('0') TurnWarp(0), TurnFreq(1065.0),TurnColor('Light Color'), TurnRatio(0)]';
Test(:,5) = [TurnAscii('Plik') TurnWarp(7.0), TurnFreq(1006.3),TurnColor('Dark Color'), TurnRatio(0)]';

Test(:,6) = [TurnAscii('0') TurnWarp(7.3), TurnFreq(951.4),TurnColor('Green'), TurnRatio(1.9)]';
Test(:,7) = [TurnAscii('Krotork') TurnWarp(7.0), TurnFreq(1001.8),TurnColor('Light Gray'), TurnRatio(1.0)]';
Test(:,8) = [TurnAscii('Woshif') TurnWarp(0), TurnFreq(971.7),TurnColor('Blue'), TurnRatio(1.7)]';
Test(:,9) = [TurnAscii('Kritop') TurnWarp(7.2), TurnFreq(0),TurnColor('Dark Gray'), TurnRatio(2.9)]';
Test(:,10) = [TurnAscii('C06') TurnWarp(6.7), TurnFreq(0),TurnColor('Orange'), TurnRatio(0)]';

Test(:,11) = [TurnAscii('0') TurnWarp(0), TurnFreq(0),TurnColor('Black'), TurnRatio(2.6)]';
Test(:,12) = [TurnAscii('Grk') TurnWarp(6.9), TurnFreq(1001),TurnColor('Dark Blue'), TurnRatio(3.2)]';
Test(:,13) = [TurnAscii('9e') TurnWarp(6.6), TurnFreq(0),TurnColor('Light Blue'), TurnRatio(1.2)]';
Test(:,14) = [TurnAscii('6') TurnWarp(6.6), TurnFreq(0),TurnColor('Orange'), TurnRatio(0)]';
Test(:,15) = [TurnAscii('Rash') TurnWarp(0), TurnFreq(955.8),TurnColor('Light Blue'), TurnRatio(0)]';

Test(:,16) = [TurnAscii('Sor') TurnWarp(7.4), TurnFreq(963),TurnColor('0'), TurnRatio(0)]';
Test(:,17) = [TurnAscii('A') TurnWarp(6.8), TurnFreq(1013.3),TurnColor('Light Color'), TurnRatio(1.0)]';
Test(:,18) = [TurnAscii('E4511') TurnWarp(0), TurnFreq(0),TurnColor('0'), TurnRatio(0)]';
Test(:,19) = [TurnAscii('0') TurnWarp(0), TurnFreq(1037),TurnColor('Light Color'), TurnRatio(1.7)]';
Test(:,20) = [TurnAscii('Mor') TurnWarp(6.4), TurnFreq(1055),TurnColor('0'), TurnRatio(0)]';


%____________Converting f to normalized+mean 0____________
correctRate = 0;
aMatrix = zeros(dim,dim);
gMatrix = zeros(dim,pairs);

fMatrixNew = zeros(dim,pairs);
maxf = zeros(dim,1);
minf = zeros(dim,1);
subf = zeros(dim,1);
%Center Zero
for i = 1:dim
maxf(i) = max(fMatrix(i,:));
minf(i) = min(fMatrix(i,:));
subf(i) = maxf(i)-minf(i);
fMatrixNew(i,:) = fMatrix(i,:) - minf(i);
fMatrixNew(i,:) = fMatrixNew(i,:)/subf(i);
end
fMatrixNew = fMatrixNew- 0.5;

% Normalize
for i = 1:pairs
fnorm = norm(fMatrixNew(:,i));
fMatrixNew(:,i) = fMatrixNew(:,i)/fnorm;
end

%____________Normalize Testing Matrices____________
TestNew = zeros(dim,pairs);
%Center Zero
for i = 1:dim
maxf(i) = max(Test(i,:));
minf(i) = min(Test(i,:));
subf(i) = maxf(i)-minf(i);
TestNew(i,:) = Test(i,:) - minf(i);
TestNew(i,:) = TestNew(i,:)/subf(i);
end
TestNew = TestNew - 0.5;

% Normalize
for i = 1:pairs
tnorm = norm(TestNew(:,i));
TestNew(:,i) = TestNew(:,i)/tnorm;
end

%____________Creating A-Matrix____________

%DEBUGGER
debug = ones(pairs,1000);

for z = 1:1000

for i = 1:pairs
    if (i == 1 || i == 6 || i == 11 || i == 16)
   [vecg] = normalizedVector(dim);
    end
    
   gMatrix(:,i) = vecg;
   vecf = fMatrixNew(:,i);
   newA = vecg*vecf';
   aMatrix = aMatrix+newA;
end

%____________Calculating Angles____________


for j = 1:pairs
   gPrimeMatrix(:,j) = aMatrix*fMatrixNew(:,j);
end

cosMatrix = zeros(pairs,1);
for k = 1:pairs
   cosMatrix(k) = dot(gPrimeMatrix(:,k),gMatrix(:,k))/norm(gPrimeMatrix(:,k)); 
end



%____________Angle of Test____________


for j = 1:pairs
   gPrimeTest(:,j) = aMatrix*TestNew(:,j);
end


cosTest = zeros(pairs,1);
cosPlanet = zeros(pairs,3);
for p = 1:pairs
    for k = 1:pairs
       cosTest(k,p) = dot(gPrimeTest(:,p),gMatrix(:,k))/norm(gPrimeTest(:,p)); 
    end
  
    
    %Method 2
    Klingon = cosTest(1,p)+cosTest(2,p)+cosTest(3,p)+cosTest(4,p)+cosTest(5,p);
    Romulan = cosTest(6,p)+cosTest(7,p)+cosTest(8,p)+cosTest(9,p)+cosTest(10,p);
    Antarean = cosTest(11,p)+cosTest(12,p)+cosTest(13,p)+cosTest(14,p)+cosTest(15,p);
    Federation = cosTest(16,p)+cosTest(17,p)+cosTest(18,p)+cosTest(19,p)+cosTest(20,p);
    
    planets = [Klingon,Romulan,Antarean,Federation];
    [buffer, index] = max(planets);
    
    if (index == 1) 
        cosPlanet(p,2) = 'K';
    elseif (index == 2) 
        cosPlanet(p,2) = 'R';
    elseif (index == 3) 
        cosPlanet(p,2) = 'A';
    elseif (index == 4) 
        cosPlanet(p,2) = 'F'; 
    end
     
    
    cosPlanet = char(cosPlanet);
end

answer = 'RFFFKRKRKAKKAARRAAFF';
cosPlanet(:,3) = answer;

for i = 1:pairs
    if(cosPlanet(i,2) == cosPlanet(i,3))
        correctRate = correctRate + 0.05;
        debug(i,z) = 0; %Debug
    end
end

debug2 = sum(debug,2);

aMatrix = zeros(dim,dim); %Debug
end %DEBUG

cosPlanet'
Average_Correction_Rate = correctRate/1000
