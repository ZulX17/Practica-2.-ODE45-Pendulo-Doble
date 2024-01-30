function dx=PD(t,x)
%---Definicion de los parametros---%
m1=0.2;
l1=0.3;
m2=0.1;
l2=0.25;
g=9.81;
c1=0;
%---Vector de 4x1---%
dx=zeros(4,1);
%---Definicion Matrices M C G---%
M=[(m1+m2)*l1 m2*l2*cos(x(2)-x(1));l1*cos(x(2)-x(1)) l2];
C=[c1 -m2*l2*x(4)*sin(x(2)-x(1));l1*x(3)*sin(x(2)-x(1)) 0];
G=[(m1+m2)*g*sin(x(1));g*sin(x(2))];
%---Definicion de la dinamica del sitema---%
dx(1)=x(3);
dx(2)=x(4);
dx(3:4)=inv(M)*(-C*[x(3);x(4)]-G)
%------%