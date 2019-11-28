package Abgabe4.Aufgabe1;

public class main {

	public static void main(String[] args) {
		Month month= Month.February;
		System.out.println(month.name() + " has " + month.getDays() + " days.");
		if(month.in(Season.Winter)) {
			System.out.println("This month is in Winter.");
		}
	}
}
