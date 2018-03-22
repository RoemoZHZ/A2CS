/* Recursion-1, S3CS3 Stefan Yuzhao Heng */
/* Path: ['D:/RDFZ/S3 Courses/AL Computer Science/2017A2CS/CH29/recursion_1.pl']. */

factorial(0,1).
factorial(N,R) :- 
	X is N-1,
	factorial(X,Y),
	R is Y*N.

bunnyEars(0,0).
bunnyEars(N,R) :-
	X is N-1,
	bunnyEars(X,Y),
	R is Y+2.

fibonacci(0,0).
fibonacci(1,1).
fibonacci(2,1).
fibonacci(N,R) :-
	P is N-1,
	Q is N-2,
	fibonacci(P,X),
	fibonacci(Q,Y),
	R is X+Y. 

even(X) :- 0 is mod(X,2).
odd(X) :- not(even(X)).

bunnyEars2(0,0).
bunnyEars2(N,R) :-
	even(X),
	X is N-1,
	R is Y+2,
	bunnyEars2(X,Y).
bunnyEars2(N,R) :-
	odd(X),
	X is N-1,
	R is Y+3,
	bunnyEars2(X,Y).
/*
bunnyEars2(1,2).
bunnyEars2(2,5).
bunnyEars2(I,R) :-
	X is I-2,
	bunnyEars2(X,Y),
	R is Y+5.
*/