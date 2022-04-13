(* 
  Assignment 04:
  This tutorial is on OCaml language.  You can use jdoodle to run the OCaml code.
  https://www.jdoodle.com/compile-ocaml-online/
*)


(*
  Part 1: Imperative Programming
*)
(*
  Q1: Collatz Conjecture
      The Collatz conjecture starts with the following simple operation.
      Given a number n, we can compute the next number of n as follows:
        - if n is even, then n = n / 2   (integer division)
        - if n is odd , then n = 3*n + 1
      OCaml division is already an integer division as intended.
      You can check by running 10/3 and it should give you 3.
      
      The Collatz conjecture states that given any positive number n,
      performing the operation above repeatedly will eventually result in n = 1.
      This has been tested for large numbers but has never been proven.
      What we want to know is the number of steps it takes for a given number to reach 1.
      
      For instance, starting from n = 3:
        3 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
        It takes 7 steps
      
      Write the function collatz to count the number of steps to reach 1.
      You must use while-loop in your implementation.
      
      Sample Runs:
      ? collatz 3
      > 7
      ? collatz 1
      > 0
      
      (1 mark)
*)
let collatz n = failwith "tba";;


(*
  Part 2: Memoization
*)
(*
  Q2: Coin Change
      Given a list of coins C and a value n, we want to find the
      number of ways we can use the coins to produce the given value n.
      Assume that we have infinite number of each denomination for the coins.
      
      For instance, if the coins are [1;2;5] and the value is 5, we can have the following possibilities:
        - 1 + 1 + 1 + 1 + 1
        - 1 + 1 + 1 + 2
        - 1 + 2 + 2
        - 5
      Note that we assume 1+1+1+2 to be equivalent to 2+1+1+1.
      
      If the coins are [1;2;3] and the value is 7, we can have the following possibilities:
        - 1 + 1 + 1 + 1 + 1 + 1 + 1
        - 1 + 1 + 1 + 1 + 1 + 2
        - 1 + 1 + 1 + 2 + 2
        - 1 + 2 + 2 + 2
        - 1 + 1 + 1 + 1 + 3
        - 1 + 3 + 3
        - 1 + 1 + 2 + 3
        - 2 + 2 + 3
      
      Sample Runs:
      ? coin_change [1;2;5] 5
      > 4
      ? coin_change [1;2;3] 7
      > 8
      ? coin_change [3;8] 2
      > 0
      
      (2 marks)
*)
let rec coin_change coins num = failwith "tba";;

(*
  Q3: Your implementation is very likely going to be inefficient.
      But luckily, we can improve it with memoization.
      Write a memoized version of coin_change using a Hashtbl.
      
      Note that your Hashtbl should be local such that your memoized coin_change
      should not be recursive.
      
      HINT: Hashtbl is a mapping from 'a to 'b.
            What should be the type 'a and what should be the type 'b?
            
      (1 mark)
*)
let memo_coin_change coins num = failwith "tba";;


(*
  Part 3: ADT

  In this part, we want to implement a Set of integer
  The Set should be implemented as a sorted list.
  The number in the list should be unique.
  When the Set constructor is called, we should supply a single number n
    and the Set should be a Set with a single element n.
  The Set should implement the following operations:
  (a) union     s = The union of the given Set with the Set s
                    This is usually denoted as c | s
  (b) intersect s = The intersection of the given Set with the Set s
                    This is usually denoted as c & s
  (c) diff      s = The set difference of the given Set with the Set s
                    This is usually denoted as c - s
  
  For instance, let the current set be c = [1;2;3] and the set s be s = [2;3;4].
  Then:
  (a) The union        of c and s = [1;2;3;4]
  (b) The intersection of c and s = [2;3]
  (c) The diff         of c and s = [1]
      The diff         of s and c = [4]
  
  Note the asymmetry between the diff of c and s and the diff of s and c.
*)

(*
  Q4: Implement the Set as class int_set
      
      (3 marks)
*)
class int_set =
  object
  end;;

(*
  Q5: Implement the Set as a module IntSet
      
      (3 marks)
*)
module IntSet =
  struct
  end;;