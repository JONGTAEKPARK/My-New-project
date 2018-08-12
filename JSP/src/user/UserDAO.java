package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstm;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/mydb?useUnicode=true&characterEncoding=utf8";
			String dbID = "root";
			String dbPassword = "12345";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPassword) {
		String SQL ="select userPassword from user where userID=?"; 
		try {
			pstm = conn.prepareStatement(SQL);
			pstm.setString(1, userID);
			rs = pstm.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					
					System.out.println("록그인 성공");
					return 1;
				}
				else
					System.out.println("비밀번호과 틀립니다.");
					return 0;
			}
			
			System.out.println("아이디 없음"); // 아이디가 없음
			return -1;
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("데이터 베이스 오류"); // 데이터 베이스 오류
		return -2; 
	}
}
