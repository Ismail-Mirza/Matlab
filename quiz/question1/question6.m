x = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0];
y = [-0.48 1.978 3.28 6.16 7.08 7.34 7.66 9.56 9.48 9.3 11.2];
a = x.^2;
b = x.^3;
c = x.^4;
d = x.^5;
e = x.^6;
f = x.^7;
g = x.^8;
h = x.*y;
i = x.^2.*y;
j = x.^3.*y;
k = x.^4.*y;

A = [11 sum(x) sum(a) sum(b) sum(c);
    sum(x) sum(a) sum(b) sum(c) sum(d);
    sum(a) sum(b) sum(c) sum(d) sum(e);
    sum(b) sum(c) sum(d) sum(e) sum(f);
    sum(c) sum(d) sum(e) sum(f) sum(g);];

B = [sum(y) sum(h) sum(i) sum(j) sum(k)]';