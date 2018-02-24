package com.action;


import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Goods;
import com.entity.JdGoods;
import com.entity.User;

public class Register extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
	@SuppressWarnings("unused")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		//通过路径名来判断走的是哪一个操作
		String uri = req.getRequestURI();
		//获取路径
		uri = uri.substring(uri.lastIndexOf("/"), uri.lastIndexOf("."));
		HttpSession session = req.getSession();
		Goods goods = new Goods();
		
		//判断路径
		if(uri.equals("/register")){ //注册
			String name = req.getParameter("username");
			String pass = req.getParameter("password");
			User user = new User();
			user.setName(name);  //将页面上拿到的值添加进数据库
			user.setPassword(pass);//将页面上拿到的值添加进数据库
			if(user!=null){
				session.setAttribute("user", user);
				goods.saveUser(user);	//添加进user表
				resp.sendRedirect("login.jsp");
			}
			else{
				resp.sendRedirect("register.jsp");
			}
		}
		
		//展示所有的商品
		if(uri.equals("/list")){
//			if(session.getAttribute("user")==null){	//判断session里面有没有此用户
//				resp.sendRedirect("login.jsp");
//			}
			try {
				List<JdGoods> jdgoods = goods.findAllGoods();
				req.setAttribute("list", jdgoods);	//将所有物品存进list里面，再将其在页面上遍历出来
				req.getRequestDispatcher("/listGoods.jsp").forward(req, resp);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
