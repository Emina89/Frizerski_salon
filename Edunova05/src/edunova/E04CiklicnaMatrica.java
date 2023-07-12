package edunova;

import javax.swing.JOptionPane;

public class E04CiklicnaMatrica {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		boolean dev=true;
		
		int redova = dev ? 5:Integer.parseInt(JOptionPane.showInputDialog("unesi broj redova"));
		int stupci = dev ? 5:Integer.parseInt(JOptionPane.showInputDialog("unesi broj stupaca"));
		int [][] matrica = new int [redova][stupci];

		for(int i=0;i<redova;i++) {
		for(int j=0; j<stupci;j++) {
		System.out.print(matrica[i][j] + "\t");

		}System.out.println();

		}System.out.println("********************+");
		
		matrica[redova-1][stupci -1] = 1;

		for(int i=0;i<redova;i++) {
		for(int j=0; j<stupci;j++) {
		System.out.print(matrica[i][j] + "\t");

		}System.out.println();

		}System.out.println("********************");
		
//		matrica[redova-1][stupci -2] = 2;
//		matrica[redova-1][stupci -3] = 3;
//		matrica[redova-1][stupci -4] = 4;
//		matrica[redova-1][stupci -5] = 5;
//		matrica[redova-1][stupci -6] = 6;
		int b=1;
		for(int i=1;i<stupci;i++) {
			
		}
		for(int i= 1;i<=stupci;i++) {
			matrica[redova-1][stupci -i] =b++;
			
			
			}
		
		
		for(int i=0;i<redova;i++) {
			for(int j=0; j<stupci;j++) {
			System.out.print(matrica[i][j] + "\t");

			}System.out.println();

			}System.out.println("********************");
			
			matrica[redova-2][0] = b++;
			matrica[redova-3][0] = b++;
			matrica[redova-4][0] = b++;
			matrica[redova-5][0] = b++;
			for(int i=0;i<redova;i++) {
				for(int j=0; j<stupci;j++) {
				System.out.print(matrica[i][j] + "\t");

				}System.out.println();

				}System.out.println("********************");
				
			for (int i=1; i< stupci;i++	) {
				matrica [0] [1]= b++;
				
			}
//			matrica [0] [1]= b++;
//			matrica[0][2]=b++;
//			matrica[0][3]=b++;
//			matrica[0][4]=b++;
		
			for(int i=0;i<redova;i++) {
				for(int j=0; j<stupci;j++) {
				System.out.print(matrica[i][j] + "\t");

				}System.out.println();

				}System.out.println("********************");
		
				 matrica [1] [4]= b++;
				matrica [2] [4]= b++;
				matrica [3] [4]= b++;
				matrica [4] [4]= b++;
				
				
				for(int i=0;i<redova;i++) {
					for(int j=0; j<stupci;j++) {
					System.out.print(matrica[i][j] + "\t");

					}System.out.println();

					}System.out.println("********************");
					
	
				
		}
 
	}


