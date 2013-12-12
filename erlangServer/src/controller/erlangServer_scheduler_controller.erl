-module(erlangServer_scheduler_controller, [Req]).
-export([ga/2]).
-include("controller_helper.hrl").

ga('POST', []) ->
  Body = get_body(Req:request_body()),
  Msg = get_value(<<"message">>, Body, ""),
  List = get_value(<<"my_list">>, Body, []),
  {json, [{got, Msg}, {list, List}]}.
