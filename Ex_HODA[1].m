clear all
close all

%addpath('..\utils');
addpath('method');
addpath('scatter');
addpath('utils');


filename='H:\Data_Base\tensor data base\MNIST_voice_image\DigitImageVoice4D_28_28.mat';NbyClass=50;

%filename='G:\Data_Base\tensor data base\MNIST_voice_image\DigitImage.mat';
% filename='G:\Data_Base\tensor data base\MW database\FaceImageRGB_25_25.mat';NbyClass=15;
% filename='G:\Data_Base\tensor data base\FERET_face\FeretFace3D.mat';NbyClass=10;
%filename='G:\Data_Base\tensor data base\Multispectrale database\ImageDC_7_7_192.mat';NbyClass=100;

tlda=tlda('Filename',filename,'Method','HODA','TypeProduct','n','Perf','Acc','ModeLearn','FromAll');

 tlda.learn('Ntensor',1000,'PcTrain',0.8,'Rep',30,'DimLDA',9);
 tlda.perf('Show',3);
 dispstat('Finished.','keepprev');
%  
