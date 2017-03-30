-module(test_quickCheck_gen@foreign).
-export([float32ToInt32/1]).

float32ToInt32(N) -> case <<N:32/float>> of
  <<Res:32>> -> Res
end.
