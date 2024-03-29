function f =initDF()
% ----------------- tabel BRe data daylight factor --------------------
c = [   
    0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0   	0       0	0;
    0	0.01	0.02	0.02	0.03	0.03	0.04	0.04	0.05	0.05	0.05	0.06	0.06	0.06	0.06	0.07	0.07	0.07	0.07	0.08;
    0	0.03	0.06	0.09	0.11	0.12	0.14	0.16	0.20	0.21	0.21	0.22	0.22	0.22	0.22	0.23	0.23	0.23	0.23	0.24;
    0	0.06	0.14	0.18	0.26	0.30	0.34	0.38	0.42	0.44	0.47	0.49	0.50	0.50	0.51	0.51	0.52	0.52	0.52	0.53;
    0	0.10	0.25	0.34	0.45	0.54	0.62	0.70	0.75	0.82	0.89	0.92	0.95	0.95	0.96	0.96	0.96	0.97	0.97	0.98;
    0	0.16	0.39	0.52	0.70	0.82	0.97	1.0	    1.1	    1.2     1.3     1.4     1.4     1.4     1.4     1.5     1.5     1.5     1.5     1.5;
    0	0.24	0.53	0.74	0.98	1.2	    1.3     1.5     1.6     1.7     1.8     1.9     1.9     2.0     2.0     2.0     2.1     2.1     2.1     2.1;
    0	0.33	0.68	0.97	1.3	    1.5     1.7     1.9     2.1     2.2     2.3     2.5     2.5     2.6     2.6     2.6     2.6     2.7     2.7     2.8;
    0	0.42	0.83	1.2	    1.6     1.9     2.2     2.4     2.6     2.7     2.9     3.1     3.2     3.3     3.3     3.3     3.3     3.4     3.4     3.4;
    0	0.50	0.99	1.5     1.9     2.2     2.6     2.8     3.1     3.3     3.4     3.7     3.8     3.9     4.0     4.0     4.0     4.1     4.1     4.2;
    0	0.57	1.1	    1.7     2.2     2.6     3.0     3.3     3.6     3.8     4.0     4.3     4.5     4.6     4.7     4.7     4.8     4.8     4.9     5.0;
    0	0.65	1.3     1.9     2.5     3.0     3.4     3.8     4.1     4.3     4.6     4.9     5.1     5.3     5.4     5.4     5.5     5.6     5.6     5.7;
    0	0.71	1.4     2.1     2.7     3.3     3.8     4.2     4.5     4.8     5.0     5.4     5.7     5.9     6.0     6.1     6.2     6.2     6.3     6.3;
    0	0.77	1.5     2.3     2.9     3.6     4.1     4.5     4.9     5.2     5.5     5.9     6.2 	6.4     6.6     6.7     6.8     6.9     6.9     6.9;
    0	0.82	1.6     2.4     3.2     3.8     4.4     4.8     5.2     5.6     5.9     6.4     6.7     7.0     7.2     7.3     7.4     7.5     7.5     7.6;
    0	0.86	1.7     2.6     3.3     4.0     4.6     5.1     5.6     5.9     6.2     6.8     7.1     7.4     7.6     7.8     7.9     8.0     8.0     8.1;
    0	0.90	1.8     2.7     3.5     4.2     4.9     5.4     5.8     6.2     6.5     7.2     7.5     7.8     8.1     8.2     8.4     8.5     8.6     8.6;
    0	0.94	1.9     2.8     3.6     4.4     5.1     5.6     6.1     6.5     6.8     7.5     7.8     8.2     8.5     8.6     8.8     8.9     9.0     9.1;
    0	0.97	1.9     2.9     3.8     4.6     5.3     5.8     6.3     6.7     7.1     7.8     8.2     8.5     8.8     9.0     9.2     9.3     9.4     9.5;
    0	1.0     2.0     3.0     3.9     4.7     5.4     6.0     6.5     6.9     7.3     8.1     8.5     8.8     9.2     9.4     9.6     9.7     9.8     9.9;
    0	1.0     2.0     3.1     4.0     4.8     5.6     6.2     6.7     7.1     7.5     8.3     8.7     9.1     9.5     9.7     9.9     10.0	10.1	10.2;
    0	1.1     2.1     3.2     4.1     5.0     5.8     6.4     7.0     7.4     7.9     8.7     9.1     9.6     10.0	10.2	10.5	10.7	10.8	10.9;
    0	1.1     2.2     3.3     4.3     5.2     6.0     6.6     7.3     7.7     8.1     9.1     9.5     10.0	10.4	10.7	11.0	11.2	11.3	11.4;
    0	1.1     2.2     3.4     4.4     5.3     6.2     6.8     7.5     7.9     8.4     9.3     9.8     10.2	10.8	11.1	11.4	11.7	11.8	11.9;
    0	1.1     2.3     3.4     4.5     5.4     6.3     7.0     7.6     8.1     8.6     9.6     10.0	10.5	11.1	11.4	11.7	12.0	12.2	12.3;
    0	1.2     2.3     3.5     4.5     5.5     6.4     7.1     7.8     8.2     8.7     9.8     10.2	10.7	11.3	11.7	12.0	12.4	12.5	12.6;
    0	1.2     2.4     3.6     4.6     5.7     6.6     7.3     8.0     8.5     9.0     10.1	10.6	11.1	11.8	12.2	12.6	12.9	13.2	13.2;
    0	1.2     2.4     3.6     4.7     5.8     6.7     7.4     8.2     8.7     9.2     10.3	10.9	11.4	12.0	12.4	12.9	13.3	13.5	13.6;
    0	1.2     2.4     3.7     4.8     5.9     6.8     7.6     8.3     8.8     9.4     10.5	11.1	11.7	12.3	12.7	13.3	13.7	14.0	14.1;
    ];
k= [ 0 0.1	0.2	0.3	0.4	0.5	0.6	0.7	0.8	0.9	1.0	1.2	1.4	1.6	1.8	2.0	2.5	3.0	4.0	6.0]';
b = [0 0.1 0.2  0.3   0.4 0.5   0.6  0.7   0.8  0.9  1.0  1.1  1.2 1.3   1.4  1.5  1.6 1.7   1.8  1.9 2.0  2.2 2.4 2.6  2.8 3.0 3.5 4.0 5.0 ]';
y=[ b b b b b b b b b b b b b b b b b b b b];
x =[k k k k k k k k k k k k k k k k k k k k k k k k k k k k k]';
ww=x(:);
hh=y(:);
zz=c(:);
f=scatteredInterpolant(hh,ww,zz,'natural');
%df = griddata(xx,yy,zz,wd,hd,'cubic');
end
