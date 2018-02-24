package com.entity;

public class User {
		private int id;
		private String name;
		private String password;
		private int shoopingavr_id;
		
		public User() {
			super();
		}
		public User(int id, String name, String password, int shoopingavr_id) {
			super();
			this.id = id;
			this.name = name;
			this.password = password;
			this.shoopingavr_id = shoopingavr_id;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public int getShoopingavr_id() {
			return shoopingavr_id;
		}
		public void setShoopingavr_id(int shoopingavr_id) {
			this.shoopingavr_id = shoopingavr_id;
		}
		
		
}
