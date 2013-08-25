-module(euler4).
-author('Matt Stasch').

-import(common, [is_palindrome/1]).
-export([run/1]).

-mode(compile).

run(M) -> N = lists:seq(1, M), 
		  K = [P || P <- [X*Y || X <- N, Y <- N], is_palindrome(P)],
		  lists:max(K).
