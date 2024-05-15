package cz.czechitas.java2webapps.ukol3.Vizitka;

import cz.czechitas.java2webapps.ukol3.entity.Vizitka;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class VizitkaService {
    private final List<Vizitka> vizitkovnik = new ArrayList<>();

    private VizitkaService() {
        vizitkovnik.add(new Vizitka("Dita (Přikrylová) Formánková",
                "Czechitas z. s.",
                "Václavské náměstí 837/11",
                "Praha 1",
                "dita@czechitas.cs",
                "+420 800123456",
                "www.czechitas.cz"));
        vizitkovnik.add(new Vizitka("Barbora Bühnová",
                "Czechitas z. s.",
                "Václavské náměstí 837/11",
                "Praha 1",
                null,
                "+420 800123456",
                "www.czechitas.cz"));
        vizitkovnik.add(new Vizitka("Monika Ptáčníková",
                "Czechitas z. s.",
                "Václavské náměstí 837/11",
                "Praha 1",
                "monika@czechitas.cs",
                "+420 800123456",
                null));
        vizitkovnik.add(new Vizitka("Mirka Zatloukalová",
                "Czechitas z. s.",
                "Václavské náměstí 837/11",
                "110 00 Praha 1",
                "mirka@czechitas.cs",
                null,
                "www.czechitas.cz"));
    }

    public List<Vizitka> getAll() {
        return vizitkovnik;
    }

    public void pridej(Vizitka vizitka) {
        vizitkovnik.add(vizitka);
    }

    public Vizitka getByID(int id) {
        return vizitkovnik.get(id);
    }

    public void deleteByID(int id) {vizitkovnik.remove(id);}

}
