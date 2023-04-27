%INTENSITY RESOLUTION
% Reading the image and converting it to a gray-level image.
I=imread('D:/Quick access/Desktop/matlab/saturn.png');
I=rgb2gray(I);
% A 256 gray-level image:
[I256,map256]=gray2ind(I,256);
subplot(2,2,1);
imshow(I256,map256);
% A 128 gray-level image:
[I128,map128]=gray2ind(I,128);
subplot(2,2,2);
imshow(I128,map128);
% A 64 gray-level image:
[I64,map64]=gray2ind(I,64)
subplot(2,2,3);
imshow(I64,map64);
% A 32 gray-level image:
[I32,map32]=gray2ind(I,32);
subplot(2,2,4);
imshow(I32,map32);
% A 16 gray-level image:
[I16,map16]=gray2ind(I,16);
figure,
subplot(2,2,1);
imshow(I16,map16);
% A 8 gray-level image:
[I8,map8]=gray2ind(I,8);
subplot(2,2,2);
imshow(I8,map8);
% A 4 gray-level image:
[I4,map4]=gray2ind(I,4);
subplot(2,2,3);
imshow(I4,map4);
% A 2 gray-level image:
[I2,map2]=gray2ind(I,2);
subplot(2,2,4);
imshow(I2,map2);
