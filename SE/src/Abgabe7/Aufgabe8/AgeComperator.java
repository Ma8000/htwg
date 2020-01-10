package Abgabe7.Aufgabe8;

import Abgabe2.Aufgabe5.Passenger;

import java.util.Comparator;

public class AgeComperator implements Comparator<Passenger> {

	@Override
	public int compare(Passenger o1, Passenger o2) {
		return o1.getAge() - o2.getAge();
	}
}
