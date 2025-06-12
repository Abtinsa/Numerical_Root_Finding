function [root, iterations, history] = BisectionMethod(f, a, b, accuracy, MaxTries)
    iterations = 0;
    history = []; % Initialize history to store midpoint values

    if f(a) * f(b) >= 0
        error('f(a) and f(b) must have opposite signs');
    end

    while (b - a) / 2 > accuracy && iterations < MaxTries
        c = (a + b) / 2;
        history(end+1) = c; % Store current approximation

        if f(c) == 0
            break;
        elseif f(a) * f(c) < 0
            b = c;
        else
            a = c;
        end

        iterations = iterations + 1;
    end

    root = (a + b) / 2;
    history(end+1) = root; % Store final root for completeness
end