-module(double).
-export([double_all/1]).

double_all([]) -> [];
double_all([First|Rest]) -> [First + First|double_all(Rest)];
double_all(_) -> "Input was not a list!!!". % I added this for fun to handle non list inputs
