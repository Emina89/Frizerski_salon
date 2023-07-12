package edunova;

import javax.swing.JOptionPane;

public class E05PrviProgram {
	public static void main(String[] args) {
		int broj = Integer.parseInt(
				JOptionPane.showInputDialog("Unesite Broj") 
	);
		broj = broj + 7;
		System.out.println(broj);
	
	}

}
