import java.util.Scanner;
class Pattern1
{
    public static void main(String[] args)
    {
    	int i,j,k;
    	Scanner sc=new Scanner(System.in);
    	System.out.print("Enter Number of rows:-  ");
    	int n=sc.nextInt();
     	char [][] a=new char[n][];
	    for(i=0;i<n;i++)
	    {
	    	a[i]=new char[i+1];
	    	for(j=0;j<=i;j++)
	    		a[i][j]='*';
	    }
	    for(i=0;i<n;i++)
	    {
	    	for( j=0;j<a[i].length;j++)
	    		System.out.print(a[i][j]);
	    	System.out.println();
	    }
	}
}
class Program27
{
    public static void main(String[] args) 
    {
        int i, j, k = 1;
        Scanner sc=new Scanner(System.in);
        System.out.print("Enter number of rows:-  ");
        int n=sc.nextInt();
        int arr[][]=new int[20][];
        for (i = 1; i <= n; i += 2) 
        {
        	arr[i]=new int[i+1];
            for (j = 1; j <= i; j++) 
                System.out.print("*");
            System.out.println();
        }
        for (i = 1; i <= n-2; i += 2) 
        {
        	arr[i+1]=new int[i];
            for (j = n-2; j >= i; j--) 
                System.out.print("*");
            System.out.print("\n");
        }
    }
}
