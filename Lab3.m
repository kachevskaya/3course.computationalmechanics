clear all
dx = 0.1
dy = 0.1

x_0 = 0
x = 1
y_0 = 0
y = 1

Nx = 10
Ny = 10

n = 11
k = 11

x = zeros(1,n)
for i=1:n
    x(i) = (i-1).*dx
end
y = zeros(1,k)
for i=1:k
    y(i) = (i-1).*dy
end

R = zeros(n,k)
for i = 1:n-1
    R(1,i) = 50*(y(i))^2
    R(n,i) = 0
end
for i = 1:n-1
    R(i,1) = 50*(1- x(i))
    R(i,k) = 60*x(i)*(1-(x(i))^2)
end

for i = 2:n-1
   for j = 2:k-1
       r(i,j) = 0.25*(R(i-1,j)+R(i+1,j)+R(i,j-1)+R(i,j+1))
   end
end

k1 = zeros(1,n)
w = zeros(1,n)

W = 0.1
while W<2
    k1 = k(i)
    w =  W(i)
    W += 0.1;
end

R1 = 2*R
k = 0

while norm(R1 - R)<0.01
     R1 = R
     for i = 1:Nx-1
         for j = 1:Ny-1
             R(i,j) = R(i,j) + W*(r(i,j) - R(i,j))
         end
     end
     k += 1
end
k
R


R
figure
surf(T)
colorbar


