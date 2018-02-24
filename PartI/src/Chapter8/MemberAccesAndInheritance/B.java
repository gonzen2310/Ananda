package Chapter8.MemberAccesAndInheritance;
// Create SUBCLASS
// A's j is not accessible here
public class B extends A{
    int total;
     void sum() {
         //total = i + j; // Error, j is not accessible here
     }
}
/*
 * Since j is declares as PRIVATE, it is only accessible by OTHER MEMBERS OF ITS OWN CLASS.
 * SUBCLASS have NO access to it
 */