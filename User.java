package ss;

public class User {
String name;
String email;
String gender;

/**
 * @return the name
 */
public User() {
	
}
public User(String name,String email,String gender) {
	
	this.name=name;
	this.email=email;
	this.gender=gender;
}

public String getName() {
	return name;
}
/**
 * @param name the name to set
 */
public void setName(String name) {
	this.name = name;
}
/**
 * @return the email
 */
public String getEmail() {
	return email;
}
/**
 * @param email the email to set
 */
public void setEmail(String email) {
	this.email = email;
}
/**
 * @return the gender
 */
public String getGender() {
	return gender;
}
/**
 * @param gender the gender to set
 */
public void setGender(String gender) {
	this.gender = gender;
}


}
