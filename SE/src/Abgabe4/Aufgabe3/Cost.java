package Abgabe4.Aufgabe3;

public class Cost {

	double amount;

	Currency currency;

	public Cost(double amount, Currency currency) {
		this.amount = amount;
		this.currency = currency;
	}

	public String getAmountInCurrency(Currency currency){
		return String.valueOf(amount/this.currency.getConversion()*currency.getConversion()+currency.getSymbol());
	}

	public static void main(String[] args) {

		Cost cost = new Cost(100, Currency.Won);
		String amountInCurrency = cost.getAmountInCurrency(Currency.Yen);
		System.out.println(amountInCurrency);
	}

}
