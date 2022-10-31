function [k] = rec(props,numBlobs);
parfor k = 1 : numBlobs
   bb = props(k).BoundingBox;
   bc = props(k).Centroid;
   rectangle('Position',bb,'EdgeColor','c','LineWidth',2);
end