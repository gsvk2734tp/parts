package javarush.testtask.web;

import javarush.testtask.model.Part;
import javarush.testtask.service.PartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class PartController {
    public static int pageCount = 10;
    private PartService partService;

    @RequestMapping(value = "parts", method = RequestMethod.GET)
    public String parts(Model model) {
        List<Part> parts = partService.findAllParts();
        List<Part> onePagePart = partService.getPageUsers(0, pageCount);
        model.addAttribute("count", partService.getCount(parts.size(), pageCount));
        model.addAttribute("parts", parts);
        model.addAttribute("onePagePart", onePagePart);
        model.addAttribute("minComputer", partService.minCopmputer(parts));
        model.addAttribute("partFilter", new Part());
        model.addAttribute("searchAttribute", new Part());
        return "parts";
    }

    @RequestMapping(value = "/partsPage", method = RequestMethod.GET)
    public String getPage(@RequestParam(value = "numpage", required = true) Integer numpage, Model model) {
        int offset = numpage * pageCount - pageCount;
        List<Part> parts = partService.findAllParts();
        List<Part> onePagePart = partService.getPageUsers(offset, pageCount);
        model.addAttribute("count", partService.getCount(parts.size(), pageCount));
        model.addAttribute("parts", parts);
        model.addAttribute("onePagePart", onePagePart);
        model.addAttribute("minComputer", partService.minCopmputer(parts));
        model.addAttribute("partFilter", new Part());
        model.addAttribute("searchAttribute", new Part());
        return "parts";
    }

    @RequestMapping(value = "/parts/add", method = RequestMethod.GET)
    public String addPart(Model model) {
        model.addAttribute("partAttribute", new Part());
        return "addpart";

    }

    @RequestMapping(value = "/parts/add", method = RequestMethod.POST)
    public String addPart(@ModelAttribute("partAttribute") Part part) {
        if (part.getName().length() < 200) {
            partService.addPart(part);
        }
        return "redirect:/parts";
    }

    @RequestMapping(value = "/partdata/{id}", method = RequestMethod.GET)
    public String getPart(@PathVariable("id") Long id, Model model) {
        model.addAttribute("part", partService.getPartById(id));
        return "partdata";
    }

    @RequestMapping("/remove/{id}")
    public String removePart(@PathVariable("id") Long id) {
        partService.removePart(id);
        return "redirect:/parts";
    }

    @RequestMapping(value = "/parts/edit", method = RequestMethod.GET)
    public String editPart(@RequestParam(value = "id", required = true) Long id, Model model) {
        model.addAttribute("partAttribute", partService.getPartById(id));
        return "editpart";
    }

    @RequestMapping(value = "/parts/edit", method = RequestMethod.POST)
    public String editPart(@ModelAttribute("partAttribute") Part part, @RequestParam("id") Long id) {
        part.setId(id);
        partService.updatePart(part);
        return "redirect:/parts";
    }

    @RequestMapping(value = "/parts/filter", method = RequestMethod.POST)
    public String partFilter(@ModelAttribute("partFilter") Part part, Model model) {
        List<Part> parts = partService.findByRequiredPart(part.getRequired());
        model.addAttribute("parts", parts);
        model.addAttribute("part", part);
        return "filter";
    }

    @RequestMapping(value = "/parts/search", method = RequestMethod.POST)
    public String partSearch(@ModelAttribute("partSearch") Part part, Model model) {
        List<Part> parts = partService.findByName(part.getName());
        model.addAttribute("parts", parts);
        return "search";
    }


    @Autowired
    @Qualifier(value = "partService")
    public void setPartService(PartService partService) {
        this.partService = partService;
    }
}