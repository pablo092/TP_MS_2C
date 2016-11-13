clc
clear

%Leo el archivo de audio
[audio,Fs] = audioread('C:\Users\tomas\TP_MS_2C\Audio-TPMatSup.wav');

%Separo en canales el audio estereo
canal1 = audio(1:end,1);
canal2 = audio(1:end,2);

%Grafico el archivo de audio a procesar 
t=(1/Fs:1/Fs:length(audio)/Fs);

figure;
subplot(1,2,1);
plot(t,canal1);
title('Gráfico audio canal 1 sin procesar');
grid on



subplot(1,2,2);
plot(t,canal2);
title('Gráfico audio canal 2 sin procesar');
grid on



%---------------------------------------------------------------------

%Aplicamos Transformada Z a la señal de entrada
T1 = transformadaZ(canal1);
T2 = transformadaZ(canal2);

fprintf('Terminé de aplicar Transformada Z a la señal de entrada.\n');

% %Calculamos los valores de la Transformada Z para c/punto -> x[z] 
% canal1Trans=obtenerValores(T1,length(canal1));
% canal2Trans=obtenerValores(T2,length(canal2));
% 
% fprintf('Terminé de obtener valores de la Transformada Z.\n');
% 
% %---------------------------------------------------------------------
% 
% %Graficamos x[z]
% subplot(4,4,3)
% plot(Fs,canal1Trans);
% subplot(4,4,4)
% plot(Fs,canal2Trans);