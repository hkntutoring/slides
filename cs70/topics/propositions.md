\section{Propositional Logic}

# What is a proposition?

A statement which is either *true* or *false*

* 5 is greater than 3
* All pigs have three legs
* If I am studying CS70, then I am not playing League

# What is a proposition?

A proposition must have an unambiguous truth value.
Not a proposition:

* I can afford a coffee and a sandwich (expendable resource)
* CS70 is cool (subjective)



# Implication
* Statements in the form "If P, then Q" are notated $P \implies Q$
* P is called the "hypothesis", Q the "conslusion"
* True if the hypothesis is false, or hypothesis and conclusion are true
  * $(P \implies Q) \equiv \neg(P \land \neg Q)$
* Contrapositive
  * $(P \implies Q) \equiv (\neg Q \implies \neg P)$
* Converse and Inverse
  * $(Q \implies P) \equiv (\neg P \implies \neg Q) \lnot\equiv (P \implies Q)$

# Practice with Implications
*If a man is a student at Cal, he enjoys watching football*

Given the above statement, determine the truth value of the following statements (certainly true, certainly false, ambiguous):

* A CS70 student dislikes watching football
* A student from Ole Miss loves football
* Someone who dislikes all sports goes to Stanford

# Practice with Implications
*If a man is a student at Cal, he enjoys watching football*

Given the above statement, determine the truth value of the following statements (certainly true, certainly false, ambiguous):

* A CS70 student dislikes watching football
  - *Certainly false*
* A student from Ole Miss loves football
  - *Ambiguous*
* Someone who dislikes all sports goes to Stanford
  - *Ambiguous*

# Implication: Identities
$(P \implies Q)$ is equivalent to:

* if P, then Q
* Q if P
* P only if Q
* either Q, or not P
* P is sufficient for Q
* Q is necessary for P
* Q unless not P

# Quantifiers
Place conditions on a variable in a proposition

* "for all x": $\forall x$
* "there exists an x": $\exists x$

# Logical Operations
Act on truth values (or variables/propositions containing them) and return other truth values

* "not x": $\lnot x$
* "x and y": $x \land y$
* "x or y": $x \lor y$

# Distributing a Negation
* DeMorgans's Law
  * $\lnot(P \land Q) \equiv (\lnot P) \lor (\lnot Q)$
  * $\lnot(P \lor Q) \equiv (\lnot P) \land (\lnot Q)$
* $\lnot(\forall x P) \equiv \exists x (\lnot P)$
* $\lnot(\exists x P) \equiv \forall x (\lnot P)$
* If confused, try to put into your own words/examples
* "I am an EECS student who doesn't like boba, therefore, it doesn't make sense to say that all EECS students like boba"

# Practice with Propositions
Let:

* $\operatorname{sun}(t) \coloneqq$ sunny at time $t$;
* $\operatorname{tree}(t) \coloneqq$ I'm near a tree at time $t$;
* $\operatorname{sit}(t) \coloneqq$ I sit against a tree at time $t$;
* $\operatorname{read}(t, u) \coloneqq$ I read a book from time $t$ to time u;

Translate this statement into English:

$$
( \forall t \in \operatorname{sun}(t))(\operatorname{Tree}(t) \implies \operatorname{sit}(t) \land \operatorname{read}(t,t+60))
$$

# Practice with Propositions (answer)
$$
( \forall t \in \operatorname{sun}(t))(\operatorname{Tree}(t) \implies (\operatorname{sit}(t) \land \operatorname{read}(t,t+60)))
$$

*For all time $t$ when it's sunny, if I'm near a tree at this time, then I sit down at this time and read from this time until 60 minutes later*

Slightly less formal: *Whenever it's sunny and I'm near a tree, I sit down and read for an hour.*

# Practice with Propositions
Translate this sentence into a logical statement, defining reasonable propositions:

*No two distinct professors have neat handwriting unless they both have the surname "Sahai"*

# Practice with Propositions (answer)

*No two distinct professors have neat handwriting unless they both have the surname "Sahai"*

$$
\forall p_1, p_2 \in \mathbb{P}, p_1 \not= p_2, \lnot(S(p_1) \land S(p_2)) \implies \lnot (N(p_1) \land N(p_2))
$$
where $\mathbb{P}$ is the set of all professors, $S$ is a logical function that checks Sahai-ness, and $N$ is a logical function that checks handwriting neatness.

(Note that this is not the only answer, but others can be translated by logical identities)







