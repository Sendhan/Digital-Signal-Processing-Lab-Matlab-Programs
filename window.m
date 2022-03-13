%PROGRAM:

%BARTLETT WINDOW:

close();
clear();
clc();
rp=input('Enter the passband ripple:'); 
rs=input('Enter the stopband ripple:');
fp=input('Enter the passband freq:'); 
fs=input('Enter the stopband freq:'); 
f=input('Enter the sampling freq:'); 
wp=2*(fp)/f;
ws=2*(fs)/f;
num=((-10*log10(rp*rs))-13); 
den=14.6*(fs-fp)/f; 
n=ceil(num/den);
n1=n+1;
y=bartlett(n1); b=fir1(n,wp,y); figure(1); freqz(b,1,256,f);
title('BARTLETT WINDOW LOWPASS FILTER');
y=bartlett(n1); 
b=fir1(n,wp,'high',y); 
figure(2); 
freqz(b,1,256,f);
title('BARTLETT WINDOW HIGHPASS FILTER');
y=bartlett(n1); 
wn=[wp,ws];
b=fir1(n,wn,y); 
figure(3); 
freqz(b,1,256,f);
title('BARTLETT WINDOW BANDPASS FILTER');
y=bartlett(n1); 
wn=[wp,ws]; 
b=fir1(n,wn,'stop',y); 
figure(4); 
freqz(b,1,256,f);
title('BARTLETT WINDOW BANDSTOP FILTER');
disp('order:'); 
disp(n);







%HAMMING WINDOW:

close();
clear();
clc();
rp=input('Enter the passband ripple:');
rs=input('Enter the stopband ripple:'); 
fp=input('Enter the passband freq:'); 
fs=input('Enter the stopband freq:'); 
f=input('Enter the sampling freq:'); 
wp=2*(fp)/f;
ws=2*(fs)/f;
num=((-10*log10(rp*rs))-13); 
den=14.6*(fs-fp)/f; 
n=ceil(num/den);
n1=n+1;
y=hamming(n1); 
b=fir1(n,wp,y); 
figure(1); 
freqz(b,1,256,f);
title('HAMMING WINDOW LOWPASS FILTER');
y=hamming(n1); 
b=fir1(n,wp,'high',y); 
figure(2); 
freqz(b,1,256,f);
title('HAMMING WINDOW HIGHPASS FILTER');
y=hamming(n1); 
wn=[wp,ws];
b=fir1(n,wn,y); 
figure(3); 
freqz(b,1,256,f);
title('HAMMING WINDOW BANDPASS FILTER');
y=hamming(n1); 
wn=[wp,ws]; 
b=fir1(n,wn,'stop',y); 
figure(4); 
freqz(b,1,256,f);
title('HAMMING WINDOW BANDSTOP FILTER');
disp('order:'); 
disp(n);











%HANNING WINDOW:

close();
clear();
clc();
rp=input('Enter the passband ripple:');
rs=input('Enter the stopband ripple:'); 
fp=input('Enter the passband freq:'); 
fs=input('Enter the stopband freq:'); 
f=input('Enter the sampling freq:');
wp=2*(fp)/f; 
ws=2*(fs)/f;
num=((-10*log10(rp*rs))-13); 
den=14.6*(fs-fp)/f; 
n=ceil(num/den);
n1=n+1;
y=hann(n1); 
b=fir1(n,wp,y); 
figure(1); 
freqz(b,1,256,f);
title('HANNING WINDOW LOWPASS FILTER');
y=hann(n1); 
b=fir1(n,wp,'high',y);
figure(2); 
freqz(b,1,256,f);
title('HANNING WINDOW HIGHPASS FILTER');
y=hann(n1); 
wn=[wp,ws];
b=fir1(n,wn,y); 
figure(3); 
freqz(b,1,256,f);
title('HANNING WINDOW BANDPASS FILTER');
y=hann(n1); 
wn=[wp,ws];
b=fir1(n,wn,'stop',y); 
figure(4); 
freqz(b,1,256,f);
title('HANNING WINDOW BANDSTOP FILTER');
disp('order:'); 
disp(n);





%BLACKMAN WINDOW:

close();
clear();
clc();
rp=input('Enter the passband ripple:');
rs=input('Enter the stopband ripple:');
fp=input('Enter the passband freq:'); 
fs=input('Enter the stopband freq:'); 
f=input('Enter the sampling freq:'); 
wp=2*(fp)/f;
ws=2*(fs)/f;
num=((-10*log10(rp*rs))-13); 
den=14.6*(fs-fp)/f; 
n=ceil(num/den);
n1=n+1;
y=blackman(n1); 
b=fir1(n,wp,y); 
figure(1); 
freqz(b,1,256,f);
title('BLACKMAN WINDOW LOWPASS FILTER');
y=blackman(n1);
b=fir1(n,wp,'high',y); 
figure(2); 
freqz(b,1,256,f);
title('BLACKMAN WINDOW HIGHPASS FILTER');
y=blackman(n1); 
wn=[wp,ws];
b=fir1(n,wn,y); 
figure(3); 
freqz(b,1,256,f);
title('BLACKMAN WINDOW BANDPASS FILTER');
y=blackman(n1);
wn=[wp,ws]; 
b=fir1(n,wn,'stop',y); 
figure(4); 
freqz(b,1,256,f);
title('BLACKMAN WINDOW BANDSTOP FILTER');
disp('order:'); 
disp(n);






%KAISER WINDOW:

close();
clear();
clc();
rp=input('Enter the passband ripple:');
rs=input('Enter the stopband ripple:'); 
fp=input('Enter the passband freq:'); 
fs=input('Enter the stopband freq:'); 
f=input('Enter the sampling freq:'); 
wp=2*(fp)/f;
ws=2*(fs)/f;
num=((-10*log10(rp*rs))-13); 
den=14.6*(fs-fp)/f; 
n=ceil(num/den);
n1=n+1;
y=kaiser(n1,1.5); 
b=fir1(n,wp,y); 
figure(1); 
freqz(b,1,256,f);
title('KAISER WINDOW LOWPASS FILTER');
y=kaiser(n1,1.5); 
b=fir1(n,wp,'high',y);
figure(2); 
freqz(b,1,256,f);
title('KAISER WINDOW HIGHPASS FILTER');
y=kaiser(n1,1.5); 
wn=[wp,ws];
b=fir1(n,wn,y); 
figure(3); 
freqz(b,1,256,f);
title('KAISER WINDOW BANDPASS FILTER');
y=kaiser(n1,1.5);
wn=[wp,ws]; 
b=fir1(n,wn,'stop',y); 
figure(4); 
freqz(b,1,256,f);
title('KAISER WINDOW BANDSTOP FILTER');
disp('order:'); 
disp(n);




%RECTANGULAR WINDOW:

close();
clear();
clc();
rp=input('Enter the passband ripple:');
rs=input('Enter the stopband ripple:');
fp=input('Enter the passband freq:'); 
fs=input('Enter the stopband freq:'); 
f=input('Enter the sampling freq:'); 
wp=2*(fp)/f;
ws=2*(fs)/f;
num=((-10*log10(rp*rs))-13); 
den=14.6*(fs-fp)/f; 
n=ceil(num/den);
n1=n+1;
y=rectwin(n1); 
b=fir1(n,wp,y); 
figure(1); 
freqz(b,1,256,f);
title('RECTANGULAR WINDOW LOWPASS FILTER');
y=rectwin(n1); b=fir1(n,wp,'high',y); 
figure(2); 
freqz(b,1,256,f);
title('RECTANGULAR WINDOW HIGHPASS FILTER');
y=rectwin(n1); 
wn=[wp,ws];
b=fir1(n,wn,y); 
figure(3); 
freqz(b,1,256,f);
title('RECTANGULAR WINDOW BANDPASS FILTER');
y=rectwin(n1); 
wn=[wp,ws]; b=fir1(n,wn,'stop',y); 
figure(4); 
freqz(b,1,256,f);
title('RECTANGULAR WINDOW BANDSTOP FILTER');
disp('order:'); 
disp(n);







