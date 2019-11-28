package Abgabe2.Aufgabe5;

public class Passenger implements Human {

	private String name;




	@Override
	public String seeFlightDetails() {
		return "Flight Details";
	}

	@Override
	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String getName() {
		return name;
	}

	@Override
	public boolean equals(Object obj){
		if(this== obj)return true;
		if(obj== null)return false;
		if(getClass() != obj.getClass())return false;
		Human other = (Human) obj;
		if(name== null) {
			if(other.getName()!= null)return false;
		} else if(!name.equals(other.getName()))return false;
		return true;
	}
}
