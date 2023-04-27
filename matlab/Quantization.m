% Uniform Quantization
a=imread('D:/Quick access/Downloads/cameraman.tif');
subplot(2,2,1)
imshow(a);
title('Original image');
subplot(2,2,2);
imhist(a);
title('Histogram of original image');
[m n]=size(a);
for i=1:1:m
for j=1:1:n
if a(i,j)<16 a(i,j)=7;
elseif a(i,j)>=16 && a(i,j)<32 a(i,j)=23;
elseif a(i,j)>=32 && a(i,j)<48 a(i,j)=39;
elseif a(i,j)>=48 && a(i,j)<64 a(i,j)=55;
elseif a(i,j)>=64 && a(i,j)<80 a(i,j)=71;
elseif a(i,j)>=80 && a(i,j)<96 a(i,j)=87;
elseif a(i,j)>=96 && a(i,j)<96 a(i,j)=103;
elseif a(i,j)>=112 && a(i,j)<128 a(i,j)=119;
elseif a(i,j)>=128 && a(i,j)<144 a(i,j)=135;
elseif a(i,j)>=144 && a(i,j)<160 a(i,j)=151;
elseif a(i,j)>=160 && a(i,j)<176 a(i,j)=167;
elseif a(i,j)>=176 && a(i,j)<192 a(i,j)=183;
elseif a(i,j)>=192 && a(i,j)<208 a(i,j)=199;
elseif a(i,j)>=208 && a(i,j)<224 a(i,j)=215;
elseif a(i,j)>=224 && a(i,j)<240 a(i,j)=231;
elseif a(i,j)>=240 && a(i,j)<256 a(i,j)=247;
end
end
end
subplot(2,2,3)
imshow(a);
title('Quantised image')
subplot(2,2,4)
imhist(a);
title('Histogram of quantized image')