l=50;m=50;n=50;%point of view from from which the picture was taken:this can't go wronge
global I;
global i;
global j;
global C;
global x;
global y;
I=imread('img.JPG');% Loading the pictureimread is for reading the picture into the code which is manidatory and this step was right

[r,c,b]=size(I); %this give the resoution of the image axB this just give the matrix 


for i=1:r          %we need to get to all the pixels individually
    for j=1:c
        axis(gca,'equal');% creating a axis
        axis auto;    % making auto range
        C= impixel(I,i,j);
        x=(i)*(l)/(i-m);  % for the given image , pixel location is (i,j) then the tranforormed location should be (x,y)
        y=((-i)*(j-n)/(i-m))+j;        
        image(x,y,C);

   end
end
imshow(C)











