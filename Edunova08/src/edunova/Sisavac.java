package edunova;

public class Sisavac extends Zivotinja {
 private int velicina;

public int getVelicina() {
	return velicina;
}

public Sisavac(String ime, int velicina) {
	super(ime);
	this.velicina = velicina;
}

public Sisavac() {
	super();
}

public void setVelicina(int velicina) {
	this.velicina = velicina;
}
}
