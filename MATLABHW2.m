%% 1.Soru a seçeneði
clc
clear all
close all
fs = 100000;
t = 0:1/fs:7.4;
x = sawtooth(2*pi*100*t);
subplot(2,1,1)
plot(t,x)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude') 
title('Sawtooth Periodic Wave')
%% 1.Soru b seçeneði
clc
clear all
close all
fs = 1000000;
t = 0:1/fs:7.4;
x = square(2*pi*20*t);
subplot(2,1,1)
plot(t,x)
axis([0 0.2 -1.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Square Periodic Wave')
%%% 1.Soru c seçeneði
clc 
clear all
close all
fs = 100000;
t = -1:1/fs:1;
x = tripuls(t,38e-3);
subplot(2,1,1)
plot(t,x)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Triangular Aperiodic Pulse')
%%% 1.Soru d seçeneði
clc 
clear all
close all
fs = 10000;
t = -1:1/fs:1;
x = rectpuls(t,20e-3);
subplot(2,1,1)
plot(t,x)
axis([-0.1 0.1 -0.2 1.2])
xlabel('Time (sec)')
ylabel('Amplitude')
title('Rectangular Aperiodic Pulse')
%%% 1.soru e seçeneði
clc 
clear all
close all
tc = gauspuls('cutoff',50e3,0.05,[],-60); 
t1 = -tc : 1e-6 : tc; 
y1 = gauspuls(t1,50e3,0.05);
subplot(2,1,1)
plot(t1*1e3,y1)
xlabel('Time (ms)')
ylabel('Amplitude')
title('Gaussian Pulse')
%%%% 1.Soru f seçeneði
clc 
clear all
close all
fs = 50E9;                    % sample freq
D = [2.5 10 17.5]' * 1e-9;     % pulse delay times
t = 0 : 1/fs : 2500/fs;        % signal evaluation time
w = 1e-9;                      % width of each pulse
yp = pulstran(t,D,@rectpuls,w);
T = 0 : 1/50e3 : 10e-3;
D = [0 : 1/1e3 : 10e-3 ; 0.8.^(0:10)]';
subplot(2,1,1)
plot(t*1e9,yp);
axis([0 25 -0.2 1.2])
xlabel('Time (ns)')
ylabel('Amplitude')
title('Rectangular Train')
%%%%% 1. Soru g seçeneði
clc 
clear all
close all
fs = 100E9;                    % sample freq
D = [2.5 10 17.5]' * 1e-9;     % pulse delay times
t = 0 : 1/fs : 2500/fs;        % signal evaluation time
w = 1e-9;                      % width of each pulse
T = 0 : 1/50e3 : 10e-3;
D = [0 : 1/1e3 : 10e-3 ; 0.6.^(0:10)]';
Y = pulstran(T,D,@gauspuls,10E3,.5);
subplot(2,1,1)
plot(T*1e3,Y)
xlabel('Time (ms)')
ylabel('Amplitude')
title('Gaussian Pulse Train')
%%%%% 2. Soru
clc
clear all
close all
t = (-1:0.01:1)';
impulse = t==0;
unitstep = t>=0;
ramp = t.*unitstep;
subplot (6,1,1)
plot(t,[impulse ])
xlabel('')
ylabel('')
title('Unýt Ýmpulse CT')
subplot (6,1,2)
plot(t,[unitstep ])
xlabel('')
ylabel('')
title('Unýt Step CT')
subplot (6,1,3)
plot(t,[ramp ])
xlabel('')
ylabel('')
title('Unýt Ramp CT')
subplot (6,1,4)
stem(t,[impulse])
xlabel('')
ylabel('')
title('Unýt Ýmpulse DT')
subplot (6,1,5)
stem(t,[unitstep ])
xlabel('')
ylabel('')
title('Unýt Step DT')
subplot (6,1,6)
stem(t,[ramp ])
xlabel('')
ylabel('')
title('Unýt Ramp DT')
%%%%% 3. Soru
clc
clear all
close all
fs = 1000  %fs=100 hz
f = 20 %1 Hz
t = 0:1/fs:5
y1 = sin(2*pi*f*t)
subplot(2,1,1)
stem(t,y1,'LineWidth',2)
y2= cos(2*pi*f*t)
subplot(2,1,2)
stem(t,y2,'LineWidth',2)
grid on
n=-74:1:74
y=sin(2*pi*n/36)
stem(n,y)

k=-20:1:20
y=cos(2*pi*k/36)
stem(k,y)
%%%%% 4. Soru





