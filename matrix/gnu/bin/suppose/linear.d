module suppose.linear;

/*
Example 1.2.6
Suppose the matrix A in Example 1.2.5 is the augmented matrix of a system of m = 3 linear
equations in n = 3 variables. As rank A = r = 2, the set of solutions will have n − r = 1 parameter.
The reader can verify this fact directly
*/
struct linear
{
    interface supposeLinear
    {
        void equationsLinear(a, b, c)(ref canFind, string, startsWith)
        {
            /*
            Example using a custom predicate. Note that the needle appears as the second argument of the predicate.

            auto words = [
                 "apple",
                 "beeswax",
                 "cardboard"
            ];
            assert(!canFind(words, "bees"));
            assert( canFind!((string a, string b) => a.startsWith(b))(words, "bees"));

            */

            auto words = [
                "apple",
                "beeswax",
                "cardboard"
            ];
            assert(!canFind(words, "bees"));
            assert( canFind!((string a, string b) => a.startsWith(b))(words, "bees"));

            // Search for mutliple items in an array of items (search for needles in an array of hay stacks)

            string s1 = "aaa111aaa";
            string s2 = "aaa222aaa";
            string s3 = "aaa333aaa";
            string s4 = "aaa444aaa";
            const hay = [s1, s2, s3, s4];
            assert(hay.canFind!(e => (e.canFind("111", "222"))));

        }
    }
}
