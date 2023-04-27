%ANALYSIS OF IMAGES WITH DIFFERENT COLOR MODELS

%PROGRAM
a=imread('peppers.png');
a(:,:,2)=0;
a(:,:,3)=0;
imshow(a);
b=imread('peppers.png');
b(:,:,1)=0;
b(:,:,3)=0;
figure,imshow(b);
c=imread('peppers.png');
c(:,:,1)=0;
c(:,:,2)=0;
figure,imshow(c);
a=imread('peppers.png');
R=a(:,:,1);
G=a(:,:,2);
B=a(:,:,3);
new=cat(3,R,G,B);
figure,imshow(new);

%Colormap
a=imread('cameraman.tif');
subplot(2,2,1)
imshow(a,copper);
subplot(2,2,2)
rgbplot(copper);
figure,subplot(2,2,1)
imshow(a,jet(150));
subplot(2,2,2)
rgbplot(jet(150));
figure,subplot(2,2,1)
imshow(a,summer);
subplot(2,2,2)
rgbplot(summer);

%Conversion between color spaces
a=imread('peppers.png');
b=rgb2ntsc(a);
subplot(2,2,1)
imshow(b);
c=rgb2ycbcr(a);
subplot(2,2,2)
imshow(c);
d=rgb2hsv(a);
subplot(2,2,3)
imshow(d);
e=imcomplement(a);
subplot(2,2,4)
imshow(e);