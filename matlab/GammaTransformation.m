%2. Gamma Transformation
I=imread('D:/Quick access/Downloads/tire.tif');
subplot(2,2,1);
imshow(I)
J=imadjust(I,[],[],1);
J2=imadjust(I,[],[],3);
J3=imadjust(I,[],[],0.4);
subplot(2,2,2);
imshow(J);
subplot(2,2,3);
imshow(J2);
subplot(2,2,4);
imshow(J3);