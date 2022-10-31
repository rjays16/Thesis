function [g] = GreenChannel(img)
%GREENCHANNEL Summary of this function goes here
%   Detailed explanation goes here
G=img(:, :, 1);
[M, N, ~]=size(img);
g=zeros(M, N, 'uint8');
parfor i=1:M
    for j=1:N
        g(i, j)=(G(i, j)*0.5870)
    end
end
end

