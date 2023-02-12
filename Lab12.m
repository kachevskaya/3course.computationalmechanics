dt = 0.001
dh = 0.06
x_0 = 0
x = 0.6
t_0 = 0
t = 0.01

X = [x_0:dh:x]
Time = [t_0:dt:t]
T = zeros(length(X),length(Time))

T_x_0 = cos(2*X+0.19)
T_t_0 = 0.932
T_t = 0.1798

T(1,:) = T_x_0
T(:,1) = T_t_0
T(:,length(Time)) = T_t

A = 1/(dh^2)
B = ((dh^2)+2*dt)/(dt*(dh^2))
C = 1/(dh^2)

D = zeros(11)
D(1,1) = 1
D(11,11) = 1
for i = 2:10
    D(i,i-1) = -A
    D(i,i) = B
    D(i,i+1) = -C
end

for k = 2:length(Time)

    F = zeros(11,1)
    F(1) = T_t_0
    F(11) = T_t
    for i = 2:10

        F(i) = T(k-1,i)/dt

end

  S = D^-1*F;
  for j = 1:11
    T(k, j) = S(j);
    end


end
T1 = T(3,1:length(Time))
T2 = T(5,1:length(Time))
T3 = T(8,1:length(Time))

figure
surf(T)
xlabel('t')
ylabel('x')
zlabel('T')
title("График распределения температуры по координате и времени")
colorbar

figure
hold on
plot(X, T1)
plot(X, T2)
plot(X, T3)
xlabel('x')
ylabel('T')
title("Распредение функции Т в фиксированном времени")
legend("t1 = 0,003","t2 = 0,005","t3 = 0,008")
