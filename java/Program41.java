import java.util.Scanner;
class abcd extends RuntimeException
{
 abcd()
 {
 System.out.println("ENTERED WRONG MARKS ");
 } 
}
class Program41
{
public static void main(String[] args)
throws abcd
{
Scanner scan=new Scanner(System.in);
int num;
System.out.println("Enter your marks:");
num=scan.nextInt();
 if(num>=0&&num<=100)
 {
 if(num<=100 && num>=80)
 {System.out.println("Grade A");}
 else if(num<=79 && num>=60)
 {System.out.println("Grade B");}
 else if(num<=59 && num>=40)
 {System.out.println("Grade C");}
 else
 {System.out.println("Grade F");}
 }
 else{
 throw new abcd();
 }
 }
}