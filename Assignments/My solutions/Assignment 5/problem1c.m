% Problem 1(c)
x = 20/sqrt(2);
y = 20/sqrt(2);
exam = bruteForceSearch(x,y);

function result = bruteForceSearch(x, y)
a1 = 10;
a2 = 10;

theta1 = linspace(0, pi/2, 100);
theta2 = linspace(-pi/2, pi/2, 100);

for i = 1:length(theta1)
    for j = 1:length(theta2)
        newX = a1*cos(theta1(i)) + a2*cos(theta1(i)+theta2(j));
        newY = a1*sin(theta1(i)) + a2*sin(theta1(i)+theta2(j));
        error(i,j) = (x - newX)^2 + (y - newY)^2;
    end
end

M = min(error);
minError = min(M);

[row, col] = find(error == minError);

final_theta1 = theta1(row);
final_theta2 = theta2(col);

result = [final_theta1', final_theta2'];
end
