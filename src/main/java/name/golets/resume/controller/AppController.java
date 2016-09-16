package name.golets.resume.controller;


import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;

@Controller
@RequestMapping("/")
public class AppController {

    @RequestMapping(value = {"/", "/english"}, method = RequestMethod.GET)
    public String showResume() {
        return "english";
    }

    @RequestMapping(value = {"/ukraine"}, method = RequestMethod.GET)
    public String showResumeUkr() {
        return "ukraine";
    }

    @RequestMapping(value = "/files/txt/{file_name}", method = RequestMethod.GET)
    public void getFile(
            @PathVariable("file_name") String fileName,
            HttpServletResponse response) {
        fileName = fileName + ".txt";
        response.setContentType("application/txt");
        response.addHeader("Content-Disposition", "attachment; filename=" + fileName);
        try {
            InputStream is = AppController.class.getClassLoader().getResourceAsStream(fileName);
            IOUtils.copy(is, response.getOutputStream());
            response.flushBuffer();
        } catch (IOException ex) {
            throw new RuntimeException("IOError writing file to output stream");
        }
    }
}
