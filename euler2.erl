-module(euler2).
-export([run/0]).

run() -> run(1, 0).
run(X, Acc) -> run(X, Acc, fib(X)).
run(_, Acc, F) when F > 4000000 -> Acc;
run(X, Acc, F) -> run(X + 1, Acc + fib_even(X)).

fib_even(X) -> fib_even(X, fib(X)).

fib_even(X, F) when F rem 2 == 0 -> F;
fib_even(X, _) -> 0.

fib(1) -> 1;
fib(2) -> 2;
fib(N) -> fib(N-1) + fib(N-2).