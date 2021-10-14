close()
clear()
% ct impulse signal
subplot(6,3,1);
x =  -5: 1 : 5;
y = [zeros(1,5), ones(1,1), zeros(1,5)];
stem(x,y);
xlabel('t');
ylabel('Amplitude');
title('impulse');

% ct unit-step signal
subplot(6,3,2);
x = 0 : 1 : 5;
y = [ones(1,6)];
plot(x,y);
xlabel('t');
ylabel('Amplitude');
title('ct unit-step');

% dt unit-step signal
subplot(6,3,3);
x = -5 : 1 : 5;
y = [zeros(1,5), ones(1,6)];
stem(x,y);
xlabel('t');
ylabel('Amplitude');
title('dt unit-step');

% ct ramp signal
subplot(6,3,4);
x = 0 : 1 : 5;
y = x;
plot(x,y);
xlabel('t');
ylabel('Amplitude');
title('ct ramp');

% dt ramp signal
subplot(6,3,5);
x = 0 : 1 : 5;
y = x;
stem(x,y);
xlabel('t');
ylabel('Amplitude');
title('dt ramp');

% ct parabolic signal
subplot(6,3,6);
x = -5 : 1 : 5;
y = 0.5*power(x,2);
plot(x,y);
xlabel('t');
ylabel('Amplitude');
title('ct parabolic');

% dt parabolic signal
subplot(6,3,7);
x = -5 : 1 : 5;
y = 0.5*power(x,2);
stem(x,y);
xlabel('t');
ylabel('Amplitude');
title('dt parabolic');

% ct sine signal
subplot(6,3,8);
x = -5 : 0.1 : 5;
y = sin(x);
plot(x,y);
xlabel('t');
ylabel('Amplitude');
title('ct sine');

% dt sine signal
subplot(6,3,9);
x = -5 : 0.5 : 5;
y = sin(x);
stem(x,y);
xlabel('t');
ylabel('Amplitude');
title('dt sine');

% ct sine signal
subplot(6,3,10);
x = -5 : 0.1 : 5;
y = cos(x);
plot(x,y);
xlabel('t');
ylabel('Amplitude');
title('ct cosine');

% dt cosine signal
subplot(6,3,11);
x = -5 : 0.5 : 5;
y = cos(x);
stem(x,y);
xlabel('t');
ylabel('Amplitude');
title('dt cosine');

% ct exponential signal
subplot(6,3,12);
x = 0 : 0.1 : 3;
y = exp(x);
plot(x,y);
xlabel('t');
ylabel('Amplitude');
title('ct exponential');

% dt exponential signal
subplot(6,3,13);
x = 0 : 0.5 : 3;
y = exp(x);
stem(x,y);
xlabel('t');
ylabel('Amplitude');
title('dt exponential');

% ct sinc signal
subplot(6,3,14);
x = -5 : 0.1 : 5;
y = sinc(x);
plot(x,y);
xlabel('t');
ylabel('Amplitude');
title('ct sinc');

% dt sinc signal
subplot(6,3,15);
x = -5 : 0.5 : 5;
y = sinc(x);
stem(x,y);
xlabel('t');
ylabel('Amplitude');
title('dt sinc');

% ct square signal
subplot(6,3,16);
x = -3 : 0.01 : 3;
y = square(x);
plot(x,y);
xlabel('t');
ylabel('Amplitude');
title('ct square');

% ct square signal
subplot(6,3,17);
x = -3 : 0.5 : 3;
y = square(x);
stem(x,y);
xlabel('t');
ylabel('Amplitude');
title('dt square');
