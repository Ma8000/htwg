package Abgabe10.Aufgabe2;

import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class MainTest {

	@Test
	public void testFaculty() throws Main.NegativeFacultyException {

		int factorial = Main.faculty(5);

		//then
		assertEquals(factorial,120);

	}

	@Test
	public void testFaculty_Zero() throws Main.NegativeFacultyException {

		int factorial = Main.faculty(0);

		//then
		assertEquals(factorial,1);

	}

	@Test(expected = Main.NegativeFacultyException.class)
	public void testFaculty_Negative() throws Main.NegativeFacultyException {

		Main.faculty(-1);


	}



}
