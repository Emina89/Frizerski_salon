package edunova;

import javax.swing.JOptionPane;

public class CiklicnaTablicaVerzija02 {

    public static void main(String[] args) {

        boolean dev = false;

        int red = dev ? 5 : Integer.parseInt(JOptionPane.showInputDialog("Unesi broj redova"));
        int stupac = dev ? 5 : Integer.parseInt(JOptionPane.showInputDialog("Unesi broj stupaca"));
        
        System.out.println("            Ciklicna Tablica          ");
        
        System.out.println("--------------------------------------");

        int[][] tablica = new int[red][stupac];

        int brojac = 1;
        int maxBroj = red * stupac; 

        int gornjaGranicaRedova = red - 1;
        int gornjaGranicaStupaca = stupac - 1;
        int donjaGranicaRedova = 0;
        int donjaGranicaStupaca = 0;

        while (brojac <= maxBroj) {
           
            for (int i = gornjaGranicaStupaca; i >= donjaGranicaStupaca; i--) {
                tablica[gornjaGranicaRedova][i] = brojac++;
            }
            
            if(brojac>maxBroj) {break;
            }
            
            gornjaGranicaRedova--;

            
            for (int i = gornjaGranicaRedova; i >= donjaGranicaRedova; i--) {
                tablica[i][donjaGranicaStupaca] = brojac++;
            }
            
            if(brojac>maxBroj) {break;
            }
            
            donjaGranicaStupaca++;

            
            for (int i = donjaGranicaStupaca; i <= gornjaGranicaStupaca; i++) {
                tablica[donjaGranicaRedova][i] = brojac++;
            }
            
            if(brojac>maxBroj) {break;
            }
            
            donjaGranicaRedova++;

            
            for (int i = donjaGranicaRedova; i <= gornjaGranicaRedova; i++) {
                tablica[i][gornjaGranicaStupaca] = brojac++;
            }
            gornjaGranicaStupaca--;
        }

       
        for (int i = 0; i < red; i++) {
            for (int j = 0; j < stupac; j++) {
                System.out.print(tablica[i][j] + "\t");
            }
            System.out.println();
            System.out.println("--------------------------------------");
        }
    }
}