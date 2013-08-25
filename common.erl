-module(common).
-author("Matt Stasch").

-export([factors/1, is_palindrome/1, fib/1]).

factors(X) -> factors(X, 2, []).

factors(X, D, Acc) when X < D -> Acc;
factors(X, D, Acc) when X rem D == 0 -> factors(X div D, D, Acc ++ [D]);
factors(X, D, Acc) -> factors(X, D + 1, Acc).

is_palindrome(X) -> hd(io_lib:format("~p", [X])) == lists:reverse(hd(io_lib:format("~p", [X]))).

fib(1) -> 1;
fib(2) -> 2;
fib(N) -> fib(N-1) + fib(N-2).