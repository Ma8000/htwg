package Abgabe10.Aufgabe3;

import Abgabe2.Aufgabe5.*;
import Abgabe7.Aufgabe1.LList;


public class Airportsystem {

	LList<Human> passengers = new LList();

	public String printPassengerList(Human human) throws MissingPermissionException{

		if(human instanceof Pilot){
			return ((Pilot) human).seePassengersList();
		}
		else if(human instanceof CrewMember){
			return ((CrewMember) human).seePassengersList();
		}else {
			throw new MissingPermissionException();
		}
	}

}
