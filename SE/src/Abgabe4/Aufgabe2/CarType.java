package Abgabe4.Aufgabe2;

public enum CarType {
	Diesel(Unit.L){
		@Override
		double calculateTax() {
			return 300.50;
		}
	},Petrol(Unit.L){
		@Override
		double calculateTax(){
			return 200.60;
		}
	},Electric(Unit.kWh){
		@Override
		double calculateTax(){
			return 144.90;
		}
	};

	private Unit unit;

	private CarType(Unit unit){this.unit=unit;}
	public Unit getUnit(){return unit;}
	abstract double calculateTax();
}
