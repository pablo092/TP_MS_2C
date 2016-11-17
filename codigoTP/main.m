clc
clear

%Leo el archivo de audio
[audio,Fs] = audioread('../Audio-TPMatSup.wav');

fprintf('Le� el audio.\n');
%Separo en canales el audio estereo
canal1 = audio(1:end,1);
canal2 = audio(1:end,2);
fprintf('Separ� el audio en 2 canales.\n\n');

%---------------------------------------------------------------------

%Aplicamos Transformada Z a la se�al de entrada

T1 = transformadaZ(canal1);
T2 = transformadaZ(canal2);

fprintf('Termin� de aplicar Transformada Z a la se�al de entrada.\n\n');


%---------------------------------------------------------------------

%Aplicamos el filtro FIR devolviendo x[z]*h[z]
F1=filtroFIR(T1);
F2=filtroFIR(T2);

fprintf('Termin� de aplicar los filtro FIR.\n\n');

%---------------------------------------------------------------------

%Aplicamos Antitransformada Z
fprintf('Voy a aplicar Antitransformada Z.\n');
AT1=iztrans(F1);
fprintf('Termin� la 1� antitransformada.\n');
AT2=iztrans(F2);
 
fprintf('Termin� de aplicar Antitransformada Z.\n\n');

%---------------------------------------------------------------------

%Calculo los valores de la respuesta final Y[n]
resultadoCanal1 = valoresParaGraficar(AT1,length(canal1));
resultadoCanal2 = valoresParaGraficar(AT2,length(canal2));

%---------------------------------------------------------------------

%Hacemos los gr�ficos
fprintf('Se procede a graficar.\n\n');

t=(1/Fs:1/Fs:length(audio)/Fs);

figure;
subplot(2,2,1);
plot(t,canal1);
title('Gr�fico canal 1 sin procesar');
grid on

subplot(2,2,2);
plot(t,canal2);
title('Gr�fico canal 2 sin procesar');
grid on

subplot(2,2,3);
plot(t,resultadoCanal1);
title('Gr�fico canal 1 procesado');
grid on

subplot(2,2,4);
plot(t,resultadoCanal2);
title('Gr�fico canal 2 procesado');
grid on

fprintf('Terminado.\n');

%---------------------------------------------------------------------
