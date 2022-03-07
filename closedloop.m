m=32.5;
p=1000;
g=9.81;
v=0.03255;
Zww=260;
samp_time=10^-2;
sim_time=50;
z_ref=5;
kp=5.3;
ki=1.93;
kd=3.63;
time=linspace(0,sim_time,(sim_time/samp_time)+1);
z=zeros(1,(sim_time/samp_time)+1);
z_dot=zeros(1,(sim_time/samp_time)+1);
th=zeros(1,(sim_time/samp_time));
for i=1:sim_time/samp_time
    error=z_ref-z(i);
  function th=PID(error,kp,ki,kd)
  end
z_ddot=(m*g-p*v*g-Zww*z_dot(i)*abs(z_dot(i))-th)/m;
z_dot(i+1)=z_dot(i)+samp_time*z_ddot;
z(i+1)=z(i)+samp_time*z_dot(i);
    end 

plot(time,z);
