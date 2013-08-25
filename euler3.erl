-module(euler3).
-author('Matt Stasch').

-export([run/1]).

run(X) -> run(X, 2).

run(X, D) when X =< D -> X;
run(X, D) when X rem D == 0 -> run(X div D, D);
run(X, D) -> run(X, D + 1).
