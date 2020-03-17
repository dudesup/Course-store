package users;

import common.AbstractLogServlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "addUserServlet", value = "/adduser")
public class AddUserServlet extends AbstractLogServlet {
    public static String PARAM_LOGIN_NAME = "login";

    private UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String login = req.getParameter(PARAM_LOGIN_NAME);
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = new User(name, login, email, password);
        if(userService.addUser(user)){
            req.setAttribute("user", user);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("users/registerConfirmation.jsp");
            requestDispatcher.forward(req, resp);
        }else {
            resp.getOutputStream().println("Registration failed");
        }
        userService.findAllUsers()
                .forEach(user1 -> System.out.println(user1.getLogin()));
    }
}
