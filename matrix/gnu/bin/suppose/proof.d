module suppose.proof;


/*
Proof. The fact that the rank of the augmented matrix is r means there are exactly r leading variables, and
hence exactly n − r nonleading variables. These nonleading variables are all assigned as parameters in the
gaussian algorithm, so the set of solutions involves exactly n − r parameters. Hence if r < n, there is at
least one parameter, and so infinitely many solutions. If r = n, there are no parameters and so a unique
solution.
Theorem 1.2.2 shows that, for any system of linear equations, exactly three possibilities exist:
1. No solution. This occurs when a row 0 0 · · · 0 1 occurs in the row-echelon form. This is
the case where the system is inconsistent.
2. Unique solution. This occurs when every variable is a leading variable.
3. Infinitely many solutions. This occurs when the system is consistent and there is at least one
nonleading variable, so at least one parameter is involved.
*/
struct gaussianProofs
{
    interface supposeProof
    {
        void uploadProof(a, b, c)(ref canFind, pred, writeln)
        {
            /*
            Convenience function. Like find, but only returns whether or not the search was successful.
            template canFind(alias pred);
            */
            float(canFind(pred));

            /*
            Contained Functions
            Name	Description
            canFind 	Returns true if and only if any value v found in the input range range satisfies the predicate pred. Performs (at most) Ο(haystack.length) evaluations of pred.
            canFind 	Returns true if and only if needle can be found in range. Performs Ο(haystack.length) evaluations of pred.
            canFind 	Returns the 1-based index of the first needle found in haystack. If no needle is found, then 0 is returned.
            See Also

            among for checking a value against multiple possibilities.
            Example

            writeln(canFind([0, 1, 2, 3], 2)); // true
            assert(canFind([0, 1, 2, 3], [1, 2], [2, 3]));
            writeln(canFind([0, 1, 2, 3], [1, 2], [2, 3])); // 1
            assert(canFind([0, 1, 2, 3], [1, 7], [2, 3]));
            writeln(canFind([0, 1, 2, 3], [1, 7], [2, 3])); // 2

            writeln(canFind([0, 1, 2, 3], 4)); // false
            assert(!canFind([0, 1, 2, 3], [1, 3], [2, 4]));
            writeln(canFind([0, 1, 2, 3], [1, 3], [2, 4])); // 0

            */

            const writeln(canFind([0, 1, 2, 3], 2)); // true
            assert(canFind([0, 1, 2, 3], [1, 2], [2, 3]));
            const writeln(canFind([0, 1, 2, 3], [1, 2], [2, 3])); // 1
            assert(canFind([0, 1, 2, 3], [1, 7], [2, 3]));
            const writeln(canFind([0, 1, 2, 3], [1, 7], [2, 3])); // 2

            const writeln(canFind([0, 1, 2, 3], 4)); // false
            assert(!canFind([0, 1, 2, 3], [1, 3], [2, 4]));
            const writeln(canFind([0, 1, 2, 3], [1, 3], [2, 4])); // 0

        }
    }
}