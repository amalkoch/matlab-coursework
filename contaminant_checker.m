% contaminant level checker

contaminants = {'Arsenic', 'Lead', 'Nitrate', 'Chlorine', 'Mercury', 'Chromium'};
legal_limit = [10, 15, 10, 4, 2, 100];         
ewg_limit = [0.004, 0.2, 0.14, 0.1, 0.05, 0.02];

user_data = zeros(1,6);

for i = 1:6
    user_data(i) = input(['Enter level for ', contaminants{i}, ' (ppb): ']);
end

for i = 1:6
    disp(['--- ', contaminants{i}, ' ---']);
    
    if user_data(i) > legal_limit(i)
        disp(['Above legal limit: ', num2str(legal_limit(i)), ' ppb']);
    else
        disp('Within legal limit');
    end
    
    if user_data(i) > ewg_limit(i)
        disp(['Above EWG limit: ', num2str(ewg_limit(i)), ' ppb']);
    else
        disp('Within EWG recommendation');
    end
end

% generate 5 fake data sets
rng(1);
data = zeros(6,5);
for i = 1:6
    data(i,:) = legal_limit(i) * (0.9 + 0.2 * rand(1,5));
end

% graph comparing to legal limit
figure;
bar(data');
title('Contaminants vs Legal Limit');
xlabel('Set');
ylabel('ppb');
legend(contaminants, 'Location', 'northwest');
hold on;
yline(legal_limit, '--r');
hold off;

% graph comparing to EWG standard
figure;
bar(data');
title('Contaminants vs EWG Standard');
xlabel('Set');
ylabel('ppb');
legend(contaminants, 'Location', 'northwest');
hold on;
yline(ewg_limit, '--g');
hold off;
