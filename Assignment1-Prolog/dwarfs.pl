
front(X,Y) :- behind(Y,X).
front(grumpy,dopey).
front(doc,droopy).
front(doc,happy).
front(happy,sleepy).
front(happy,smelly).
front(happy,bashful).
front(sneezy,dopey).
front(smelly,grumpy).
front(smelly,stumpy).
front(smelly,sneezy).
front(dopey,droopy).
front(sleepy,grumpy).
front(sleepy,bashful).
front(stumpy,dopey).

behind(X,Y) :- front(Y,X).
behind(stumpy,sneezy).
behind(stumpy,doc).
behind(sleepy,stumpy).
behind(sleepy,smelly).
behind(sleepy,happy).
behind(bashful,smelly).
behind(bashful,droopy).
behind(bashful,sleepy).
behind(dopey,sneezy).
behind(dopey,doc).
behind(dopey,sleepy).
behind(smelly,doc).


start() :- 
	order([droopy, bashful, doc, dopey, sneezy, smelly, happy,sleepy, stumpy], [grumpy]).


order([Dwarfs|[]], Ord) :- write("Order: "), write(Ord), nl.

order([Dwarfs|Rem], [First|[]]) :- 

	(front(Dwarfs, First) -> order(Rem, [Dwarfs, First])

		; order([Rem], [First, Dwarfs])

	).

order([Dwarfs|Rem], [First|Rem2]) :-

	(front(Dwarfs, First) -> order(Rem, [Dwarfs, First|Rem2])

		; order([Dwarfs|Rem], [First, Rem2])

	).