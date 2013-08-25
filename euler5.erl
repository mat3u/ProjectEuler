-module(euler5).
-author('Matt Stasch').

-import(common, [factors/1]).
-export([run/1]).

run(M) -> lists:foldl(fun(X, P) -> P * X end, 1, total_factors(M, factors(M), [])).

total_factors(1, _, Acc) -> Acc;
total_factors(M, F, Acc) -> total_factors(M - 1, factors(M - 1), Acc ++ (F -- Acc)).