/**
 * @(#)EmployeeModel.java 2021/09/22.
 * 
 * Copyright(C) 2021 by PHOENIX TEAM.
 * 
 * Last_Update 2021/09/22.
 * Version 1.00.
 */
package haui.store.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Class thong tin truy van cua bang MenuOne
 * 
 * @author khoa-ph
 * @version 1.00
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Nav1Model {
	private int id;
	private String name;
	private int categoryId;
	private String nameSearch;

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

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getNameSearch() {
		return nameSearch;
	}

	public void setNameSearch(String nameSearch) {
		this.nameSearch = nameSearch;
	}
}
