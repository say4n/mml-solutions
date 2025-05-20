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

== Solutions
