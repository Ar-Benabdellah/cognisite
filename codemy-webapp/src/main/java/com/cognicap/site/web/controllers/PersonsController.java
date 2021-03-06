/*
 *  Cognicap Website
 *  Copyright (C) 2010 Cognicap SARL
 *  www.cognicap.com
 *
 *  Licensed under the GPL, Version 3.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://gplv3.fsf.org/
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */
package com.cognicap.site.web.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cognicap.site.service.PersonsService;

/**
 * @version $Id$
 * @since 0.9
 */
@Controller
public class PersonsController {

	@Autowired
	PersonsService personsService;

	static final Logger logger = LoggerFactory
			.getLogger(PersonsController.class);

	@RequestMapping(value={ "/Persons", "/Persons/*" }, method = RequestMethod.GET)
	public ModelAndView helloMongo() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("persons");

		personsService.loadDB();
		mav.addObject("persons", personsService.getAllPersons());

		return mav;
	}
}