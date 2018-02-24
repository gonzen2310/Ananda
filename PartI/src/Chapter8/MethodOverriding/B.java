package Chapter8.MethodOverriding;

import java.lang.Override;

public class B extends A{
    int k;

    B(int a, int b, int c) {
        super(a, b);
        this.k = c;
    }

    // display k - this overrides show() in A

    @Override
    void show() {
        super.show(); // this call A's show()
        System.out.println("k: " + k);
    }
}
