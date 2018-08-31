package lecture;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class LectureDAO {

	private Connection conn;

	private ResultSet rs;

	public LectureDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/bbs?useUnicode=true&characterEncoding=utf8";
			String dbID = "root";
			String dbPassword = "12345";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
		
	
	
	public String getDate() {
		String SQL = "select now()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ""; // 데이터 베이스 오류

	}
	
	public int getNext() {
		String SQL = "select seqno from lecture order by seqno desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;// 첫번 쨰 게시물인 경우
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터 베이스 오류

	}
	
	public int write(String title, String content, String writer ,String readID) {
		String SQL = "insert into lecture values(?,?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			pstmt.setString(4, writer);
			pstmt.setString(5, getDate());
			pstmt.setString(6, readID);
			pstmt.setInt(7, 1);
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터 베이스 오류

	} 
	
	
	public ArrayList<Lecture> getList(int pageNumber) {
		String SQL = "select * from lecture where seqno < ? and bbsAvailable = 1 order by seqno asc limit 10";
		ArrayList<Lecture> list = new ArrayList<Lecture>();

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Lecture lecture = new Lecture();
				lecture.setSeqno(rs.getInt(1));
				lecture.setTitle(rs.getString(2));
				lecture.setContent(rs.getString(3));
				lecture.setWriter(rs.getString(4));
				lecture.setWdate(rs.getString(5));
				lecture.setReadID(rs.getString(6));
				lecture.setBbsAvailable(rs.getInt(7));
				list.add(lecture);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list; // 데이터 베이스 오류
	}
	
	public boolean nextPage(int pageNumber) {
		String SQL = "select * from lecture where seqno < ? and bbsAvailable = 1 ";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false; // 데이터 베이스 오류
	}
	
	public Lecture getLecture(int seqno) {
		String SQL = "select * from bbs where seqno = ? ";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, seqno);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				Lecture lecture = new Lecture();
				lecture.setSeqno(rs.getInt(1));
				lecture.setTitle(rs.getString(2));
				lecture.setContent(rs.getString(3));
				lecture.setWriter(rs.getString(4));
				lecture.setWdate(rs.getString(5));
				lecture.setReadID(rs.getString(6));
				lecture.setBbsAvailable(rs.getInt(7));
				return lecture;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null; // 데이터 베이스 오류
	}
	
	public int update(int seqno, String title, String content , String readID) {
		String SQL = "update lecture set title = ?, content = ? , readID = ? where seqno = ? ";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, readID);
			pstmt.setInt(4, seqno);
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터 베이스 오류

	}
	
	public int delete(int seqno) {
		String SQL = "update lecture set bbsAvailable= 0  where seqno = ?";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, seqno);
			return pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터 베이스 오류

	}
	
	
	}

