package domain.model;

public class Gitaar {
    private String type;
    private String merk;
    private double prijs;
    private int score;

    public Gitaar(double prijs) {
        this("placeholder", "placeholder", 0, 0);
    }

    public Gitaar(String t, String m, double p, int s) {
        this.setType(t);
        this.setMerk(m);
        this.setPrijs(p);
        this.setScore(s);
    }

    public void setType(String t) {
        if(t.trim().isEmpty()) throw new IllegalArgumentException("Type kan niet leeg zijn");
        this.type = t;
    }

    public void setMerk(String m) {
        if(m.trim().isEmpty()) throw new IllegalArgumentException("Merk kan niet leeg zijn");
        this.merk = m;
    }

    public void setPrijs(double p) {
        if (p < 0) throw new IllegalArgumentException("Prijs kan niet negatief zijn");
        this.prijs = p;
    }

    public void setScore(int s) {
        this.score =  s;
    }

    public String getType() {
        return this.type;
    }

    public String getMerk() {
        return this.merk;
    }

    public double getPrijs() {
        return this.prijs;
    }

    public int getScore() {
        return this.score;
    }
}