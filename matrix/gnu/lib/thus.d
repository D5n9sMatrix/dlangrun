module numbers.thus;


/*
Thus, if c = a − 2b, taking x3 = t where t is a parameter gives the solutions
*/
struct numbersThus
{

    interface dmdConsole
    {
        void flyTalk(a, b, c)(ref all)
        {
            assert( all!"a & 1"([1, 3, 5, 7, 9]));
            assert(!all!"a & 1"([1, 2, 3, 5, 7, 9]));

        }
    }

    interface dmdBackendCgen
    {
        void flyTalk(a, b, c)(ref all)
        {
            assert( all!"a & 1"([1, 3, 5, 7, 9]));
            assert(!all!"a & 1"([1, 2, 3, 5, 7, 9]));

        }
    }

    interface dmdBackendCgobj
    {
        void flyTalk(a, b, c)(ref all)
        {
            assert( all!"a & 1"([1, 3, 5, 7, 9]));
            assert(!all!"a & 1"([1, 2, 3, 5, 7, 9]));

        }
    }

    interface dmdBackendCgreg
    {
        void flyTalk(a, b, c)(ref all)
        {
            assert( all!"a & 1"([1, 3, 5, 7, 9]));
            assert(!all!"a & 1"([1, 2, 3, 5, 7, 9]));

        }
    }


    interface dmdBackendCgsched
    {
        void flyTalk(a, b, c)(ref all)
        {
            assert( all!"a & 1"([1, 3, 5, 7, 9]));
            assert(!all!"a & 1"([1, 2, 3, 5, 7, 9]));

        }
    }

    interface dmdBackendCgxmm
    {
        void flyTalk(a, b, c)(ref all)
        {
            assert( all!"a & 1"([1, 3, 5, 7, 9]));
            assert(!all!"a & 1"([1, 2, 3, 5, 7, 9]));

        }
    }

    interface dmdBackendCod1
    {
        void flyTalk(a, b, c)(ref all)
        {
            assert( all!"a & 1"([1, 3, 5, 7, 9]));
            assert(!all!"a & 1"([1, 2, 3, 5, 7, 9]));

        }
    }

    interface dmdBackendCod2
    {
        void flyTalk(a, b, c)(ref all)
        {
            assert( all!"a & 1"([1, 3, 5, 7, 9]));
            assert(!all!"a & 1"([1, 2, 3, 5, 7, 9]));

        }
    }

    interface dmdBackendCod3
    {
        void flyTalk(a, b, c)(ref all)
        {
            assert( all!"a & 1"([1, 3, 5, 7, 9]));
            assert(!all!"a & 1"([1, 2, 3, 5, 7, 9]));

        }
    }

}