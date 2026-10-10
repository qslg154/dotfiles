#import "@local/qslg:1.0.0":*
#import thm-state: thm-restate
#import thm-themes.ams: *
#show: thm-rules.with(qed-symbol: $square$)
#show heading: set block(below: 1em)

// #set page(width: 16cm, height: auto, margin: 1.5cm)
#set text(font: "New Computer Modern Math")
= lecture_8
== Split exact sequence
Recall that we can construct a new group $G$ if $H$, $K$ are normal subgroups. The construction is simply given by cartesian product.

This gives us a trivial exact sequence:

$
  1 -> K ->^i K times H ->^pi H -> 1 
$

Where $i$ is given by the usual inclusion map and $pi$ by projection.
However, what if $H$ isn't normal?

#defn("split exact sequence")[
  A exact sequence $1 -> K ->^i G ->^pi H -> 1$ is called split when there exist homomorphism $phi: H -> G$ such that $pi compose phi = "id"_H$ 
]

We will show that we can form "semi-direct product" for $H$ and $K$ if and only we can make the above exact sequence split.

== Group extension; semi-direct product

Usually, we will have $K$ to be a kernel of homomorphism and $H = G\/K$ to be the associated quotient group.
However, most of the time $G != G\/K times K$, this happens already when $D_6 != D_6\/C_3 times C_3 = C_2 times C_3$.

#defn("group extension")[
  If \(Q\) and \(N\) are two groups, then \(G\) is an extension of \(Q\) by \(N\) if there is a short exact sequence

$ 1 -> N limits(->)^iota G limits(->)^pi Q -> 1. $
]
A way that it is useful is if $N$ is the maximal normal subgroup of $G$ then the quotient group $Q$ must be simple.

#defn("semi-direct product")[
  Given a map $phi: H -> "Aut"(N)$, we can construct the group semi-direct product: $G = N times_phi H$ or $N times.r H$ by 
  taking the set of $G$ as $N times H$ and the operation be $(n_1, h_1)(n_2, h_2) = (n_1(h_1 dot n_2), h_1h_2)$ 
  where the left action on $N$ is given by the automorphism map.
] <sdp>

#ex("semi-direct product")[
  #list(
  [We have $D_(2n) = C_n times.r C_2$. It is obvious that  $C_2 -> "Aut"(C_n)$ has $s mapsto (r mapsto r^(-1))$.],
  [The trivial automorphism gives the direct product],
  [$S_n = A_n times.r C_2$
  The intuition is an automorphism of $A_n$ is by changing index of the permutation. Thus we define the automorphism by conjugation. \
  I believe everything work fine if we have $phi((a(12)b(12), e)) = phi((a, (1 2)))phi(b, (12)) = a(12)b(12)$],
  ) in $S_n$
]

#defn("split exact sequence")[
  It is obvious that the above example all gives a split exact sequence. So here we will have example of non-split sequence.

  #list(
    [$1 -> C_2 -> C_4 -> C_2 -> 1$],
    [$1 -> C_2 -> "SU"(2) -> "SO"(3) -> 1 $]
  )
]

== Classification result

We first classify groups of order $p q$ where $p < q$. There are two cases, $p$ even or $p$ odd.

== $|G| = 2q$
We consider a 2-sylow $H_2$ and a q-sylow subgroup $H_q$ of $G$. 
Note that $n_q = 1$ since $n_q$ divides $2$. Thus $H_q$ is normal. 
However, $n_2 = 1 mod 2 => 1 or q$. If $n_2 = 1$ then it is trival. \

So suppose $n_2 = q$. Note that we have the exact sequence:
$
  1 -> C_q ->^i G ->^pi C_2 -> 1 
$
Consider $C_2 |-> "Aut"(C_q) = C_(q - 1)$. 
The automorphism mapped must be +- . So the group is $D_(2q)$ by @sdp


