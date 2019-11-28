package Abgabe5;

public class UserNameGen {

	public static void main(String[] args) {

		String mail = "ma391szy@htwg-konstanz.de";
		String name ="";
		if(mail.contains("@")){
			name = mail.substring(0,mail.indexOf("@"));
		}


		System.out.println(name);
	}

}
