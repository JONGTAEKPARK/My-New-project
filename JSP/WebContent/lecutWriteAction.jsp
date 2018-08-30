<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="lecture.LectureDAO"%>
<%@ page import="java.io.PrintWriter"%>

<%
	request.setCharacterEncoding("UTF-8");
	%>
	
<jsp:useBean id="lecture" class="lecture.Lecture" scope="page" />
<jsp:setProperty name="lecture" property="title" />
<jsp:setProperty name="lecture" property="readID" />
<jsp:setProperty name="lecture" property="content" />


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>

	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}

		if (userID == null) {

			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");

		}else{
			
			if (lecture.getTitle() == null || lecture.getContent() == null || lecture.getReadID() == null){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력되지 않은 사항이 있습니다.')");
				script.println("history.back()");
				script.println("</script>");

			} else {

				LectureDAO  lectureDAO = new LectureDAO ();
				int result = lectureDAO.write(lecture.getTitle(),  lecture.getContent(), userID, lecture.getReadID());
				if (result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('강의 등록에 실패 했습니다.')");
					script.println("history.back()");
					script.println("</script>");
				}

				else {

					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = 'lecture.jsp'");
					//script.println("alert('글쓰기에 성공하였습니다.')");
					script.println("</script>");

				}

			}
			
		}

		
	%>
</body>
</html>