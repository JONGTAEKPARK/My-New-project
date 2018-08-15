package user;
/*CREATE table user(
userID VARCHAR(20) PRIMARY KEY,
userPassword VARCHAR(20),
userName VARCHAR(20),
userGender VARCHAR(20),
userEmail VARCHAR(50)
);
*/public class User {
	
	 private String userID;
	 private String userPassword;
	 private String userName;
	 private String userGender;
	 private String userEmail;
	 
	 public String getUserID() {
	  return userID;
	 }
	 public void setUserID(String userID) {
	  this.userID = userID;
	 }
	 public String getUserPassword() {
	  return userPassword;
	 }
	 public void setUserPassword(String userPassword) {
	  this.userPassword = userPassword;
	 }
	 public String getUserName() {
	  return userName;
	 }
	 public void setUserName(String userName) {
	  this.userName = userName;
	 }
	 public String getUserGender() {
	  return userGender;
	 }
	 public void setUserGender(String userGender) {
	  this.userGender = userGender;
	 }
	 public String getUserEmail() {
	  return userEmail;
	 }
	 public void setUserEmail(String userEmail) {
	  this.userEmail = userEmail;
	 }
	}