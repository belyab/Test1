import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "AjaxServlet", urlPatterns = "/getData")
public class AjaxServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, IOException {

        String garagNumb = req.getParameter("garagNumb");
        String dataAboutBus = new HttpClientParsData().getDataAboutBus(garagNumb);

        resp.setContentType("text/plain");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().write(dataAboutBus);
    }

}
