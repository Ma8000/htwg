package Abgabe8.Aufgabe2;

import java.util.Arrays;
import java.util.List;

public class Main {

	public static void main(String[] args) {
		List<Integer> ints = Arrays.asList(1,2);

		System.out.println(getLast(ints));


	}


	public static <T> T getLast(List<T> list){

		int lastIndex = list.size()-1;
		return list.get(lastIndex);


	}

}
