package Abgabe7.Aufgabe1;

public class Node<T> {

	private Node<T> nextNode;
	private Node<T> previousNode;
	private T content;

	public Node(T content) {
		this.content = content;
	}

	public Node<T> getNextNode() {
		return nextNode;
	}

	public void setNextNode(Node nextNode) {
		this.nextNode = nextNode;
	}

	public T getContent() {
		return content;
	}

	public void setContent(T content) {
		this.content = content;
	}

	public Node<T> getPreviousNode() {
		return previousNode;
	}

	public void setPreviousNode(Node previousNode) {
		this.previousNode = previousNode;
	}
}
