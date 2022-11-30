package com.george.studentmarks.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.george.studentmarks.enitities.Student;

public interface StudentRepository extends JpaRepository<Student, Integer> {

}
