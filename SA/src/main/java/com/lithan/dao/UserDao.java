package com.lithan.dao;

import java.sql.ResultSet;    
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper;

import com.lithan.beans.Admin;
import com.lithan.beans.User; 

public class UserDao {
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public int save(User p) {

	    String sqlu="INSERT INTO user (username,user_password) VALUES('"+p.getUsername()+"','"+p.getUser_password()+"');";
	    String sqlp="INSERT INTO profile (email,fname,lname) VALUES('"+p.getEmail()+"','"+p.getFname()+"','"+p.getLname()+"');";
	    template.update(sqlp);
	    return template.update(sqlu);
	}
	/* If only ONE table in Database for public int save(User p)
    String sql="insert into user(username,password,email,fname,lname) values('"+p.getUsername()+"','"+p.getPassword()+"',"
    		+ "'"+p.getEmail()+"','"+p.getFname()+"','"+p.getLname()+"')";    
    */
	
	/* Will be implemented based on time
	public int saveEdu(User p) {
		String sql="INSERT INTO education (user_id, institute, course, start_year, end_year)\r\n"
				+ "VALUES ("+p.getId()+", '"+p.getInstitute()+"', '"+p.getCourse()+"', "+p.getEdu_start_year()+", "+p.getEdu_end_year()+");";
		return template.update(sql);
	}
	*/
    /* Will be implemented based on time
    String sqlP="SELECT user.user_id, profile.email, profile.fname, profile.lname, "
    		+ "education.institute, education.course, education.edu_start_year, education.edu_end_year\r\n"
    		+ "	    		FROM User \r\n"
    		+ "	    		LEFT JOIN profile \r\n"
    		+ "	    		ON user.user_id = profile.user_id \r\n"
    		+ "                LEFT JOIN education\r\n"
    		+ "                ON user.user_id = education.user_id\r\n"
    		+ "	    		WHERE user.user_id = ?;";
    */
	

	
	public int update(User p) {
	    String sql="update profile set email='"+p.getEmail()+"', fname='"+p.getFname()+"', lname='"+p.getLname()+"' where user_id="+p.getId()+"";   
	    return template.update(sql);
	}
	public int delete(int id) {
	    String sql="delete from user where user_id="+id+";";  
	    String sqlp="delete from profile where user_id="+id+";";  
	    template.update(sqlp);
	    return template.update(sql);    
	}
	
	/* If only ONE table in Database
	public User getUserByIdV1(int id){    
	    String sql="select * from user where id=?";    
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<User>(User.class));    
	}
	*/
	
	public User getUserById(int id){    
	    String sql="SELECT user.user_id, profile.email, profile.fname, profile.lname\r\n"
	    		+ "FROM User \r\n"
	    		+ "LEFT JOIN profile \r\n"
	    		+ "ON user.user_id = profile.user_id \r\n"
	    		+ "WHERE user.user_id = ?;"; 

	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<User>(User.class));    
	}
	
	public List<User> getUserListById(int id){    
	    String sql="SELECT user.user_id, profile.email, profile.fname, profile.lname\r\n"
	    		+ "FROM User \r\n"
	    		+ "LEFT JOIN profile \r\n"
	    		+ "ON user.user_id = profile.user_id \r\n"
	    		+ "WHERE user.user_id = "+id+";"; 
	    return template.query(sql,new RowMapper<User>(){    
	        public User mapRow(ResultSet rs, int row) throws SQLException {    
	            User e=new User();
	            e.setId(rs.getInt(1));
	            e.setEmail(rs.getString(2));    
	            e.setFname(rs.getString(3));    
	            e.setLname(rs.getString(4));
	            return e;    
	        }    
	    });
	}
	
	// Get All User
	public List<User> getUser(){    
		String sql="SELECT user.user_id,user.username,user.user_password,profile.email, profile.fname, profile.lname\r\n"
				+ "	    		FROM User \r\n"
				+ "	    		LEFT JOIN profile \r\n"
				+ "	    		ON user.user_id = profile.user_id;";
	    return template.query(sql,new RowMapper<User>(){    
	        public User mapRow(ResultSet rs, int row) throws SQLException {    
	            User e=new User();    
	            e.setId(rs.getInt(1));    
	            e.setUsername(rs.getString(2));    
	            e.setUser_password(rs.getString(3));    
	            e.setEmail(rs.getString(4));
	            e.setFname(rs.getString(5));
	            e.setLname(rs.getString(6));
	            return e;    
	        }    
	    });
	}
	public User adminGetUserById(int id){    
	    String sql="SELECT user.user_id,user.username,user.user_password,profile.email, profile.fname, profile.lname\r\n"
				+ "	    		FROM User \r\n"
				+ "	    		LEFT JOIN profile \r\n"
				+ "	    		ON user.user_id = profile.user_id"
	    		+ " 			WHERE user.user_id = ?;";
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<User>(User.class));    
	}
	
	public List<User> searchUser(String keyword){    
		String sql="SELECT * FROM profile\r\n"
				+ "WHERE email LIKE '%"+keyword+"%'\r\n"
				+ "	OR fname LIKE '%"+keyword+"%'\r\n"
				+ "    OR lname LIKE '%"+keyword+"%';"; 
	    return template.query(sql,new RowMapper<User>(){    
	        public User mapRow(ResultSet rs, int row) throws SQLException {    
	            User e=new User();
	            e.setId(rs.getInt(1));
	            e.setEmail(rs.getString(2));    
	            e.setFname(rs.getString(3));    
	            e.setLname(rs.getString(4));
	            return e;    
	        }    
	    });
	}
	
	/* If only ONE table in Database
	public List<User> loginv1(User p) {
		return template.query("select * from user where username = '"+p.getUsername()+"' && password = '"+p.getPassword()+"'", new RowMapper<User>(){
			public User mapRow(ResultSet rs, int row) throws SQLException {
		        User e = new User(); 
				 e.setId(rs.getInt(1)); 
				 e.setUsername(rs.getString(2));
				 e.setEmail(rs.getString(4)); 
				 e.setFname(rs.getString(5));
				 e.setLname(rs.getString(6)); 
				 return e;
			}
		});
	}
	*/
	
    User e = new User(); 
	
	public List<User> login(User p) {
		template.query("select * from user where username = '"+p.getUsername()+"' && user_password = '"+p.getUser_password()+"'", new RowMapper<User>(){
			public User mapRow(ResultSet rs, int row) throws SQLException {
				 e.setId(rs.getInt(1)); 
				 e.setUsername(rs.getString(2));
				 return e;
			}
		});
		
		return template.query("select * from profile where user_id = '"+e.getId()+"'", new RowMapper<User>(){
			public User mapRow(ResultSet rs, int row) throws SQLException {
				 e.setEmail(rs.getString(2)); 
				 e.setFname(rs.getString(3));
				 e.setLname(rs.getString(4)); 
				 return e;
			}
		});
	}
	
	public void logout() {
		e = new User();
	}
	
	public int forget(User p) {
		String sql="update user set user_password='"+p.getUser_password()+"' where username='"+p.getUsername()+"';";
		return template.update(sql);
	}
	
	public int adminUpdate(User p) {
	    String sqlu="update user set username='"+p.getUsername()+"', user_password='"+p.getUser_password()+"' where user_id="+p.getId()+";";
	    String sql="update profile set email='"+p.getEmail()+"', fname='"+p.getFname()+"', lname='"+p.getLname()+"' where user_id="+p.getId()+";";   
	    template.update(sqlu);
	    return template.update(sql);
	}
	

	public List<Admin> adminLogin(Admin p) {

		return template.query("select * from admin where username = '"+p.getAdmin_username()+"' && password = '"+p.getAdmin_password()+"'", new RowMapper<Admin>(){
			public Admin mapRow(ResultSet rs, int row) throws SQLException {
				Admin a = new Admin();
				a.setAdmin_username(rs.getString(1)); 
				a.setAdmin_password(rs.getString(2));
				return a;
			}
		});
	}
}
