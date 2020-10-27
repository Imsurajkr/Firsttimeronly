import java.util.Scanner;
public class inheritance{
  public static void main(String[] args){
    employee obj1 = new employee();
    obj1.Accept();
    obj1.Display();
    
  }
}

class student extends inheritance{
    Scanner scan = new Scanner(System.in);
    int Rollno;
    String Course;
    public void Accept(){
          System.out.println("Enter Roll Number");
             Rollno = scan.nextInt();
          System.out.println("Enter Course");
           Course = scan.next();
      }
      public void Display(){
        System.out.println("Roll number is "+ Rollno);
         
        System.out.println("Course is "+ Course);
 
    }
}
class employee extends inheritance{
    Scanner scan = new Scanner(System.in);
    int empid;
    String department;
    public void Accept(){
          System.out.println("Enter employee Number");
            empid = scan.nextInt();
          System.out.println("Enter department");
         department = scan.next();
      }
      public void Display(){
        System.out.println("Roll number is "+ empid);
         
        System.out.println("Course is "+ department);
 
    }
}


