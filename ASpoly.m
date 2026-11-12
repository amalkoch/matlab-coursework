%   the years and population numbers
years = [1815 1845 1875 1905 1935 1965 1995 2015];
populations = [8.3 19.7 44.4 83.2 127.1 190.9 266.6 321.0];

%  polyfit to find a second-degree curve
coeffs = polyfit(years, populations, 2);

%  curve to guess population in 1913
pop_1913 = polyval(coeffs, 1913);
disp(['Estimated population in 1913: ', num2str(pop_1913), ' million']);

%  x values to draw the curve (every 5 years)
x_plot = 1815:5:2015;
y_plot = polyval(coeffs, x_plot);

% the curve
figure;
plot(x_plot, y_plot, 'b-', 'LineWidth', 2);  % blue curve
hold on;

%  black stars on the real data points
plot(years, populations, 'k*', 'MarkerSize', 10);

%  title and labels
title('U.S. Population Fit');
xlabel('Year');
ylabel('Population (millions)');
legend('Polynomial Fit', 'Data Points');
grid on;
