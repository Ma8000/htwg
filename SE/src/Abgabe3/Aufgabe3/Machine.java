package Abgabe3.Aufgabe3;

import java.util.Random;

public class Machine {



	public static void main(String[] args) {
		IntWrapper credit = new IntWrapper(50);
		for (int i = 0; i < 10; i++) {
			boolean win = play(credit);
			if (win) {
				System.out.println("gewonnen");
			} else {
				System.out.println("verloren");
			}
		}
		System.out.printf("Final credit: %d EUR", credit.getValue());
	}

	public static boolean play(IntWrapper intWrapper) {
		Random random = new Random();
		boolean b = random.nextBoolean();
		if (b) intWrapper.setValue(intWrapper.getValue() + 10);
		else intWrapper.setValue(intWrapper.getValue() - 10);

		return b;
	}


	public static class IntWrapper{
		private int value;

		public int getValue() {
			return value;
		}

		public void setValue(int value) {
			this.value = value;
		}

		public IntWrapper(int value) {
			this.value = value;
		}

		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			IntWrapper other = (IntWrapper) obj;
			if (value != other.value)
				return false;
			return true;
		}
	}
}
