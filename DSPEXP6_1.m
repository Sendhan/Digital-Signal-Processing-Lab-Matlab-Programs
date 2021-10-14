clear()
close()
x=input('enter the sequence');
N=length(x);
y=fft(x,N);
disp(y);
Xe(1)=x(1)+x(3);
Xe(2)=x(1)-x(3);
Xo(1)=x(2)+x(4);
Xo(2)=x(2)-x(4);
for p=1:N/2
    X(p)=Xe(p)+exp((-1*2*i*pi*(p-1))/N)*Xo(p);
    X(p+N/2)=Xe(p)-exp((-1*2*i*pi*(p-1))/N)*Xo(p);
end
disp(X);
subplot(2,2,1);
stem(x);
xlabel('n');
ylabel('x(n)');
title('Input Sequence');
subplot(2,2,2);
stem(real(X));
xlabel('k');
ylabel('X(k)');
title('Real part of X(k)');
subplot(2,2,3);
stem(imag(X));
xlabel('k');
ylabel('X(k)');
title('Imaginary part of X(k)');
z=ifft(X,N);
disp(z);
xe(1)=X(1)+X(3);
xe(2)=X(1)-X(3);
xo(1)=X(2)+X(4);
xo(2)=X(2)-X(4);
for q=1:N/2
    x(q)=(xe(q)+exp((2*i*pi*(q-1))/N)*xo(q))/N;
    x(q+N/2)=(xe(q)-exp((2*i*pi*(q-1))/N)*xo(q))/N;
end
disp(x);
subplot(2,2,4);
stem(x);
xlabel('n');
ylabel('x(n)');
title('idft of X(k)');