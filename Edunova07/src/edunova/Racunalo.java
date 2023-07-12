package edunova;

public class Racunalo {
private String naziv;
private float cijena;
private boolean operativniSistem;
public String getNaziv() {
	return naziv;
}
public Racunalo(String naziv, float cijena, boolean operativniSistem) {
	super();
	this.naziv = naziv;
	this.cijena = cijena;
	this.operativniSistem = operativniSistem;
}
public void setNaziv(String naziv) {
	this.naziv = naziv;
}
public Racunalo() {
	super();
}
public float getCijena() {
	return cijena;
}
public void setCijena(float cijena) {
	this.cijena = cijena;
}
public boolean isOperativniSistem() {
	return operativniSistem;
}
public void setOperativniSistem(boolean operativniSistem) {
	this.operativniSistem = operativniSistem;
	
	

}

}
