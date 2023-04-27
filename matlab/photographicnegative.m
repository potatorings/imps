%1. Photographic Negative
I=imread('D:/Quick access/Downloads/cameraman.tif');
imshow(I)
J=imcomplement(I);
figure, imshow(J)