import java.util.Scanner;
import java.util.HashMap;

class WordCount {
    public static void main(String[] args) {
        Scanner stdin = new Scanner(System.in);
        HashMap<String, Integer> map = new HashMap<>();
        while (stdin.hasNextLine()) {
            map.merge(stdin.nextLine(), 1, (x, y) -> x + y);
        }
        map.forEach((word, count) -> System.out.printf("%s %d\n", word, count));
    }
}
