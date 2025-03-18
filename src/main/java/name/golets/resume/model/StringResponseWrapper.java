package name.golets.resume.model;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpServletResponseWrapper;
import java.io.PrintWriter;
import java.io.StringWriter;

public class StringResponseWrapper extends HttpServletResponseWrapper {
    private final StringWriter stringWriter;
    private final PrintWriter writer;
    private final HttpServletRequest request;


    public StringResponseWrapper(HttpServletResponse response, HttpServletRequest request) {
        super(response);
        this.stringWriter = new StringWriter();
        this.writer = new PrintWriter(stringWriter);
        this.request = request;
    }

    // Add method to set additional attributes if needed
    public void setAttribute(String name, Object value) {
        this.request.setAttribute(name, value);
    }

    @Override
    public PrintWriter getWriter() {
        return writer;
    }

    public String getContent() {
        return stringWriter.toString();
    }
}