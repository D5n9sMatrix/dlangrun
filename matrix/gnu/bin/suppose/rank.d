module suppose.rank;

/*
Suppose that rank A = r, where A is a matrix with m rows and n columns. Then r ≤ m because the
leading 1s lie in different rows, and r ≤ n because the leading 1s lie in different columns. Moreover, the
rank has a useful application to equations. Recall that a system of linear equations is called consistent if it
has at least one solution.
*/

struct numbersRank
{
    interface numbersRanks
    {
        void supposeRank(a, b, c)(ref size_t, isInputRange, front)
        {
            /*
            Checks whether r has "balanced parentheses", i.e. all instances of lPar are
            closed by corresponding instances of rPar. The parameter maxNestingLevel
            controls the nesting level allowed. The most common uses are the default
            or 0. In the latter case, no nesting is allowed.
            bool balancedParens(Range, E) (
                 Range r,
                 E lPar,
                 E rPar,
           size_t maxNestingLevel = size_t.max
           )
           if (isInputRange!Range && is(typeof(r.front == lPar)));
           Parameters
           Name	Description
           r	The range to check.
           lPar	The element corresponding with a left (opening) parenthesis.
           rPar	The element corresponding with a right (closing) parenthesis.
           maxNestingLevel	The maximum allowed nesting level.
           Returns

           true if the given range has balanced parenthesis within the given maximum nesting level;
           false otherwise.
           Example

           auto s = "1 + (2 * (3 + 1 / 2)";
           assert(!balancedParens(s, '(', ')'));
           s = "1 + (2 * (3 + 1) / 2)";
           assert(balancedParens(s, '(', ')'));
           s = "1 + (2 * (3 + 1) / 2)";
           assert(!balancedParens(s, '(', ')', 0));
           s = "1 + (2 * 3 + 1) / (2 - 5)";
           assert(balancedParens(s, '(', ')', 0));
           s = "f(x) = ⌈x⌉";
           assert(balancedParens(s, '⌈', '⌉'));

            */
            bool balancedParens(Range, E) (
                Range r,
                E lPar,
                E rPar,
                size_t maxNestingLevel = size_t.max
            )
            if (isInputRange!Range && is(typeof(r.front == lPar)));


            auto s = "1 + (2 * (3 + 1 / 2)";
            assert(!balancedParens(s, '(', ')'));
            s = "1 + (2 * (3 + 1) / 2)";
            assert(balancedParens(s, '(', ')'));
            s = "1 + (2 * (3 + 1) / 2)";
            assert(!balancedParens(s, '(', ')', 0));
            s = "1 + (2 * 3 + 1) / (2 - 5)";
            assert(balancedParens(s, '(', ')', 0));
            s = "f(x) = ⌈x⌉";
            assert(balancedParens(s, '⌈', '⌉'));

        }
    }
}