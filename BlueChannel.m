function [b] = BlueChannel(img)
%BLUECHANNEL Summary of this function goes here
%   Detailed explanation goes here
B=img(:, :, 1);
[M, N, ~]=size(img);
b=zeros(M, N, 'uint8');
parfor i=1:M
    for j=1:N
        b(i, j)=(B(i, j)*0.114);
    end
end

