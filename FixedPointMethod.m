function [root, iterations, history] = FixedPointMethod(g, x0, accuracy, MaxTries)
    history = []; % Store approximations
    iterations = 0;
    x = x0;

    while iterations < MaxTries
        x_new = g(x);
        history(end+1) = x_new;

        if abs(x_new - x) < accuracy
            break;
        end

        x = x_new;
        iterations = iterations + 1;
    end

    root = x;
end