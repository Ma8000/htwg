package Abgabe6.Aufgabe1;

import java.lang.reflect.Field;

public class main {

	public static void main(String[] args) {

		printObjectsAttributes(Student.class,1);

	}


	private static void printObjectsAttributes(Class clazz,int depth){
		for (int i = 0; i < depth-1; i++) System.out.print("\t");
		System.out.println(">"+clazz.getSimpleName());

		Field[] fields = clazz.getDeclaredFields();

		for (Field field : fields) {


			if(field.getType().isPrimitive() || field.getType().equals(String.class)) {
				for (int i = 0; i < depth; i++) System.out.print("\t");
				System.out.println(">"+field.getName());
			}else{

				printObjectsAttributes(field.getType(),depth+1);
			}
		}


	}

}
