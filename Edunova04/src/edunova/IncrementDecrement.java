package edunova;

public class IncrementDecrement {
	public static void main(String[] args) {
		
		int i=0;
		i = i+1;
		i+=1;
		i++;
	
		i=1;
	System.out.println(i++);
	System.out.println(i);
	System.out.println(++i);
	
	int t=1 , k=0;
	
	t=++k - t;
	k= --t - t++;
	System.out.println(k+t);
	}

}
