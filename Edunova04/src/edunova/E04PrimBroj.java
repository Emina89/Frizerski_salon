package edunova;

public class E04PrimBroj {
	public static void main(String[] args) {
		
//	prim/prosi/prime number	
//		prim broj je cjelobrojno djeljiv s jedan i sam sa sobom
		
		int broj=777798982;
		
		boolean prim=true;
		
		for (int i=2;i<broj;i++) {
			if(broj%i==0) {
				prim=false;
				break;
			}
			System.out.println(broj + (prim ? "je" : "nije9")+ "prim broj");
		}
	
	}

}
