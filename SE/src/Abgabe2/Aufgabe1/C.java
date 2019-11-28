package Abgabe2.Aufgabe1;

public class C  implements Employee{

	int basicSalary=1200;
	boolean bonus=true;
	int salary;

	public int getBasicSalary() {
		return basicSalary;
	}

	public void setBasicSalary(int basicSalary) {
		this.basicSalary = basicSalary;
	}

	@Override
	public int getSalary() {
		return bonus?basicSalary+1000:basicSalary;
	}


	public boolean isBonus() {
		return bonus;
	}

	public void setBonus(boolean bonus) {
		this.bonus = bonus;
	}
}
