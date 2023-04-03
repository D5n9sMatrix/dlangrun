module numbers.matrix;

/*
Systems of Linear Equations
Definition 1.4 Rank of a Matrix
The rank of matrix A is the number of leading 1s in any row-echelon matrix to which A can be
carried by row operations.
*/

struct numbersMatrix
{
    interface sleepMatrix
    {
        void linear(a, b, c)(ref all, any)
        {
            /*
            any can also be used without a predicate, if its items can be evaluated
            to true or false in a conditional statement. !any can be a convenient way
            to quickly test that none of the elements of a range evaluate to true.

            */

            int[3] vals1 = [0, 0, 0];
            assert(!any(vals1[])); //none of vals1 evaluate to true

            int[3] vals2 = [2, 0, 2];
            assert( any(vals2[]));
            assert(!all(vals2[]));

            int[3] vals3 = [3, 3, 3];
            assert( any(vals3[]));
            assert( all(vals3[]));

        }
    }
}
