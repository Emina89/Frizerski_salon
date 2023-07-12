package edunova;

public class Polaznik extends Osoba {



private String brojugovora;

public String getBrojugovora() {
	return brojugovora;
}
public void setBrojugovora(String brojugovora) {
	this.brojugovora = brojugovora;
}

public Polaznik(int sifra, String ime, String prezime, String brojugovora) {
	
	super(sifra, ime, prezime);
	this.brojugovora = brojugovora;
}

public Polaznik() {
	super();
}

public Polaznik(String brojugovora) {
	super();
	this.brojugovora = brojugovora;
}

public Polaznik(int sifra, String ime, String prezime) {
	super(sifra, ime, prezime);
	
	

}

@Override
public void pozdravi() {
	// TODO Auto-generated method stub
	
}


}


