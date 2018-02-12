package Chapter3;

public class TwoDArray {
    public static void main(String[] args) {
        int twoD[][] = new int[4][5];
        int i, j, k = 0;
        for (i = 0; i < 4; i++) {
            for (j = 0; j < 5; j++) {
                twoD[i][j] = k;
                k++;
            }
        }

        // PRINT OUT ARRAY
        for (i = 0; i < 4; i++) {
            for (j = 0; j < 5; j++) {
                if (twoD[i][j] < 10) {
                    System.out.print(" " + twoD[i][j] + " ");
                }
                else {
                    System.out.print(twoD[i][j] + " ");
                }
            }
            System.out.println();
        }
    }
}
// MULTIDIMENSIONAL ARRAY
/*
 * Are actually arrays of arrays
 * GENERAL FORM:
 * type var-name[][] = new type[size-rows][size-columns];
 * When you allocate memory for a multidimensional array, you need only
 * specify the memory for the first(leftmost) dimension. You can allocate the
 * remaining dimensions separately
 */
