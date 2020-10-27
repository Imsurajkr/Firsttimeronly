import java.util.Scanner;
public class table {
    public static void main(String[] args){
    Scanner scan = new Scanner(System.in);
        System.out.println("enter a number");
         int num = scan.nextInt();
         for(int i = 1; i <= num; i++){
             for(int j = 1; j <= 10; j++){
                 System.out.println(i+" * " +j+" = "+i*j);
             }
         }
    }
}
