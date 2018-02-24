package com.entity;
	/**
	 * 在此类里面显示的是所有的商品
	 * 商品 实体类 都必须 要是序列化
	 * @author Administrator
	 *
	 */
public class JdGoods {
	private int id;
	private String type;
	private String title;
	private double price;
	private String imgURL;
	private String manufacturer;//制作商
	private int evaluate;//评论
	public JdGoods() {
		super();
		// TODO Auto-generated constructor stub
	}
	public JdGoods(int id, String type, String title, double price,
			String imgURL, String manufacturer, int evaluate) {
		super();
		this.id = id;
		this.type = type;
		this.title = title;
		this.price = price;
		this.imgURL = imgURL;
		this.manufacturer = manufacturer;
		this.evaluate = evaluate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImgURL() {
		return imgURL;
	}
	public void setImgURL(String imgURL) {
		this.imgURL = imgURL;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public int getEvaluate() {
		return evaluate;
	}
	public void setEvaluate(int evaluate) {
		this.evaluate = evaluate;
	}
	@Override
	public String toString() {
		return "JdGoods [id=" + id + ", type=" + type + ", title=" + title
				+ ", price=" + price + ", imgURL=" + imgURL + ", manufacturer="
				+ manufacturer + ", evaluate=" + evaluate + "]";
	}
	
	
}
