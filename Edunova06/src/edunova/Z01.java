package edunova;

import java.util.Scanner;

public class Z01 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        odabir:
        while (true) {
            System.out.println("- Unos broja (1)\n" +
                    "- Unos dva broja (2)\n" +
                    "- Tablica mnozenja (3)\n" +
                    "- Izlaz (0)");
            System.out.print("Unesite odgovarajuću brojku kako bi pristupili određenom zadatku: ");
            String odabirPrograma = scanner.nextLine();
            switch (odabirPrograma) {
                case "1":
                    unosBroja(scanner);
                    break;
                case "2":
                    unosBroja(scanner);
                    break;
                case "3":
                    ispisTabliceMnozenja(scanner);
                    break;
                case "0":
                    break odabir;
                default:
                    System.out.println("Neispravan unos!");
            }
        }
    }

	private static void ispisTabliceMnozenja(Scanner scanner) {
		// TODO Auto-generated method stub
		
	}

	private static void unosBroja(Scanner scanner) {
		// TODO Auto-generated method stub
		
	}
}