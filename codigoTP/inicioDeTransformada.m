clc
clear

%Leo el archivo de audio
[audio,Fs] = audioread('C:\Users\tomas\TP_MS_2C\Audio-TPMatSup.wav');

%Separo en canales el audio estereo
canal1 = audio(1:end,1);
canal2 = audio(1:end,2);

%Grafico el archivo de audio a procesar (sin dividir canales por ahora) 
t=(1/Fs:1/Fs:length(audio)/Fs);
plot(t,audio);
grid on