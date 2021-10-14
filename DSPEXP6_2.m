close();
clear();
x=input('Enter the sequence:');
N=length(x);
subplot(2,2,1);
stem(x)
xlabel('x(n)');
ylabel('n');
title('Input sequence:');
Xee(1)=x(1)+x(5);
Xee(2)=x(1)-x(5);
Xeo(1)=x(3)+x(7);
Xeo(2)=x(3)-x(7);
Xoe(1)=x(2)+x(6);
Xoe(2)=x(2)-x(6);
Xoo(1)=x(4)+x(8);
Xoo(2)=x(4)-x(8);
for k=1:N/4
    Xe(k)=Xee(k)+exp((-1*2*i*pi*2*(k-1))/N)*Xeo(k);
    Xe(k+N/4)=Xee(k)-exp((-1*2*i*pi*2*(k-1))/N)*Xeo(k);
    Xo(k)=Xoe(k)+exp((-1*2*i*pi*2*(k-1))/N)*Xoo(k);
    Xo(k+N/4)=Xoe(k)-exp((-1*2*i*pi*2*(k-1))/N)*Xoo(k);
end
for k=1:N/2
    X(k)=(Xe(k)+exp((-1*2*i*pi*(k-1))/N)*Xo(k));
    X(k+N/2)=(Xe(k)-exp((-1*2*i*pi*(k-1))/N)*Xo(k));
end
disp(X);
subplot(2,2,2);
stem(real(X));
xlabel('X(n)');
ylabel('n');
title('Real values:');
subplot(2,2,3);
stem(imag(X));
xlabel('X(n)');
ylabel('n');
title('Imaginary values:');
xee(1)=X(1)+X(5);
xee(2)=X(1)-X(5);
xeo(1)=X(3)+X(7);
xeo(2)=X(3)-X(7);
xoe(1)=X(2)+X(6);
xoe(2)=X(2)-X(6);
xoo(1)=X(4)+X(8);
xoo(2)=X(4)-X(8);
for k=1:N/4
    xe(k)=xee(k)+exp((2*i*pi*2*(k-1))/N)*xeo(k);
    xe(k+N/4)=xee(k)-exp((2*i*pi*2*(k-1))/N)*xeo(k);
    xo(k)=xoe(k)+exp((2*i*pi*2*(k-1))/N)*xoo(k);
    xo(k+N/4)=xoe(k)-exp((2*i*pi*2*(k-1))/N)*xoo(k);
end
for k=1:N/2
    x(k)=(xe(k)+exp((2*i*pi*(k-1))/N)*xo(k))/N;
    x(k+N/2)=(xe(k)-exp((2*i*pi*(k-1))/N)*xo(k))/N;
end
disp(x);            
subplot(2,2,4);
stem(real(x));
xlabel('x(n)');
ylabel('n');
title('Real values:');