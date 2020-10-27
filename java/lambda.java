interface studentName 
{ 
    String name(String name);
} 
  
class lambda 
{ 
    public static void main(String args[]) 
    { 
        String Name = "Tanya";
  
           studentName s = (String N)->N;         
        System.out.println(s.name(Name)); 
    } 
} 
