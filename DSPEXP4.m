close();
clear();
x=input('enter the first sequence');
h=input('enter the second sequence');
z=conv(x,h);
disp(z);
subplot(2,2,1);
stem(x);
xlabel('n');
ylabel('x(n)');
title('First Sequence');
subplot(2,2,2);
stem(h);
xlabel('n');
ylabel('h(n)');
title('Second Sequence');
subplot(2,2,3);
stem(z);
xlabel('n');
ylabel('z(n)');
title('linear convolution with function');
a=length(x);
b=length(h);
N=a+b-1;
x=[x,zeros(1,(N-a))];
h=[h,zeros(1,(N-b))];
for n=1:N
    y(n)=0;
    for m=1:N
        q=n+1-m;
        if(q<=0)
            q=q+N;
        end
    y(n)=y(n)+x(m)*h(q);
    end
end
disp(y);
subplot(2,2,4);
stem(y);
xlabel('n');
ylabel('y(n)');
title('linear convolution without function');