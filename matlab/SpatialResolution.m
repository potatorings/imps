%SPATIAL RESOLUTION
z=imread('D:/Quick access/Downloads/cameraman.tif');
z=imresize(z,[1024,1024]);
[r c]=size(z);
l=1;
for i=1:2:r
k=1;
for j=1:2:c
a(l,k)=z(i,j);
k=k+1;
end
l=l+1;
end
l=1;
for i=1:4:r
k=1;
for j=1:4:c
b(l,k)=z(i,j);
k=k+1;
end
l=l+1;
end
l=1;
for i=1:8:r
k=1;
for j=1:8:c
e(l,k)=z(i,j);
k=k+1;
end
l=l+1;
end
l=1;
for i=1:16:r
k=1;
for j=1:16:c
d(l,k)=z(i,j);
k=k+1;
end
l=l+1;
end
subplot(2,2,1),imshow(a)
subplot(2,2,2),imshow(b)
subplot(2,2,3),imshow(e)
subplot(2,2,4),imshow(d)