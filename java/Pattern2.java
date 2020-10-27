class Pattern2
{
    public static void main(String[] args) {
        int i,j,x,y;
        int k=1;
        int l=5;
        for(i=0;i<4;i++)
        {
            for(j=0;j<k;j++)
            {
                System.out.print(" * ");
            }
            k=k+2;
            System.out.println("\n");
        }
        for(x=0;x<4;x++)
        {
            for(y=l;y>0;y--)
            {
                System.out.print(" * ");
            }
            l=l-2;
            System.out.println("\n");
        }
    }
}