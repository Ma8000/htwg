package Abgabe4.Aufgabe1;

public enum Month {

	January(31,Season.Winter), February(28,Season.Winter);

	private int days;

	private Month(int days, Season season){
		this.days=days;
		this.season=season;
	}

	public int getDays() {
		return days;
	}

	private Season season;

	public boolean in(Season season){
		return this.season==season;
	}
}
