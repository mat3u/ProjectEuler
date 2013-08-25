-module(euler6).
-author("Matt Stasch").

-export([run/1]).

run(M) -> T = lists:seq(1, M),
		  math:pow(lists:foldl(fun(X, S) -> X + S end, 0, T), 2) - lists:foldl(fun(X, S) -> X + S end, 0, [math:pow(X, 2) || X <- T]).