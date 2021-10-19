fun main() {

    val personen = arrayOf<Person>(Teacher("Dirk"),Comedian("Jos"),Comedian("Piet"),Student("Frits"));
    println(personen[2].greet());
    println(personen[3].greet());
}