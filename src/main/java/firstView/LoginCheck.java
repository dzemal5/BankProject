package firstView;

import java.sql.*;


public class LoginCheck {

    public User checkLogin(String username, String password) throws SQLException,
            ClassNotFoundException {

        String url = "jdbc:mysql://test.medis.mersys.io:33306/ts_loginPage";
        String dbUser = "technostudy";
        String dbPassword = "zhTPis0l9#$&";

        Connection connection = DriverManager.getConnection(url, dbUser, dbPassword);
        Statement statement = connection.createStatement();
        ResultSet result = statement.executeQuery("SELECT * FROM loginCreds;");

        Class.forName("com.mysql.jdbc.Driver");




        User user = null;

        if (result.next()) {
            user = new User();
            user.setFullName(result.getString("fullname"));
            user.setEmail(username);
        }

        connection.close();
        return user;
    }
}
