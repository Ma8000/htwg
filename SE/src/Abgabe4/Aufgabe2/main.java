package Abgabe4.Aufgabe2;

public class main {

	public static void main(String[] args) {

		for (CarType carType:CarType.values()) {

			Double tax = carType.calculateTax();
			System.out.println(carType + ": "+tax+"€");

		}
	}
}
