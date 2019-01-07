package com.samik.restController;

import java.util.ArrayList;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
public class StudentRestAPIController {
	
	@RequestMapping(value="/students", method = RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
	public ArrayList<Student> getStudentList(){
		Student student1  = new Student();
		student1.setStudentName("Samik");
		
		Student student2  = new Student();
		student2.setStudentName("Sanu");
		
		Student student3  = new Student();
		student3.setStudentName("Abhirup");
		
		ArrayList<Student> studentList = new ArrayList<Student>();
		studentList.add(student1);
		studentList.add(student2);
		studentList.add(student3);
		 
		return studentList;
	}
	@RequestMapping(value="/student/{name}", method = RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE)
	public Student getStudentData(@PathVariable("name") String name){
		Student student  = new Student();
		student.setStudentName(name);
		return student;
	}
	
	@RequestMapping(value="/student/{name}", method = RequestMethod.PUT, consumes=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Boolean> updateStudent(@PathVariable("name") String name, @RequestBody Student student){
		System.out.println("name: " + name);
		System.out.println("name: " + student.getStudentName());
		return new ResponseEntity<Boolean>(true, HttpStatus.OK);
	}
	
	@RequestMapping(value="/student/{name}", method = RequestMethod.DELETE)
	public ResponseEntity<Boolean> deleteStudent(@PathVariable("name") String name){
		System.out.println("Deleting Name: " + name);
		return new ResponseEntity<Boolean>(true, HttpStatus.OK);
	}
	
	@RequestMapping(value="/student", method = RequestMethod.POST, consumes=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Boolean> createStudent(@RequestBody Student student){
		System.out.println("Creating Name: " + student.getStudentName());
		return new ResponseEntity<Boolean>(true, HttpStatus.OK);
	}
	
	@RequestMapping(value="/studentFromList", method=RequestMethod.PUT, produces=MediaType.APPLICATION_JSON_VALUE)
	protected ArrayList<String> getStudentsListFromList(@RequestBody ArrayList<String> locIds){
		System.out.println("Size: " + locIds.size());
		System.out.println("locIds: " + locIds.get(0) + " " + locIds.get(1) + " " + locIds.get(2));
		ArrayList<String> lstReturn = locIds;
		return lstReturn;
	}
}

/*{
	"studentName": "samik5"
}*/

/*public class TestMain {
	public static void main(String[] args) {
		try {
			ObjectMapper mapper = new ObjectMapper();
			List<String> list = new ArrayList<String>();
			list.add("L001");
			list.add("L002");
			list.add("L003");
			ObjectMapper objectMapper = new ObjectMapper();
			String arrayToJson = objectMapper.writeValueAsString(list);
			System.out.println("arrayToJson: " + arrayToJson);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}*/