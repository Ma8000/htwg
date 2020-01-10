package Abgabe7.Aufgabe1;

import Abgabe9.ObjectNotFoundException;
import Abgabe9.OutOfLastListEntryException;

public class Main {

	public static void main(String[] args) throws ObjectNotFoundException, OutOfLastListEntryException {

		Student studentA = new Student("Max", "Mustermann");
		Student studentB = new Student("Peter", "Maier");
		Student studentC = new Student("Michael", "Müller");
		Student studentD = new Student("Steffan", "Schmidt");

		LList<Student> students = new LList<>();
		students.insert(studentA);
		students.insert(studentB);
		students.insert(studentC);

		System.out.println("student's size: "+ students.size());
		Student student = students.get(1);
		System.out.println("Student index 1: "+student.getName());

		//students.put(1,studentB);
		students.insert(1,studentD);
		for (Student t :students) {

			System.out.println(t.getName()+" "+t.getSurname());

		}
		System.out.println("//////////////////////");

		System.out.println(students.remove(studentB));
		for (Student t :students) {

			System.out.println(t.getName()+" "+t.getSurname());

		}

		students.print();

		System.out.println("//////////////////////");
		LList<String> strings = new LList();

		strings.insert("String a");
		strings.insert("string b");
		strings.insert("string c");
		System.out.println(strings.size());

		for (String string : strings) {
			String stringToPrint = string;
			System.out.println(stringToPrint);
		}

		strings.remove(1);
		System.out.println("after deletion");
		for (Object object : strings) {
			String stringToPrint = (String)object;
			System.out.println(stringToPrint);
		}



	}
}
