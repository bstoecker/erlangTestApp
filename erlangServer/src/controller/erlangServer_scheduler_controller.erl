-module(erlangServer_scheduler_controller, [Req]).
-export([ga/2]).
-include("controller_helper.hrl").

ga('POST', []) ->
  {struct, Body} = mochijson2:decode(Req:request_body()),
  Msg = proplists:get_value(<<"content">>,Body,""),
  List = values_of(proplists:get_value(<<"my_list">>,Body,"")),
  {json, [{got, Msg}, {list, List}]}.
