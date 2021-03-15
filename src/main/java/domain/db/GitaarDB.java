package domain.db;
import domain.model.Gitaar;
import java.util.ArrayList;

public class GitaarDB {
    private ArrayList<Gitaar> gitaarList;

    public GitaarDB() {
        gitaarList = new ArrayList<>();
    }

    public void addGuitar(Gitaar gitaar) {
        if (gitaar == null) throw new IllegalArgumentException("Gitaar kan niet leeg zijn");
        gitaarList.add(gitaar);
    }

    public void removeGuitar(String gitaarNaam) {
        boolean ok = false;

        for (int i = 0; i != gitaarList.size() && !ok ; i++) {
            if (gitaarList.get(i).getType().equalsIgnoreCase(gitaarNaam)) {
                gitaarList.remove(gitaarList.get(i));
                ok = true;
            }
        }

        if (!ok) throw new IllegalArgumentException("Er is geen gitaar met deze naam");
    }
}