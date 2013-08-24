-module(euler1).
-export([run/1]).

run(V) -> lists:sum([X || X <- lists:seq(1, V - 1), X rem 5 == 0 orelse X rem 3 == 0]).

%run(V) -> run(V - 1, 0).
%run(0, S) -> S;
%run(V, S) -> run(V - 1, check(V) + S).

%check(N) when N rem 5 == 0; N rem 3 == 0 -> N;
%check(_) -> 0.