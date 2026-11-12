function result = dice_game(num_rolls, target_sum)
    total = 0;

    for i = 1:num_rolls
        roll = randi([1, 6]);  % 1 to 6 
        total = total + roll;
    end

    if total >= target_sum
        result = 'You win!';
    else
        result = 'You lose!';
    end
end
