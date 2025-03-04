import java.util.Scanner;

public class Q3 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int num = input.nextInt();
        int fact = 1;

        for (int i = num; i > 0; i--) {
            fact *= i;
        }

        System.out.println("Factorial of " + num + " is: " + fact);
        input.close();
    }
}
