Negate = fun(X) -> -X end.

Numbers = [1,2,3,4].

Print = fun(X) -> io:format("~p~n", [X]) end.
lists:foreach(Print, Numbers).

Square = fun(X) -> X*X end.
Powers = fun(X,Y) -> math:pow(X, Y) end.
NumbersSquared = lists:map(Square, Numbers).
NumbersCubed = lists:map(Square, Numbers).

Small = fun(X) -> X < 3 end.
lists:filter(Small, NumbersSquared).


lists:all(Small, [0,1,2]).
lists:all(Small, [0,1,2,3,4,9]).

lists:any(Small, [0,1,2,8]).
lists:any(Small, [8,9]).

lists:any(Small, []).
lists:all(Small, []).

lists:takewhile(Small, [1,3,5,7,9]).
lists:dropwhile(Small, [1,3,5,7,9]).

% foldl i) takes a function, ii) initial value, iii) list 
% the function that foldl takes requires 2 params (a passthrough value and a list item) 
% scala has something like this.

Adder = fun(ListItem, SumSoFar) -> ListItem + SumSoFar end.
InitialSum = 0.
lists:foldl(Adder, InitialSum, Numbers).


% List construction
double:double_all([1,2,3]).


% List comprehensions

Fibs = [1,1,2,3,5].
Double = fun(X) -> X * 2 end.

%with lists:map
lists:map(Double, Fibs).

%with list comprehension. supposed to be more concise, but looks awful to me.
[Double(X) || X <- Fibs].

[X * 2 || X <- Fibs].

Cart = [{pencil, 4, 0.25}, {pen, 1, 1.20}, {paper, 2, 0.20}].

WithTax = [{Product, Quantity, Price, Price * Quantity * 0.08} || {Product, Quantity, Price} <- Cart].
% ok, I want to cry because this hurts my brain. I get it, but my brain still hurts.

Cat = [{Product, Price} || {Product, _, Price} <- Cart].
DiscountedCat = [{Product, Price/2} || {Product, Price} <- Cat].

[X || X <- [1,2,3,4], X<4, X>1].
