package com.cognicap.codemy.core.repository;

import java.util.List;

import org.bson.types.ObjectId;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import com.cognicap.codemy.core.persistence.domain.Course;

/**
 * Repository for {@link Course}s
 * 
 */
@Repository
public class CourseRepository {

	static final Logger logger = LoggerFactory
			.getLogger(CourseRepository.class);

	@Autowired
	MongoTemplate mongoTemplate;

	public void logAllCourses() {
		List<Course> results = mongoTemplate.findAll(Course.class);
		logger.info("Total amount of Courses: {}", results.size());
		logger.info("Results Courses: {}");
		for (Course p : results) {
			logger.info("" + p);
		}
	}

	public List<Course> searchCourses(String keyWord, int limit) {
		List<Course> results = mongoTemplate.find(
				new Query(Criteria.where("title").regex(
						"^.*" + keyWord.trim() + ".*$", "i")).limit(limit), Course.class);
		return results;
	}

	public List<Course> getAllCourses() {
		List<Course> results = mongoTemplate.findAll(Course.class);
		return results;
	}

	public Course getCourse(String id) {
		Course course = mongoTemplate.findOne(new Query(Criteria.where("id")
				.is(id)), Course.class);
		
		return course;
	}
	public Course getCourseByTitle(String title) {
		Course course = mongoTemplate.findOne(new Query(Criteria.where("title")
				.is(title)), Course.class);
		return course;
	}

	public void insertCourse(Course p) {

		mongoTemplate.insert(p);

	}

	/**
	 * Adds a new person
	 */
	public Boolean add(Course course) {
		logger.debug("Adding a new course");
		
		try {
			// Insert to db
		    mongoTemplate.insert(course);

			return true;
			
		} catch (Exception e) {
			logger.error("An error has occurred while trying to add new course", e);
			return false;
		}
	}
	
	/**
	 * Deletes an existing person
	 */
	public Boolean delete(String id) {
		logger.debug("Deleting existing course");
		
		try {
			
			// Find an entry where id matches the id
	        Query query = new Query(Criteria.where("id").is(id));
	        // Run the query and delete the entry
	        mongoTemplate.remove(query, Course.class);
			return true;
			
		} catch (Exception e) {
			logger.error("An error has occurred while trying to delete new course", e);
			return false;
		}
	}
	
	/**
	 * Edits an existing person
	 */
	public Boolean edit(Course course) {
		logger.debug("Editing existing person");
		
		try {
			
			// Find an entry where id matches the id
	        Query query = new Query(Criteria.where("id").is(course.getId()));
			// Declare an Update object. 
	        // This matches the update modifiers available in MongoDB
			Update update = new Update();
		
	        update.set("sigle", course.getSigle());
	        update.set("icon", course.getIcon());
	        update.set("title", course.getTitle());
	        update.set("level", course.getLevel());
	        update.set("format", course.getFormat());
	        update.set("duration", course.getDuration());
	        update.set("niveau", course.getNiveau());
	        update.set("objectif", course.getObjectif());
	        update.set("prerequisite", course.getPrerequisite());
	        update.set("description", course.getDescription());
	        mongoTemplate.updateFirst(query, update, Course.class);
	        
			return true;
			
		} catch (Exception e) {
			logger.error("An error has occurred while trying to edit existing course", e);
			return false;
		}
		
	}
	/**
	 * Create a {@link Course} collection if the collection does not already
	 * exists
	 */
	public void createCourseCollection() {
		if (!mongoTemplate.collectionExists(Course.class)) {
			mongoTemplate.createCollection(Course.class);
		}
	}

	/**
	 * Drops the {@link Course} collection if the collection does already exists
	 */
	public void dropCourseCollection() {
		if (mongoTemplate.collectionExists(Course.class)) {
			mongoTemplate.dropCollection(Course.class);
		}
	}
	
	
}