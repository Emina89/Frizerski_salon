package edunova;

public class Pas extends Sisavac {
private String pasmina;

public String getPasmina() {
	return pasmina;
}

public void setPasmina(String pasmina) {
	this.pasmina = pasmina;
}

public Pas(String ime, int velicina, String pasmina) {
	super(ime, velicina);
	this.pasmina = pasmina;
}

public Pas() {
	super();
}
}
