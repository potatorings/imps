%IMAGE ENHANCEMENT BY SPATIAL FILTERING
%Average
i=imread('cameraman.tif');
imshow(i);
w=fspecial('average',[3 3]);
g=imfilter(i,w,'symmetric');
figure,imshow(g,[])
%Gaussian
i=imread('cameraman.tif');
w=fspecial('gaussian',[3 3],0.5);
g=imfilter(i,w,'symmetric');
imshow(g,[])
%Laplacian
i=imread('cameraman.tif');
w=fspecial('laplacian', 0.5);
g=imfilter(i,w,'symmetric');
imshow(g,[])
%Sobel
i=imread('cameraman.tif');
w=fspecial('sobel');
g=imfilter(i,w,'symmetric');
imshow(g,[])
%Non linear order statistic filter
i=imread('cameraman.tif');
h=ordfilt2(i,1,ones(3,3));
h1=ordfilt2(i,3*3,ones(3,3));
h2=ordfilt2(i,median(1:3*3),ones(3,3));
subplot(2,2,1)
imshow(i);
subplot(2,2,2)
imshow(h,[]);
subplot(2,2,3)
imshow(h1,[]);
subplot(2,2,4)
imshow(h2,[]);
%Median Filter
g=imread('cameraman.tif');
m=medfilt2(g,[3 3]);
imshow(m,[]);