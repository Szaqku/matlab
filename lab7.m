% Zadanie 1 - Vandermond
% x = -1:0.01:1;
% y = 1./(25*(x.^2) + 1);
% plot(x,y)
% hold on
% N=4
% xw = linspace(-1,1,N);
% yw = 1./(25*(xw.^2)+1);
% plot(xw,yw,'r*')
% V = eye(N);
% for i=1:N
%     V(:,i) = xw.^(i-1);
% end
% 
% A = inv(V)*yw';
% % W = A(3)*(x.^2) + (A(2)*x) + A(1);
% W = 0;
% for i=N:-1:1
%     W = W + A(i)*(x.^(i-1));
% end
% plot(x,W)

% Zadanie 1 - iloraz ró¿nicowy
% x = -1:0.01:1;
% y = 1./(25*(x.^2) + 1);
% plot(x,y)
% hold on
% N=10
% xw = linspace(-1,1,N);
% yw = 1./(25*(xw.^2)+1);
% A = zeros(N);
% A(:,1) = yw';
% for i=2:N
%     for j=2:i
%         A(i,j) = (A(i,j-1)-A(i-1,j-1))/(xw(i)-xw(i-j+1));
%     end
% end
% plot(xw,yw,'r*')
% 
% % W = A(3)*(x.^2) + (A(2)*x) + A(1);
% W = A(1,1);
% for i=2:N
%     buf = A(i,i);
%     for j=2:i
%         buf = buf.*(x-xw(j-1));
%     end
%     W = W+buf;
% end
% 
% plot(x,W)

% Zadanie 2

% 1. godzina 5.15
% 2. -1c
% 3. godzina 12, dostarczono 12cz

N=4;
x = 5:1/10:11;
xw = [5,6,8,11];
yw = [-2,3,7,10];
plot(xw,yw,'r*');
hold on
A = zeros(N);
A(:,1) = yw';
for i=2:N
    for j=2:i
        A(i,j) = (A(i,j-1)-A(i-1,j-1))/(xw(i)-xw(i-j+1));
    end
end

% W = A(3)*(x.^2) + (A(2)*x) + A(1);
W = A(1,1);
for i=2:N
    buf = A(i,i);
    for j=2:i
        buf = buf.*(x-xw(j-1));
    end
    W = W+buf;
end
p = plot(x,W)
