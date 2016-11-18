clc
clear

%Leemos el archivo de audio
[audio,Fs] = audioread('Audio-TPMatSup.wav');
fprintf('Le� el audio.\n');

%Separamos el audio en 2 canales para luego poder apreciar los cambios
canal1 = audio(1:end,1);
canal2 = audio(1:end,2);
fprintf('Separ� el audio en 2 canales.\n\n');

%---------------------------------------------------------------------

%Declaramos numerador y denominador de la funci�n dada en el TP
numFiltro = [0, 1, 1.1];
denFiltro = [1, 0, -0.1];

%Aplicamos el filtro FIR
fprintf('Procedo a aplicar el filtro FIR a cada canal.\n');

filtroCanal1 = filter(numFiltro, denFiltro, canal1);
filtroCanal2 = filter(numFiltro, denFiltro, canal2);

fprintf('Termin� de aplicar el filtro FIR.\n\n');

%---------------------------------------------------------------------

%Hacemos los gr�ficos
fprintf('Procedemos a graficar.\n\n');

t=(1/Fs:1/Fs:length(audio)/Fs);

figure;
subplot(2,2,1);
plot(t, canal1);
title('Gr�fico canal 1 sin procesar');
grid on

subplot(2,2,2);
plot(t, canal2);
title('Gr�fico canal 2 sin procesar');
grid on

subplot(2,2,3);
plot(t, filtroCanal1);
title('Gr�fico canal 1 procesado');
grid on
 
subplot(2,2,4);
plot(t, filtroCanal2);
title('Gr�fico canal 2 procesado');
grid on

fprintf('Terminado.\n');

%---------------------------------------------------------------------
