package com.gamehoo.common.system;

import java.util.List;

/**
 * 分页信息DTO对象
 */
public class PageInfo {
	/**
	 * 总记录数
	 */
	private int totalCount = 0;

	/**
	 * 每页记录数默认10
	 */
	private int pageSize = 10;

	/**
	 * 总页数
	 */
	private int pageCount;

	/**
	 * 当前页
	 */
	private int pageIndex = 1;

	/**
	 * 数据列表
	 */
	private List<?> dataList;

	/**
	 * 默认分页记录数常量
	 */
	public static final int DEFAULT_PAGE_SIZE = 10;
	
	public PageInfo(){
	
	}

	/**
	 * 根据分页记录数创建对象
	 * @param pageSize 分页记录数
	 */
	public PageInfo(int pageSize) {
		setPageSize(pageSize);
	}

	/**
	 * 根据分页记录数和当前页码创建对象
	 * @param pageSize 分页记录数
	 * @param pageIndex 页码
	 */
	public PageInfo(int pageSize, int pageIndex) {
		setPageSize(pageSize);
		setPageIndex(pageIndex);
	}

	/**
	 * 根据分页记录数、当前页码和总记录数创建对象
	 * @param pageSize 分页记录数
	 * @param pageIndex 页码
	 * @param totalCount 总记录数
	 */
	public PageInfo(int pageSize, int pageIndex, int totalCount) {
		setPageSize(pageSize);
		setPageIndex(pageIndex);
		setTotalCount(totalCount);
	}

	public List<?> getDataList() {
		return dataList;
	}

	public void setDataList(List<?> dataList) {
		this.dataList = dataList;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getPageSize() {
		return pageSize;
	}

	/**
	 * 设置每页记录数，如果已经有总记录数则计算页数。
	 * 分页记录数不能为0，为0则采用默认分页记录数
	 * @param pageSize pageSize
	 * @author 魏义凯
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
		if (pageSize == 0){
			this.pageSize = DEFAULT_PAGE_SIZE;
		}
		if (this.totalCount > 0) {
			this.pageCount = this.totalCount / this.pageSize;
			if ((this.totalCount % this.pageSize) > 0) {
				this.pageCount += 1;
			}
		}

	}

	/**
	 * 返回总页数
	 * getTotalCount
	 * @return 总页数
	 * @author 魏义凯
	 */
	public int getTotalCount() {
		return totalCount;
	}

	/**
	 * 设置总页数
	 * 
	 * @param totalCount totalCount
	 * @author 魏义凯
	 */
	public void setTotalCount(int totalCount) {
		if (totalCount == 0) {
			this.totalCount = 0;
			this.pageCount = 0;
		} else {
			this.totalCount = totalCount;
			if (pageSize == 0){
				this.pageSize = DEFAULT_PAGE_SIZE;
			}
			this.pageCount = this.totalCount / this.pageSize;
			if ((this.totalCount % this.pageSize) > 0) {
				this.pageCount += 1;
			}
		}
	}

}
