%HADAMARD TRANSFORM
% Getting the name and extension of the image file from the user
a=imread('D:/Quick access/Downloads/cameraman.tif');
N=length(a);
%Computing Hadamard Transform of the image file
n=log2(N);
n=1+fix(n);
f=ones(N,N);
for x=1:N;
for u=1:N
p=dec2bin(x-1,n);
q=dec2bin(u-1,n);
for i=1:n;
f(x,u)=f(x,u)*((-1)^(p(n+1-i)*q(n+1-i)));
end;
end;
end;
F=(1/N)*f*double(a)*f;
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
% Computing and scaling the logarithmic Hadamard spectrum.
H=log(1+abs(G));
for i=1:N
H(i,:)=H(i,:)*255/abs(max(H(i,:)));
end
% Changing the color map to gray scale (8 bits).
colormap(gray(255));
% Showing the main image and its Hadamard spectrum.
subplot(2,2,1),image(a),title('Main image');
subplot(2,2,2),image(abs(G)),title('Hadamard spectrum');
subplot(2,2,3),image(H),title('Logarithmic scaled Hadamard spectrum');