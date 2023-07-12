package edunova;

import javax.swing.JOptionPane;

public class Z03 {
public static void main(String[] args) {
	
	int velicinaNiza = Integer.parseInt(JOptionPane.showInputDialog("Unesi Velicinu niza"));
	
	int[] nizBrojeva = new int[velicinaNiza];
	
	int brojac=0;
	
	while (true) {
		nizBrojeva [brojac] =Integer.parseInt(JOptionPane.showInputDialog("Unesite brojeve"));
				brojac +=1;
				if(brojac ==velicinaNiza) {
					break;
				}
	}
	
	for(int en :nizBrojeva) {
		System.out.println(en);
	}
}

}
