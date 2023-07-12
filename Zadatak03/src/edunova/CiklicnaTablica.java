package edunova;

public class CiklicnaTablica {

	public static void main(String[] args) {
		
		           // Kreiranje red-stupac i vrijednosti
		int red = 5; 
		int stupac = 5;
		
		           // Kreiranje tablice
		int[][]tablica = new int [red][stupac];
		int broj = 1;
		
		int a = red - 1;      //Prvi red
		int b = stupac - 1;   //Prvi stupac
		
//		int count = 0;         Brojač
		
		            // Uvijet
		/*while(count < red * stupac) {
			tablica[a][b] = broj;*/
		
			while(broj < red * stupac) {
				tablica[a][b] = broj;
			        // 1. Lijevo 
			if (b > 0 && tablica[a][b - 1] == 0) {
				b--;
			}
			        // 2. Gore
			else if (a > 0 - 1 && tablica[ a - 1][b] == 0) {
				a--;
			}
			        // 3. Dolje
			else if (a < red - 1 && tablica[a + 1][b] == 0) {
				a++;
				    // 4. Desno
			}
			else if(b < stupac - 1 && tablica[a][b + 1] == 0) {
				b++; 
				}else {
					
				}
				
//				SUPROTAN SMJER
				 if(b > 0 && tablica[a][b - 1] == 0) {
					b--;
			} else if(a > 0 && tablica[b - 1][a] == 0) {
				a--;
			} else if(b < stupac - 1 && tablica[a][b + 1] == 0) {
				
			} else if(a < red - 1 && tablica [a + 1][b] == 0) {
				a++;
			}
			broj++;
//			count++;
			
			       // Ispis tablice - for
			for (a = 0; a < red; a++) {
				for(b = 0; b < stupac; b++) {
					}
				System.out.print(tablica[a][b] + "\t");
			}
			System.out.println();
			
			
			
		}
		

	}

}
