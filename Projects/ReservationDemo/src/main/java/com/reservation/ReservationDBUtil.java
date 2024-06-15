package com.reservation;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class ReservationDBUtil {
	//define database connection variables
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs;
	
	//create a method to insert data into DB
	public static boolean insertcustomer(int uid,String name,String email,String phone,String num_person,String start_date,String end_date ) {
		
		boolean isSuccess = false;
	
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into reservation value(0,'"+name+"','"+email+"','"+phone+"','"+num_person+"','"+start_date+"','"+end_date+"','"+uid+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true; 
			}else {
				
				isSuccess = false;
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	
		return isSuccess;
	}

	//this selectbooking method used to data retrieval part
	public static ArrayList<Booking> selectbooking(int cus_id){
		ArrayList<Booking> Booklist = new ArrayList <>();//get value of java class put into  Arraylist
		
		con = DBConnect.getConnection();
		try {
			stmt = con.createStatement();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		
		String sql = " SELECT * FROM reservation WHERE cus_id = '"+cus_id+"'";
		 try {
			 
			rs = stmt.executeQuery(sql);
			
			 while(rs.next()){
				 int tid = rs.getInt(1);
				 String name = rs.getString(2);
				 String email = rs.getString(3);
				 String phone = rs.getString(4);
				 String num_person = rs.getString(5);
				 String start_date = rs.getString(6);
				 String end_date = rs.getString(7);
				 
				 Booklist.add(new Booking(tid,name,email,phone,num_person,start_date,end_date));
	
			 }
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		 
	   return Booklist;
			
	} 
	
	public static boolean updatecustomer(int tour_id,String name,String email,String phone,String num_person,String start_date,String end_date) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "UPDATE reservation SET name ='"+name+"',email ='"+email+"',phone ='"+phone+"',num_person ='"+num_person+"',start_date ='"+start_date+"',end_date = '"+end_date+"'"
					+"WHERE tour_id = '"+tour_id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
				
			}else {
				
				
				isSuccess = false;
			}
			
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	public static boolean deleteCustomer(String tour_id) {
		
		int convId = Integer.parseInt(tour_id);
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql ="DELETE FROM reservation WHERE tour_id='"+convId+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	

}
