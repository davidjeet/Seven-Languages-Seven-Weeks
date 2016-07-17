-module(day1).
-export([word_count/1]).
-export([count_to_ten/0]).
-export([print_msg/1]).



word_count([]) -> 1;
word_count(32) -> 1;
word_count([Char|Tail]) -> word_count(Char) + word_count(Tail);
word_count(_) -> 0.


count_to(1) -> io:format("1~n");
count_to(N) -> count_to(N-1), io:format("~w~n", [N]).
count_to_ten() -> count_to(10).


print_msg(success) -> io:format("success~n");
print_msg({error, M}) -> io:format("error: " ++ M ++ "~n").


