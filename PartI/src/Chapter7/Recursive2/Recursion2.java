package Chapter7.Recursive2;

public class Recursion2 {
    public static void main(String[] args) {
        RecTest ob = new RecTest(10);
        int i;
        for (i = 0; i < 10; i++) ob.values[i] = i;

        ob.printArray(10);
    }
}

/*
    ob.printArray(10)
        * printArray(9)
            * printArray(8)
                * printArray(7)
                    * printArray(6)
                        * printArray(5)
                            * printArray(4)
                                * printArray(3)
                                    * printArray(2)
                                        * printArray(1)
                                            * printArray(0)
                                                 return;
                                            * "[0] 0"
                                        * "[1] 1"
                                    * "[2] 2"
                                * "[3] 3"
                            * "[4] 4"
                        * "[5] 5"
                    * "[6] 6"
                * "[7] 7"
            * "[8] 8"
        * "[9] 9"
 */