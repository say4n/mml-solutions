#let include_with_page_break(path) = {
  include path
  [#pagebreak()]
}

#set math.mat(delim: "[")
#set math.vec(delim: "[")

#include_with_page_break("chapters/00-title.typ")

#set heading(numbering: "1.1.A")
#set math.equation(numbering: "(1)")

#include_with_page_break("chapters/01-intro.typ")
#include_with_page_break("chapters/02-linear-algebra.typ")

This page is intentionally left blank.