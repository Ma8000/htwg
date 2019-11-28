/*package main;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import main.Entity.GeneratedName;

public class Main {

	public static void main(String[] args)
			throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
//		Student student = new Student(1, "Max", "Mustermann");
//		print(student);
//
//		Professor professor = new Professor(2, "Peter", "Maier", 10000);
//		print(professor);

		generateSql(Student.class);

	}

	public static void generateSql(Class<?> clazz) {

		Field[] fields = clazz.getDeclaredFields();

		Entity entityAnnotation = clazz.getAnnotation(Entity.class);

		String tablename ="";
		if(entityAnnotation.generatedName().equals(GeneratedName.LOWER)) {
			tablename = clazz.getSimpleName().toLowerCase();
		}else if(entityAnnotation.generatedName().equals(GeneratedName.CAPITAL)) {
			tablename = clazz.getSimpleName().toUpperCase();
		}else {
			tablename = clazz.getSimpleName();
		}

		String sql = "CREATE TABLE " + tablename + "(";
		for (int i = 0; i < fields.length; i++) {

			if (fields[i].getAnnotation(Column.class) != null) {

				Column columnAnnotation = fields[i].getAnnotation(Column.class);

				sql = sql + columnAnnotation.value();
				if (fields[i].getType().equals(String.class)) {
					sql += " varchar(255)";
				} else {
					sql += " int";
				}
				sql += ",";
			}
		}

		sql = sql.trim().replaceAll(",$", "");
		sql += ");";
		System.out.println(sql);

	}

	public static void print(Object object)
			throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {

		Class<?> clazz = object.getClass();
		Method[] methods = clazz.getDeclaredMethods();

		for (int i = 0; i < methods.length; i++) {

			String methodName = methods[i].getName();
			if (methodName.contains("get")) {

				System.out.println(methodName.replace("get", "").toLowerCase());
				System.out.println(">" + methods[i].invoke(object));
			}
		}
	}

}
*/