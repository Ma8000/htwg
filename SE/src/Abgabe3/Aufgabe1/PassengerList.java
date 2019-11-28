package Abgabe3.Aufgabe1;

import Abgabe2.Aufgabe5.*;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PassengerList {

	int counter = 0;

	private  List<Human> passengers;

	public static void main(String[] args) {

		PassengerList passengerList = new PassengerList();

		passengerList.add(new Pilot(),"Pilot");
		passengerList.add(new Passenger(),"Passenger");
		passengerList.add(new CrewMember(),"CrewMember");
		passengerList.add(new Pilot(),"Pilot");


		for(Human h:passengerList.passengers){

			System.out.println(h.getName());

		}

		System.out.println("/////////////////////////////");

		passengerList.checkForDuplicates();

		for(Human h:passengerList.passengers){

			System.out.println(h.getName());

		}
	}



	public PassengerList(){
		this.passengers = new ArrayList<>();
	}

	public void add(Human human,String name){
		passengers.add(human);
		passengers.get(counter++).setName(name);
	}

	public void checkForDuplicates(){




		for(int i=0;i<passengers.size();i++){
			String name = passengers.get(i).getName();
			for(int j=i+1;j<passengers.size();j++){
				if(name.equals(passengers.get(j).getName())){
					passengers.remove(j);
				}
			}
		}

	}



}
