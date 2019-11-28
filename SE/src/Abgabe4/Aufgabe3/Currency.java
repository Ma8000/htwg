package Abgabe4.Aufgabe3;

public enum Currency {

	Euro("\u20ac",1),
	Yen("\u00a5",120.43
	),
	Won("\u20a9",1300),
	Franken("CHF",1.10);


	Currency(String symbol, double conversion) {
		this.symbol = symbol;
		this.conversion = conversion;
	}

	private String symbol;
	private double conversion;

	public String getSymbol() {
		return symbol;
	}

	public double getConversion() {
		return conversion;
	}
}
