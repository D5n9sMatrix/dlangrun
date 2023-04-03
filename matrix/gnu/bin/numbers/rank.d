module numbers.rank;

/*
Rank
It can be proven that the reduced row-echelon form of a matrix A is uniquely determined by A. That is,
no matter which series of row operations is used to carry A to a reduced row-echelon matrix, the result
will always be the same matrix. (A proof is given at the end of Section 2.5.) By contrast, this is not
true for row-echelon matrices: Different series row operations
can carry the same matrix A to different
*/
struct numbersRank
{
    interface numbers
    {
        void uploadFlytalk(a, b, c)(ref all)
        {
            /*
            all can also be used without a predicate, if its items can be evaluated
            to true or false in a conditional statement. This can be a convenient
            way to quickly evaluate that all of the elements of a range are true.
            */

            int[3] vals = [5, 3, 18];
            assert( all(vals[]));

        }

        void flyTalk(a, b, c)(ref all)
        {
            /*
            all can also be used without a predicate, if its items can be evaluated
            to true or false in a conditional statement. This can be a convenient
            way to quickly evaluate that all of the elements of a range are true.
            */

            int[3] vals = [5, 3, 18];
            assert( all(vals[]));

        }

    }
}