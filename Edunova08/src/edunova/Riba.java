package edunova;

public class Riba extends Zivotinja{
 private String vrsta;

public String getVrsta() {
	return vrsta;
}

public void setVrsta(String vrsta) {
	this.vrsta = vrsta;
}

public Riba(String ime, String vrsta) {
	super(ime);
	this.vrsta = vrsta;
}

public Riba() {
	super();
}
}
