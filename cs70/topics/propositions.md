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
  * $(Q \implies P) \equiv (\neg P \implies \neg Q) \not\equiv (P \implies Q)$
