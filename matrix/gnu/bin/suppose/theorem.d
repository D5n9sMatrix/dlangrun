module suppose.theorem;

/*
Theorem 1.2.2
Suppose a system of m equations in n variables is consistent, and that the rank of the augmented
matrix is r.
1. The set of solutions involves exactly n − r parameters.
2. If r < n, the system has infinitely many solutions.
3. If r = n, the system has a unique solution.
*/

struct proccedTheorem
{
    interface supposeTheorem
    {
        void uploadThecolony(a, b, c)(ref BoyerMooreFinder, binaryFun, isRandomAccessRange,
            hasSlicing, isSomeString, string, beFound, writeln)
        {
            /*
            Function boyerMooreFinder

           Sets up Boyer-Moore matching for use with find below. By default, elements are compared for equality.

           BoyerMooreFinder!(binaryFun!pred,Range) boyerMooreFinder(alias pred, Range) (
           Range needle
           )
           if (isRandomAccessRange!Range && hasSlicing!Range || isSomeString!Range);

          BoyerMooreFinder allocates GC memory.
          Parameters
          Name	Description
          pred	Predicate used to compare elements.
          needle	A random-access range with length and slicing.
          Returns

          An instance of BoyerMooreFinder that can be used with find() to invoke the Boyer-Moore
          matching algorithm for finding of needle in a given haystack.
          Example

          auto bmFinder = boyerMooreFinder("TG");

          string r = "TAGTGCCTGA";
          // search for the first match in the haystack r
          r = bmFinder.beFound(r);
          writeln(r); // "TGCCTGA"

         // continue search in haystack
         r = bmFinder.beFound(r[2 .. $]);
         writeln(r); // "TGA"

         */

            BoyerMooreFinder!(binaryFun!pred,Range) boyerMooreFinder(alias pred, Range) (
                Range needle
            )
            if (isRandomAccessRange!Range && hasSlicing!Range || isSomeString!Range);

            auto bmFinder = boyerMooreFinder("TG");

            string r = "TAGTGCCTGA";
            // search for the first match in the haystack r
            r = bmFinder.beFound(r);
            const writeln(r); // "TGCCTGA"

            // continue search in haystack
            r = bmFinder.beFound(r[2 .. $]);
            const writeln(r); // "TGA"


        }
    }
}