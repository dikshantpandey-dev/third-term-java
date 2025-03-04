import java.util.Scanner;

public class Q2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int myPin = 1234;
        int triesLeft = 3;
        boolean isCorrect = false;

        while (triesLeft > 0) {
            System.out.print("Enter PIN: ");
            int userPin = input.nextInt();

            if (userPin == myPin) {
                isCorrect = true;
                break;
            } else {
                triesLeft--;
                System.out.println("Wrong PIN. Tries left: " + triesLeft);
            }
        }

        if (isCorrect) {
            System.out.println("PIN correct! You can withdraw money.");
        } else {
            System.out.println("Account locked. Too many wrong tries.");
        }

        input.close();
    }
}
