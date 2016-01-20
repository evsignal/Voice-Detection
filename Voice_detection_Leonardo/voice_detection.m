%Programer Urzua Arellano Diego Leonardo LEOTRON
%Octuber-december 2013
%Voice Detection

% Record your voice for 3 seconds.
clear all;
clc;
disp('Voice detection/n')
recObj = audiorecorder;
disp('Start speaking.')
recordblocking(recObj, 3);
disp('End of Recording.');


% Store data in double-precision array.

myRecording = getaudiodata(recObj);          %1 audio


%fast tramsform
resolution=15e3;

transform=fft(myRecording,resolution);


%%%%% pot of frencuncy
pot=transform.*conj(transform);	% pot of signal 1
f=(1:resolution);	% espectrum of frequency               


%%%load words

load('Hola.mat');
load('Holaa.mat');
load('Leonardo.mat');
load('Leonardoa.mat');
load('Enciende.mat');
load('Enciendea.mat');
load('Apagar.mat');
load('Apagara.mat');



%%% correlation(signal)

Holacorrelation1 = max(corr(pot,Hola));
Holacorrelation2= max(corr(pot,Hola1));
Holacorrelation3= max(corr(pot,Hola2));
Holacorrelation4= max(corr(pot,Hola3));
Holacorrelation5= max(corr(pot,Hola4));
Holacorrelation6= max(corr(pot,Hola5));
Holacorrelation7= max(corr(pot,Hola6));
Holacorrelation8= max(corr(pot,Hola7));

%%%% Hola leonardo ambiente

Holacorrelationa1 = max(corr(pot,Holaa));
Holacorrelationa2= max(corr(pot,Holaa1));
Holacorrelationa3= max(corr(pot,Holaa2));
Holacorrelationa4= max(corr(pot,Holaa3));
Holacorrelationa5= max(corr(pot,Holaa4));
Holacorrelationa6= max(corr(pot,Holaa5));
Holacorrelationa7= max(corr(pot,Holaa6));
Holacorrelationa8= max(corr(pot,Holaa7));


Holameann = (Holacorrelation1+Holacorrelation2+Holacorrelation3+Holacorrelation4+Holacorrelation5+Holacorrelation6+Holacorrelation7+Holacorrelation8)/8;
Holameanna = (Holacorrelationa1+Holacorrelationa2+Holacorrelationa3+Holacorrelationa4+Holacorrelationa5+Holacorrelationa6+Holacorrelationa7+Holacorrelationa8)/8;
Holatotal = (Holameann+Holameanna)/2;

Leonardocorrelation1 = max(corr(pot,Leonardo));
Leonardocorrelation2= max(corr(pot,Leonardo1));
Leonardocorrelation3= max(corr(pot,Leonardo2));
Leonardocorrelation4= max(corr(pot,Leonardo3));
Leonardocorrelation5= max(corr(pot,Leonardo4));
Leonardocorrelation6= max(corr(pot,Leonardo5));
Leonardocorrelation7= max(corr(pot,Leonardo6));
Leonardocorrelation8= max(corr(pot,Leonardo7));


%%% Leonardo Ambiente Leonardo

Leonardocorrelationa1 = max(corr(pot,Leonardoa));
Leonardocorrelationa2= max(corr(pot,Leonardoa1));
Leonardocorrelationa3= max(corr(pot,Leonardoa2));
Leonardocorrelationa4= max(corr(pot,Leonardoa3));
Leonardocorrelationa5= max(corr(pot,Leonardoa4));
Leonardocorrelationa6= max(corr(pot,Leonardoa5));
Leonardocorrelationa7= max(corr(pot,Leonardoa6));
Leonardocorrelationa8= max(corr(pot,Leonardoa7));

Leonardomeann = (Leonardocorrelation1+Leonardocorrelation2+Leonardocorrelation3+Leonardocorrelation4+Leonardocorrelation5+Leonardocorrelation6+Leonardocorrelation7+Leonardocorrelation8)/8;
Leonardomeanna = (Leonardocorrelationa1+Leonardocorrelationa2+Leonardocorrelationa3+Leonardocorrelationa4+Leonardocorrelationa5+Leonardocorrelationa6+Leonardocorrelationa7+Leonardocorrelationa8)/8;
Leonardototal = ( Leonardomeann + Leonardomeanna ) / 2;

Enciendecorrelation1 = max(corr(pot,Enciende));
Enciendecorrelation2= max(corr(pot,Enciende1));
Enciendecorrelation3= max(corr(pot,Enciende2));
Enciendecorrelation4= max(corr(pot,Enciende3));
Enciendecorrelation5= max(corr(pot,Enciende4));
Enciendecorrelation6= max(corr(pot,Enciende5));
Enciendecorrelation7= max(corr(pot,Enciende6));
Enciendecorrelation8= max(corr(pot,Enciende7));

%%%%%%% Leonardo ambiente
Enciendecorrelationa1 = max(corr(pot,Enciendea));
Enciendecorrelationa2= max(corr(pot,Enciendea1));
Enciendecorrelationa3= max(corr(pot,Enciendea2));
Enciendecorrelationa4= max(corr(pot,Enciendea3));
Enciendecorrelationa5= max(corr(pot,Enciendea4));
Enciendecorrelationa6= max(corr(pot,Enciendea5));
Enciendecorrelationa7= max(corr(pot,Enciendea6));
Enciendecorrelationa8= max(corr(pot,Enciendea7));


Enciendemeann = (Enciendecorrelation1+Enciendecorrelation2+Enciendecorrelation3+Enciendecorrelation4+Enciendecorrelation5+Enciendecorrelation6+Enciendecorrelation7+Enciendecorrelation8)/8;
Enciendemeanna = (Enciendecorrelationa1+Enciendecorrelationa2+Enciendecorrelationa3+Enciendecorrelationa4+Enciendecorrelationa5+Enciendecorrelationa6+Enciendecorrelationa7+Enciendecorrelationa8)/8;
Enciendetotal = (Enciendemeann+Enciendemeanna)/2;


Apagarcorrelation1 = max(corr(pot,Apagar));
Apagarcorrelation2= max(corr(pot,Apagar1));
Apagarcorrelation3= max(corr(pot,Apagar2));
Apagarcorrelation4= max(corr(pot,Apagar3));
Apagarcorrelation5= max(corr(pot,Apagar4));
Apagarcorrelation6= max(corr(pot,Apagar5));
Apagarcorrelation7= max(corr(pot,Apagar6));
Apagarcorrelation8= max(corr(pot,Apagar7));


%%%Apagar ambiente  Leonardo

Apagarcorrelationa1 = max(corr(pot,Apagara));
Apagarcorrelationa2= max(corr(pot,Apagara1));
Apagarcorrelationa3= max(corr(pot,Apagara2));
Apagarcorrelationa4= max(corr(pot,Apagara3));
Apagarcorrelationa5= max(corr(pot,Apagara4));
Apagarcorrelationa6= max(corr(pot,Apagara5));
Apagarcorrelationa7= max(corr(pot,Apagara6));
Apagarcorrelationa8= max(corr(pot,Apagara7));

Apagarmeann = (Apagarcorrelation1+Apagarcorrelation2+Apagarcorrelation3+Apagarcorrelation4+Apagarcorrelation5+Apagarcorrelation6+Apagarcorrelation7+Apagarcorrelation8)/8;
Apagarmeanna = (Apagarcorrelationa1+Apagarcorrelationa2+Apagarcorrelationa3+Apagarcorrelationa4+Apagarcorrelationa5+Apagarcorrelationa6+Apagarcorrelationa7+Apagarcorrelationa8)/8;
Apagartotal = ( Apagarmeann + Apagarmeanna )/2;

wordHola = Holatotal;
wordEnciende = Enciendetotal;   %%%%
wordApagar= Apagartotal;
wordLeonardo = Leonardototal;

%compare

if wordHola >= wordEnciende && wordHola >= wordApagar && wordHola >= wordLeonardo
    disp('Hola')
elseif wordEnciende >= wordHola && wordEnciende >= wordApagar && wordEnciende >= wordLeonardo
    disp('Enciende')
elseif wordApagar >= wordEnciende && wordApagar >= wordHola && wordApagar >= wordLeonardo
   disp('Apagar')
else
    disp('Leonardo')
   
end
    


%plots

%                                                             %%%%signal1
%                                                             
% plot(myRecording);                %%samples signal
% title('samples signal')
% figure(2);
% plot(transform)                   %%fast fouriertrasform of signal
% title('fast fouriertrasform of signal')
% figure(3)
% espectrum=plot(f,pot);            %%spectrum of signal
% title('spectrum of signal')                                                         
%  figure(4)                                  
%  stem(meann)
%  title('cross corrlation (signal1,signal2)')