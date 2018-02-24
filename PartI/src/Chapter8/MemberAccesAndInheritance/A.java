package Chapter8.MemberAccesAndInheritance;
/*
 * In a class hierarchy, PRIVATE members REMAIN PRIVATE to their class
 * This program contains an error
 */

// create SUPERCLASS
public class A {
    int i; // public by default
    private int j; // private to A

    void setij(int i, int j) {
        this.i = i;
        this.j = j;
    }
}

