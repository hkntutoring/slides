\section{Stable Marriage Problem and Gale-Shapely Algorithm}

# Stable Marriage Problem

* Two distinct groups (note that they are *distinct* but not *different* in the problem setup)
* Every member has an unambiguous ranked preference list
* Goal is to create *Stable Pairings:* no *Rogue Couples*
  * A rogue couple $(m, w)$ exists if both $m$ and $w$ prefer each other to their current partners.

# Gale-Shapely "Propose and Reject" Algorithm

One group chosen as "proposers", other as "rejecters." (e.g. "jobs" and "candidates," or "men" and "women")

Every iteration (day):
1. Every proposer proposes to his/her/its highest-ranked candidate who hasn't rejected yet.
2. Each rejecter rejects all but its most preferred proposal, putting it "on a string." 
3. Each rejected proposer removes the rejecter that rejected it.

If no rejection is sent on an iteration, then every rejecter has exactly one proposal, which is accepted.

# Algorithm properties
* Halts
  * $n$ elements on 2 lists: finite combinations
* Improvement Lemma
  * If rejecter $a$ has a proposal from $b$ on day $k$, then for every day $l > k$, $a$ has a proposal "on a string" which it likes at least as much as $b$.
  * Prove by well-ordering, or induction on days


# Algorithm Properties

* Terminates with everyone paired
  * use Improvement Lemma: otherwise requires (n+1) in other set
* Produces stable pairings
  * use Improbement Lemma: one rogue pair member must reject in favor of stable partner
  * this proves that a stable solution exists
  * however, the output of G-S is not necessarily the only stable pairing

# Optimality

* *Optimal:* best one can do given stable pairings
* *Pessimal:* worst one can do given stable pairings
* Propose-and-Reject is proposer-optimal and rejecter-pessimal
  * proof by contradiction

# Algorithm Example

Map professors to classes (professors propose, classes reject):

\vspace{2em}

\begin{columns}
\begin{column}{0.5\textwidth}

\begin{tabular}{c|ccc}
Anant & 189 & 151 & 106 \\
Bora  & 189 & 151 & 106 \\
Claire& 151 & 106 & 189 \\
\end{tabular}
\end{column}
\begin{column}{0.5\textwidth}
\begin{tabular}{c|ccc}
106 & Bora & Anant & Claire \\
151 & Anant & Claire & Bora \\
189 & Claire & Bora & Anant \\
\end{tabular}
\end{column}
\end{columns}

# Algorithm Example

\begin{columns}
\begin{column}{0.5\textwidth}

\begin{tabular}{c|ccc}
Anant & \cellcolor{red!25}189 & 151 & 106 \\
Bora  & \cellcolor{yellow!25}189 & 151 & 106 \\
Claire& \cellcolor{yellow!25}151 & 106 & 189 \\
\end{tabular}
\end{column}
\begin{column}{0.5\textwidth}
\begin{tabular}{c|ccc}
106 & Bora & Anant & Claire \\
151 & Anant & Claire & Bora \\
189 & Claire & Bora & Anant \\
\end{tabular}
\end{column}
\end{columns}

# Algorithm Example

\begin{columns}
\begin{column}{0.5\textwidth}

\begin{tabular}{c|ccc}
Anant & \cellcolor{red!25}189 & \cellcolor{yellow!25}151 & 106 \\
Bora  & \cellcolor{yellow!25}189 & 151 & 106 \\
Claire& \cellcolor{red!25}151 & 106 & 189 \\
\end{tabular}
\end{column}
\begin{column}{0.5\textwidth}
\begin{tabular}{c|ccc}
106 & Bora & Anant & Claire \\
151 & Anant & Claire & Bora \\
189 & Claire & Bora & Anant \\
\end{tabular}
\end{column}
\end{columns}

# Algorithm Example

\begin{columns}
\begin{column}{0.5\textwidth}

\begin{tabular}{c|ccc}
Anant & \cellcolor{red!25}189 & \cellcolor{green!25}151 & 106 \\
Bora  & \cellcolor{green!25}189 & 151 & 106 \\
Claire& \cellcolor{red!25}151 & \cellcolor{green!25}106 & 189 \\
\end{tabular}
\end{column}
\begin{column}{0.5\textwidth}
\begin{tabular}{c|ccc}
106 & Bora & Anant & Claire \\
151 & Anant & Claire & Bora \\
189 & Claire & Bora & Anant \\
\end{tabular}
\end{column}
\end{columns}

# Practice Questions

For all of these, consider a pairing of men (set $M$ with elements $m$) and women (set $W$ with element $w$).

If a pairing is optimal for men, how many stable pairings are there?

# Practice Questions

If a pairing of men and women is both optimal and pessimal for the men, how many stable pairings are there?

*1; if there were another, someone must be either happier or sadder*

# Practice Questions

Is it possible for no woman to get her first choice, but every man to get his?

# Practice Questions

Is it possible for no woman to get her first choice, but every man to get his?

*Yes; every man proposes to a different woman in the first round.*

# Practice Questions

If "Chad" and "Stacy" have each other at the top of their preference lists, then must Chad and Stacy be together in every stable pairing?

# Practice Questions

If "Chad" and "Stacy" have each other at the top of their preference lists, then must Chad and Stacy be together in every stable pairing?

*Yes; otherwise, they would form a rogue couple*
(Source: Spring 2016 Midterm 1 Staff Review)

# Practice Questions

Is it possible that a stable pairing exists where each person is paired with his/her least favorite partner?

# Practice Questions

Is it possible that a stable pairing exists where each person is paired with his/her least favorite partner?

*No; let (Harry, Becky) and (Austin, Mel) be such couples. (Austin, Becky) must be a rogue couple.*

# Practice Questions

If we run Gale-Shapely with men as proposers and women as rejecters (this is sometimes called the "traditional marriage algorithm"), is it possible that two men are each paired with his least preferred woman?

# Practice Questions

If we run Gale-Shapely with men as proposers and women as rejecters (this is sometimes called the "traditional marriage algorithm"), is it possible that two men are each paired with his least preferred woman?


*No. For purposes of proof by contradiction, consider couples $(m_1,w_1)$, $(m_2,w_2)$ where each woman is her partner's least preferred choice. Consider also the swap $(m_1,w_2)$, $(m_2,w_1)$. Neither man can go rogue, because every other woman has rejected him. Neither woman can, as every man is with his optimal stable woman in a TMA output. This pairing is not male-optimal, so the algorithm would not find it.*


