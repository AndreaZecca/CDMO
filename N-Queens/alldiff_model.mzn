% alldiff model

include "alldifferent.mzn";

int: n; 
array[1..n] of var 1..n: q; %variables

%column attack constraints
constraint alldifferent(q)::domain;

%diagonal attack constraints
constraint alldifferent([q[i]+i |i in 1..n ])::domain;
constraint alldifferent([q[i]-i | i in 1..n ])::domain;

%Search
solve satisfy; 
