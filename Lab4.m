syms P(x,y,z)
P(x,y,z)= [1,x,y,z,x*y,x*z,y*z,x*x,y*y,z*z,x*y*z,x*x*y,y*y*z,x*z*z,y*z*z]
prisma=ones(15,3)
t1=[0,0,0];
t2=[0.5,0,0];
t3=[1,0,0];
t4=[0.5,0.5,0];
t5=[0,1,0];
t6=[0,0.5,0];
t7=[0,0,0.5];
t8=[1,0,0.5];
t9=[0,1,0.5];
t10=[0,0,1];
t11=[0.5,0,1];
t12=[1,0,1];
t13=[0.5,0.5,1];
t14=[0,1,1];
t15=[0,0.5,1];
prisma(1,:)=t1;
prisma(2,:)=t2;
prisma(3,:)=t3;
prisma(4,:)=t4;
prisma(5,:)=t5;
prisma(6,:)=t6;
prisma(7,:)=t7;
prisma(8,:)=t8;
prisma(9,:)=t9;
prisma(10,:)=t10;
prisma(11,:)=t11;
prisma(12,:)=t12;
prisma(13,:)=t13;
prisma(14,:)=t14;
prisma(15,:)=t15;
X=ones(15,15);
k=1
for i =[1:15]
    X(k,1)=1;
    X(k,2)=prisma(i,1);
    X(k,3)=prisma(i,2);
    X(k,4)=prisma(i,3);
    X(k,5)=prisma(i,1)*prisma(i,3);
    X(k,6)=prisma(i,2)*prisma(i,3);
    X(k,7)=prisma(i,1)*prisma(i,2);
    X(k,8)=prisma(i,1)*prisma(i,1);
    X(k,9)=prisma(i,2)*prisma(i,2);
    X(k,10)=prisma(i,3)*prisma(i,3);
    X(k,11)=prisma(i,1)*prisma(i,2)*prisma(i,3);
    X(k,12)=prisma(i,1)*prisma(i,2)*prisma(i,1);
    X(k,13)=prisma(i,2)*prisma(i,2)*prisma(i,3);
    X(k,14)=prisma(i,1)*prisma(i,3)*prisma(i,3);
    X(k,15)=prisma(i,2)*prisma(i,3)*prisma(i,3);

    k=k+1;
end
X
A=pinv(X)
N=P*A
L=formula(N);
for i=[1:15]
N1=subs(L(1,i))
figure

hold on
C1 = [double(subs(N1,[x,y,z],[t1(1),t1(2),t1(3)])) 0 ;
     double(subs(N1,[x,y,z],[t2(1),t2(2),t2(3)])) 0;
     double(subs(N1,[x,y,z],[t3(1),t3(2),t3(3)])) 0;
     double(subs(N1,[x,y,z],[t8(1),t8(2),t8(3)])) 0;
     double(subs(N1,[x,y,z],[t12(1),t12(2),t12(3)])) 0;
     double(subs(N1,[x,y,z],[t11(1),t11(2),t11(3)])) 0;
     double(subs(N1,[x,y,z],[t10(1),t10(2),t10(3)])) 0;
     double(subs(N1,[x,y,z],[t7(1),t7(2),t7(3)])) 0];
C2 = [double(subs(N1,[x,y,z],[t1(1),t1(2),t1(3)])) 0 ;
     double(subs(N1,[x,y,z],[t6(1),t6(2),t6(3)])) 0;
     double(subs(N1,[x,y,z],[t5(1),t5(2),t5(3)])) 0;
     double(subs(N1,[x,y,z],[t9(1),t9(2),t9(3)])) 0;
     double(subs(N1,[x,y,z],[t14(1),t14(2),t14(3)])) 0;
     double(subs(N1,[x,y,z],[t15(1),t15(2),t15(3)])) 0;
     double(subs(N1,[x,y,z],[t10(1),t10(2),t10(3)])) 0;
     double(subs(N1,[x,y,z],[t7(1),t7(2),t7(3)])) 0];
C3 = [double(subs(N1,[x,y,z],[t3(1),t3(2),t3(3)])) 0;
     double(subs(N1,[x,y,z],[t4(1),t4(2),t4(3)])) 0;
     double(subs(N1,[x,y,z],[t5(1),t5(2),t5(3)])) 0;
     double(subs(N1,[x,y,z],[t9(1),t9(2),t9(3)])) 0;
     double(subs(N1,[x,y,z],[t14(1),t14(2),t14(3)])) 0;
     double(subs(N1,[x,y,z],[t13(1),t13(2),t13(3)])) 0;
     double(subs(N1,[x,y,z],[t12(1),t12(2),t12(3)])) 0;
     double(subs(N1,[x,y,z],[t8(1),t8(2),t8(3)])) 0;];
C4 = [double(subs(N1,[x,y,z],[t1(1),t1(2),t1(3)])) 0 ;
     double(subs(N1,[x,y,z],[t2(1),t2(2),t2(3)])) 0;
     double(subs(N1,[x,y,z],[t3(1),t3(2),t3(3)])) 0;
     double(subs(N1,[x,y,z],[t4(1),t4(2),t4(3)])) 0 ;
     double(subs(N1,[x,y,z],[t5(1),t5(2),t5(3)])) 0;
     double(subs(N1,[x,y,z],[t6(1),t6(2),t6(3)])) 0;];
C5 = [double(subs(N1,[x,y,z],[t10(1),t10(2),t10(3)])) 0;
     double(subs(N1,[x,y,z],[t11(1),t11(2),t11(3)])) 0;
     double(subs(N1,[x,y,z],[t12(1),t12(2),t12(3)])) 0;
     double(subs(N1,[x,y,z],[t13(1),t13(2),t13(3)])) 0;
     double(subs(N1,[x,y,z],[t14(1),t14(2),t14(3)])) 0;
     double(subs(N1,[x,y,z],[t15(1),t15(2),t15(3)])) 0;];
fill3([t1(1), 1; t2(1),1;t3(1), 1;t8(1),1;t12(1),1;t11(1),1;t10(1),1;t7(1),1;],[t1(2), 1; t2(2),1;t3(2), 1;t8(2),1;t12(2),1;t11(2),1;t10(2),1;t7(2),1;],[t1(3), 1; t2(3),1;t3(3), 1;t8(3),1;t12(3),1;t11(3),1;t10(3),1;t7(3),1;],C1)
fill3([t1(1),1;t6(1),1;t5(1),1;t9(1),1;t14(1),1;t15(1),1;t10(1),1;t7(1),1;],[t1(2),1;t6(2),1;t5(2),1;t9(2),1;t14(2),1;t15(2),1;t10(2),1;t7(2),1;],[t1(3),1;t6(3),1;t5(3),1;t9(3),1;t14(3),1;t15(3),1;t10(3),1;t7(3),1;], C2)
fill3([t3(1),1;t4(1),1;t5(1),1;t9(1),1;t14(1),1;t13(1),1;t12(1),1;t8(1),1;],[t3(2),1;t4(2),1;t5(2),1;t9(2),1;t14(2),1;t13(2),1;t12(2),1;t8(2),1;],[t3(3),1;t4(3),1;t5(3),1;t9(3),1;t14(3),1;t13(3),1;t12(3),1;t8(3),1;], C3)
fill3([t1(1), 1; t2(1),1;t3(1), 1;t4(1),1;t5(1),1;t6(1),1;],[t1(2), 1; t2(2),1;t3(2), 1;t4(2),1;t5(2),1;t6(2),1;],[t1(3), 1; t2(3),1;t3(3), 1;t4(3),1;t5(3),1;t6(3),1;],C4)
fill3([t10(1),1;t11(1),1;t12(1),1;t13(1),1;t14(1),1;t15(1),1;],[t10(2),1;t11(2),1;t12(2),1;t13(2),1;t14(2),1;t15(2),1;],[t10(3),1;t11(3),1;t12(3),1;t13(3),1;t14(3),1;t15(3),1;],C5)
colorbar;
end




syms P(x,y,z)
P(x,y,z)= [1,x,y,z,x*y,y*z,x*z,x*x,y*y,z*z,x*y*z,x*x*y,x*x*z,x*y*y,x*z*z,y*y*z,y*z*z,x*x*y*z,x*y*y*z,x*y*z*z];
prisma=ones(20,3);

t1=[1,-1,-1];
t2=[1,0,-1];
t3=[1,1,-1];
t4=[0,1,-1];
t5=[-1,1,-1];
t6=[-1,0,-1];
t7=[-1,-1,-1];
t8=[0,-1,-1];
t9=[1,-1,0];
t10=[1,1,0];
t11=[-1,1,0];
t12=[-1,-1,0];
t13=[1,-1,1];
t14=[1,0,1];
t15=[1,1,1];
t16=[0,1,1];
t17=[-1,1,1];
t18=[-1,0,1];
t19=[-1,-1,1];
t20=[0,-1,1];

prisma(1,:)=t1;
prisma(2,:)=t2;
prisma(3,:)=t3;
prisma(4,:)=t4;
prisma(5,:)=t5;
prisma(6,:)=t6;
prisma(7,:)=t7;
prisma(8,:)=t8;
prisma(9,:)=t9;
prisma(10,:)=t10;
prisma(11,:)=t11;
prisma(12,:)=t12;
prisma(13,:)=t13;
prisma(14,:)=t14;
prisma(15,:)=t15;
prisma(16,:)=t16;
prisma(17,:)=t17;
prisma(18,:)=t18;
prisma(19,:)=t19;
prisma(20,:)=t20;
X=ones(20,20);

k=1
for i =[1:20]

    X(k,1)=1;
    X(k,2)=prisma(i,1);
    X(k,3)=prisma(i,2);
    X(k,4)=prisma(i,3);
    X(k,5)=prisma(i,1)*prisma(i,2);
    X(k,6)=prisma(i,2)*prisma(i,3);
    X(k,7)=prisma(i,1)*prisma(i,3);
    X(k,8)=prisma(i,1)*prisma(i,1);
    X(k,9)=prisma(i,2)*prisma(i,2);
    X(k,10)=prisma(i,3)*prisma(i,3);
    X(k,11)=prisma(i,1)*prisma(i,2)*prisma(i,3);
    X(k,12)=prisma(i,1)*prisma(i,1)*prisma(i,2);
    X(k,13)=prisma(i,1)*prisma(i,1)*prisma(i,3);
    X(k,14)=prisma(i,1)*prisma(i,2)*prisma(i,2);
    X(k,15)=prisma(i,1)*prisma(i,3)*prisma(i,3);
    X(k,16)=prisma(i,2)*prisma(i,2)*prisma(i,3);
    X(k,17)=prisma(i,2)*prisma(i,3)*prisma(i,3);
    X(k,18)=prisma(i,1)*prisma(i,1)*prisma(i,2)*prisma(i,3);
    X(k,19)=prisma(i,1)*prisma(i,2)*prisma(i,2)*prisma(i,3);
    X(k,20)=prisma(i,1)*prisma(i,2)*prisma(i,3)*prisma(i,3);

    k=k+1;
end
X
A=pinv(X)
N=P*A
L=formula(N);

for i=[1:20]
N1=subs(L(1,i))
figure

hold on
C1 = [double(subs(N1,[x,y,z],[t1(1),t1(2),t1(3)])) 0 ;
     double(subs(N1,[x,y,z],[t2(1),t2(2),t2(3)])) 0;
     double(subs(N1,[x,y,z],[t3(1),t3(2),t3(3)])) 0;
     double(subs(N1,[x,y,z],[t10(1),t10(2),t10(3)])) 0;
     double(subs(N1,[x,y,z],[t15(1),t15(2),t15(3)])) 0;
     double(subs(N1,[x,y,z],[t14(1),t14(2),t14(3)])) 0;
     double(subs(N1,[x,y,z],[t13(1),t13(2),t13(3)])) 0;
     double(subs(N1,[x,y,z],[t9(1),t9(2),t9(3)])) 0];
C2 = [double(subs(N1,[x,y,z],[t3(1),t3(2),t3(3)])) 0 ;
     double(subs(N1,[x,y,z],[t4(1),t4(2),t4(3)])) 0;
     double(subs(N1,[x,y,z],[t5(1),t5(2),t5(3)])) 0;
     double(subs(N1,[x,y,z],[t11(1),t11(2),t11(3)])) 0;
     double(subs(N1,[x,y,z],[t17(1),t17(2),t17(3)])) 0;
     double(subs(N1,[x,y,z],[t16(1),t16(2),t16(3)])) 0;
     double(subs(N1,[x,y,z],[t15(1),t15(2),t15(3)])) 0;
     double(subs(N1,[x,y,z],[t10(1),t10(2),t10(3)])) 0];
C3 = [double(subs(N1,[x,y,z],[t5(1),t5(2),t5(3)])) 0 ;
     double(subs(N1,[x,y,z],[t6(1),t6(2),t6(3)])) 0;
     double(subs(N1,[x,y,z],[t7(1),t7(2),t7(3)])) 0;
     double(subs(N1,[x,y,z],[t12(1),t12(2),t12(3)])) 0;
     double(subs(N1,[x,y,z],[t19(1),t19(2),t19(3)])) 0;
     double(subs(N1,[x,y,z],[t18(1),t18(2),t18(3)])) 0;
     double(subs(N1,[x,y,z],[t17(1),t17(2),t17(3)])) 0;
     double(subs(N1,[x,y,z],[t11(1),t11(2),t11(3)])) 0];
C4 = [double(subs(N1,[x,y,z],[t1(1),t1(2),t1(3)])) 0;
     double(subs(N1,[x,y,z],[t8(1),t8(2),t8(3)])) 0;
     double(subs(N1,[x,y,z],[t7(1),t7(2),t7(3)])) 0;
     double(subs(N1,[x,y,z],[t12(1),t12(2),t12(3)])) 0;
     double(subs(N1,[x,y,z],[t19(1),t19(2),t19(3)])) 0;
     double(subs(N1,[x,y,z],[t20(1),t20(2),t20(3)])) 0;
     double(subs(N1,[x,y,z],[t13(1),t13(2),t13(3)])) 0;
     double(subs(N1,[x,y,z],[t9(1),t9(2),t9(3)])) 0];
C5 = [double(subs(N1,[x,y,z],[t1(1),t1(2),t1(3)])) 0 ;
     double(subs(N1,[x,y,z],[t2(1),t2(2),t2(3)])) 0;
     double(subs(N1,[x,y,z],[t3(1),t3(2),t3(3)])) 0;
     double(subs(N1,[x,y,z],[t4(1),t4(2),t4(3)])) 0;
     double(subs(N1,[x,y,z],[t5(1),t5(2),t5(3)])) 0;
     double(subs(N1,[x,y,z],[t6(1),t6(2),t6(3)])) 0;
     double(subs(N1,[x,y,z],[t7(1),t7(2),t7(3)])) 0;
     double(subs(N1,[x,y,z],[t8(1),t8(2),t8(3)])) 0];
C6 = [double(subs(N1,[x,y,z],[t13(1),t13(2),t13(3)])) 0;
     double(subs(N1,[x,y,z],[t14(1),t14(2),t14(3)])) 0;
     double(subs(N1,[x,y,z],[t15(1),t15(2),t15(3)])) 0;
     double(subs(N1,[x,y,z],[t16(1),t16(2),t16(3)])) 0;
     double(subs(N1,[x,y,z],[t17(1),t17(2),t17(3)])) 0;
     double(subs(N1,[x,y,z],[t18(1),t18(2),t18(3)])) 0;
     double(subs(N1,[x,y,z],[t19(1),t19(2),t19(3)])) 0;
     double(subs(N1,[x,y,z],[t20(1),t20(2),t20(3)])) 0;];

fill3([t1(1), 1; t2(1),1;t3(1), 1;t10(1),1;t15(1),1;t14(1),1;t13(1),1;t9(1),1;],[t1(2), 1; t2(2),1;t3(2), 1;t10(2),1;t15(2),1;t14(2),1;t13(2),1;t9(2),1;],[t1(3), 1; t2(3),1;t3(3), 1;t10(3),1;t15(3),1;t14(3),1;t13(3),1;t9(3),1;],C1)
fill3([t3(1), 1; t4(1),1;t5(1), 1;t11(1),1;t17(1),1;t16(1),1;t15(1),1;t10(1),1;],[t3(2), 1; t4(2),1;t5(2), 1;t11(2),1;t17(2),1;t16(2),1;t15(2),1;t10(2),1;],[t3(3), 1; t4(3),1;t5(3), 1;t11(3),1;t17(3),1;t16(3),1;t15(3),1;t10(3),1;],C2)
fill3([t5(1), 1; t6(1),1;t7(1), 1;t12(1),1;t19(1),1;t18(1),1;t17(1),1;t11(1),1;],[t5(2), 1; t6(2),1;t7(2), 1;t12(2),1;t19(2),1;t18(2),1;t17(2),1;t11(2),1;],[t5(3), 1; t6(3),1;t7(3), 1;t12(3),1;t19(3),1;t18(3),1;t17(3),1;t11(3),1;],C3)
fill3([t1(1), 1; t8(1),1;t7(1), 1;t12(1),1;t19(1),1;t20(1),1;t13(1),1;t9(1),1;],[t1(2), 1; t8(2),1;t7(2), 1;t12(2),1;t19(2),1;t20(2),1;t13(2),1;t9(2),1;],[t1(3), 1; t8(3),1;t7(3), 1;t12(3),1;t19(3),1;t20(3),1;t13(3),1;t9(3),1;],C4)
fill3([t1(1), 1; t2(1),1;t3(1), 1;t4(1),1;t5(1),1;t6(1),1;t7(1),1;t8(1),1;],[t1(2), 1; t2(2),1;t3(2), 1;t4(2),1;t5(2),1;t6(2),1;t7(2),1;t8(2),1;],[t1(3), 1; t2(3),1;t3(3), 1;t4(3),1;t5(3),1;t6(3),1;t7(3),1;t8(3),1;],C5)
fill3([t13(1), 1; t14(1),1;t15(1), 1;t16(1),1;t17(1),1;t18(1),1;t19(1),1;t20(1),1;],[t13(2), 1; t14(2),1;t15(2), 1;t16(2),1;t17(2),1;t18(2),1;t19(2),1;t20(2),1;],[t13(3), 1; t14(3),1;t15(3), 1;t16(3),1;t17(3),1;t18(3),1;t19(3),1;t20(3),1;],C6)
colorbar;
end
