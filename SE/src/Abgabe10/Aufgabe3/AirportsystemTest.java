package Abgabe10.Aufgabe3;

import Abgabe2.Aufgabe5.*;
import org.junit.Test;

import static org.junit.Assert.*;

public class AirportsystemTest {

	@Test
	public void testPrintPassengerList_CrewMember() throws MissingPermissionException {
		//given
		Airportsystem as = new Airportsystem();
		CrewMember crewMember = new CrewMember();
		//when
		String s = as.printPassengerList(crewMember);
		//then
		assertEquals(new CrewMember().seePassengersList(),s);
	}

	@Test
	public void testPrintPassengerList_Pilot() throws MissingPermissionException {
		//given
		Airportsystem as = new Airportsystem();
		Pilot pilot = new Pilot();
		//when
		String s = as.printPassengerList(pilot);
		//then
		assertEquals(new Pilot().seePassengersList(),s);

	}

	@Test(expected = MissingPermissionException.class)
	public void testPrintPassengerList_Passenger() throws MissingPermissionException {
		//given
		Airportsystem as = new Airportsystem();
		Passenger passenger = new Passenger();
		//when
		as.printPassengerList(passenger);
	}

}
