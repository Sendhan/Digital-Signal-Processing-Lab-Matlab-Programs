close();
clear();
x=input('Enter the input Sequence:');
N=length(x);
for n=1:N/2
    f(n)=x(n)+x(n+N/2);
    g(n)=[x(n)-x(n+N/2)]*exp((-1*2*pi*i*(n-1))/N);
end
X(1)=f(1)+f(2);
X(3)=f(1)-f(2);
X(2)=g(1)+g(2);
X(4)=g(1)-g(2);
disp(x);
subplot(2,2,1);
stem(x);
xlabel('n');
ylabel('x(n)');
title('sequence');
disp(X);
subplot(2,2,2);
stem(real(X));
xlabel('n');
ylabel('X(n)');
title('real sequence');
disp(X);
subplot(2,2,3);
stem(imag(X));
xlabel('n');
ylabel('X(n)');
title('imaginary sequence');
 
for k=1:N/2
    F(k)=X(k)+X(k+N/2);
    G(k)=(X(k)-X(k+N/2))*exp((2*pi*i*(k-1))/N);
end
x(1)=(F(1)+F(2))/N;
x(2)=(G(1)+G(2))/N;
x(3)=(F(1)-F(2))/N;
x(4)=(G(1)-G(2))/N;
disp(x);
subplot(2,2,4);
stem(x);
xlabel('n');
ylabel('x(n)');
title('idft sequence');