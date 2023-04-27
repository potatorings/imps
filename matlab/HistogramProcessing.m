%HISTOGRAM PROCESSING
% histogram without inbuilt function.
histo=zeros(1,256);
I=imread('cameraman.tif');
imshow(I);
si=size(I);
for i=1:si(1)
for j=1:si(2)
for g=1:256
if I(i,j)==g
histo(g)=histo(g)+1;
end
end
end
end
figure,stem(histo)

%histogram with inbuilt function
x=imread('cameraman.tif');
imhist(x);

%histogram equalization
I=imread('cameraman.tif');
a=histeq(I);
imshow(a);
figure,imhist(a)