package com.samik.restController;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class RestClientController {
	
	@Autowired
	UserDetails userDetails;
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Autowired
	Address address;
	
	@RequestMapping(value="/getStudents", method = RequestMethod.GET)
	protected ModelAndView getStudentList() throws Exception{
		
		try {
			URL url = new URL("http://localhost:8081/SpringProjectHersley/students");
			HttpURLConnection conn;
			conn = (HttpURLConnection) url.openConnection();
			
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");
			
			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));
			
			String output;
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
				ObjectMapper mapper = new ObjectMapper();
				List<Student> list = mapper.readValue(output, new TypeReference<List<Student>>(){});
				System.out.println("size: " + list.size());
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		ModelAndView modelAndView = new ModelAndView("content/rest/restClient");
		return modelAndView;
	}
	
	@RequestMapping(value="/getStudent", method = RequestMethod.GET)
	protected ModelAndView getStudent() throws Exception{
		
		try {
			String name="Samik_hitk";
			URL url = new URL("http://localhost:8081/SpringProjectHersley/student/" + name);
			HttpURLConnection conn;
			conn = (HttpURLConnection) url.openConnection();
			
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");
			
			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));
			
			String output;
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
				ObjectMapper mapper = new ObjectMapper();
				Student student = mapper.readValue(output, Student.class);
				System.out.println("Student Name: " + student.getStudentName());
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		ModelAndView modelAndView = new ModelAndView("content/rest/restClient");
		return modelAndView;
	}
	
	@RequestMapping(value="/updateStudent", method = RequestMethod.GET)
	protected ModelAndView updateStudent() throws Exception{
		
		try {
			String name="samik";
			URL url = new URL("http://localhost:8081/SpringProjectHersley/student/" + name);
			HttpURLConnection conn;
			conn = (HttpURLConnection) url.openConnection();
			
			conn.setDoOutput(true);
			conn.setRequestMethod("PUT");
			conn.setRequestProperty("Content-Type", "application/json");
			
			String input = "{\"studentName\": \"samik11\"}";
			OutputStream os = conn.getOutputStream();
			os.write(input.getBytes());
			os.flush();
			
			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));
			
			String output;
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		ModelAndView modelAndView = new ModelAndView("content/rest/restClient");
		return modelAndView;
	}
	
	@RequestMapping(value="/deleteStudent", method = RequestMethod.GET)
	protected ModelAndView deleteStudent() throws Exception{
		
		try {
			String name="samik";
			URL url = new URL("http://localhost:8081/SpringProjectHersley/student/" + name);
			HttpURLConnection conn;
			conn = (HttpURLConnection) url.openConnection();
			
			conn.setRequestMethod("DELETE");
			
			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));
			
			String output;
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		ModelAndView modelAndView = new ModelAndView("content/rest/restClient");
		return modelAndView;
	}
	
	@RequestMapping(value="/insertStudent", method = RequestMethod.GET)
	protected ModelAndView insertStudent() throws Exception{
		
		try {
			URL url = new URL("http://localhost:8081/SpringProjectHersley/student");
			HttpURLConnection conn;
			conn = (HttpURLConnection) url.openConnection();
			
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Type", "application/json");
			
			String input = "{\"studentName\": \"samik15\"}";
			OutputStream os = conn.getOutputStream();
			os.write(input.getBytes());
			os.flush();
			
			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));
			
			String output;
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		ModelAndView modelAndView = new ModelAndView("content/rest/restClient");
		return modelAndView;
	}
	
	@RequestMapping(value="/getStudentFromList", method = RequestMethod.GET)
	protected ModelAndView fetchStudentFromList() throws Exception{
		
		try {
			URL url = new URL("http://localhost:8081/FirstSpringProject/studentFromList");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setDoOutput(true);
			conn.setRequestMethod("PUT");
			conn.setRequestProperty("Content-Type", "application/json");

			String input = "[\"L001\",\"L002\",\"L003\"]";

			OutputStream os = conn.getOutputStream();
			os.write(input.getBytes());
			os.flush();

			BufferedReader br = new BufferedReader(new InputStreamReader(
					(conn.getInputStream())));

			String output;
			System.out.println("Output from Server .... \n");
			while ((output = br.readLine()) != null) {
				System.out.println(output);
			}

			conn.disconnect();
		  }catch (IOException e) {
			e.printStackTrace();
		 }
		
		ModelAndView modelAndView = new ModelAndView("content/rest/restClient");
		return modelAndView;
	}
	
	@RequestMapping(value="/userDetailsSubmit", method = RequestMethod.POST)
	protected ModelAndView hibernatePersistMethod(@RequestParam String userName, 
													@RequestParam String description,
														@RequestParam String birthDate,
															@RequestParam ArrayList<String> hobbyList,
																@RequestParam String city,
																@RequestParam String state,
																@RequestParam String pincode) throws Exception{
		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
		Date date;
		try {
			userDetails.setUserName(userName);
			userDetails.setDescription(description);
			date = formatter.parse(birthDate);
			userDetails.setBirthDate(date);	
			
			for(int i=0;i<hobbyList.size();i++){
				Hobby hobby = new Hobby();
				hobby.setHobbyName(hobbyList.get(i));
				userDetails.getHobbyList().add(hobby);
				hobby.setUser(userDetails);
			}
			
			address.setCity(city);
			address.setState(state);
			address.setPincode(Integer.parseInt(pincode));
			
			userDetails.setAddress(address);
			
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		session.persist(userDetails);
		session.getTransaction().commit();
		session.close();
			
		System.out.println("Name: " + userDetails.getUserName());
		ModelAndView modelAndView = new ModelAndView("content/rest/restClient");
		return modelAndView;
	}
}
