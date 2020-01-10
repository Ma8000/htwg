package Abgabe7.Aufgabe6;

import Abgabe2.Aufgabe5.Passenger;

import java.util.Comparator;

public class AlphabeticalComperator implements Comparator<Passenger> {


	@Override
	public int compare(Passenger o1, Passenger o2) {
		return o1.getName().compareTo(o2.getName());
	}
}
