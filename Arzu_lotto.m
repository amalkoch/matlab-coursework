function numbers = Arzu_lotto(min_val, max_val)
    % Generates 5 pseudorandom integers between min and max
    numbers = randi([min_val, max_val], 1, 5);
end

