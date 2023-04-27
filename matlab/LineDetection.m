%LINE DETECTION
%Horizontal lines
a=imread('lines.jpg');
f=rgb2gray(a);
imshow(f);
w=[-1,-1,-1;2,2,2;-1,-1,-1]
g=abs(imfilter(double(f),w));
T=300;
g=g>=T;
figure,imshow(g);

%Vertical lines
a=imread('lines.jpg');
f=rgb2gray(a);
imshow(f);
w=[-1,2,-1;-1,2,-1;-1,2,-1]
g=abs(imfilter(double(f),w));
T=300;
g=g>=T;
figure,imshow(g);


%45 degree lines
a=imread('lines.jpg');
f=rgb2gray(a);
imshow(f);
w=[-1,-1,2;-1,2,-1;2,-1,-1]
g=abs(imfilter(double(f),w));
T=300;
g=g>=T;
figure,imshow(g);


%135 degree lines
a=imread('lines.jpg');
f=rgb2gray(a);
imshow(f);
w=[2,-1,-1;-1,2,-1;-1,-1,2]
g=abs(imfilter(double(f),w));
T=300;
g=g>=T;
figure,imshow(g);