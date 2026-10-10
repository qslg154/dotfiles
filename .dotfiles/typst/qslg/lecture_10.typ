#import "@local/qslg:1.0.0": *

= Lecture 10
== Localization
We try to generalize field of fraction to non-integral domain
- equivalence relation $(r_1, s_1) ~ (r_2, s_2)$

#defn("Universal Property")[
  Let $S$ be a multiplicative closed set, then consider the homomorphism
  $R ->^phi T$, it maps $S "to the set of units in "T$.
  // https://q.uiver.app/#r=typst&q=WzAsMyxbMCwwLCJTIHN1YnNldC5lcSBSIl0sWzIsMiwiU14oLTEpUiJdLFsyLDAsIlQiXSxbMCwyLCJwaGk6UyBtYXBzdG8gVF50aW1lcyJdLFswLDEsImoiLDJdLFsxLDIsImV4aXN0cyFwc2kiLDJdXQ==
#align(center, diagram({
	node((0, 0), [$S subset.eq R$])
	node((2, 2), [$S^(-1)R$])
	node((2, 0), [$T$])
	edge((0, 0), (2, 0), [$phi:S mapsto T^times$], label-side: left, "->")
	edge((0, 0), (2, 2), [$pi$], label-side: right, "->")
	edge((2, 2), (2, 0), [$exists!psi$], label-side: right, "->")
}))
]
How do we construct such $S^(-1)R$?
For example, the zero divisors in $ZZ\/6ZZ$ are ${2, 3, 4}$, if we want $2, 4$ to be invertible, then we actually need $3$ to be $0$ otherwise the units we want will be zero divisors.

The equivalence relation is defined by $(r_1, s_1) ~ (r_2, s_2)$ if there exists $s'$ such that
$
  s'(r_1 s_2  - r_2 s_1) = 0
$
Note the $ker pi = S^0$, so $S^-1R = R/S^0$
#ex("Localization")[
  - $S = {1, 2, 4}, R = ZZ \/ 6ZZ, "then" S^(-1) R = (ZZ \/ 6ZZ) \/(3ZZ) = ZZ \/ 3ZZ $
  In ring $ZZ$, 
  - $S = ZZ - {0}$, then the localization is $QQ$
  - $S = {1, 6, 6^2, ...}$, then $S^-1R = ZZ[1/6]$, (we can check everything is invertible)
  - $S = ZZ - (p) $ ??? $"Spec"ZZ_((p)) = {0, (2), (3), ... ,(p)}$
  - $k[x], (x-a)$ is a maximal ideal, localize with $k[x] - (x - a) = {f(x) / g(x) | (x - a) divides.not g(x)}$
]
== Localization of modules
This is just changing the set of scalars.
We can define $S^(-1)M = {x/s : x in M, s in S}$. So basically the set of scalers is changed to $S^(-1)R$
$
  S^(-1) M tilde.equiv S^(-1) R times.o_R M
$
== Diagram chasing
- five lemma
- snake lemma
???

