
hoofer(tony).
hoofer(shikuo).
hoofer(ellen).

hoofer(X) :- skier(X) ; mountainclimber(X) ; skier(X), mountainclimber(X).

skier(X) :- likes(X, snow).
mountainclimber(X) :- dislikes(X, rain).

likes(tony, snow).
likes(tony, rain).

likes(tony, _) :- dislikes(ellen, _).
dislikes(ellen, _) :- likes(tony, _).



start() :-
	write("Is there a Hoofers Club member who is a mountain climber but not a skier?"),
	nl,
	nl,
	climberQ([tony, shikuo, ellen]).

climberQ([Head|Tail]) :- (mountainclimber(Head) -> skierQ([Head|Tail]), nl ; climberQ(Tail)).

skierQ([Head|Tail]) :- (skier(Head) -> climberQ(Tail) ; write(Head), nl).