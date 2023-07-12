package edunova;

import javax.swing.JOptionPane;

public class Z01 {
public static void main(String[] args) {
//	Program osigurava učitanje broja od korisnika
//	Broj je u rasponu 20 do 50 i nije 30
//	Koristiti while petlju
	
	
	
	int x1;
	while(true) {
		x1= Integer.parseInt(JOptionPane.showInputDialog("Unesi Broj"));
		if (x1>20 && x1<50 && x1!=30) {
			break;
			
		}
		JOptionPane.showMessageDialog(null, "Nije dobro");
		System.out.println(x1);
	}
		

}
}
