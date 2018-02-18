package Chapter7.AccessControl;
/*
 * This program demonstrates the difference between
 * public and private
 */
class Test {
    int a; // default access
    public int b; // public access
    private int c; // private access

    // methods to access c
    void setc(int c) { // set c's value
        this.c  = c;
    }

    int getc() { // get c's value
        return c;
    }
}
