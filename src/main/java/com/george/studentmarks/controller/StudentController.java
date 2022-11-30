package com.george.studentmarks.controller;

import java.util.List;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.george.studentmarks.enitities.Student;
import com.george.studentmarks.repos.StudentRepository;

@Controller
public class StudentController {
	
	@Autowired
	StudentRepository repo;
	
	@RequestMapping("/")
	public String addstudent() {
		return "newscore";
	}
	
	@RequestMapping("/saveStud")
	public String saveStud(@ModelAttribute("student") Student student, ModelMap modelMap) {
		repo.save(student);
		List<Student> students = repo.findAll();
		modelMap.addAttribute("students", students);
		return "displayStudents";
		//return "newscore";
	}
	
	@RequestMapping("/displayStudents")
	public String displayStudents(ModelMap modelMap) {
		List<Student> students = repo.findAll();
		modelMap.addAttribute("students", students);
		return "displayStudents";
	}
	
	@RequestMapping("/showUpdate")
	public String showUpdate(@RequestParam("id") int id, ModelMap modelMap) {
		Student student = repo.findById(id).get();
		modelMap.addAttribute("student", student);
		return "updateStudent";
	}

	@RequestMapping("/updateStud")
	public String updateStudent(@ModelAttribute("student") Student student, ModelMap modelMap) {
		repo.save(student);
		List<Student> students = repo.findAll();
		modelMap.addAttribute("students", students);
		return "displayStudents";
	}
	

}
