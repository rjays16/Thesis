function [] = initial_color(img)
    
      global stats;
    
     diff_im = imsubtract(img(:,:,2), rgb2gray(img)); 
      diff_im = medfilt2(diff_im, [3 3]);
      diff_im = imbinarize(diff_im,0.18);
      diff_im = bwareaopen(diff_im,300);
      bw = bwlabel(diff_im, 8);
      stats = regionprops(bw, 'BoundingBox', 'Centroid');
end

