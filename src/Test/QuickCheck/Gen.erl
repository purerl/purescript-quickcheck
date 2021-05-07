-module(test_quickCheck_gen@foreign).


-export([float32ToInt32/1]).

float32ToInt32(Float) ->
  << Int:32/integer >> = << Float:32/float >>,
  Int.
