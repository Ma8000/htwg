package Abgabe7.Aufgabe9;

import Abgabe2.Aufgabe5.Passenger;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;


public class AirportSystem {

	public static void main(String[] args) {
		HashMap<Passenger, Boolean> map = new HashMap<>();


		Passenger passenger1 = new Passenger("Marvin", 20);
		Passenger passenger2 = new Passenger("Gustav", 24);
		Passenger passenger3 = new Passenger("Adrian", 55);

		map.put(passenger1, false);
		map.put(passenger2, false);
		map.put(passenger3, false);


		Set<Entry<Passenger,Boolean>> entries = map.entrySet();

		for (Entry<Passenger, Boolean> entry : entries) {
			System.out.println(entry.getKey()+": "+ entry.getValue());
		}

		for(Map.Entry<Passenger,Boolean> pair : map.entrySet()){

			System.out.println(pair.getKey()+": "+ pair.getValue());

		}
	}


}
