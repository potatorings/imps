%Gaussian Low Pass Filter:
clear;
clc;
img=imread('Coins.png');
[X,Y]=size(img);
N=input('Order of Filter=');
x=ceil(X/2);
y=ceil(Y/2);
rad=26;
for i=1:X
for j=1:Y
d(i,j)=sqrt((i-x).^2+(j-y).^2);
h(i,j)=exp(-(d(i,j).^2)/(2*((rad).^2)));
end
end
fft1=fftshift(fft2(img));
fil=h.*fft1;
fin=ifft2(fil);
fin1=uint8(fin);
subplot(2,2,1);
imshow(img);
title('Original');
subplot(2,2,2);
imshow(fin1);
title('After Gaussian LPF');
subplot(2,2,3);
surf(h);
title('Gaussian LPF in 3D');
subplot(2,2,4);
imshow(h);
title('Gaussian LPF as Image');