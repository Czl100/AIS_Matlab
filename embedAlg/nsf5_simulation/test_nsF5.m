% nsF5����ļ�
% cover image (grayscale JPEG image)
imgRoot = 'D:\MATLAB_Software\myInstall\bin\images\8\';
COVER = [imgRoot, 'man.jpg']; 
STEGO = [imgRoot, 'man.jpg'];
ALPHA = 0.40;        % relative payload in terms of bits per nonzero AC DCT coefficient
SEED = 99;           % PRNG seed for the random walk over the coefficients

tic;
[nzAC,embedding_efficiency,changes] = nsf5_simulation([imgRoot,'8_90q.jpg'], [imgRoot,'8_90q_stego.jpg'], ALPHA,SEED);
T = toc;

%{
fprintf('-----\n');
fprintf('nsF5 simulation finished\n');
fprintf('relative payload: %.4f bpac\n',ALPHA);
fprintf('number of nzACs in cover: %i\n',nzAC);
fprintf('embedding efficiency: %.4f\n',embedding_efficiency);
fprintf('number of embedding changes: %i\n',changes);
fprintf('elapsed time: %.4f seconds\n',T);
%}