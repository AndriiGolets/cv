package name.golets.resume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.io.*;

@Controller
@RequestMapping("/")
public class AppController {

    private static final String RESUME_EN_AWS="https://golets-pdf.s3.eu-central-1.amazonaws.com/GoletsAndriiEN.pdf";

    @RequestMapping(value = {"/", "/english"}, method = RequestMethod.GET)
    public String showResume() {
        return "english";
    }

    @RequestMapping(value = {"/pdf/en"}, method = RequestMethod.GET)
    public String showPdfResume(ModelMap model) {
        model.addAttribute("pdf", true);
        return "english";
    }

    @RequestMapping(value = "/download/{lan}", method = RequestMethod.GET)
    public ModelAndView getFile(
            @PathVariable("lan") String lan,
            HttpServletResponse response) throws IOException {
        return new ModelAndView("redirect:"  + RESUME_EN_AWS);
    }
}
