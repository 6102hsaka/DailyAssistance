package com.akash.project.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.akash.project.model.Todo;
import com.akash.project.model.User;
import com.akash.project.service.UserService;

@Controller
public class ActivityController {

	@Autowired
	private UserService userService;
	
	@ModelAttribute(name="todo")
	public Todo setUp() {
		return new Todo();
	}
	
	@GetMapping(value = "/addtodo")
	public String addTodo(HttpSession session, ModelMap model) {
		Object uid = session.getAttribute("currentUserId");
		if (uid == null) {
			return "notLoggedIn";
		}
		model.put("currentUserId", uid.toString());
		return "addTodo";
	}
	
	@GetMapping(value = "/addToDB")
	public String addToDatabase(HttpSession session, @ModelAttribute Todo todo) {
		Object uid = session.getAttribute("currentUserId");
		User user = userService.findbyId(uid.toString());
		List<Todo> todos = user.getTodos();
		if(todos==null) {
			todos=new ArrayList<Todo>();
		}
		todo.setId(new Date().toString());
		todos.add(todo);
		user.setTodos(todos);
		userService.save(user);
		return "redirect:/listtodo";
	}

	@GetMapping(value = "/profile")
	public String goToprofile(HttpSession session, ModelMap model) {
		Object uid = session.getAttribute("currentUserId");
		if (uid == null) {
			return "notLoggedIn";
		}
		model.put("currentUserId", uid.toString());
		return "profilePage";
	}

	@GetMapping(value = "/listtodo")
	public String goToListTodo(HttpSession session, ModelMap model) {
		Object uid = session.getAttribute("currentUserId");
		if (uid == null) {
			return "notLoggedIn";
		}
		User user = userService.findbyId(uid.toString());
		List<Todo> todos = user.getTodos();
		if(todos==null) {
			todos=new ArrayList<Todo>();
		}
		model.put("currentUserId", uid.toString());
		model.put("todos", todos);
		return "listTodo";
	}

	@GetMapping(value = "/delete")
	public String delete(@RequestParam String id, HttpSession session) {
		System.out.println(id);
		Object uid = session.getAttribute("currentUserId");
		User user = userService.findbyId(uid.toString());
		List<Todo> todos = user.getTodos();
		if(todos==null) {
			todos=new ArrayList<Todo>();
		}
		Todo remove = null;
		for(int i=0;i<todos.size();i++) {
			if(todos.get(i).getId().equals(id)) {
				remove = todos.get(i);
			}
		}
		if(remove!=null) {
			todos.remove(remove);
			user.setTodos(todos);
			userService.save(user);
		}
		return "redirect:/listtodo";
	}
}
