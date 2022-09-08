function [y,val] = least_square(x,y)
    i = ones(size(x,2),2);
    i(:,1) = x;
    val = ((i'*i)\i')*y';
    y = i*val;
end
