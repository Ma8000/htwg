package Abgabe3.Aufgabe2;

public class Plane {

	int id;
	int seats;
	String engine;

	public Plane(int id, int seats, String engine) {
		this.id = id;
		this.seats = seats;
		this.engine = engine;
	}

	public String getData(){
		return id + " "+seats + " "+engine;

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSeats() {
		return seats;
	}

	public void setSeats(int seats) {
		this.seats = seats;
	}

	public String getEngine() {
		return engine;
	}

	public void setEngine(String engine) {
		this.engine = engine;
	}

	public Plane copy(int newID){
		Plane newPlane = new Plane(newID, getSeats(),getEngine());
		return newPlane;
	}
}
