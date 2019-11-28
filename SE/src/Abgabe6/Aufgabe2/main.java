package Abgabe6.Aufgabe2;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class main {

	public static void main(String[] args) throws InvocationTargetException, IllegalAccessException {


		Student student = new Student("Max Mustermann",new Address(new City("78462","Paradies","BW"),"Rheingutstr",36));
		printObjectsAttributes(student,1);
		//getGetters(student);
	}


	private static void printObjectsAttributes(Object object,int depth) throws InvocationTargetException, IllegalAccessException {
		for (int i = 0; i < depth-1; i++) System.out.print("\t");
		System.out.println(">"+object.getClass().getSimpleName());

		Method[] methods = object.getClass().getDeclaredMethods();

		for (Method method : methods) {


			if(method.getReturnType().isPrimitive() || method.getReturnType().equals(String.class)) { //wenn String oder primitiver datentyp

				if(method.getName().contains("get")) { //nur getter
					for (int i = 0; i < depth; i++) System.out.print("\t");
					String getter = method.getName();
					System.out.print(">" + getter.replace("get", "") + ": "); //ausgabe getter ohne "get"
					System.out.println(method.invoke(object)); //ausführung von getter
				}
			}else{

				printObjectsAttributes(method.invoke(object),depth+1); //wenn nicht primitiv dann getter ausführen -> returnt das object
			}
		}


	}
	public static void getGetters(Object object) throws InvocationTargetException, IllegalAccessException {

		Method[] methods = object.getClass().getDeclaredMethods();
		for (Method method: methods) {
			if(method.getName().contains("get")&&method.getName().contains("")) {
				//System.out.println(method.getName());
				System.out.println(method.invoke(object));

			}

		}

	}


}
