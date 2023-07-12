package edunova;

public class Som extends Riba {
 private int duzinaBrkova;

public int getDuzinaBrkova() {
	return duzinaBrkova;
}

public void setDuzinaBrkova(int duzinaBrkova) {
	this.duzinaBrkova = duzinaBrkova;
}

public Som() {
	super();
}

public Som(String ime, String vrsta, int duzinaBrkova) {
	super(ime, vrsta);
	this.duzinaBrkova = duzinaBrkova;
}
}
