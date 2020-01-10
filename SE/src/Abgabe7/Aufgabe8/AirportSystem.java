package Abgabe7.Aufgabe8;

import Abgabe2.Aufgabe5.*;
import Abgabe7.Aufgabe6.AlphabeticalComperator;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Scanner;
import java.util.TreeSet;

public class AirportSystem {


	public static void main(String[] args) {




		System.out.println("Ascending by Name: 0, Ascending by age: 1");
		Scanner sc = new Scanner(System.in);
		int value = sc.nextInt();

		TreeSet<Passenger> treeSet;
		if (value == 0) {

			treeSet = new TreeSet<Passenger>(new AlphabeticalComperator());
		}
		else{
			treeSet = new TreeSet<Passenger>(new AgeComperator());
		}

		treeSet.add(new Passenger("Marvin",20));
		treeSet.add(new Passenger("Gustav",24));
		treeSet.add(new Passenger("Adrian",55));


		for (Passenger passenger:treeSet ) {
			System.out.println(passenger.getName()+ " " + passenger.getAge());
		}

	}
}
