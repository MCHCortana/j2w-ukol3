package cz.czechitas.java2webapps.ukol3.Vizitka;

import cz.czechitas.java2webapps.ukol3.entity.Vizitka;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Kontroler obsluhující zobrazování vizitek.
 */
@Controller
public class VizitkaController {
    private final VizitkaService service;

    public VizitkaController(VizitkaService service) {
        this.service = service;
    }

    @GetMapping("/")
    public ModelAndView seznam() {
        ModelAndView result = new ModelAndView("seznam");
        result.addObject("seznamVizitek", service.getAll());
        return result;
    }

    @GetMapping("/detail/{id}")
    public ModelAndView detail(@PathVariable int id) {
        ModelAndView modelAndView = new ModelAndView("/detail");
        modelAndView.addObject("vizitkaDetail", service.getByID(id));
        return modelAndView;
    }
    @PostMapping("/detail/{id}")
    public String deleteVizitkaDetail(@PathVariable int id){
        service.deleteByID(id);
        return "redirect:/";
    }

    @PostMapping("/")
    public String pridej(Vizitka vizitka) {
        service.pridej(vizitka);
        return "redirect:/";
    }

    @PostMapping("/{id}")
    public String vymaz(int id) {
        service.deleteByID(id);
        return "redirect:/";
    }

    @GetMapping("/nova")
    public ModelAndView novaVizitka() {
        ModelAndView result = new ModelAndView();
        result.addObject("nova", new Vizitka());
        return result;
    }

    @PostMapping("/nova")
    public String addNewVizitka(Vizitka vizitka) {
        service.pridej(vizitka);
        return "redirect:/";
    }

    @PostMapping("/delete")
    public String deleteVizitka(int id) {
        service.deleteByID(id);
        return "redirect:/";
    }

}
