package jpa_example_College_prac;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class person implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	long id;
	String name;
	int age;
	
	public person() {
		super();
	}
	
	public person(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}

	public long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}
}
