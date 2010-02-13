-module(main).
-export([start/0]).

start() ->
	io:format("Double ~w~n",[my_double:double(2)]).
