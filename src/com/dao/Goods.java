package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.JdGoods;
import com.entity.User;
import com.util.DButil;

public class Goods {
		
	//注册方法
	public void saveUser(User user){
		Connection conn = DButil.getConnection();
		String sql = " insert into users(id,name,password) values (users_id_seq.nextval,?,?) ";
		PreparedStatement pst = null;
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, user.getName());
			pst.setString(2, user.getPassword());
			pst.executeUpdate();
			pst.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//登录方法
	public User findUser(String name, String pass) throws SQLException{
		User user = null;
		Connection conn = DButil.getConnection();
		String sql = " select * from users where name=? and password = ? ";
		PreparedStatement pst= conn.prepareStatement(sql);
		pst.setString(1, name);
		pst.setString(2, pass);
		ResultSet rs = pst.executeQuery();
		while(rs.next()){
			user = new User();
			user.setName(rs.getString("name"));
			user.setPassword(rs.getString("password"));
		}
		rs.close();
		pst.close();
		conn.close();
		return user;
	}
	
	//遍历商品的方法
	public List<JdGoods> findAllGoods() throws SQLException{
		List<JdGoods> list = new ArrayList<JdGoods>();
		Connection conn = DButil.getConnection();
		String sql = " select * from goods ";
		PreparedStatement pst = conn.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		while(rs.next()){
			JdGoods jd = new JdGoods();
			jd.setId(rs.getInt("id"));
			jd.setEvaluate(rs.getInt("evaluate"));
			jd.setImgURL(rs.getString("imgURL"));
			jd.setManufacturer(rs.getString("manufacturer"));
			jd.setPrice(rs.getDouble("price"));
			jd.setTitle(rs.getString("title"));
			jd.setType(rs.getString("title"));
			list.add(jd);
		}
		rs.close();
		pst.close();
		conn.close();
		return list;
		
	}
	//模糊查询的方法
	public List<JdGoods> findSearchGoods(){
		List<JdGoods> list = new ArrayList<JdGoods>();
		Connection conn = DButil.getConnection();
		String sql = " select * from goods where like '%' ";
		return list;
	}
	
}
