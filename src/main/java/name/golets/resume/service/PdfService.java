package name.golets.resume.service;

import com.itextpdf.html2pdf.ConverterProperties;
import com.itextpdf.html2pdf.HtmlConverter;
import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.styledxmlparser.css.media.MediaDeviceDescription;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import name.golets.resume.model.StringResponseWrapper;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.stereotype.Service;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

@Service
public class PdfService {

    public ByteArrayOutputStream createPdfFromServletJsp(HttpServletRequest request, String jspPage) throws ServletException, IOException {

        ByteArrayOutputStream pdfOutputStream = new ByteArrayOutputStream();
        MockHttpServletResponse mockResponse = new MockHttpServletResponse();
        mockResponse.setCharacterEncoding("UTF-8");

        // Create wrapper with request
        StringResponseWrapper responseWrapper = new StringResponseWrapper(mockResponse, request);
        responseWrapper.setAttribute("pdf", true);

        // Get JSP content
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/" + jspPage);
        dispatcher.include(request, responseWrapper);

        String htmlContent = responseWrapper.getContent();

        // Setup converter properties
        ConverterProperties converterProperties = new ConverterProperties();

        // Set base URI
        String baseUri = request.getScheme() + "://" + request.getServerName() + ":" +
                request.getServerPort() + request.getContextPath();
        converterProperties.setBaseUri(baseUri);

        // Configure media device description with larger width
        MediaDeviceDescription mediaDeviceDescription = new MediaDeviceDescription("screen");
        mediaDeviceDescription.setWidth(2200); // Increased width
        converterProperties.setMediaDeviceDescription(mediaDeviceDescription);

        // Create PDF with custom page size and margins

        PdfWriter pdfWriter = new PdfWriter(pdfOutputStream);
        PdfDocument pdf = new PdfDocument(pdfWriter);

        // Set page size to A4 Landscape
        PageSize pageSize = PageSize.A4.rotate();
        pdf.setDefaultPageSize(pageSize);

        // Convert HTML to PDF
        HtmlConverter.convertToPdf(htmlContent, pdf, converterProperties);

        return pdfOutputStream;
    }
}
