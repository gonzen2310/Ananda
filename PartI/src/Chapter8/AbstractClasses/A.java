package Chapter8.AbstractClasses;
// A Simple demonstration of abstract
abstract class A {
    abstract void callme();

    // concrete methods are still allow in abstract classes
    void callmetoo() {
        System.out.println("This is a concrete method");
    }
}
