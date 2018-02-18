package Chapter7.Recursive1;
// A simple example of recursion
public class Factorial {
    // This is a recursive method
    int fact(int n) {
        int result;
        if (n == 1) return 1;
        result = fact(n - 1) * n;
        return result;
    }
}

/*
 * fact(5)
    - n = 5, 5 > 1
    - result = fact(4) * 5
    - return ? ::120::

    * fact(4)
    - n = 4, 4 > 1
    - result = fact(3) * 4
    - return ? -> ::24::

    * fact(3)
    - n = 3, 3 > 1
    - result = fact(2) * 3
    - return ? -> ::6::

    * fact(2)
    - n = 2, 2 > 1
    - result = fact(1) * 2
    - return ? -> ::2::

    * fact(1)
    - n = 1, 1 == 1
    - :::return 1:::

 */