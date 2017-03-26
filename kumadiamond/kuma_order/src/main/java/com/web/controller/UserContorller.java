package com.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.web.model.Login;
import com.web.model.User;
import com.web.service.UserService;

@Controller
@RequestMapping(value = "/userController")
public class UserContorller {
	@Autowired
	private UserService userService;
	
	
	@RequestMapping(value = "/login")
	@ResponseBody
	public String login(Login login) {
		userService.selectByOrder(login);
		return "jsp/user.jsp";
	}

	/**
	 * 获取所有用户列表
	 */
	@RequestMapping(value = "/getAllUser")
	public String getAllUser(HttpServletRequest request, Model model) {
		List<User> user = userService.findAll();
		 model.addAttribute("userList", user);
		 request.setAttribute("userList", user);
		return "jsp/allUser";
	}

	/**
	 * 跳转到添加用户界面
	 */
	@RequestMapping(value = "/toAddUser")
	public String toAddUser() {
		return "jsp/addUser";
	}
	


	/**
	 * 添加用户并重定向
	 */
	@RequestMapping(value = "/addUser")
	public String addUser(User user, Model model) {
		userService.save(user);
		return "jsp/allUser";
	}

	/**
	 * 编辑用户
	 */
	@RequestMapping(value = "/updateUser")
	public String updateUser(User user, HttpServletRequest request, Model model) {
		if (userService.update(user)) {
			user = userService.findById(user.getId());
			request.setAttribute("user", user);
			model.addAttribute("user", user);
			return "redirect:/userController/getAllUser";
		} else {
			return "/error";
		}
	}

	/**
	 * 根据id查询单个用户
	 */
	@RequestMapping("/getUser")
	public String getUser(int id, HttpServletRequest request, Model model) {
		request.setAttribute("user", userService.findById(id));
		model.addAttribute("user", userService.findById(id));
		return "jsp/editUser";
	}

	/**
	 * 删除用户
	 */
	@RequestMapping(value = "/delUser")
	public void delUser(int id, HttpServletRequest request, HttpServletResponse response) {
		String result = "{\"result\":\"error\"}";
		if (userService.delete(id)) {
			result = "{\"result\":\"success\"}";
		}
		response.setContentType("application/json");
		try {
			PrintWriter out = response.getWriter();
			out.write(result);
		} catch (IOException e) {
			e.printStackTrace();

		}

	}
}