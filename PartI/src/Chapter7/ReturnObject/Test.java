package Chapter7.ReturnObject;
// Returning an object
public class Test {
    int a;
    Test(int i) {
        this.a = i;
    }

    Test incrByTen() {
        Test temp = new Test(a + 10);
        return temp;
    }
}
