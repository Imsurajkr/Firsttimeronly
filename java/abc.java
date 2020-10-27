import java.util.Scanner;
class abc extends Exception
{
 abc()
 {
 System.out.println("ENTERED WRONG MARKS ");
 } }
class q39
{
public static void main(String args[])
{
Scanner scan=new Scanner(System.in);
int num;
System.out.println("Enter your marks:");
num=scan.nextInt();
try
{
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
 else
 {
 throw new abc();
 } }
catch(abc c)
 {
 System.out.println("Exception raised: "+ c);
 } }}