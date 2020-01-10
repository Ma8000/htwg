package Abgabe7.Aufgabe1;

import Abgabe9.ObjectNotFoundException;
import Abgabe9.OutOfLastListEntryException;

import java.util.Iterator;

public class LList<T> implements Iterable<T> {

	private Node<T> head;

	public LList() {
		//head = new Node<>(null);
	}

	public boolean isInList(int i) throws OutOfLastListEntryException {
		if(size()<=i){
			throw new OutOfLastListEntryException();
		}
		return true;
	}

	public void insert(T content) {

		Node<T> newNode = new Node(content);
		if (head == null) {
			head = newNode;
		} else {

			Node<T> currentNode = head;
			while (currentNode.getNextNode() != null) {
				currentNode = currentNode.getNextNode();
			}

			currentNode.setNextNode(newNode);
			newNode.setPreviousNode(currentNode);
		}
	}

	public int size() {

		if (head == null) {
			return 0;
		}
//		else if (head.getNextNode()==null){
//			return 1;
//		}
		else {

			Node<T> currentNode = head;
			int length = 1;
			for (; currentNode.getNextNode() != null; length++) {
				currentNode = currentNode.getNextNode();
			}
			return length;
		}
	}

	public T get(int index) {

		Node<T> currentNode = head;
		for (int i = 0; i < index; i++) {

			currentNode = currentNode.getNextNode();
		}

		return currentNode.getContent();
	}

	public void remove(int index) throws OutOfLastListEntryException {

		Node<T> currentNode = head;
		isInList(index);

		for (int i = 0; i < index; i++) {
			currentNode = currentNode.getNextNode();
		}

		if(currentNode.getPreviousNode()!=null){
			currentNode.getPreviousNode().setNextNode(currentNode.getNextNode());
		}

		if (currentNode.getNextNode() != null) {
			currentNode.getNextNode().setPreviousNode(currentNode.getPreviousNode());
		}
	}

	public boolean contains(T object){

		Node<T> tmp = head;
		if(tmp.getContent().equals(object)) return true;

		while (tmp.getNextNode()!=null){
			tmp = tmp.getNextNode();
			if(tmp.getContent().equals(object)) return true;

		}


		return false;
	}

	public void put(int i, T object) throws OutOfLastListEntryException {

		Node<T> node = head;
		isInList(i);
		if (head == null) {
			node = new Node<>(object);
		}

		for (int j = 0; j < i; j++) {
			node = node.getNextNode();

		}

		node.setContent(object);

	}

	public void insert(int i,T object) throws OutOfLastListEntryException {
		Node<T> node = head;
		isInList(i);
		if (head == null) {
			node = new Node<>(object);
		}

		for (int j = 0; j < i ; j++) {
			node = node.getNextNode();
		}

		Node newNode = new Node(object);

		newNode.setPreviousNode(node.getPreviousNode());
		newNode.setNextNode(node);

		node.getPreviousNode().setNextNode(newNode);
		node.setPreviousNode(newNode);

	}

	public boolean remove(T object) throws ObjectNotFoundException, OutOfLastListEntryException {

		int index = 0;

		if(!contains(object)){
			throw new ObjectNotFoundException();
		}

		Node<T> node = head;
		if(node.getContent().equals(object)) {
			remove(index);
			return true;
		}


		while (node.getNextNode()!=null){
			index++;
			node = node.getNextNode();
			if(node.getContent().equals(object)) {
				remove(index);
				return true;
			}

		}
		return false;

	}

	public void print(){
		for (T t: this) {
			System.out.println(t);
		}
	}


	@Override
	public Iterator<T> iterator() {

		return new LListIterator(head);
	}

	class LListIterator implements Iterator<T> {

		private Node<T> currentNode;

		public LListIterator(Node<T> currentNode) {

			Node<T> dummyNode = new Node<>(null);
			this.currentNode = dummyNode;
			this.currentNode.setNextNode(currentNode);
		}

		@Override
		public boolean hasNext() {
			return currentNode.getNextNode() != null;
		}

		@Override
		public T next() {
			currentNode = currentNode.getNextNode();
			return currentNode.getContent();
		}
	}
}
