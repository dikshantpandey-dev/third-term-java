import java.util.ArrayList;
import java.util.Scanner;

public class Q4 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        ArrayList<Integer> salaries = new ArrayList<>();
        int total = 0;

        System.out.println("Enter salaries for 5 employees:");
        for (int i = 0; i < 5; i++) {
            System.out.print("Salary " + (i + 1) + ": ");
            int salary = input.nextInt();
            salaries.add(salary);
            total += salary;
        }

        double avgSalary = (double) total / salaries.size();
        String category;

        if (avgSalary < 30000) {
            category = "Low Salary";
        } else if (avgSalary <= 70000) {
            category = "Medium Salary";
        } else {
            category = "High Salary";
        }

        System.out.println("Average Salary: " + avgSalary);
        System.out.println("Salary Category: " + category);

        input.close();
    }
}
