%DFT ANALYSIS OF IMAGES
a=imread('D:/Quick access/Desktop/matlab/Coins.png');
subplot(2,3,1);
imshow(a);
title('Original');
b=im2double(a);
c=fft2(b);
subplot(2,3,2);
imshow(c);
title('FFT');
d=ifft2(c);
subplot(2,3,3);
imshow(d);
title('IFFT');
mag=abs(c);
subplot(2,3,4);
imshow(mag);
title('Magnitude Plot');
ang=angle(c);
subplot(2,3,5);
imshow(ang);
title('Phase Plot');

%ROTATION PROPERTY:
a=imread('coins.png');
subplot(2,2,1);
imshow(a);
a1=im2double(a);
b=fft2(a1);
subplot(2,2,2);
imshow(b);
c=imrotate(a1,90);
subplot(2,2,3);
imshow(c);
d=fft2(c);
subplot(2,2,4);
imshow(d);
