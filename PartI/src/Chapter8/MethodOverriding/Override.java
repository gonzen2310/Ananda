package Chapter8.MethodOverriding;

public class Override {
    public static void main(String[] args) {
        B subOb = new B(1,2,3);
        subOb.show();
    }
}

/*
 * When show() is invoked on an object of type B, the version of show() defined
   within B is used.
 * If you wish to access the super version of an overridden method, you can do so
   by using SUPER
 */