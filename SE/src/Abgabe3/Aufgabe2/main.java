package Abgabe3.Aufgabe2;

import java.util.Scanner;

public class main {

	public static void main(String[] args) {

		Plane[] planes= new Plane[10];
		planes[0] = new Plane(1,1000, "Krass Turbine");
		planes[1] = new Plane(2,7,"Propeller");
		planes[2] = new Plane(3, 2,"Segler");
		planes[5] = new Plane(6, 11,"test");
		boolean run=true;

		while(run) {
			for (Plane p : planes) System.out.println(p != null ? p.getData() : "Empty");

			System.out.println("What plane do you want?");
			Scanner sc = new Scanner(System.in);
			int in = sc.nextInt() - 1;

			if (planes[in] == null) System.out.println("Plane is not existing");
			else {
				int i = 0;
				while (planes[i] != null) i++;
				if(i>=planes.length-1)run=false;
				//planes[i] = new Plane(i + 1, planes[in].getSeats(), planes[in].getEngine());
				planes[i] = planes[in].copy(i+1);

			}
		}
		System.out.println("Kein Platz mehr");
		for (Plane p : planes) System.out.println(p != null ? p.getData() : "Empty");
	}

}
