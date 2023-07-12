package edunova;

import javax.swing.JOptionPane;

public class Z03 {
	public static void main(String[] args) {
		
		String mjesto = JOptionPane.showInputDialog("Unesi mjesto");
		switch (mjesto) {
		case "Vinkovci":
		case "Županja":
		case "Otok":
		case "Gunja":
		
			System.out.println("Vukovarsko Srijemska");
		}
	}
}


