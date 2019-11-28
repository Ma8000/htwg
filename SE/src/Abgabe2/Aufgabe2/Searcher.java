package Abgabe2.Aufgabe2;

public class Searcher {

	private DB[] db;
	private String input;

	 public Searcher(DB[] db,String input){

		super();
	 	this.db=db;
	 	this.input=input;
	 }

	 public String search(){
	 	int i = 0;

	 	while(db[i].search(input)==null&&i<db.length-1){
	 		i++;
		}
		 return db[i].getName();

	 }

}
