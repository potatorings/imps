%HAAR TRANSFORM
a=imread('D:/Quick access/Downloads/cameraman.tif');
N=length(a);
for i=1:N;
p=fix(log2(i));
q=i-(2^p);
for j=1:N
z=(j-1)/N;
if(z>=(q-1)/(2^p))&&(z<(q-1/2)/2^p)
f(i,j)=(1/(sqrt(N)))*(2^(p/2));
elseif(z>=(q-1)/(2^p))&&(z<(q/2)/2^p)
f(i,j)=(1/(sqrt(N)))*(-2^(p/2));
else f(i,j)=0;
end;
end;
end;
F=f*double(a)*f;
% Changing the color map to gray scale (8 bits).
colormap(gray(255));
% Showing the main image and its Harr spectrum.
subplot(2,2,1),image(a),title('Main image');
subplot(2,2,2),image(abs(F)),title('Harr spectrum');