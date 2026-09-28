:Require file://t0101.dyalog
:Namespace t0101_trains_tests

 ⎕IO←0
 tn←'t0101' ⋄ cn←'c0101' ⋄ dy←#.⍎tn ⋄ cd←⎕NS⍬
 dy.⎕IO←0

 CHK←{⍺←⊢ ⋄ (0∊∊⍵)∨0=≢⍵:⍺ ⎕SIGNAL 8 ⋄ _←0}
 FN←{'FN←',3↓⊃⍵}

∇{Z}←PARSE X
 (p d t k n lx pos end)(xn xt)sym IN←##.codfns.(PS TK) X
 Z←1
∇

∇Z←NS src
 Z←(⊂':Namespace'),src,⊂':EndNamespace'
∇

∇Z←AST;p;d;t;k;n;lx;pos;end;xn;xt;sym;IN;CD;i;lines
 Z←⍪⍬
 CD←##.codfns
 lines←{(+/∧\' '=⍵)↓⍵}¨⎕SRC dy

 CHK PARSE NS ⊂FN lines[2]
 CHK p=0 0 1 1 3 3 5 5 5
 CHK d=0 1 2 2 3 3 4 4 4
 CHK t=CD.(F B V R P R P P P)
 CHK k=0 2 2 2 2 3 2 2 2
 CHK n=0 ¯11 ¯10 0 ¯12 0 ¯13 ¯14 ¯15
 CHK lx=4 0 0 0 3 0 3 3 3
 CHK pos end=(0 11 11 14 14 15 15 16 17)(32 18 13 18 15 18 16 17 18)

 CHK PARSE NS ⊂FN lines[3]
 CHK p=0 0 1 1 3 3 3 6 6 6
 CHK d=0 1 2 2 3 3 3 4 4 4
 CHK t=CD.(F B V R P P R A P P)
 CHK k=0 2 2 3 2 2 3 1 2 2
 CHK n=0 ¯11 ¯10 0 ¯12 ¯13 0 ¯14 ¯15 ¯13
 CHK lx=4 0 0 0 3 3 0 6 3 3
 CHK pos end=(0 11 11 14 14 15 16 16 17 18)(33 19 13 19 15 16 19 17 18 19)

 CHK PARSE NS ⊂FN lines[4]
 CHK p=0 0 1 1 3 4 4 3 3 8 8
 CHK d=0 1 2 2 3 4 4 3 3 4 4
 CHK t=CD.(F B V R R P P P R P P)
 CHK k=0 2 2 3 2 2 2 2 2 2 2
 CHK n=0 ¯11 ¯10 0 0 ¯13 ¯14 ¯16 0 ¯17 ¯14
 CHK lx=4 0 0 0 0 3 3 3 0 3 3
 CHK pos end=(0 11 11 14 15 16 17 19 20 21 22)(39 25 13 25 19 17 18 20 24 22 23)

 CHK PARSE NS ⊂FN lines[5]
 CHK p=0 0 1 1 3 4 5 6 6 6 9 9 9 5 3 14 15 16 16 16 19 19 19 15
 CHK d=0 1 2 2 3 4 5 6 6 6 7 7 7 5 3 4 5 6 6 6 7 7 7 5
 CHK t=CD.(F B V C F E R A P O P P P P F E R A P O P P P P)
 CHK k=0 2 2 2 2 1 3 1 2 8 2 4 2 1 3 1 3 1 2 8 2 4 2 1
 CHK n=0 ¯11 ¯10 0 0 0 0 ¯13 ¯14 0 ¯15 ¯16 ¯17 ¯1 0 0 0 ¯13 ¯14 0 ¯15 ¯16 ¯17 ¯1
 CHK lx=4 0 0 0 4 0 0 6 3 3 3 3 3 4 4 0 0 6 3 3 3 3 3 4
 CHK pos end=(0 11 11 14 14 15 15 16 17 18 18 19 20 22 14 15 15 16 17 18 18 19 20 22)(38 24 13 24 24 23 22 17 18 21 19 20 21 23 24 23 22 17 18 21 19 20 21 23)

 CHK PARSE NS ⊂FN lines[6]
 CHK p=0 0 1 1 3 4 5 5 7 7 7 5 3 12 13 13 15 15 15 13
 CHK d=0 1 2 2 3 4 5 5 6 6 6 5 3 4 5 5 6 6 6 5
 CHK t=CD.(F B V C F E A R P P P A F E A R P P P A)
 CHK k=0 2 2 2 2 2 1 3 2 2 2 1 3 2 1 3 2 2 2 1
 CHK n=0 ¯11 ¯10 0 0 0 ¯12 0 ¯14 ¯15 ¯16 ¯18 0 0 ¯12 0 ¯14 ¯15 ¯16 ¯18
 CHK lx=4 0 0 0 4 0 6 0 3 3 3 6 4 0 6 0 3 3 3 6
 CHK pos end=(0 11 11 14 14 15 15 18 19 20 21 24 14 15 15 18 19 20 21 24)(40 26 13 26 26 25 17 23 20 21 22 25 26 25 17 23 20 21 22 25)

 CHK PARSE NS lines[1],⊂FN lines[7]
 i←⍸(t=CD.R)∨t[p]=CD.R
 CHK i=9 10 15 16 20 21 26 27
 CHK t[i]=CD.(R E P P R E P P)
 CHK k[i]=3 2 2 2 3 2 2 2
 CHK p[i]=8 9 9 9 19 20 20 20
 CHK (pos[i])(end[i])≡(23 24 28 29 23 24 28 29)(31 28 29 30 31 28 29 30)
 CHK (t[11 22]=CD.V)∧n[11 22]=¯10 ¯10

 CHK PARSE NS ⊂'FN←{10 -,+ 2}'
 CHK ~∨⌿t=CD.R

 Z←0

∇

 ∆00_TEST←{#.UT.expect←0 ⋄ _←#.⎕EX cn ⋄ 0⊣cd∘←#.c0101←('./',tn) #.codfns.Fix ⎕SRC dy}
 ∆01_TEST←{#.UT.expect←0 ⋄ 0⊣AST ⍬}
 ∆02_TEST←{#.UT.expect←dy.F1 1 1 2 2 ⋄ cd.F1 1 1 2 2}
 ∆03_TEST←{#.UT.expect←dy.F2 ¯3 0 4 ⋄ cd.F2 ¯3 0 4}
 ∆04_TEST←{#.UT.expect←dy.F3 4 ⋄ cd.F3 4}
 ∆05_TEST←{#.UT.expect←2 dy.F3 4 ⋄ 2 cd.F3 4}
 ∆06_TEST←{#.UT.expect←dy.F4 2 2 2 ⋄ cd.F4 2 2 2}
 ∆07_TEST←{#.UT.expect←dy.F5 0 ⋄ cd.F5 0}
 ∆08_TEST←{#.UT.expect←dy.F6 4 ⋄ cd.F6 4}
 ∆09_TEST←{#.UT.expect←dy.Atop 4 ⋄ cd.Atop 4}
 ∆10_TEST←{#.UT.expect←2 dy.Atop 4 ⋄ 2 cd.Atop 4}
 ∆11_TEST←{#.UT.expect←dy.Atop 1 2 3 ⋄ cd.Atop 1 2 3}
 ∆12_TEST←{#.UT.expect←dy.Fork 4 ⋄ cd.Fork 4}
 ∆13_TEST←{#.UT.expect←2 dy.Fork 4 ⋄ 2 cd.Fork 4}
 ∆14_TEST←{#.UT.expect←dy.Fork 1 2 3 ⋄ cd.Fork 1 2 3}
 ∆15_TEST←{#.UT.expect←2 dy.Fork 1 2 3 ⋄ 2 cd.Fork 1 2 3}
 ∆16_TEST←{#.UT.expect←dy.Array 4 ⋄ cd.Array 4}
 ∆17_TEST←{#.UT.expect←2 dy.Array 4 ⋄ 2 cd.Array 4}
 ∆18_TEST←{#.UT.expect←dy.Array 4 5 6 ⋄ cd.Array 4 5 6}
 ∆19_TEST←{#.UT.expect←dy.Variable 4 ⋄ cd.Variable 4}
 ∆20_TEST←{#.UT.expect←2 dy.Variable 4 ⋄ 2 cd.Variable 4}
 ∆21_TEST←{#.UT.expect←dy.Derived 4 ⋄ cd.Derived 4}
 ∆22_TEST←{#.UT.expect←dy.Inside 4 ⋄ cd.Inside 4}
 ∆∆∆_TEST←{#.UT.expect←0 0 ⋄ _←#.⎕EX¨cn tn ⋄ #.⎕NC cn tn}

:EndNamespace
