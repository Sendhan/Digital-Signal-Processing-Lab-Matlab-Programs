close()
clear()
x=input('enter the first sequence');
g=input('enter the second sequence');
a=length(x);
b=length(g);
N=max(a,b);
y=cconv(x,g,N);
disp(y);
subplot(2,2,1);
stem(x);
xlabel('n');
ylabel('x(n)');
title('first sequence');
subplot(2,2,2);
stem(g);
xlabel('n');
ylabel('g(n)');
title('second sequence');
subplot(2,2,3);
stem(y);
xlabel('n');
ylabel('y(n)');
title('circular convolution with function');
c=a-b;
if(c<0)
    x=[x,zeros(1,-c)];
else 
    g=[g,zeros(1,c)];
end
for n=1:N
    z(n)=0;
    for m=1:N
        q=n-m+1;
          if(q<=0)
              q=q+N;
          end
     z(n)=z(n)+(x(m)*g(q));     
     end
end
subplot(2,2,4);
stem(z);
xlabel('n');
ylabel('y(n)');
title('circular convolution without function');