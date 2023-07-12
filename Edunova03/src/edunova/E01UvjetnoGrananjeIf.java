package edunova;

import javax.swing.JOptionPane;

public class E01UvjetnoGrananjeIf {
	public static void main(String[] args) {
		

	
		
		int ocjena=3;
		
		if(ocjena==1) {
			System.out.println("Nedovoljan");
		}else if(ocjena==2) {
			System.out.println("Dovoljan");
		}else {
			System.out.println("Super");
		int broj =Integer.parseInt(JOptionPane.showInputDialog("Unesi Broj"));
		if(broj%2==0) {
			System.out.println("Broj je paran");
		}else {
			System.out.println("Broj je neparan");
		}
		System.out.println("Broj je " + (broj%2!=0 ? "ne" : "") + "paran");
		
		}
	}
}
		
		
	

		
			
	


