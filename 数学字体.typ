#import "@preview/physica:0.9.3": *

#let math-fonts = (
  "Asana Math",
  "AuroraMath",
  "Cambria Math",
  "CEF Fonts Mathematique",
  "Concrete Math",
  "Erewhon Math",
  "Euler Math",
  "Fira Math",
  "Garamond-Math",
  "GFS Neohellenic Math",
  "IBM Plex Math",
  "KpMath",
  "Latin Modern Math",
  "Lato Math",
  "Lete Sans Math",
  "Libertinus Math",
  "Nagwa TK Math",
  "Neo Euler",
  "New Computer Modern Math",
  "Noto Sans Math",
  "OldStandard-Math",
  "STIX Math",
  "STIX Two Math",
  "TeX Gyre Bonum Math",
  "TeX Gyre DejaVu Math",
  "TeX Gyre Pagella Math",
  "TeX Gyre Schola Math",
  "TeX Gyre Termes Math",
  "XCharter Math",
  "XITS Math",
)

#let test-1 = $
  2 pi i ["Res" f (i) + "Res" f(-i)]
  = integral_(-1)^(+oo) ( ln^2 (x+1) ) / (x^2 +1) dif x
  - integral_(-1)^(+oo) [ln (x+1) +2pi i]^2 / (x^2+1) dif x
$

#let test-2 = $ integral.triple (div bold(a)) dif V = integral.surf_S bold(a) dot dif bold(S) $

#let test-3 = $
  "curl" bold(a)
  = (pdv(a_z,y) - pdv(a_y,z)) bold(e_x)
  + (pdv(a_x,z) - pdv(a_z,x)) bold(e_y)
  + (pdv(a_y,x) - pdv(a_x,y)) bold(e_z)
  = curl bold(a)
$

#let test-math-contexts = test-1 + test-2 + test-3

#set text(font: ("Times New Roman","FZKai-Z03S"))
#outline(title: "数学字体")

#set heading(numbering: "1.")

#for math-font in math-fonts {
  heading(math-font)
  show math.equation: set text(font: math-font)
  test-math-contexts
}