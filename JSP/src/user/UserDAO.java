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
					
					System.out.println("�ϱ��� ����");
					return 1;
				}
				else
					System.out.println("��й�ȣ�� Ʋ���ϴ�.");
					return 0;
			}
			
			System.out.println("���̵� ����"); // ���̵� ����
			return -1;
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("������ ���̽� ����"); // ������ ���̽� ����
		return -2; 
	}
}
