package Abgabe10.Aufgabe1;

import Abgabe7.Aufgabe1.LList;
import Abgabe9.OutOfLastListEntryException;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class LListTest {



	@Test
	public void testSize_Empty() throws OutOfLastListEntryException {

		//given
		LList list = new LList();

		//when
		int size = list.size();

		//then
		assertEquals("size",0,size);

	}

	@Test
	public void testSize_EmptyNode() throws OutOfLastListEntryException {

		//given
		LList list = new LList();

		//when
		list.insert(null);
		int size = list.size();

		//then
		assertEquals(1,size);

	}

	@Test
	public void testGet_Object(){

		//given
		LList list = new LList();
		Object object = new Object();
		Object object2 = new Object();

		//when
		list.insert(object);
		list.insert(object2);
		Object o = list.get(0);
		Object o2 = list.get(1);
		//then
		assertEquals(object,o);
		assertEquals(object2,o2);
	}

	@Test
	public void testGet_Null(){

		//given
		LList list = new LList();

		//when
		list.insert(null);
		Object o = list.get(0);
		//then
		assertEquals(null,o);
	}

	@Test
	public void testGet_String(){

		//given
		LList list = new LList();
		String string = "Hello";

		//when
		list.insert("Hello");
		Object o = list.get(0);
		//then
		assertEquals(string,o);
	}

	@Test
	public void testGet_primitiveDataType(){

		//given
		LList list = new LList();

		//when
		list.insert(2);
		Object o = list.get(0);

		//then
		assertEquals(2,o);

	}

	@Test(expected = OutOfLastListEntryException.class)
	public void testRemove_Exception() throws OutOfLastListEntryException {

		//given
		LList list = new LList();

		//when
		list.isInList(0);

		//then


	}


}
