-module(euler7).
-author("Matt Stasch").

-export([run/1]).

run(I) -> run(I, 2, 0, []).

run(I, 2, I, AlreadyFound) -> last(AlreadyFound).
run(I, 2, ID, AlreadyFound) -> 