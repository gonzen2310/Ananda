package Chapter8.InheritanceSimpleExample;

public class SimpleInheritance {
    public static void main(String[] args) {
        A superOb = new A();
        B subOb = new B();

        // The superclass may be used by itself
        superOb.i = 10;
        superOb.j = 20;
        System.out.println("Contents of superOb: ");
        superOb.showij();
        System.out.println();

        /* The subclass has access to all PUBLIC member of its superclass */
        subOb.i = 7;
        subOb.j = 8;
        subOb.k = 9;
        System.out.println("Contents of subOb: ");
        subOb.showij();
        subOb.showk();
        System.out.println();

        System.out.println("Sum of i, j and k in subOb: ");
        subOb.sum();
    }
}

/*
 * Subclass B includes all of the members of it Superclass A
    * This is why subOb can access i and j and call showij()
    * Also, inside sum(), i and j can be referred to directly, as if THEY WERE PART OF B
 * A is SUPERCLASS of B, but it is completely INDEPENDENT, STAND-ALONE CLASS
 * A SUBCLASS can be a SUPERCLASS for another SUBCLASS
 * General form
      class SUBCLASS-NAME extends SUPERCLASS-NAME {
        ...
        ...
      }
  !! IMPORTANT
  * You can only specify ONE SUPERCLASS for any SUBCLASS that you create
  * Java DOES NOT SUPPORT the inheritance of MULTIPLE SUPERCLASSES into a single SUBCLASS
  * No CLASS can be a superclass of itself
  * You can create a hierarchy of inheritance
 */