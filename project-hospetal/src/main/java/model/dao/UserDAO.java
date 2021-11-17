package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/bbs";
			String dbID = "selfstudy";
			String dbPassword = "selfstudy";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public int login(String userId, String userPassword) {
		String SQL = "SELECT userPassword FROM user WHERE userId = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1;//�α��� ����
				}else {
					return 0; //��й�ȣ ����ġ
				}
			}
			return -1;//���̵� ����
			
		} catch (Exception e) {
			e.printStackTrace();	
		}
		return -2; //�����ͺ��̽� ����
	}
}


