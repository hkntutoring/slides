# Some definitions

* Graph $G = (V, E)$:
  * $V =$ finite set of vertices
  * $E =$ finite set of "edges", 2-element subsets of $V$
    * May be directed or undirected
* $\abs{V} =$ the number of elements of $V$, or, the number of nodes in the graph
* $\abs{E} =$ the number of elements of $E$, or, the number of edges in the graph

# Walks, Tours, Paths, Oh My!

* __Walk__ -- A sequence of vertices and edges, where the edges connect adjacent vertices in the sequence
* __Tour__ -- A walk with no repeated __edges__ and edges where it began
* __Path__ -- A walk with no repeated __vertices__ (implies no repeated edges)
* __Cycle__ -- A walk with no repeated __vertices__ *except for* $v_0 = v_n$
  * a.k.a. __Closed Path__

# Eulerian Walks/Tours

* An __Eulerian Walk__ is a walk that visits each edge in a graph exactly once.
  * If it ends where it begins (is closed), it's an __Eulerian Tour__

* A graph G has an Eulerian tour *if and only if* very vertex in G has even degree and all edges of G are in one connected component.

# Hamiltonin Walks/Tours

* A __Hamiltonian walk__ is a walk that visits each node in a graph exactly once
  * If it ends where it began (is closed) it's a __Hamiltonian tour__

* In a graph with $n$ vertices, a Hamiltonian walk contains $n-1$ edges and and Hamiltonian tour contains $n$ edges.



