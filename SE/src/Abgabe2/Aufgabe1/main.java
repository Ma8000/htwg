package Abgabe2.Aufgabe1;

public class main {

	public static void main(String[] args) {

		Employee[] employee = new Employee[3];

		int totalSalary=0;

		employee[0] = new A();
		employee[1] = new B();
		employee[2] = new C();




		for(Employee e: employee){
			totalSalary+=e.getSalary();

		}
		System.out.println(totalSalary);


	}
}
