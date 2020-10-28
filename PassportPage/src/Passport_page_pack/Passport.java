package Passport_page_pack;

public class Passport{
	
	//Class-Variables
	private String name;
	private String Gender;
	private String dob;
	private int age;
	private String user_email;
	private String user_password;
	private String father_name;
	private String mother_name;
	private String pan_number;
	private long aadhar_number;
	private String martial_status;
	private String address;
	private int door_no;
	private String street;
	private String district;
	private int Pincode;
	private String states;
	private long Phone_Number;
	private String resident;
	private String disability;
	
	
	public Passport() {
		
	}


@Override
	public String toString() {
		return "Passport_ [name=" + name + ", Gender=" + Gender + ", dob=" + dob + ", age=" + age + ", user_email="
				+ user_email + ", user_password=" + user_password + ", father_name=" + father_name + ", mother_name="
				+ mother_name + ", pan_number=" + pan_number + ", aadhar_number=" + aadhar_number + ", martial_status="
				+ martial_status + ", address=" + address + ", door_no=" + door_no + ", street=" + street
				+ ", district=" + district + ", Pincode=" + Pincode + ", states=" + states + ", Phone_Number="
				+ Phone_Number + ", resident=" + resident + ", disability=" + disability + "]";
	}


public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getGender() {
		return Gender;
	}


	public void setGender(String gender) {
		Gender = gender;
	}


	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getUser_email() {
		return user_email;
	}


	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}


	public String getUser_password() {
		return user_password;
	}


	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}


	public String getFather_name() {
		return father_name;
	}


	public void setFather_name(String father_name) {
		this.father_name = father_name;
	}


	public String getMother_name() {
		return mother_name;
	}


	public void setMother_name(String mother_name) {
		this.mother_name = mother_name;
	}


	public String getPan_number() {
		return pan_number;
	}


	public void setPan_number(String pan_number) {
		this.pan_number = pan_number;
	}


	public long getAadhar_number() {
		return aadhar_number;
	}


	public void setAadhar_number(long aadhar_number) {
		this.aadhar_number = aadhar_number;
	}


	public String getMartial_status() {
		return martial_status;
	}


	public void setMartial_status(String martial_status) {
		this.martial_status = martial_status;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public int getDoor_no() {
		return door_no;
	}


	public void setDoor_no(int door_no) {
		this.door_no = door_no;
	}


	public String getStreet() {
		return street;
	}


	public void setStreet(String street) {
		this.street = street;
	}


	public String getDistrict() {
		return district;
	}


	public void setDistrict(String district) {
		this.district = district;
	}


	public int getPincode() {
		return Pincode;
	}


	public void setPincode(int pincode) {
		Pincode = pincode;
	}


	public String getStates() {
		return states;
	}


	public void setStates(String states) {
		this.states = states;
	}


	public long getPhone_Number() {
		return Phone_Number;
	}


	public void setPhone_Number(long phone_Number) {
		Phone_Number = phone_Number;
	}


	public String getResident() {
		return resident;
	}


	public void setResident(String resident) {
		this.resident = resident;
	}


	public String getDisability() {
		return disability;
	}


	public void setDisability(String disability) {
		this.disability = disability;
	}


public Passport(String name, String gender, String dob, int age, String user_email, String user_password,
			String father_name, String mother_name, String pan_number, long aadhar_number, String martial_status,
			String address, int door_no, String street, String district, int pincode, String states,
			long phone_Number, String resident, String disability) {
		super();
		this.name = name;
		Gender = gender;
		this.dob = dob;
		this.age = age;
		this.user_email = user_email;
		this.user_password = user_password;
		this.father_name = father_name;
		this.mother_name = mother_name;
		this.pan_number = pan_number;
		this.aadhar_number = aadhar_number;
		this.martial_status = martial_status;
		this.address = address;
		this.door_no = door_no;
		this.street = street;
		this.district = district;
		Pincode = pincode;
		this.states = states;
		Phone_Number = phone_Number;
		this.resident = resident;
		this.disability = disability;
	}




	
}




