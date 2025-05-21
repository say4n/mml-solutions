= Linear Algebra

== Notes

=== Particular & General Solutions
$
  mat(1, 0, 8, -4; 0, 1, 2, 12) vec(x_1, x_2, x_3, x_4) = vec(42, 8)
$

This can be expressed as 
$x_1 vec(1, 0) + x_2 vec(0, 1) + x_3 vec(8, 2) + x_4 vec(-4, 12) = vec(42, 8)$. 
This can also be expressed as 
$ sum_i x_i bold(c_i) = bold(b) $ <sum_of_columns>
where $bold(c_i)$ are the columns of the matrix. 

Setting $x_3 = x_4 = 0$ gives a particular solution $mat(42, 8, 0, 0)^top$, particular solutions are *not* unique.

If $bold(A x = b)$ and $bold(A y = 0)$, then $bold(A (x + lambda y) = b)$.
$bold(c_3)$ and $bold(c_2)$ can be expressed as a linear combination of $bold(c_1)$ and $bold(c_2)$.

$ 
  8 c_1 + 2 c_2 - c_3 = 0 \
  -4 c_1 + 12 c_2 - c_4 = 0
$

Notice the similarity to the LHS of @sum_of_columns, this can be exploited to come up with the general solution.

$
  x in RR^4 : x = vec(42, 8, 0, 0) + lambda_1 vec(8, 2, -1, 0) + lambda_2 vec(-4, 12, 0, -1); lambda_1, lambda_2 in RR
$

=== REF & RREF

REF stands for Row Echelon Form
- All 0 rows are at the bottom.
- Pivot element of each row is to right of the pivot element of the previous row.

RREF stands for Reduced Row Echelon Form
- Matrix is REF.
- All pivot elements are 1.
- Pivot is the only non-zero element in its column.
- Gaussian elimination: linear equation $->$ RREF.

=== Inverse

$ bold(A A^(-1) = I_n); bold(A) in RR^(n times n) $

=== Solving Linear Equations with Inverse

If $bold(A) in RR^(n times n)$ then, $bold(A x = b => x = A^(-1) b)$. If however $bold(A) in RR^(m times n)$, then $bold(A^top A x = A^top b => x = (A^top A)^(-1) A^top b)$.

The term $bold((A^top A)^(-1) A^top)$ is termed the Moore-Penrose pseudo-inverse.

=== Groups

Set of elements and an operation $G = (cal(G), compose)$ that satisfy:
- Closure: $a, b in cal(G) => a compose b in cal(G)$.
- Associativity: $a, b, c in cal(G) => (a compose b) compose c = a compose (b compose c)$.
- Neutral element: $e, a in cal(G) => e compose a = a compose e = a$.
- Inverse element: $a in cal(G) => a^(-1) in cal(G)$ such that $a compose a^(-1) = e$.

Abelian groups additionally satisfy: $a, b in cal(G)$ such that $a compose b = b compose a$, essentially commutative.

=== Vector Spaces

Set of elements $cal(V)$, an inner operation #sym.plus and an outer operation #sym.dot ($plus : cal(V) times cal(V) -> cal(V)$ and $dot : RR times cal(V) -> cal(V)$), $V = (cal(V), plus, dot)$ that satisfy:
- $(cal(V), plus)$ is an Abelian group.
- $a, b in RR, bold(x), bold(y) in cal(V)$
- Distributive property: 
 - $a dot (bold(x) plus bold(y)) = a dot bold(x) plus a dot bold(y)$.
 - $(a + b) dot bold(x) = a dot bold(x) plus b dot bold(x)$.
- Associativity (outer operation): $a dot (b dot bold(x)) = (a b) dot bold(x)$.
- Neutral element (outer operation): $1 dot bold(x) = bold(x)$.

Any such $bold(x) in cal(V)$ is a vector. 
If $bold(x), bold(y) in RR^(n times 1)$ then, inner product is $bold(x)^top bold(y) in RR$ and outer product is $bold(x) bold(y)^top in RR^(n times n)$.

Vector subspaces are subsets of vector spaces such that both inner and outer operations map back to the vector subspace.

== Solutions
