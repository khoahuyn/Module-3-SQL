import java.io.IOException;
import java.io.PrintWriter;

@javax.servlet.annotation.WebServlet(name = " DiscountServlet",urlPatterns = "/display-discount")
public class DiscountServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        float Price = Float.parseFloat(request.getParameter("List Price"));
        float Percent = Float.parseFloat(request.getParameter("Discount Percent"));
        String Description= request.getParameter("Product Description");

        float Discount_Amount=Price*Percent;
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Product Description: " + Description + "</h1>");
        writer.println("<h1>List Price: " + Price + "</h1>");
        writer.println("<h1>Discount Percent: " + Percent+ "</h1>");
        writer.println("<h1>Discount Price: " + Discount_Amount+ "</h1>");
        writer.println("</html>");
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
