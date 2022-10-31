function [] = initial_color_yel(img)
   global statsy;
   
    data=imcomplement(img);
    diff_im = imsubtract(data(:,:,3), rgb2gray(data));
    diff_im=medfilt2(diff_im,[3 3]);
    diff_im=im2bw(diff_im,0.1);
    diff_im=bwareaopen(diff_im,50);
    bw=bwlabel(diff_im,8);
    statsy=regionprops(bw,'BoundingBox','Centroid');
end

