package edunova;

public class E08Konverzije {
	public static void main(String[] args) {
		int i = 24;
		double d = i;
		
		i=Integer.parseInt(String.valueOf(i));
		
		i=(int)d;
		System.out.println(d); 
	}

}
