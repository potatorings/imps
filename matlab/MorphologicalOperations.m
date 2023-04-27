%MORPHOLOGICAL OPERATIONS
%PROGRAM
imread('coins.png');
b=strel('disk',10);
c=imdilate(a,b);
figure;
subplot(2,2,1);
imshow(c);
title('dilation using disk stereo element');
b=strel('square',10);
c=imdilate(a,b);
subplot(2,2,2);
imshow(c);
title('dilation using square stereo element');
%Image erosion
%a=imread('coins.png');
b=strel('disk',10);
c=imerode(a,b);
subplot(2,2,3);
imshow(c);
title('erosion using disk stereo element');
b=strel('square',10);
c=imerode(a,b);
subplot(2,2,4);
imshow(c);
title('erosion using square stereo element');
%opening
bw=im2bw(a);
figure;
subplot(2,2,1);
imshow(bw);
title('original image');
b=strel('disk',5);
c=imopen(a,b);
subplot(2,2,2);
imshow(c);
title('image after opening');
%closing
b=strel('disk',5);
c=imclose(a,b);
subplot(2,2,3);
imshow(c);
title('image after closing');
%morphological operations
a=imread('rice.png');
b=im2bw(a);
c=bwmorph(b,'remove');
figure;
subplot(2,3,1);
imshow(c);
title('image remove');
c=bwmorph(b,'clean');
subplot(2,3,2);
imshow(c);
title('image clean');
c=bwmorph(b,'shrink');
subplot(2,3,3);
imshow(c);
title('image shrink');
c=bwmorph(b,'fill');
subplot(2,3,4);
imshow(c);
title('image fill');
c=bwmorph(b,'thin');
subplot(2,3,5);
imshow(c);
title('image thin');
c=bwmorph(b,'thick');
subplot(2,3,6);
imshow(c);
title('image thick');