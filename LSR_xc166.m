function result = LSR_xc166(data, lambda, N)
x_value = data(1,:)';
b = repmat(x_value,1,N);
for i = 1 : N
    b(:,i) = power(b(:,i),i);
end
one = ones(size(b,1),1);
b = [one b];
c = sqrt(lambda)*eye(size(b,2));
A = [b;c];
zero = zeros(size(c,1),1);
d = [data(2,:)';zero];
result = A\d;
end