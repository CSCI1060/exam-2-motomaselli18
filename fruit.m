function [] = fruit( N )
% This function prints for values from 1 to N:
% “apple” if the value is divisible by 2
% “banana” if the value is divisible by 5
% The number itself if neither is true
% “applebanana” if both are true

for number = 1:N
        
        if rem(number, 2) == 0 && rem(number, 5) == 0
            fprintf('applebanana\n');
    
        elseif rem(number, 2) == 0
            fprintf('apple\n');
 
        elseif rem(number, 5) == 0
            fprintf('banana\n');
     
        else
            fprintf('%d\n', number);
        end
    end
end
