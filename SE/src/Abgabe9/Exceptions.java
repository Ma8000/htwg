package Abgabe9;

import Abgabe7.Aufgabe1.LList;

public class Exceptions {

	public static void main(String[] args) throws ObjectNotFoundException, OutOfLastListEntryException {


		LList<Double> ints = new LList<>();
		ints.put(0,5.0);
		ints.remove(3.4);

	}

}
