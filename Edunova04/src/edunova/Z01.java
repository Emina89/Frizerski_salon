package edunova;

import javax.swing.JOptionPane;

public class Z01 {
	public static void main(String[] args) {
		//korisnik unosi dva cijela broja
		//program ispisuje
		//zbroj svih neparnih brojeva
		//između dva unesena broja

		int broj = Integer.parseInt(JOptionPane.showInputDialog("Unesi broj"));
		int drugibroj = Integer.parseInt(JOptionPane.showInputDialog("Unesi drugi broj"));


		int manji = broj < drugibroj ? broj : drugibroj;
		int veci = broj > drugibroj ? broj : drugibroj;



		int zbroj=0;
		for(int i=manji;i<=veci;i++) {
		//zbroj = i%2!=0 ? zbroj+i : zbroj;
		if(i%2!=0) {
		zbroj+=i;
		}
		}
		System.out.println(zbroj);

		}
		
	}


