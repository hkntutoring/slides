\section{Proofs and Proof Techniques}

# Proof techniques for $P \implies Q$
* Direct Proof
  - Assume P is true, use it to show Q
* Proof by contraposition
  - Assume $\lnot Q$ is true, use it to prove $\lnot P$
* Proof by contradiction
  - Assume the opposite of $P \implies Q$, use it to prove an obvious contradiction
* Proof by cases
  - Split the claim into cases which, when combined, encompass the entire claim
  - Prove $P_i \implies Q$ in all cases

# Tips and Tricks
* Try to find a counterexample. If you can't, the process may help you see why.
* Plug in definitions of symbols and operators
* Write out pieces of info you "have," and see what useful steps you can derive from them
  * sometimes, it helps to just "try things"
* Write your goal, and see what middle steps you might need to try to get.
  * Make sure it's clear you're not just assuming your end goal!
* To prove equality/equivalence/"if and only if," prove both directions separately
  * specifically, if you want to show two sets are equivalent, it's sufficient to show both are subsets of the other.

# Example
Show that if two integers sum to an even number, then they must have the same parity.

*Parity:* even-ness, odd-ness, e.g.:

2 and 8 have the same parity (even)

3 and 4 have opposite parities

# Example --- Approach
Which method should we use?

* Direct proof? No immediate solution comes to mind.
* Induction could work --- we'll get to this later.
* Contraposition: show that if two integers have opposite parities, they must sum to an odd number

# Example --- Solution
Let $x$ even and $y$ odd WLOG, that is, $x \coloneqq 2m$, $y \coloneqq 2n+1$
$$
x + y = 2m + 2n + 1 = 2(m+n) + 1
$$

$m+n$ is an integer, so $x+y$ is odd.

Thus, by contraposition, our claim is true. $\square$

# Example

Show that there are no positive integer solutions that satisfy the equation:

$$
x^2 - y^2 = 1
$$

# Example --- Approach

What method should we use?

* Trying to prove something is *impossible*, so it might be most intuitive to try *proof by contradiction*
* We'll suppose this equation might have a solution, then use its existence to show a conradiction


# Example --- Solution

Assume, for purposes of proof by contradicition, that

$$
\exists x,y \in \mathbb{N} | x^2 - y^2 = 1
$$

Then, factoring
$$
(x-y)(x+y) = 1
$$

There are two cases:
$$(x-y) = (x+y) = 1$$
$$(x-y) = (x+y) = -1$$


# Example --- Solution
There are two cases:
$$(x-y) = (x+y) = 1 \implies x = 1; y = 0$$
$$(x-y) = (x+y) = -1\implies x = -1;y = 0$$

Note that in both cases, $y$ is non-positive.

This is a contraposition of our original supposition. $\square$

# Contradiction --- Why does it Work?

* Want to show P
* Assume for purposes of contradiction $\lnot P$
* Show $\lnot P \implies (Q \land \lnot Q) \equiv \operatorname{FALSE}$
* $\lnot P \implies \operatorname{FALSE}$
* Therefore, $P$ is true


# Example 3

Prove the Triangle Inequality for real numbers

$$
\abs{a + b} \leq \abs{a} + \abs{b}
$$


# Example 3 --- Approach

What method should we use?

* Note that $\abs{x}$ is identity for $x \geq 0$, and negation for $x < 0$
* These tend to be easier to prove things about than $\abs{\cdot}$, so we'd like to be able to substitute them
* Anytime you think you see different routes to a proof for different domains (e.g. +/- or even/odd), try *proof by cases*

# Example 3 --- Solution

4 cases:

1. $(+a, +b)$
2. $(+a, -b)$
3. $(-a, +b)$
4. $(-a, -b)$

# Example 3 --- Solution

4 cases (let $\abs{a} \geq \abs{b}$ WLOG):

1. $\abs{a+b} =    a + b = \abs{a} + \abs{b}$
2. $\abs{a+b} \leq a - b = \abs{a} + \abs{b}$
3. $\abs{a+b} \leq -a + b= \abs{a} + \abs{b}$
4. $\abs{a+b} = (-a) + (-b) = \abs{a} + \abs{b}$

* These 4 cases cover the full domain of the claim, so we have proved the claim overall. $\square$


# Proofs --- Last Notes

* The FIRST and LAST sentences of a proof are the most important. They are where the structure of the proof is contained.
* For example: when proving $\forall x \in S, P(x) \implies Q(x)$
  1. Let $x \in S \text{ such that } P(x)$
  2. We know about $x$ that ...
  3. ?????
  4. Therefore, $Q(x)$.  $\square$
* Always start thinking about where you need to start and end a proof in order to prove your proposition true


