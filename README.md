## FESTIVAL

This is a personal project of **F**inishing **E**asy **S**imple **T**asks
**I**n **V**arious **A**ssorted **L**anguages.

File organization is as follows:

* `specs` contains the full specifications and other information for all of the
  tasks.

* every other directory corresponds to a programming language and contains the
  solutions to the tasks for that language

    * `c`: C
    * `cpp`: C++
    * `hs`: Haskell
    * `java`: Java
    * `js`: JavaScript
    * `pl`: Perl
    * `py`: Python
    * `r`: R
    * `rb`: Ruby
    * `rs`: Rust
    * `sh`: Bash

* `choose.sh` is a Bash script that randomly selects a language/task
  combination that is unimplemented.

* `README.md` is this file.

* `LICENSE` is the GNU GPL 3.0, which is the license that applies to all files
  in this project.

Here is a chart of the progress I have made:

<!-- PROGRESS_START -->
    # implemented     * in-progress     . unimplemented   @ impossible

         0         1         2
         01234567890123456789012
    c    #............#.........
    cpp  .................#.....
    hs   .#..................#..
    java .....#.................
    js   ....#...#..............
    pl   ..#....................
    py   ....#..................
    r    ..............#...#....
    rb   #......................
    rs   .........#..#..........
    sh   .......##..............
<!-- PROGRESS_END -->

Here is a list of the tasks with brief summaries of each:

0. `wordcount`: given a series of words, output each unique word once along
   with how many times it occurred.

1. `det`: given a square matrix of integers, output its determinant.

2. `lookandsay`: given an integer, output that many terms of the look-and-say
   sequence.

3. `base`: given an integer and a list of digits, convert the integer to the
   appropriate base using those digits.

4. `textrot`: given a line of text, rotate it repeatedly to create a wrapping
   effects horizontally and vertically.

5. `circle`: given an integer, draw an ASCII art circle with a radius of the
   input.

6. `pathfind`: given a maze with a unique solution, find the length of the path
   through it.

7. `catbuzz`: given a stream of integers, run fizzbuzz on each of them and
   output in parallel.

8. `bsdsum`: given a byte stream, output its BSD checksum.

9. `euclid`: given two integers, output each step of Euclid's algorithm to find
   their GCD.

10. `quicksort`: given a list of integers, sort them with quicksort.

11. `abbrev`: given a series of words, output all uniquely identifying
    prefixes.

12. `rpncalc`: given an RPN expression, output its value.

13. `loopdetect`: given a directed graph, output whether it contains a loop.

14. `wavg`: given a set of data and weights, compute the weighted average.

15. `toposort`: given a DAG, output a topological sorting.

16. `justify`: given a line of text, justify it to a width of 80 characters.

17. `isbalanced`: given a string of various brackets, output whether it is
    balanced.

18. `uuid`: given no input, generate a version 4, variant 1 UUID.

19. `linreg`: given a set of points, find the y-intercept and slope of an OLS
    regression line.

20. `transpose`: given rectangular input, transpose rows and columns.

21. `hamming`: given a bit stream, generate a Hamming code of minimal length.

22. `calc`: given a mathematical expression, output its value.
