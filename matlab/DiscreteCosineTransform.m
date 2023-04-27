%DISCRETE COSINE TRANSFORM
a=imread('D:/Quick access/Downloads/cameraman.tif');
N=length(a);
F=dct2(double(a));
% Shifting the Fourier spectrum to the center of the frequency square.
for i=1:N/2;
for j=1:N/2
G(i+N/2,j+N/2)=F(i,j);
end;
end
for i=N/2+1:N;
for j=1:N/2
G(i-N/2,j+N/2)=F(i,j);
end;
end
for i=1:N/2;
for j=N/2+1:N
G(i+N/2,j-N/2)=F(i,j);
end;
end
for i=N/2+1:N;
for j=N/2+1:N;
G(i-N/2,j-N/2)=F(i,j);
end;
end;
% Computing and scaling the logarithmic Cosine spectrum.
H=log(1+abs(G));
for i=1:N
H(i,:)=H(i,:)*255/abs(max(H(i,:)));
end
% Changing the color map to gray scale (8 bits).
colormap(gray(255));
% Showing the main image and its Cosine spectrum.
subplot(2,2,1),image(a),title('Main image');
subplot(2,2,2),image(abs(G)),title('Cosine spectrum');
subplot(2,2,3),image(H),title('Logarithmic scaled Cosine spectrum');
