close()
clear()
%butterworth lpf hpf
ap=input('enter the passband attenuation');
as=input('enter the stopband attenuation');
fp=input('enter the passband frequency');
fs=input('enter the stopband frequency');
f=input('enter the sampling frequency');
ws=(2*fs)/f;
wp=(2*fp)/f;
[N,wc]=buttord(wp,ws,ap,as);
disp('order');
disp(N);
disp('normalised cut off frequency');
disp(wc);
[b,a]=butter(N,wc);
disp(b);
disp(a);
figure(1);
freqz(b,a,[],f);
title('low pass butterworth filter');
[b,a]=butter(N,wc,'high');
disp(b);
disp(a);
figure(2);
freqz(b,a,[],f);
title('high pass butterworth filter');
 
%butterworth bpf bsf
ap=input('enter the passband attenuation');
as=input('enter the stopband attenuation');
fp=input('enter the passband frequency');
fs=input('enter the stopband frequency');
f=input('enter the sampling frequency');
ws=(2*fs)/f;
wp=(2*fp)/f;
[N,wc]=buttord(wp,ws,ap,as);
disp('order');
disp(N);
disp('normalised cut off frequency');
disp(wc);
[b,a]=butter(N,wc);
disp(b);
disp(a);
figure(3);
freqz(b,a,[],f);
title('band pass butterworth filter');
disp(b);
disp(a);
[b,a]=butter(N,wc,'stop');
figure(4);
freqz(b,a,[],f);
title('band stop butterworth filter');
 
%chebyshev1 lpf hpf
ap=input('enter the passband attenuation');
as=input('enter the stopband attenuation');
fp=input('enter the passband frequency');
fs=input('enter the stopband frequency');
f=input('enter the sampling frequency');
ws=(2*fs)/f;
wp=(2*fp)/f;
[N,wc]=cheb1ord(wp,ws,ap,as);
disp('order');
disp(N);
disp('normalised cut off frequency');
disp(wc);
[b,a]=cheby1(N,ap,wc);
disp(b);
disp(a);
figure(5);
freqz(b,a,[],f);
title('low pass chebyshev1 filter');
[b,a]=cheby1(N,ap,wc,'high');
disp(b);
disp(a);
figure(6);
freqz(b,a,[],f);
title('high pass chebyshev1 filter');
 
 
%chebyshev1 bpf bsf
ap=input('enter the passband attenuation');
as=input('enter the stopband attenuation');
fp=input('enter the passband frequency');
fs=input('enter the stopband frequency');
f=input('enter the sampling frequency');
ws=(2*fs)/f;
wp=(2*fp)/f;
[N,wc]=cheb1ord(wp,ws,ap,as);
disp('order');
disp(N);
disp('normalised cut off frequency');
disp(wc);
[b,a]=cheby1(N,ap,wc);
disp(b);
disp(a);
figure(7);
freqz(b,a,[],f);
title('band pass chebyshev1 filter');
[b,a]=cheby1(N,ap,wc,'stop');
disp(b);
disp(a);
figure(8);
freqz(b,a,[],f);
title('band reject chebyshev1 filter');
 
 
%chebyshev2 lpf hpf
ap=input('enter the passband attenuation');
as=input('enter the stopband attenuation');
fp=input('enter the passband frequency');
fs=input('enter the stopband frequency');
f=input('enter the sampling frequency');
ws=(2*fs)/f;
wp=(2*fp)/f;
[N,wc]=cheb2ord(wp,ws,ap,as);
disp('order');
disp(N);
disp('normalised cut off frequency');
disp(wc);
[b,a]=cheby2(N,ap,wc);
disp(b);
disp(a);
figure(9);
freqz(b,a,[],f);
title('low pass chebyshev2 filter');
[b,a]=cheby2(N,ap,wc,'high');
disp(b);
disp(a);
figure(10);
freqz(b,a,[],f);
title('high pass chebyshev2 filter');
 
%chebyshev2 bpf bsf
ap=input('enter the passband attenuation');
as=input('enter the stopband attenuation');
fp=input('enter the passband frequency');
fs=input('enter the stopband frequency');
f=input('enter the sampling frequency');
ws=(2*fs)/f;
wp=(2*fp)/f;
[N,wc]=cheb2ord(wp,ws,ap,as);
disp('order');
disp(N);
disp('normalised cut off frequency');
disp(wc);
[b,a]=cheby2(N,ap,wc);
disp(b);
disp(a);
figure(11);
freqz(b,a,[],f);
title('band pass chebyshev2 filter');
[b,a]=cheby2(N,ap,wc,'stop');
disp(b);
disp(a);
figure(12);
freqz(b,a,[],f);
title('band reject chebyshev2 filter');