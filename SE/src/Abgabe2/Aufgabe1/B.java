package Abgabe2.Aufgabe1;

public class B implements Employee{

	private int hours=170;
	private int wage=14;


	public int getWage() {
		return wage;
	}

	public void setWage(int wage) {
		this.wage = wage;
	}

	public int getSalary() {
		return hours * wage;
	}

	public int getHours() {
		return hours;
	}

	public void setHours(int hours) {
		this.hours = hours;
	}
}
