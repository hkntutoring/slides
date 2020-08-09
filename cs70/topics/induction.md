\section{Mathematical Induction}

# What is induction?

* Method for proving a property on all elements of a set ($P(k) 
forall k \in S$) by giving them an order
* Most common set/ordering, by far: natural numbers, counting up
* More generally: let $a_i$ be the $i$-th element of a sequence (potentially infinitely long) such that $\forall k \in S \exists i | a_i = k$
  * intuitively, the sequence reaches the entire set
* Steps:
  * Base case: prove $P(a_0)$
  * Inductive case: prove $P(a_i) \implies P(a_{i+1})$
* Intuitively: a "domino effect" or "ladder" of cases, as $P(0) \implies P(1); P(1) \implies P(2)$ and so on...

# Showing your work --- Induction

* Outline your proof clearly!
  * It should be clear from first glance where you begin writing base cases, inductive hypotheses, and inductive step proofs
  * You might get a couple points just for this outline!
* Reference the inductive hypothesis!
  * If you don't need to, you could have proved this directly
  * Remember that inductive hypotheses look a lot like assuming what you're trying to prove
  * Write them carefully, and maybe couch them in phrases like "assume for purposes of induction $P(k)$"

# Example --- Triangle Numbers

Prove by induction:

$$
\sum_{i=1}^k i = \frac{k(k+1)}{2}
$$
for all positive integers $k$

# Triangle Numbers --- Base Case

Let $k=1$ (remember, we don't need to prove it for zero here).

$$
\sum_{i=1}^1 i = 1 = \frac{2}{2} = \frac{1(1+1)}{2}
$$

# Triangle Numbers --- Inductive Case

Let us assume, for purposes of proof by induction, that for some $m$,
$$\sum_{i=1}^m i = \frac{m(m+1)}{2}$$

We with to show that
$$
\sum_{i=1}^{m+1} i = \frac{(m+1)(m+2)}{2}
$$

$$\sum_{i=1}^{m+1} i = \sum_{i=1}^{m} i + m+1 = \frac{m(m+1)}{2} + m+1 = \frac{(m+1)(m+2)}{2}
$$

which proves the inductive step. As we previously proved the base case of our induction, $\square$.

# Example 2

Prove that for all integers $n \geq 0$, all real $x$,
$$
\abs{\sin nx} \leq n \abs{\sin x}
$$

# Example 2 --- Base Case
$$\abs{\sin 0} = 0 = 0 = 0 \cdot \abs{\sin x}
$$

This proves the base case.

# Example 2 --- Inductive Case
Let us assume, for purposes of induction,
$$\abs{\sin mx} \leq m \abs{\sin x}$$

We want to prove
$$\abs{\sin (m+1)x} \leq (m+1) \abs{\sin x}
$$

By trig identity,

$$\abs{\sin (m+1)x} = \abs{\sin nx \cos x + \cos nx \sin x}
$$

# Example 2 --- Inductive Case
Applying Cauchy-Schwartz and the triangle inequality,
$$
\abs{\sin (m+1)x} \leq \abs{\sin mx} \cdot \abs{cos x} + \abs{cos mx} \cdot \abs{\sin x}
$$

Since $\abs{\cos y} \leq 1$,
$$
\abs{\sin (m+1)x} \leq \abs{\sin mx} + \abs{\sin x}
$$

Applying the inductive hypothesis,
$$\abs{\sin (m+1)x} \leq (m+1) \abs{\sin x}
$$

$\square$

"There is only one proof technique in applied math: throw bounds at it until it looks nice." (an oft-repeated joke, source unclear)

# Strong Induction

* In standard induction, assuming $P(a_i)$ enable you to prove $P(a_{i+1})$
* In some cases, this isn't enough -- you need information from cases further back in the proof
* Proofs where the inductive step looks more like $P(a_0) \land P(a_1) \land \ldots P(a_k) \implies P(a_{k+1})$ are called proofs by *Strong Induction*

Is this equivalent to simple induction?

# Strong and "Simple" Induction

Is strong induction equivalent to "simple" induction?

*YES!*

* Any statement that can be proved with simple induction can be proved with strong induction (identically
* Suppose a statement is provable by strong induction on $P(k)$
  * Let $Q(i) = P(k_0) \land P(k_1) \land P(k_2) \ldots P(k_i)$
  * The statement is provable by simple induction on $Q(i)$

# The Game of Nim

In the game of Nim, there are two piles of matches, and two players.

On each turn, a player removes any non-zero number of matches from either of the two piles.

The player who takes the last match wins.

Find, with a proof, the conditions under which a player may force a win.

# The Game of Nim --- Solution

Answer: If there are an equal number of matches in the piles, the player not up to move can win.
Otherwise, the player to move can win.

Proof in case of equal piles:
* Base case:
  * $n=1$. The first player must remove a match, then the second wins by removing the other.

* Inductive hypothesis:
  * Assume that for all positive $l \leq k$, if there are $l$ matches in each pile, the second player can win.

# The Game of Nim --- Solution

* Inductive step:
  * Consider the case of $k+1$ matches in each pile.
  * Let the first player remove $j$ matches. 
  * If the second player also removes $j$ matches, he creates a situation of equal piles of $k+1-j$ matches, which we know by strong induction is a win for him.

* Addendum:
  * In the case of unequal piles, removing matches to make them equal means your opponent is now the "first player" in an equal pile situation, so this will win.

# Chocolate

Prove that it takes at least $mn - 1$ cuts to divide an $m \times n$ chocolate bar into $1 \times 1$ squares.

# Chocolate --- Solution

We will prove this by induction on total area of bar.

Let $f(a)$ be the number of steps needed to break up a bar of area $mn = a$.

*Base Case:* let $a = 1$. Trivially, no breaks are needed. f(1) = 0. Confirming, f(1) \geq mn - 1 = 0

*Strong Inductive Hypothesis:* Assume $f(l) \geq l - 1$ for $l \leq k$.
We wish to show $f(k+1) \geq k$.

# Chocolate --- Solution

*Inductive Step:* Consider a bar of area $k+1$. The first break divides it into smaller pars of area $p$ and $q$, such that $p+q = k+1$.

$$
f(k+1) = 1 + f(p) + f(q) \geq p + q - 1 = (k + 1) - 1 = k
$$

$\square$

# Brianacci sequence

Consider the following recursion relation, defining a sequence of integers:

$$x_0 = 0$$
$$x_1 = 1$$
$$x_i = 3x_{i-1} - 2x_{i-2} /forall i \geq 2$$

Prove that $x_n < 2^n \forall n$

# Approach 1 (strong induction)

*Base Case:* $x_0 < 1, x_1 = 1 < 2$

*Inductive Hypothesis:* Assume that $x_i < 2^i \forall i < k$

*Inductive Step:* Hard. Difficult to bound inequalities with negative numbers. Maybe there's something else we can try?


# Approach 2 (strengthened hypothesis)

Gain some insight by writing terms, see if you can spot a pattern:

$x_0 = 0; x_1 = 1; x_2 = 3; x_3 = 7; x_4 = 15 \ldots$

Hmmm ... maybe $x_k = 2^k-1 \forall k$

Let's try to prove this with strong induction.
Since $2^k - 1 < 2^k$, this will imply what we want.

# Approach 2 (strengthened hypothesis)

$$x_n = 3x_{n-1} - 2x_{n-2}$$
Applying our strengthened inductive hypothesis,
$$x_n = 3(2^{n-1}-1)-2(2^{n-2}-1)$$
$$x_n = 3 * 2^{n-1} - 2^{n-1} - 3 + 2$$
$$x_n = 2^n - 1$$

Since the base case is shared with the previous approach, $\square$


