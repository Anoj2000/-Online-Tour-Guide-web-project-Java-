package com.reservation;

public class Booking {
	private int tour_id;
	private String name;
	private String email;
	private String phone;
	private String num_person;
	private String start_date;
	private String end_date;
	
	public Booking(int tour_id, String name, String email, String phone, String num_person, String start_date,
			String end_date) {
		
		this.tour_id = tour_id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.num_person = num_person;
		this.start_date = start_date;
		this.end_date = end_date;
	}

	public int getTour_id() {
		return tour_id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getNum_person() {
		return num_person;
	}

	public String getStart_date() {
		return start_date;
	}

	public String getEnd_date() {
		return end_date;
	}
	

}