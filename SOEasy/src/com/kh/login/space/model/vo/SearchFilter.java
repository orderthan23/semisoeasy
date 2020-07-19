package com.kh.login.space.model.vo;

public class SearchFilter implements java.io.Serializable{
	private String search;					//검색어
//	공간유형
	private int spaceKind;					//공간종류
	private int didHostOk;					//호스트 승인 여부 	
//	지역유형
	private String spaceLocationFilter;		//지역
//	이용유형
	private int term;						//이용기간
//	가격
	private int rowPrice;					//최소가격
	private int highPrice;					//최대가격
//	정렬
	private String rowPriceSort;			//가격 낮은순
	private String highPriceSort;			//가격 높은순
	private int reviewCount;				//리뷰 많은순
	
	public SearchFilter() {}

	public SearchFilter(String search, int spaceKind, int didHostOk, String spaceLocationFilter, int term, int rowPrice,
			int highPrice, String rowPriceSort, String highPriceSort, int reviewCount) {
		super();
		this.search = search;
		this.spaceKind = spaceKind;
		this.didHostOk = didHostOk;
		this.spaceLocationFilter = spaceLocationFilter;
		this.term = term;
		this.rowPrice = rowPrice;
		this.highPrice = highPrice;
		this.rowPriceSort = rowPriceSort;
		this.highPriceSort = highPriceSort;
		this.reviewCount = reviewCount;
	}

	public String getSearch() {
		return search;
	}

	public int getSpaceKind() {
		return spaceKind;
	}

	public int getDidHostOk() {
		return didHostOk;
	}

	public String getSpaceLocationFilter() {
		return spaceLocationFilter;
	}

	public int getTerm() {
		return term;
	}

	public int getRowPrice() {
		return rowPrice;
	}

	public int getHighPrice() {
		return highPrice;
	}

	public String getRowPriceSort() {
		return rowPriceSort;
	}

	public String getHighPriceSort() {
		return highPriceSort;
	}

	public int getReviewCount() {
		return reviewCount;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public void setSpaceKind(int spaceKind) {
		this.spaceKind = spaceKind;
	}

	public void setDidHostOk(int didHostOk) {
		this.didHostOk = didHostOk;
	}

	public void setSpaceLocationFilter(String spaceLocationFilter) {
		this.spaceLocationFilter = spaceLocationFilter;
	}

	public void setTerm(int term) {
		this.term = term;
	}

	public void setRowPrice(int rowPrice) {
		this.rowPrice = rowPrice;
	}

	public void setHighPrice(int highPrice) {
		this.highPrice = highPrice;
	}

	public void setRowPriceSort(String rowPriceSort) {
		this.rowPriceSort = rowPriceSort;
	}

	public void setHighPriceSort(String highPriceSort) {
		this.highPriceSort = highPriceSort;
	}

	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}

	@Override
	public String toString() {
		return "SearchFilter [search=" + search + ", spaceKind=" + spaceKind + ", didHostOk=" + didHostOk
				+ ", spaceLocationFilter=" + spaceLocationFilter + ", term=" + term + ", rowPrice=" + rowPrice
				+ ", highPrice=" + highPrice + ", rowPriceSort=" + rowPriceSort + ", highPriceSort=" + highPriceSort
				+ ", reviewCount=" + reviewCount + "]";
	}
	
	
	
}
