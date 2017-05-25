import java.util.Scanner;

class Circle {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int r = in.nextInt();

        for (int x = -r; x <= r; ++x) {
            for (int y = -r; y <= r; ++y) {
                System.out.print(Math.sqrt(x*x + y*y) > r ? '.' : '#');
            }
            System.out.println();
        }
    }
}
