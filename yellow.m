function [] = yellow(img)
        red  = imsubtract(img(:,:,1), rgb2gray(img));   
        red = im2bw(red, redthresh);                        
        red = im2uint8(red);                                
        
        green  = imsubtract(img(:,:,2), rgb2gray(img)); 
        green = im2bw(green, greenthresh);
        green = im2uint8(green);
                
        temp = imsubtract(green, red);                      
        temp = imsubtract(green, temp);
        temp = logical(temp);                               
        
        [centroid, bbox] = step(hblob, temp);               
        centroid = uint16(centroid);
        if ~isempty(centroid)
        cent(1,nimg+1) = centroid(1,1);
        cent(2,nimg+1) = centroid(1,2);
        end
        plot(cent(1,nimg+1), cent(2,nimg+1));
end

