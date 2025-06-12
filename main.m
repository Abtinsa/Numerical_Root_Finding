clc;
clear;

f = @(x) x^3 + 4*x^2 - 10; % Function 
df = @(x) 3 * x^2 + 8 * x; % Derivative of Function
g = @(x) sqrt((10 - x^3)/4); % Fixed point method of Function
accuracy = 1e-4 ;
MaxTries = 100;
% answers -> [a,b]
a = 1;
b = 2;
x0 = 1.5;


fprintf('The list of Methods are written below:\n');
fprintf('1. Bisection Method\n');
fprintf('2. Newton-Raphson Method\n');
fprintf('3. Fixed Point Method\n');
choice = input('Choose your desired Method:');

switch choice
    case 1
        % Case 1: Bisection method
        fprintf('Bisection Method:\n');
        [BisectionMethod_root, Bisection_iter, history] = BisectionMethod(f, a, b, accuracy, MaxTries);
        fprintf('Approximate root = %.4f\nNumber of iterations = %d\n', BisectionMethod_root, Bisection_iter);
        plot(1:length(history), history, '-o', 'LineWidth', 2);
        xlabel('Iteration');
        ylabel('Approximate Root');
        title('Convergence of Bisection Method');
        grid on;

    case 2
        % Case 2: Newton-Raphson method
        fprintf('Newton-Raphson Method:\n');
        [NewtonRaphsonMethod_root, Newton_iter, history] = NewtonRaphsonMethod(f, df, x0, accuracy, MaxTries);
        fprintf('Approximate root = %.4f\nNumber of iterations = %d\n', NewtonRaphsonMethod_root, Newton_iter);
        % Plotting convergence
        figure;
        plot(1:length(history), history, '-o', 'LineWidth', 2);
        xlabel('Iteration');
        ylabel('Approximate Root');
        title('Convergence of Newton-Raphson Method');
        grid on;

    case 3
        % Case 3: Fixed Point method
        fprintf('Fixed Point Method:\n');
        [FixedPointMethod_root, FixedPoint_iter, history] = FixedPointMethod(g, x0, accuracy, MaxTries);
        fprintf('Approximate root = %.4f\nNumber of iterations = %d\n', FixedPointMethod_root, FixedPoint_iter);
        % Plotting convergence
        figure;
        plot(1:length(history), history, '-o', 'LineWidth', 2);
        xlabel('Iteration');
        ylabel('Approximate Root');
        title('Convergence of Fixed Point Method');
        grid on;

    otherwise
        fprintf('Wrong Input\n');
end