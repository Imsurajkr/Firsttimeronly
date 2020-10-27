import java.util.Scanner;
public class factorial {
   static int fact(int n){
      if (n == 0)    
    return 1;    
  else    
    return(n * fact(n-1));    
         
    };
    public static void main(String[] args){
        int f=1;
        Scanner scan = new Scanner(System.in);
        System.out.println("enter a number");
        int num = scan.nextInt();
        f=fact(num);
        System.out.println(f);
    }
}
