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

fprintf('Terminé de aplicar Transformada Z a la señal de entrada.\n\n');


%---------------------------------------------------------------------

%Aplicamos el filtro FIR devolviendo x[z]*h[z]
F1=filtroFIR(T1);
F2=filtroFIR(T2);

fprintf('Terminé de aplicar los filtro FIR.\n\n');

%---------------------------------------------------------------------

%Aplicamos Antitransformada Z
fprintf('Voy a aplicar Antitransformada Z.\n');
AT1=iztrans(F1);
fprintf('Terminé la 1º antitransformada.\n');
AT2=iztrans(F2);

fprintf('Terminé de aplicar Antitransformada Z.\n\n');

