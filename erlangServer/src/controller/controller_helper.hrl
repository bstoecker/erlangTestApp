values_of(Results, []) -> lists:reverse(Results);
values_of(Results, [Tupel|TupelList]) ->
  values_of([value_of(Tupel)|Results], TupelList).


value_of({_,Value}) -> Value;
value_of([Elem|Sublist]) -> values_of([value_of(Elem)], Sublist);
value_of(Elem) -> Elem.

get_value(Key, DeserializedBody, Default) ->
  Element = proplists:get_value(Key, DeserializedBody, Default),
  value_of(Element).

get_value(Key, DeserializedBody) -> get_value(Key, DeserializedBody, undefined).

get_body(Body) ->
  {_, JsonBody} = mochijson2:decode(Body),
  JsonBody.

json_attributes(Result, []) -> Result;
json_attributes(Result, [{ Key, Value } | SubList]) ->
  NewResult = [{ erlang:binary_to_atom(Key, utf8), Value } | Result],
  json_attributes(NewResult, SubList).

json_attributes(JsonList) ->
  json_attributes([], JsonList).




% binary_to_atom