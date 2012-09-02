package com.cognicap.site.web.controllers;

import java.awt.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cognicap.codemy.core.persistence.domain.Course;
import com.cognicap.site.service.CourseService;
import org.springframework.ui.Model;


@Controller
public class CRUDCourseController {

	@Autowired
	CourseService courseService;

	static final Logger logger = LoggerFactory
			.getLogger(CRUDCourseController.class);

	/**
	 * Handles and retrieves all courses and show it in a ftl page
	 * 
	 * @return the name of the ftl page
	 */
	@RequestMapping(value = { "/Cours" }, method = RequestMethod.GET)
	public ModelAndView getCourses() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("CRUDAffichage");
		courseService.loadDB();
		mav.addObject("courses", courseService.getAllCourses());
		return mav;
	}
    /**
     * Retrieves the add page
     * 
     * @return the name of the ftl page
     */

	@RequestMapping(value = { "/Cours/add" }, method = RequestMethod.GET)
	public ModelAndView getAddCourse() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("addpage");
		mav.addObject("courseAttribute", new Course());
		return mav;
	}
    /**
     * Adds a new person by delegating the processing to PersonService.
     * Displays a confirmation ftl page
     * 
     * @return  the name of the ftl page
     */

	@RequestMapping(value = { "/Cours/add" }, method = RequestMethod.POST)
	public String add(@ModelAttribute("courseAttribute")Course course) {
		courseService.add(course);
		return "redirect:/Cours";
	}
    /**
     * Deletes an existing person by delegating the processing to PersonService.
     * Displays a confirmation JSP page
     * 
     * @return  the name of the JSP page
     */

    @RequestMapping(value = "/Cours/delete", method = RequestMethod.GET)
    public ModelAndView delete(@RequestParam(value="id", required=true) String id) {
   
		logger.debug("Received request to delete existing person");
		
		// Call courseService to do the actual deleting
		courseService.delete(id);

    	
		return new ModelAndView("redirect:/Cours");
	}

    /**
     * Retrieves the edit page
     * 
     * @return the name of the JSP page
     */
    @RequestMapping(value = "/Cours/edit", method = RequestMethod.GET)
    public String getEdit(@RequestParam(value="id", required=true) String id,  
    										Model model) {
    	logger.debug("Received request to show edit page");
    
    
    	model.addAttribute("courseAttribute", courseService.getCourse(id));
    	
    	return "editpage";
	}
  
    /**
     * Edits an existing person by delegating the processing to PersonService.
     * Displays a confirmation JSP page
     * 
     * @return  the name of the JSP page
     */
    @RequestMapping(value = "/Cours/edit", method = RequestMethod.POST)
    public String saveEdit(@ModelAttribute("courseAttribute") Course course, 
    										   @RequestParam(value="id", required=true) String id,
    										   Model model) {
    	logger.debug("Received request to update person");
  
    	course.setId(id);

    	courseService.edit(course);
    	
		return "redirect:/Cours";
	}
    
}