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


