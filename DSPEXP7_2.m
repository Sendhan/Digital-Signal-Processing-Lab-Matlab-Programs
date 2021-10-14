close();
clear();
x=input('Enter the input Sequence:');
N=length(x);
 
for n=1:N/2
    f(n)=x(n)+x(n+N/2);
    g(n)=(x(n)-x(n+N/2))*exp((-1*2*pi*i*(n-1))/N);
end
for n=1:N/4
    a(n)=f(n)+f(n+N/4);
    b(n)=(f(n)-f(n+N/4))*exp((-1*2*pi*i*(n-1)*2)/N);
    c(n)=g(n)+g(n+N/4);
    d(n)=(g(n)-g(n+N/4))*exp((-1*2*pi*i*(n-1)*2)/N);
end
X(1)=a(1)+a(2);
X(5)=a(1)-a(2);
X(3)=b(1)+b(2);
X(7)=b(1)-b(2);
X(2)=c(1)+c(2);
X(6)=c(1)-c(2);
X(4)=d(1)+d(2);
X(8)=d(1)-d(2);
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
 
subplot(2,2,3);
stem(imag(X));
xlabel('n');
ylabel('X(n)');
title('imaginary sequence');
 
for k=1:N/2
    F(k)=X(k)+X(k+N/2);
    G(k)=(X(k)-X(k+N/2))*exp((2*pi*i*(k-1))/N);
end
for k=1:N/4
    A(k)=F(k)+F(k+N/4);
    B(k)=F(k)-F(k+N/4)*exp((2*pi*i*(k-1)*2)/N);
    C(k)=G(k)+G(k+N/4);
    D(k)=G(k)-G(k+N/4)*exp((2*pi*i*(k-1)*2)/N);
end
x(1)=(A(1)+A(2))/N;
x(5)=(A(1)-A(2))/N;
x(3)=(B(1)+B(2))/N;
x(7)=(B(1)-B(2))/N;
x(2)=(C(1)+C(2))/N;
x(6)=(C(1)-C(2))/N;
x(4)=(D(1)+D(2))/N;
x(8)=(D(1)-D(2))/N;
disp(x);
subplot(2,2,4);
stem(x);
xlabel('n');
ylabel('x(n)');
title('idft sequence');