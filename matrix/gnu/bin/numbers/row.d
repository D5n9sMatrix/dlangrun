module numbers.row;

/*
the row-echelon matrix
, and then by another row operation to the (reduced) row-echelon
matrix
. However, it is true that the number r of leading 1s must be the same in each of
0 1 −6
these row-echelon matrices (this will be proved in Chapter 5). Hence, the number r depends only on A
and not on the way in which A is carried to row-echelon form.
*/
struct numbers
{
    interface numbersRow
    {
        void sleepMatrix(a, b, c)(ref any, pred, all, isWhite )
        {
            /*
            Checks if any of the elements satisfies pred. !any can be used to verify
            that none of the elements satisfy pred. This is sometimes called exists
            in other languages.

            Contained Functions
            Name	Description
            any 	Returns true if and only if the input range range is non-empty and any value
                    found in range satisfies the predicate pred. Performs (at most) Ο(range.length)
                    evaluations of pred.
            Example


            */

            float(any(pred["a a", "b b"]));

            assert( all!(any!isWhite)(["a a", "b b"]));
            assert(!any!(all!isWhite)(["a a", "b b"]));

        }
    }
}