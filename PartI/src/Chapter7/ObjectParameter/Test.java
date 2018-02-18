package Chapter7.ObjectParameter;
// Objects may be passed to methods
public class Test {
    int a, b;

    Test(int i, int j) {
        a = i;
        b = j;
    }

    // return true if "o" is equal to the invoking OBJECT
    boolean equalTo(Test o) {
        return o.a == this.a && o.b == this.b;
    }
}
