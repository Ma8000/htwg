package Abgabe2.Aufgabe2;

import javax.swing.*;
import java.sql.SQLOutput;
import java.util.Scanner;

public class main {


	static Fruit[] fruits;
	static Vegetable[] vegetables;

	public static void main(String[] args) {

		generate();
		//System.out.println("Fruit or Veggie?");

		Scanner sc = new Scanner(System.in);
		String in = sc.next();
		//System.out.println(in);
		System.out.println("What are you searching?");
		String s = sc.next();
		//System.out.println(s);

		String db = "";



		Searcher searcher;

		if (in.equals("fruit") || in.equals("Fruit")) {
			searcher = new Searcher(fruits, s);
			db="fruits";
		} else {
			searcher = new Searcher(vegetables, s);
			db="vegetables";
		}
		System.out.println(searcher.search().equals(s)?"Gefunden in: "+db:"Nicht gefunden in: "+db);


	}

	public static void generate() {

		fruits = new Fruit[]{new Fruit("Acai"),
				new Fruit("Aceola"),
				new Fruit("Apple"),
				new Fruit("Apricots"),
				new Fruit("Avocado"),
				new Fruit("Banana"),
				new Fruit("Blackberry"),
				new Fruit("Blueberries"),
				new Fruit("Camu Camu berry"),
				new Fruit("Cherries"),
				new Fruit("Coconut"),
				new Fruit("Cranberry"),
				new Fruit("Cucumber"),
				new Fruit("Currents"),
				new Fruit("Dates"),
				new Fruit("Durian"),
				new Fruit("Fig"),
				new Fruit("Goji berries"),
				new Fruit("Gooseberry"),
				new Fruit("Grapefruit"),
				new Fruit("Grapes"),
				new Fruit("Jackfruit"),
				new Fruit("Kiwi"),
				new Fruit("Kumquat"),
				new Fruit("Lemon"),
				new Fruit("Lime"),
				new Fruit("Lucuma"),
				new Fruit("Lychee"),
				new Fruit("Mango"),
				new Fruit("Mangosteen"),
				new Fruit("Melon"),
				new Fruit("Mulberry"),
				new Fruit("Nectarine"),
				new Fruit("Orange"),
				new Fruit("Papaya"),
				new Fruit("Passion Fruit"),
				new Fruit("Peach"),
				new Fruit("Pear"),
				new Fruit("Pineapple"),
				new Fruit("Plum"),
				new Fruit("Pomegranate"),
				new Fruit("Pomelo"),
				new Fruit("Prickly Pear"),
				new Fruit("Prunes"),
				new Fruit("Raspberries"),
				new Fruit("Strawberries"),
				new Fruit("Tangerine/Clementine"),
				new Fruit("Watermelon")};

		vegetables = new Vegetable[]{
				new Vegetable("Artichoke"),
				new Vegetable("Arugula"),
				new Vegetable("Asparagus"),
				new Vegetable("Avocado"),
				new Vegetable("Bamboo Shoots"),
				new Vegetable("Bean Sprouts"),
				new Vegetable("Beet"),
				new Vegetable("Belgian Endive"),
				new Vegetable("Bell Pepper"),
				new Vegetable("Bitter Melon/Bitter Gourd"),
				new Vegetable("Bok Choy/Bok Choi/Pak Choy"),
				new Vegetable("Broccoli"),
				new Vegetable("Brussels Sprouts"),
				new Vegetable("Burdock Root/Gobo"),
				new Vegetable("Cabbage"),
				new Vegetable("Calabash"),
				new Vegetable("Capers"),
				new Vegetable("Carrot"),
				new Vegetable("Cassava/Yuca"),
				new Vegetable("Cauliflower"),
				new Vegetable("Celery"),
				new Vegetable("Celery Root/Celeriac"),
				new Vegetable("Celtuce"),
				new Vegetable("Chayote"),
				new Vegetable("Chinese Broccoli/Kai-lan"),
				new Vegetable("Corn/Maize"),
				new Vegetable("Cucumber"),
				new Vegetable("Daikon Radish"),
				new Vegetable("Edamame"),
				new Vegetable("Eggplant/Aubergine"),
				new Vegetable("Elephant Garlic"),
				new Vegetable("Endive"),
				new Vegetable("Fennel"),
				new Vegetable("Fiddlehead"),
				new Vegetable("Galangal"),
				new Vegetable("Garlic"),
				new Vegetable("Ginger"),
				new Vegetable("Grape Leaves"),
				new Vegetable("Green Beans/String Beans/Snap Beans"),
				new Vegetable("Wax Beans"),
				new Vegetable("Greens"),
				new Vegetable("Amaranth Leaves/Chinese Spinach"),
				new Vegetable("Beet Greens"),
				new Vegetable("Collard Greens"),
				new Vegetable("Dandelion Greens"),
				new Vegetable("Kale"),
				new Vegetable("Kohlrabi Greens"),
				new Vegetable("Mustard Greens"),
				new Vegetable("Rapini"),
				new Vegetable("Spinach"),
				new Vegetable("Swiss Chard"),
				new Vegetable("Turnip Greens"),
				new Vegetable("Hearts of Palm"),
				new Vegetable("Horseradish"),
				new Vegetable("Jerusalem Artichoke/Sunchokes"),
				new Vegetable("Jícama"),
				new Vegetable("Kale"),
				new Vegetable("Curly"),
				new Vegetable("Lacinato"),
				new Vegetable("Ornamental"),
				new Vegetable("Kohlrabi"),
				new Vegetable("Leeks"),
				new Vegetable("Lemongrass"),
				new Vegetable("Lettuce"),
				new Vegetable("Butterhead- Bibb, Boston"),
				new Vegetable("Iceberg"),
				new Vegetable("Leaf- Green Leaf, Red Leaf"),
				new Vegetable("Romaine"),
				new Vegetable("Lotus Root"),
				new Vegetable("Lotus Seed"),
				new Vegetable("Mushrooms"),
				new Vegetable("Napa Cabbage"),
				new Vegetable("Nopales"),
				new Vegetable("Okra"),
				new Vegetable("Olive"),
				new Vegetable("Onion"),
				new Vegetable("Green Onions/Scallions"),
				new Vegetable("Parsley"),
				new Vegetable("Parsley Root"),
				new Vegetable("Parsnip"),
				new Vegetable("Peas"),
				new Vegetable("green peas"),
				new Vegetable("snow peas"),
				new Vegetable("sugar snap peas"),
				new Vegetable("Peppers"),
				new Vegetable("Plantain"),
				new Vegetable("Potato"),
				new Vegetable("Pumpkin"),
				new Vegetable("Purslane"),
				new Vegetable("Radicchio"),
				new Vegetable("Radish"),
				new Vegetable("Rutabaga"),
				new Vegetable("Sea Vegetables"),
				new Vegetable("Shallots"),
				new Vegetable("Spinach"),
				new Vegetable("Squash"),
				new Vegetable("Sweet Potato"),
				new Vegetable("Swiss Chard"),
				new Vegetable("Taro"),
				new Vegetable("Tomatillo"),
				new Vegetable("Tomato"),
				new Vegetable("Turnip"),
				new Vegetable("Water Chestnut"),
				new Vegetable("Water Spinach"),
				new Vegetable("Watercress"),
				new Vegetable("Winter Melon"),
				new Vegetable("Yams"),
				new Vegetable("Zucchini")};


	}


}

