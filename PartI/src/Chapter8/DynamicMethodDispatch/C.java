package Chapter8.DynamicMethodDispatch;

public class C extends A{
    // Override callme()

    @Override
    void callme() {
        System.out.println("Inside C's callme method");
    }
}
