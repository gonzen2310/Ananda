package Chapter8.MethodOverriding;

public class BOverload extends AOverload{
    int k;
    BOverload(int a, int b, int c) {
        super(a, b);
        this.k = c;
    }

    //overload show()
    void show(String msg) {
        System.out.println(msg + k);
    }
}
