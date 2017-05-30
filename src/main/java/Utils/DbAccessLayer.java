package Utils;

/**
 * Created by Rares on 30-May-17.
 */

import Model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DbAccessLayer {

    public static User findUser(String userName, String password) throws SQLException {

        String sql = "Select username, password, balance from user "
                + " where username = ? and password= ?";

        PreparedStatement pstm = DbUtil.getConnection().prepareStatement(sql);
        pstm.setString(1, userName);
        pstm.setString(2, password);
        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            User user = new User(userName, rs.getInt("balance"));
            return user;
        }
        return null;
    }

    public static void createUser(String username, String password, int balance) throws SQLException {
        PreparedStatement preparedStatement = DbUtil.getConnection()
                .prepareStatement("insert into user(username,password,balance) values (?, ?, ? )");
        // Parameters start with 1
        preparedStatement.setString(1, username);
        preparedStatement.setString(2, password);
        preparedStatement.setInt(3, balance);
        preparedStatement.executeUpdate();
    }
}