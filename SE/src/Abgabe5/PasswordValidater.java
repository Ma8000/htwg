package Abgabe5;

import java.util.Scanner;

public class PasswordValidater {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		String pass = sc.nextLine();

		if(pass.matches("[a-zA-Z].{3,13}")){
			System.out.println("Valid");
		}else {
			System.out.println("Not Valid");
		}
	}

}