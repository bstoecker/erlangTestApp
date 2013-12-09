-module(myfirstserver_greeting_controller, [Req]).
-export([hello/2, index/2, show/2]).
 
hello('GET', []) ->
  {ok, [{greeting, "Hello, world!"}]}.

index('GET', []) ->
  {json, [{greeting, "Hello, world!"}]}.