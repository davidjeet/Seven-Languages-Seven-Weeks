-module(hw2).
-export([lookup/2]).
-export([total_price/1]).

% Q1.
lookup(List, Keyword) -> do_lookup(List, Keyword).
do_lookup([{Keyword, Value}|_], Keyword) -> Value;
do_lookup([_|Tail], Keyword) -> do_lookup(Tail, Keyword).
% Sample usage:
% List1 = [{erlang, "A good programming language :)"}, {python, "Easy for beginners to learn!"}].
% hw2:lookup(List1, erlang).



% Q2.
total_price(ShoppingList) -> [{Item, Quantity * Price} || {Item, Quantity, Price} <- ShoppingList].
% Sample usage:
% hw2:total_price([{"Cheese", 7.99, 100}, {"Bread", 1.99, 500}]).