package Chapter7.MethodOverloading2;

public class Overload {
    public static void main(String[] args) {
        OverloadDemo ob = new OverloadDemo();
        int i = 88;

        ob.test();
        ob.test(10, 20);

        ob.test(i); // this will invoke test (double)
        /*
         * If test(int) had been defined, it would have been called instead
         */
        ob.test(123.2); // this will invoke test (double)
    }
}
