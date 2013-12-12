-export([value_of/1, values_of/1]).

values_of(Results, []) -> lists:reverse(Results);
values_of(Results, [Tupel|TupelList]) ->
  values_of([value_of(Tupel)|Results], TupelList).

values_of(TupelList) -> values_of([], TupelList).

% value_of({_,Value}) -> Value;
% value_of([]) -> [];
% value_of(TupelList) -> values_of([], TupelList).

value_of(Tupel) ->
  {_,Value} = Tupel,
  Value.


% get_value(Key, From, Default = "") ->
%   value_of(proplists:get_value(Key,From,Default)).