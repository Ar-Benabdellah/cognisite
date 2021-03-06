package com.cognicap.codemy.core.persistence.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

/**
 * A simple POJO representing a Person
 * 
 */
@Document
public class Person {

	@Id
	private String personId;

	private String name;
	private String homeTown;

	@Indexed
	private int age;

	public Person(String name, int age) {
		this.name = name;
		this.age = age;
	}

	public String getPersonId() {
		return personId;
	}

	public void setPersonId(final String personId) {
		this.personId = personId;
	}

	public String getName() {
		return name;
	}

	public void setName(final String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(final int age) {
		this.age = age;
	}

	public String getHomeTown() {
		return homeTown;
	}

	public void setHomeTown(final String homeTown) {
		this.homeTown = homeTown;
	}

	@Override
	public String toString() {
		return "Person [id=" + personId + ", name=" + name + ", age=" + age
				+ ", home town=" + homeTown + "]";
	}

}