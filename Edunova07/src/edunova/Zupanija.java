package edunova;

public class Zupanija {
	private String naziv;
	private int brojStanovnika;
	private Zupanija zupanija;
	
	public Zupanija(String naziv, int brojStanovnika, Zupanija zupanija) {
		super();
		this.naziv = naziv;
		this.brojStanovnika = brojStanovnika;
		this.zupanija = zupanija;
	}
	public Zupanija getZupanija() {
		return zupanija;
	}
	public void setZupanija(Zupanija zupanija) {
		this.zupanija = zupanija;
	}
	public String getNaziv() {
		return naziv;
	}
	public void setNaziv(String naziv) {
		this.naziv = naziv;
	}
	public Zupanija() {
		super();
	}
	
	
	public int getBrojStanovnika() {
		return brojStanovnika;
	}
	public void setBrojStanovnika(int brojStanovnika) {
		this.brojStanovnika = brojStanovnika;
	}
	

	public Zupanija(String naziv, int brojStanovnika) {
		super();
		this.naziv = naziv;
		this.brojStanovnika = brojStanovnika;
	}

}
