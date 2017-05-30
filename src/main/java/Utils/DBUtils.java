package Utils;

/**
 * Created by Rares on 30-May-17.
 */
        import Model.User;

        import java.sql.Connection;
        import java.sql.PreparedStatement;
        import java.sql.ResultSet;
        import java.sql.SQLException;


public class DBUtils {

    public static User findUser(Connection conn, String userName, String password) throws SQLException {

        String sql = "Select username, password, balance from user "
                + " where username = ? and password= ?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
        pstm.setString(2, password);
        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            User user = new User(userName, rs.getInt("balance"));
            return user;
        }
        return null;
    }
}