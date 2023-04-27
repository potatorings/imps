%FREQUENCY DOMAIN FILTERS FROM SPATIAL DOMAIN
%Average
f=imread('cameraman.tif');
h=fspecial('average',[5 5]);
Fs=size(f);
F=fft2(f);
H=freqz2(h,Fs(1),Fs(2));
G=F.*H;
g=ifft2(G);
imshow(real(g),[]);
figure,imshow(abs(H));
%Gaussian
f=imread('cameraman.tif');
h=fspecial('gaussian',[3 3],2);
Fs=size(f);
F=fft2(f);
H=freqz2(h,Fs(1),Fs(2));
G=F.*H;
g=ifft2(G);
imshow(real(g),[]);
figure,imshow(abs(H));
%Sobel
f=imread('cameraman.tif');
h=fspecial('sobel');
Fs=size(f);
F=fft2(f);
H=freqz2(h,Fs(1),Fs(2));
G=F.*H;
g=ifft2(G);
imshow(real(g),[]);
figure,imshow(abs(H));