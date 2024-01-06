(*
To do: 
  alectryon test.v --backend latex
  pdflatex test.tex

  In the pdf, the local definition of z should be displayed
  as "z:nat := Nat.max x y".

*)
Require Import Arith Lia.

 Lemma L: forall x y, exists z:nat, x <= z /\ y <= z.
 Proof.  
  intros x y; pose (z := Nat.max x y). 
  exists z. 
  split; lia.
 Qed.  

