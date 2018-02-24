package Chapter8.DynamicMethodDispatch;

public class B extends A{
    // override callme()
    @Override
    void callme(){
        System.out.println("Inside B's callme method");
    }
}
