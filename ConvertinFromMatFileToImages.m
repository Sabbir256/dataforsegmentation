clc
clear all

m = 3064;

for i=1:m
    myfilename = sprintf('%d.mat',i);
    myfilename2 = sprintf('tumorMask dataset/%d.png',i);
    temp = load(myfilename);
    temp2 = temp.cjdata.tumorMask;
    imwrite(mat2gray(temp2),myfilename2);
end

fprintf('done!');