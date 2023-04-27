%Point Detection 
% PROGRAM
a=imread('point.jpg');
f=rgb2gray(a);
imshow(f);
w=[-1,-1,-1;-1,8,-1;-1,-1,-1];
g=abs(imfilter(double(f),w));
imshow(g);
