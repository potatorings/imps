%5. Contrast Stretching with changing m
I=imread('D:/Quick access/Downloads/tire.tif');
I2=im2double(I);
contrast1=1./(1+(0.2./(I2+eps)).^4)
contrast2=1./(1+(0.5./(I2+eps)).^4);
contrast3=1./(1+(0.7./(I2+eps)).^4);
imshow(I2)
figure,imshow(contrast1)
figure,imshow(contrast2)
figure,imshow(contrast3)