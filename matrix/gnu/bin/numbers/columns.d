module numbers.columns;

/*
verify the elements of columns
*/
struct numbersColumns
{
    interface proccedColumns
    {
        void uploadElement(a, b, c)(ref among, writeln)
        {
            assert(3.among(1, 42, 24, 3, 2));

            if (auto pos = "bar".among("foo", "bar", "baz"))
                const writeln(pos); // 2
            else
                assert(false);

            // 42 is larger than 24
            const writeln(42.among!((lhs, rhs) => lhs > rhs)(43, 24, 100)); // 2

        }
    }
}
