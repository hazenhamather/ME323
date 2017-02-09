%% Generates a guess temperature vector
function [ temp ] = tempGenerator( n )
temp(1) = 600;
for i = 2:1:n+1
        temp(i) = 600 - i/5;
end
    
temp = temp';

end

