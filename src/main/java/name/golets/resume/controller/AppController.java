package name.golets.resume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLConnection;

@Controller
@RequestMapping("/")
public class AppController {

    private static final String RESUME_EN="GoletsAndriiEN.pdf";
    private static final String RESUME_UA="GoletsAndriiUA.pdf";

    @RequestMapping(value = {"/", "/english"}, method = RequestMethod.GET)
    public String showResume() {
        return "english";
    }

    @RequestMapping(value = {"/pdf/en"}, method = RequestMethod.GET)
    public String showPdfResume(ModelMap model) {
        model.addAttribute("pdf", true);
        return "english";
    }

    @RequestMapping(value = {"/pdf/ua"}, method = RequestMethod.GET)
    public String showPdfResumeUA(ModelMap model) {
        model.addAttribute("pdf", true);
        return "ukraine";
    }

    @RequestMapping(value = {"/ukraine"}, method = RequestMethod.GET)
    public String showResumeUkr() {
        return "ukraine";
    }

    @RequestMapping(value = "/download/{lan}", method = RequestMethod.GET)
    public void getFile(
            @PathVariable("lan") String lan,
            HttpServletResponse response) throws IOException {

        File file = null;

        ClassLoader classloader = Thread.currentThread().getContextClassLoader();
        if(lan.equalsIgnoreCase("EN")){
            file = new File(classloader.getResource(RESUME_EN).getFile());
        }else {
            file = new File(classloader.getResource(RESUME_UA).getFile());
        }

        String mimeType= URLConnection.guessContentTypeFromName(file.getName());
        response.setContentType(mimeType);

        response.setHeader("Content-Disposition", "inline; filename=\"" + file.getName() +"\"");
        response.setContentLength((int)file.length());

        InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
        FileCopyUtils.copy(inputStream, response.getOutputStream());
    }


}
