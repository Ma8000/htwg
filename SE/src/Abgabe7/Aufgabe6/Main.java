package Abgabe7.Aufgabe6;

import Abgabe2.Aufgabe5.Passenger;
import Abgabe7.Aufgabe1.LList;

import java.util.TreeSet;

public class Main {

	private static LList<Passenger> passengers = new LList();

	public static void main(String[] args) {

		passengers.insert(new Passenger("Marvin",12));
		passengers.insert(new Passenger("Gustav",57));
		passengers.insert(new Passenger("Adrian",93));


		System.out.println(passengers.getClass());

		passengers.print();

		TreeSet<Passenger> treeSet = new TreeSet<>(new AlphabeticalComperator());

		treeSet.add(new Passenger("Marvin",45));
		treeSet.add(new Passenger("Gustav",65));
		treeSet.add(new Passenger("Adrian",5));

		for (Passenger passenger:treeSet ) {
			System.out.println(passenger.getName());
		}



	}

}
