-module(erlangServer_scheduler_controller, [Req]).
-export([ga/2, list/2]).
-include("controller_helper.hrl").

ga('POST', []) ->
  Body = get_body(Req:request_body()),
  Msg = get_value(<<"message">>, Body, ""),
  EmployeeList = get_value(<<"employees">>, Body, []),
  ActivityList = get_value(<<"activities">>, Body, []),
  WorkloadList = get_value(<<"workloads">>, Body, []),
  From = get_value(<<"from">>, Body),
  To = get_value(<<"to">>, Body),
  Interval = get_value(<<"interval">>, Body, 900),
  {
    json,
    [
      { got, Msg },
      { employees, EmployeeList },
      { activities, ActivityList },
      { workloads, WorkloadList },
      { from, From },
      { to, To },
      { interval, Interval }
    ]
  }.

list('POST', []) ->
  {struct, Body} = mochijson2:decode(Req:request_body()),
  Msgs = proplists:get_value(<<"list_of_list">>, Body, []),
  erlang:display(io:format("~n~n~p~n~n",[Msgs])),
  {
    json,
    [
      { list_of_lists, "Msgs" }
    ]
  }.