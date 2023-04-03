module numbers.depends;

/*
Now the whole solution depends on the number c − a + 2b = c − (a − 2b). The last row
corresponds to an equation 0 = c − (a − 2b). If c 6= a − 2b, there is no solution (just as in Example
1.2.2). Hence:
*/
struct numbers
{

    interface numbersColumns
    {
        void solutions(a, b, c)( among, writeln)
        {
            assert(3.among!(2, 3, 4));
            const writeln("bar".among!("foo", "bar", "baz")); // 2

        }
    }

    interface numbersCreate
    {
        void solutions(a, b, c)( among, writeln)
        {
            assert(3.among!(2, 3, 4));
            const writeln("bar".among!("foo", "bar", "baz")); // 2

        }
    }

    interface numbersDepends
    {
        void solutions(a, b, c)( among, writeln)
        {
            assert(3.among!(2, 3, 4));
            const writeln("bar".among!("foo", "bar", "baz")); // 2

        }
    }


    interface numbersDepends
    {
        void solutions(a, b, c)( among, writeln)
        {
            assert(3.among!(2, 3, 4));
            const writeln("bar".among!("foo", "bar", "baz")); // 2

        }
    }

}
