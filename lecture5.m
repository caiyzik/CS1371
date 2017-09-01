%lecture script

a = 3;
b = -2;
c = 2;
r = 2;
A = 1 + a.^2./(b.^2);
B = -2.*a.*c./(b.^2);
C = c.^2./(b.^2) - r.^2;
[x1 x2] = my_roots(A, B, C)
th = linspace(0, 2*pi, 100);
plot(r.*cos(th), r.*sin(th))
axis equal
hold on
y1 = (c - a.*x1)./b;
y2 = (c - a.*x2)./b;
plot(x1, y1, 'r+')
plot(x2, y2, 'go')