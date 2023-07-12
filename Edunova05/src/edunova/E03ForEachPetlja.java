package edunova;

public class E03ForEachPetlja {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
 int[]niz= {7,7,7,7,7,7,7,};
 
 for(int i=0; i<niz.length;i++)
 {
	 System.out.println(niz[i]);
 }
// for each ide uvijek od početka do kraja
 for(int en : niz) {
	 System.out.println(en);
 }
 
// prekidanje nastavak, ugnježđivanje je isto kao kod for,while i do while
 
 
	}

}
