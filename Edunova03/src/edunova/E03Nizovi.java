package edunova;

import java.util.Arrays;

public class E03Nizovi {
	public static void main(String[] args) {

		int t1 = 2;
		int t2 = 3;
//		...
		int t12=7;
		
		int []niz;
		String DrugiNiz[];
		
		niz=new int[4];
		
		
		niz[0]=2;
		niz[1]=4; niz[2]=7;
		
		niz[niz.length-1]=8;
		System.out.println(niz[2]);
		
		System.out.println(Arrays.toString(niz));
		
		int brojevi[]= {2,3,34,45,3,23,3};
		System.out.println(brojevi[3]);
		
		int matrica[][] = new int [10][10];
		
		int tablica [][]= {
				{0,1,3},
				{1,8,6},
				{1,2,9}
		};
		System.out.println(tablica[1][1]);
		
		int kocka [][][] = new int [10][10][10];
		
		
		}
		
		
		
		
	}


