package Abgabe2.Aufgabe5;

import Abgabe2.Aufgabe1.C;

public class main {

	public static void main(String[] args) {

		Pilot pilot = new Pilot();
		pilot.cancel();

		CrewMember cm = new CrewMember();
		cm.seePassengersList();
		Passenger passenger = new Passenger();
		passenger.seeFlightDetails();


	}
}
