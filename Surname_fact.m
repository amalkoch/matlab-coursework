function result = Surname_fact(n)
    % Function to calculate the factorial using a while loop
    
    if n < 0 || floor(n) ~= n
        error('Input must be a non-negative integer');
    end
    
    result = 1;
    i = n;
    
    while i > 1
        result = result * i;
        i = i - 1;
    end
end
