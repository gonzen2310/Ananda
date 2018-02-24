package Chapter8.MethodOverriding;

public class OverrideOverload {
    public static void main(String[] args) {
        BOverload subOb = new BOverload(1,2,3);
        subOb.show("This is k: "); // this calls show() in BOverload
        subOb.show(); // this calls show() iin AOverload
    }
}
