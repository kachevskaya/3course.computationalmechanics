clear all
h=0.1;
dt = 0.01
x_a = 0;
x_b = 1;
n = 11
z = 11
lamda = 1
RcV = 1
P=zeros(1,n)
Q=zeros(1,n)
F=zeros(1,n)

A = lamda./h.^2;
B = (2.*dt.^2+h.^2)./(dt.^2.*h.^2);
C = lamda./h.^2;
P(1) = C./B
x = zeros(1,n)
for i=1:n
x(i) = (i-1).*h
end
t = zeros(1,z)
for i= 1:z
    t(i) = (i-1).* dt
end


U_1 = zeros(z,n);

U_2 = zeros(z,n);

for i = 1:n-1
U_1(1,i) = (x(i)+1)*sin(pi.*x(i));
U_2(1,i) = (x(i)+1)*sin(pi.*x(i));

end
for i=1:z
U_1(i,1) = 0;
U_1(i,11) = 0.5*t(i);
U_2(i,1) = 0;
U_2(i,11) = 0.5*t(i);
end
for i=2:n-1
U_1(2,i)= (x(i)+1)*sin(pi.*x(i))+ ((x(i).^2) + x(i)) .*dt + dt.^2./(2.*h.^2).*((x(i-1)+1)*sin(pi.*x(i-1))-2.*(x(i)+1)*sin(pi.*x(i))+(x(i+1)+1)*sin(pi.*x(i+1)))
U_2(2,i)= (x(i)+1)*sin(pi.*x(i))+ ((x(i).^2) + x(i)) .*dt + dt.^2./(2.*h.^2).*((x(i-1)+1)*sin(pi.*x(i-1))-2.*(x(i)+1)*sin(pi.*x(i))+(x(i+1)+1)*sin(pi.*x(i+1)))
end
for k=2:z-1
    for i=2:n-1

U_1(k+1,i) = ((dt.^2)./h.^2).*(U_1(k,i+1)-2.*U_1(k,i)+U_1(k,i-1)) + 2.*U_1(k,i)-U_1(k-1,i);
    end
end
    for i=2:n
  P(i) = C./(B-A.*P(i-1))
end
for k = 2:z-1
for i=1:n
    % СНАЧАЛО НУЖНО ЧЕРЕЗ WHILE ПОСЧИТАТЬ ВСЕ F, потом только считать T_2
    % потом опять считать через while F и т.д.
    F(i) = 2./dt.^2.*U_2(k,i) - 1./dt.^2.*U_2(k-1,i)
    Q(1) = (F(1)+A.*U_2(k+1,1))./B
    if i~=1
    Q(i) = (F(i)+A.*Q(i-1))./(B-A.*P(i-1))
     end


    if i==n
        for i=1:n-2
   U_2(k+1,n-i) = P(n-i).*U_2(k+1,n-i+1)+Q(n-i)
        end
    end
end
end

figure
surf(U_1);
colorbar
ylabel('t')
xlabel('x')
zlabel("U_1")
title('График распределения температуры по координате и времени')

figure
surf(U_2);
colorbar
ylabel('t')
xlabel('x')
zlabel("U_2")
title('График распределения температуры по координате и времени')

figure
plot(x,U_1(3,:),x,U_1(5,:),x,U_1(8,:))
legend("t1 = 0,003","t2 = 0,005","t3 = 0,008")
title("Распредение функции U в фиксированном времени")
xlabel('x')
ylabel('U_1')

figure
plot(x,U_2(3,:),x,U_2(5,:),x,U_2(8,:))
legend("t1 = 0,003","t2 = 0,005","t3 = 0,008")
title("Распредение функции U в фиксированном времени")
xlabel('x')
ylabel('U_2')

