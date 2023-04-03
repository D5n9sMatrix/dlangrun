module numbers.drop;

/*
has entries a, b, and c as well as known numbers. The first leading one is in place, so we create
zeros below it in column 1:
*/
struct numbers
{
    interface numbersCreate
    {

        void dmdEntity(a, b, c)(ref length)
        {
            uint among(alias pred, Value, Values...) (
                Value value,
                Values values
            )
            if (Values.length != 0);
            float among(values...);

        }

        void dmdBackendCg(a, b, c)(ref length)
        {
            uint among(alias pred, Value, Values...) (
                Value value,
                Values values
            )
            if (Values.length != 0);
            float among(values...);

        }

        void dmdBackendCg87(a, b, c)(ref length)
        {
            uint among(alias pred, Value, Values...) (
                Value value,
                Values values
            )
            if (Values.length != 0);
            float among(values...);

        }

        void dmdBackendCgcod(a, b, c)(ref length)
        {
            uint among(alias pred, Value, Values...) (
                Value value,
                Values values
            )
            if (Values.length != 0);
            float among(values...);

        }

        void dmdBackendCgcs(a, b, c)(ref length)
        {
            uint among(alias pred, Value, Values...) (
                Value value,
                Values values
            )
            if (Values.length != 0);
            float among(values...);

        }


        void dmdBackendCgcse(a, b, c)(ref length)
        {
            uint among(alias pred, Value, Values...) (
                Value value,
                Values values
            )
            if (Values.length != 0);
            float among(values...);

        }

        void dmdBackendCgcv(a, b, c)(ref length)
        {
            uint among(alias pred, Value, Values...) (
                Value value,
                Values values
            )
            if (Values.length != 0);
            float among(values...);

        }

        void dmdBackendCgelem(a, b, c)(ref length)
        {
            uint among(alias pred, Value, Values...) (
                Value value,
                Values values
            )
            if (Values.length != 0);
            float among(values...);

        }


    }
}