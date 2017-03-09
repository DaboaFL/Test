clc
clear all
I = imread('111.jpg');
figure(1)
imshow(I)
thresh = graythresh(I);     %自动确定二值化阈值
I2 = im2bw(I,thresh);       %对图像二
figure(2)
imshow(I2);

size = 10; %栅格大小
tempt = 0; %缓存


%%%%%%%%%判断评估%%%%%%%%%%
% k = 0; %存储当前位置
% l = 0;
% for k  = 0 :size:3000;
% for i = 1:size
%     for j = 1:size
%         tempt = I2(k+i,l+j) + tempt;
%     end
% end
% if tempt>size^2
%     for i = 1:size
%     for j = 1:size
%         I2(k+i,l+j)=1;
%     end
%     end
% else
%     for i = 1:size
%     for j = 1:size
%         I2(k+i,l+j)=0;
%     end
%     end 
% end
% 
% tempt = 0;
% l = l + size;
% end
% figure(3)
% imshow(I2);
I2=imresize(I2,[300,500])
figure(3)
imshow(I2);

    