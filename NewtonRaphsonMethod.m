function [root, iterations, history] = NewtonRaphsonMethod(f, df, x0, accuracy, MaxTries)
    history = []; % Store each approximation
    iterations = 0;
    x = x0;

    while iterations < MaxTries
        fx = f(x);
        dfx = df(x);

        if dfx == 0
            error('Derivative is zero. No solution found.');
        end

        x_new = x - fx / dfx;
        history(end+1) = x_new;

        if abs(x_new - x) < accuracy
            break;
        end

        x = x_new;
        iterations = iterations + 1;
    end

    root = x;
end