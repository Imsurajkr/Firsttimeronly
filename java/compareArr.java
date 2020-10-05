import java.util.HashMap;
import java.util.Map;

public class CompareArr {

	public  int compare(int arr1[], int arr2[]){
		int len1 = arr1.length;
		int len2 = arr2.length;
		int count = 0;
		
		// return 0 if the length of both the array is not same
		if(len1 != len2) {
			return 0;
		}
		
		// using hashMap collection for key value pair, so that we can get  the no of count of each elements in an array
		//O(n)
		Map<Integer, Integer> map1 = new HashMap<Integer, Integer>();
		for (int i = 0; i < len1; i++) { 
            if (map1.get(arr1[i]) == null) 
                map1.put(arr1[i], 1); 
            else { 
                count = map1.get(arr1[i]); 
                
                map1.put(arr1[i], ++count); 
            } 
        }
		
		count=0;
		Map<Integer, Integer> map2 = new HashMap<Integer, Integer>();
		// O(N)
		for (int i = 0; i < len2; i++) { 
            if (map2.get(arr2[i]) == null) 
                map2.put(arr2[i], 1); 
            else { 
                count = map2.get(arr2[i]); 
                
                map2.put(arr2[i], ++count); 
            } 
        }
		
		
		//printing both the map
		System.out.println(map1 +":"+ map1.keySet() +":" + map1.size());
		System.out.println(map2 + ":" + map2.keySet()+":" + map2.size());
		
		//check id both the map is equal or not
		if(map1.equals(map2)) {
			return 1;
		}
				
		
		return 0;
		
	}
	
	public static void main(String args[]) {
		
		int arr1[] = {1,2,3,4,4,4,4,5,5};
		int arr2[] = {5,4,3,1,2,5,4,4,4};
		
        
		CompareArr d = new CompareArr();
		
		System.out.println(d.compare(arr1, arr2));
		
	}
	
	
}

//Time Complexity: O(N).
//Expected Auxiliary Space: O(N). 