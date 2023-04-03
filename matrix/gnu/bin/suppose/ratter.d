module suppose.ratter;

/*
Many important problems involve linear inequalities rather than linear equations. For example, a
condition on the variables x and y might take the form of an inequality 2x − 5y ≤ 4 rather than an equality
2x − 5y = 4. There is a technique (called the simplex algorithm) for finding solutions to a system of such
inequalities that maximizes a function of the form p = ax + by w
*/
struct supposeRatter
{
    interface equations
    {
        void numbersRanks(a, b, c)(ref isForwardRange, isInputRange, isNarrowString,
            binaryFun, front, )
        {
             /*
             Returns the common prefix of two ranges.
             auto commonPrefix(alias pred, R1, R2) (
                  R1 r1,
                  R2 r2
             )
            if (isForwardRange!R1 && isInputRange!R2 && !isNarrowString!R1 && is(typeof(binaryFun!pred(r1.front, r2.front))));

            auto commonPrefix(alias pred, R1, R2) (
                 R1 r1,
                 R2 r2
             )
            if (isNarrowString!R1 && isInputRange!R2 && is(typeof(binaryFun!pred(r1.front, r2.front))));

            auto commonPrefix(R1, R2) (
                 R1 r1,
                 R2 r2
            )
            if (isNarrowString!R1 && isInputRange!R2 && !isNarrowString!R2 && is(typeof(r1.front == r2.front)));

            auto commonPrefix(R1, R2) (
                 R1 r1,
                 R2 r2
            )
           if (isNarrowString!R1 && isNarrowString!R2);
           Parameters
           Name	Description
           pred	The predicate to use in comparing elements for commonality. Defaults to equality "a == b".
           r1	A forward range of elements.
           r2	An input range of elements.
           Returns

           A slice of r1 which contains the characters that both ranges start with, if the first argument
           is a string; otherwise, the same as the result of takeExactly(r1, n), where n is the number
           of elements in the common prefix of both ranges.
           See Also

           std.range.takeExactly
           Example

           writeln(commonPrefix("hello, world", "hello, there")); // "hello, "

           */
            void commonPrefix(alias pred, R1, R2) (
                R1 r1,
                R2 r2
            )
            if (isForwardRange!R1 && isInputRange!R2 && !isNarrowString!R1 && is(typeof(binaryFun!pred(r1.front, r2.front))));

            void commonPrefix(alias pred, R1, R2) (
                R1 r1,
                R2 r2
            )
            if (isNarrowString!R1 && isInputRange!R2 && is(typeof(binaryFun!pred(r1.front, r2.front))));

            void commonPrefix(R1, R2) (
                R1 r1,
                R2 r2
            )
            if (isNarrowString!R1 && isInputRange!R2 && !isNarrowString!R2 && is(typeof(r1.front == r2.front)));

            void commonPrefix(R1, R2) (
                R1 r1,
                R2 r2
            )
            if (isNarrowString!R1 && isNarrowString!R2);

        }
    }
}