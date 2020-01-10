package Abgabe8.Aufgabe1;

public class Main {


	public static void main(String[] args) {


		changePosition(new String[]{"a", "b", "c"}, 1, 2);

		String[] strings = new String[]{"a", "b", "c"};

	}


	public static <T> void changePosition(T[] t, int a, int b) {

		if (a > t.length || b > t.length) return;

		T tmp = t[a];
		t[a] = t[b];
		t[b] = tmp;

	}
/*
* Exercise 2:
* The compiler exchanges the generic with the type the user wants to use
* So there can be a code/method/class working with any Class
*
 */

/*
* Exercise 3:
* No, because objects cant be compared with '>', '<', etc. Operators
 */

/*
* Exercise 4:
* a) fails because
 */
}