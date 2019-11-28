package Abgabe2.Aufgabe2;

public class Vegetable implements DB{


	@Override
	public DB search(String name) {

		if(name.equals(this.name)) return this;
		else return null;
	}

	@Override
	public String getName() {
		return name;
	}

	public String name;

	public Vegetable(String name) {
		this.name = name;
	}
}
