package Abgabe2.Aufgabe4;

public class Car {

	int hp;
	int capacity;
	String color;
	String fuel;

	public Car(int hp, int capacity,String color, String fuel){


	}

	static class CarBuilder{

		int hp = 0;
		int capacity = 0;
		String color=null;
		String fuel=null;

		public CarBuilder setHp(int hp) {
			this.hp = hp;
			return this;
		}

		public CarBuilder setCapacity(int capacity) {
			this.capacity = capacity;
			return this;
		}

		public CarBuilder setColor(String color) {
			this.color = color;
			return this;
		}

		public CarBuilder setFuel(String fuel) {
			this.fuel = fuel;
			return this;
		}

		public Car build(){
			return new Car(hp,capacity,color,fuel);
		}

	}

}
