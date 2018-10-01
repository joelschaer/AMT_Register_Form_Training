package controllers;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegisterServlet extends HttpServlet {

    public static String VUE = "/WEB-INF/pages/register.jsp";
    public static String VALID_VUE = "/WEB-ING/pages/list.jsp";

    public static String FIELD_FIRST_NAME  = "first_name";
    public static String FIELD_LAST_NAME  = "last_name";
    public static String FIELD_EMAIL  = "email";


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(VUE);
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Map<String, String> errors = new HashMap<String, String>();

        String firstName = request.getParameter(FIELD_FIRST_NAME);
        String lastName = request.getParameter(FIELD_LAST_NAME);
        String email = request.getParameter(FIELD_EMAIL);

        boolean valid = true;


        if(firstName.trim().equals("")){
            errors.put(FIELD_FIRST_NAME, "alert-validate");
            valid = false;
        }

        if(lastName.trim().equals("")){
            errors.put(FIELD_LAST_NAME, "alert-validate");
            valid = false;
        }

        try {
            emailValidation( email );

        } catch ( Exception e) {
            errors.put(FIELD_EMAIL, "alert-validate");
            valid = false;
        }


        request.setAttribute(FIELD_FIRST_NAME, firstName);
        request.setAttribute(FIELD_LAST_NAME, lastName);
        request.setAttribute(FIELD_EMAIL, email);
        request.setAttribute( "errors", errors );

        RequestDispatcher view;
        if(valid){
            view = request.getRequestDispatcher(VALID_VUE);
            view.forward(request, response);        }
        else{
            view = request.getRequestDispatcher(VUE);
            view.forward(request, response);

        }

    }

    private void emailValidation( String email ) throws Exception {
        if ( email != null && email.trim().length() != 0 ) {
            if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
                throw new Exception();
            }
        } else {
            throw new Exception();
        }

    }

}


