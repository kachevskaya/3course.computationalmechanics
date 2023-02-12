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

for k = 1:length(X)-1
  for i = 2:length(Time)-1

    T(k+1,i) = (dt/(dh^2))*(T(k,i+1)-2*T(k,i)+T(k,i-1))+T(k,i)

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


