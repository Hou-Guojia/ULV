function [q]= meansubvar(I,r)
[hei, wid] = size(I);
N = boxfilter(ones(hei, wid), r); % the size of each local patch; N=(2r+1)^2 except for boundary pixels.
mean_I = boxfilter(I, r) ./ N;
mean_II = boxfilter(I.*I, r) ./ N;
var_I = mean_II - mean_I .* mean_I;
a = mean_I-var_I; % Eqn. (8) in the paper;
q=boxfilter(var_I, r) ./ N;
end