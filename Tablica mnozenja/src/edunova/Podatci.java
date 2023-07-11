package edunova;

import java.util.Scanner;

public class Podatci {
public static void main(String[] args) {

			int velicina = 9;

			Scanner unos = new Scanner(System.in);
	        System.out.print("Unesite ime: ");
	        String ime = unos.nextLine();
	        unos.close();
	     
					
			System.out.println("//      ----------------------------------------");
			System.out.println("//	:  :  :  :  TABLICA  MNOZENJA  :  :  : :");
			System.out.println("//	----------------------------------------");
			System.out.print("//	 * |");
			for (int a = 1; a <= velicina; a++) {
				System.out.printf("%4d", a);
			}
			System.out.println();
			System.out.println("//	----------------------------------------");

			for (int a = 1; a <= velicina; a++) {
				System.out.printf("//	 %d |", a);
				for (int b = 1; b <= velicina; b++) {
					System.out.printf("%4d", a * b);
				}
				System.out.println();
			}

			System.out.println("//	----------------------------------------");
			System.out.printf("//      :   :   :   :   :   :  :by %13s",ime);
			System.out.println();
		
			System.out.println("//	----------------------------------------");
	
	
	
	
}
}

