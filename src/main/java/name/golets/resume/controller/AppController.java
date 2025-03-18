package name.golets.resume.controller;

import name.golets.resume.service.PdfService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import jakarta.servlet.http.HttpServletRequest;
import java.io.ByteArrayOutputStream;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
@RequestMapping("/")
public class AppController {

    private static final Logger logger = LoggerFactory.getLogger(AppController.class);

    private final PdfService pdfService;

    public AppController(PdfService pdfService) {
        this.pdfService = pdfService;
    }

    @RequestMapping(value = {"/", "/english"}, method = RequestMethod.GET)
    public String showResume() {
        return "english";
    }

    @RequestMapping(value = {"/pdf/en"}, method = RequestMethod.GET)
    public String showPdfResume(ModelMap model) {
        model.addAttribute("pdf", true);
        return "english";
    }

    @GetMapping("/download/{lan}")
    public ResponseEntity<byte[]> downloadPdf(@PathVariable("lan") String lan,
                                              HttpServletRequest request) {
        try {

            ByteArrayOutputStream pdfOutputStream = pdfService.createPdfFromServletJsp(request, "english.jsp");

            // Return response
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.APPLICATION_PDF);
            headers.setContentDispositionFormData("attachment", "resume.pdf");

            return ResponseEntity
                    .ok()
                    .headers(headers)
                    .body(pdfOutputStream.toByteArray());

        } catch (Exception e) {
            logger.error("Error generating PDF: ", e);
            return ResponseEntity
                    .internalServerError()
                    .body("Failed to generate PDF".getBytes());
        }
    }

}
