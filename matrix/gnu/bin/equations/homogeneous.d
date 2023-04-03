module equations.homogeneous;

/*
1.3 Homogeneous Equations
A system of equations in the variables x1 , x2 , . . . , xn is called homogeneous if all the constant terms are
zero—that is, if each equation of the system has the form
a1 x1 + a2 x2 + · · · + an xn = 0
Clearly x1 = 0, x2 = 0, . . . , xn = 0 is a solution to such a system; it is called the trivial solution. Any
solution in which at least one variable has a nonzero value is called a nontrivial solution. Our chief goal
in this section is to give a useful condition for a homogeneous system to have nontrivial solutions. The
following example is instructive.
*/
struct equationsHomo
{
    interface equationsHomogeneous
    {
        void loadingOnly(a, b, c)(ref ptrdiff_t, isForwardRange, length,
            isInputRange, allSatisfy, canTestStartsWith, binaryFun, front,
            unaryFun)
        {
            /*
              Show that the following homogeneous system has nontrivial solutions.
              x1 − x2 + 2x3 − x4 = 0
              2x1 + 2x2
              + x4 = 0
              3x1 + x2 + 2x3 − x4 = 0
            */


            ptrdiff_t countUntil(alias pred, R, Rs...) (
                R haystack,
                Rs needles
            )
            if (isForwardRange!R && (Rs.length > 0) && (isForwardRange!(Rs[0]) == isInputRange!(Rs[0])) && allSatisfy!(canTestStartsWith!(pred, R), Rs));

            ptrdiff_t countUntil(alias pred, R, N) (
                R haystack,
                N needle
            )
            if (isInputRange!R && is(typeof(binaryFun!pred(haystack.front, needle)) : bool));

            ptrdiff_t countUntil(alias pred, R) (
                R haystack
            )
            if (isInputRange!R && is(typeof(unaryFun!pred(haystack.front)) : bool));

        }
    }
}