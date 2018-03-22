/* List, S3CS3 Stefan Yuzhao Heng */
/* Path: ['D:/RDFZ/S3 Courses/AL Computer Science/2017A2CS/CH29/list.pl']. */

last(I,[I]).
last(I,_|T) :-
	last(I,T).

at(I,[I|_],1).
at(I,[_|T],N) :-
	at(I,T,P),
	N is P+1.

len([],0).
len([_|T],L) :-
	len(T,X),L is X+1. 

reverse([I],[I]).
reverse(X|Y,P|Q) :-
	