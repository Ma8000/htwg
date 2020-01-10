package Abgabe10.Aufgabe2;

public class Main {

	public static int faculty(int x) throws NegativeFacultyException {
		if(x<0) throw new NegativeFacultyException();
		if(x<=1)return 1;
		return x*faculty(x-1);

	}

	public static class NegativeFacultyException extends Exception {

		NegativeFacultyException(){
			super("Not possible to calulate Faculty from negative numbers");
		}
	}
}
