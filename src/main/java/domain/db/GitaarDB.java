package domain.db;
import domain.model.Gitaar;
import java.util.ArrayList;
import java.util.Locale;

public class GitaarDB {
    private ArrayList<Gitaar> gitaarList;

    public GitaarDB() {
        gitaarList = new ArrayList<>();
    }

    public void addGuitar(Gitaar gitaar) {
        if (gitaar == null) throw new IllegalArgumentException("Gitaar kan niet leeg zijn");
        gitaarList.add(gitaar);
    }

    public Gitaar getGitaar(String type, String merk) {
        for (Gitaar gitaar : gitaarList) {
            if (gitaar.getType().equalsIgnoreCase(type) && gitaar.getMerk().equalsIgnoreCase(merk))
                return gitaar;
        }

        return null;
    }

    public void removeGuitar(String gitaarNaam) {
        boolean hulp = false;

        for (int i = 0; i != gitaarList.size() && !hulp ; i++) {
            if (gitaarList.get(i).getType().equalsIgnoreCase(gitaarNaam)) {
                gitaarList.remove(gitaarList.get(i));
                hulp = true;
            }
        }

        if (!hulp) throw new IllegalArgumentException("Er is geen gitaar met deze naam");
    }

    public Gitaar getPricedGuitar() {
        Gitaar pricedGuitar = new Gitaar(0);

        for (Gitaar gitaar : gitaarList) {
            if (gitaar.getPrijs() > pricedGuitar.getPrijs()) {
                pricedGuitar = gitaar;
            }
        }

        return pricedGuitar;
    }

    public ArrayList<Gitaar> getGitaarList() {
        return gitaarList;
    }

    public ArrayList<Gitaar> searchGuitar(String merk, String type) {
        ArrayList<Gitaar> gevonden_gitaren = new ArrayList<>();
        for (Gitaar _gitaar: this.getGitaarList()) {
            if (_gitaar.getMerk().equals(".*" + merk + ".*")) gevonden_gitaren.add(_gitaar);
            else if (_gitaar.getType().equals(".*" + type + ".*")) gevonden_gitaren.add(_gitaar);
        }
        System.out.println("Gitaar lijst: " + getGitaarList());
        System.out.println("Gevonden gitaar: " + gevonden_gitaren);
        return gevonden_gitaren;
    }
}